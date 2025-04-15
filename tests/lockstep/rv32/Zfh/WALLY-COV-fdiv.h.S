///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfh/WALLY-COV-fdiv.h.S
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


# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x26, x7 # perform first operation
fdiv.h f19, f28, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x12, x13 # perform first operation
fdiv.h f2, f16, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x29, x18 # perform first operation
fdiv.h f1, f13, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f19, f22, f1 # perform first operation
fdiv.h f22, f19, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f10, f31, f11 # perform first operation
fdiv.h f5, f7, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x11 # perform first operation
fdiv.h f26, f1, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f23, f24 # perform first operation
fdiv.h f5, f13, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f22, f9 # perform first operation
fdiv.h f8, f29, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f13, f5, f25 # perform first operation
fdiv.h f13, f12, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f11, f23, f18 # perform first operation
fdiv.h f23, f15, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f17, f2 # perform first operation
fdiv.h f2, f15, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f11, f20 # perform first operation
fdiv.h f16, f27, f31 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x34c2ecfa # load x3 with value 0x34c2ecfa
sw x3, 0(x2) # store 0x34c2ecfa in memory
flh f0, 0(x2) # load 0x34c2ecfa from memory into f0
la x2, scratch
li x3, 0x1299019e # load x3 with value 0x1299019e
sw x3, 0(x2) # store 0x1299019e in memory
flh f25, 0(x2) # load 0x1299019e from memory into f25
fdiv.h f12, f0, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x0a189d6d # load x3 with value 0x0a189d6d
sw x3, 0(x2) # store 0x0a189d6d in memory
flh f1, 0(x2) # load 0x0a189d6d from memory into f1
la x2, scratch
li x3, 0x9409a655 # load x3 with value 0x9409a655
sw x3, 0(x2) # store 0x9409a655 in memory
flh f5, 0(x2) # load 0x9409a655 from memory into f5
fdiv.h f17, f1, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x3a54df16 # load x3 with value 0x3a54df16
sw x3, 0(x2) # store 0x3a54df16 in memory
flh f2, 0(x2) # load 0x3a54df16 from memory into f2
la x2, scratch
li x3, 0x46778bf6 # load x3 with value 0x46778bf6
sw x3, 0(x2) # store 0x46778bf6 in memory
flh f8, 0(x2) # load 0x46778bf6 from memory into f8
fdiv.h f7, f2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xce7f2e9c # load x3 with value 0xce7f2e9c
sw x3, 0(x2) # store 0xce7f2e9c in memory
flh f3, 0(x2) # load 0xce7f2e9c from memory into f3
la x2, scratch
li x3, 0xfe55cccf # load x3 with value 0xfe55cccf
sw x3, 0(x2) # store 0xfe55cccf in memory
flh f5, 0(x2) # load 0xfe55cccf from memory into f5
fdiv.h f2, f3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x371491f1 # load x3 with value 0x371491f1
sw x3, 0(x2) # store 0x371491f1 in memory
flh f4, 0(x2) # load 0x371491f1 from memory into f4
la x2, scratch
li x3, 0x7c60fb6d # load x3 with value 0x7c60fb6d
sw x3, 0(x2) # store 0x7c60fb6d in memory
flh f7, 0(x2) # load 0x7c60fb6d from memory into f7
fdiv.h f6, f4, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb4904510 # load x3 with value 0xb4904510
sw x3, 0(x2) # store 0xb4904510 in memory
flh f5, 0(x2) # load 0xb4904510 from memory into f5
la x2, scratch
li x3, 0xfa2e2d7c # load x3 with value 0xfa2e2d7c
sw x3, 0(x2) # store 0xfa2e2d7c in memory
flh f14, 0(x2) # load 0xfa2e2d7c from memory into f14
fdiv.h f8, f5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x87c5b09e # load x3 with value 0x87c5b09e
sw x3, 0(x2) # store 0x87c5b09e in memory
flh f6, 0(x2) # load 0x87c5b09e from memory into f6
la x2, scratch
li x3, 0x3e63eda8 # load x3 with value 0x3e63eda8
sw x3, 0(x2) # store 0x3e63eda8 in memory
flh f21, 0(x2) # load 0x3e63eda8 from memory into f21
fdiv.h f3, f6, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x66472f10 # load x3 with value 0x66472f10
sw x3, 0(x2) # store 0x66472f10 in memory
flh f7, 0(x2) # load 0x66472f10 from memory into f7
la x2, scratch
li x3, 0x216dc2d2 # load x3 with value 0x216dc2d2
sw x3, 0(x2) # store 0x216dc2d2 in memory
flh f21, 0(x2) # load 0x216dc2d2 from memory into f21
fdiv.h f29, f7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x23110a56 # load x3 with value 0x23110a56
sw x3, 0(x2) # store 0x23110a56 in memory
flh f8, 0(x2) # load 0x23110a56 from memory into f8
la x2, scratch
li x3, 0x6337f0ea # load x3 with value 0x6337f0ea
sw x3, 0(x2) # store 0x6337f0ea in memory
flh f9, 0(x2) # load 0x6337f0ea from memory into f9
fdiv.h f21, f8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x925e3ac5 # load x3 with value 0x925e3ac5
sw x3, 0(x2) # store 0x925e3ac5 in memory
flh f9, 0(x2) # load 0x925e3ac5 from memory into f9
la x2, scratch
li x3, 0x8ff50d9f # load x3 with value 0x8ff50d9f
sw x3, 0(x2) # store 0x8ff50d9f in memory
flh f12, 0(x2) # load 0x8ff50d9f from memory into f12
fdiv.h f11, f9, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xe37a6430 # load x3 with value 0xe37a6430
sw x3, 0(x2) # store 0xe37a6430 in memory
flh f10, 0(x2) # load 0xe37a6430 from memory into f10
la x2, scratch
li x3, 0xc14d940f # load x3 with value 0xc14d940f
sw x3, 0(x2) # store 0xc14d940f in memory
flh f8, 0(x2) # load 0xc14d940f from memory into f8
fdiv.h f21, f10, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xc0013577 # load x3 with value 0xc0013577
sw x3, 0(x2) # store 0xc0013577 in memory
flh f11, 0(x2) # load 0xc0013577 from memory into f11
la x2, scratch
li x3, 0xf1d4694e # load x3 with value 0xf1d4694e
sw x3, 0(x2) # store 0xf1d4694e in memory
flh f28, 0(x2) # load 0xf1d4694e from memory into f28
fdiv.h f1, f11, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x22a0e0d0 # load x3 with value 0x22a0e0d0
sw x3, 0(x2) # store 0x22a0e0d0 in memory
flh f12, 0(x2) # load 0x22a0e0d0 from memory into f12
la x2, scratch
li x3, 0xfb66d95c # load x3 with value 0xfb66d95c
sw x3, 0(x2) # store 0xfb66d95c in memory
flh f5, 0(x2) # load 0xfb66d95c from memory into f5
fdiv.h f11, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xbef77db2 # load x3 with value 0xbef77db2
sw x3, 0(x2) # store 0xbef77db2 in memory
flh f13, 0(x2) # load 0xbef77db2 from memory into f13
la x2, scratch
li x3, 0x3a3d6a93 # load x3 with value 0x3a3d6a93
sw x3, 0(x2) # store 0x3a3d6a93 in memory
flh f2, 0(x2) # load 0x3a3d6a93 from memory into f2
fdiv.h f10, f13, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x933fe5ed # load x3 with value 0x933fe5ed
sw x3, 0(x2) # store 0x933fe5ed in memory
flh f14, 0(x2) # load 0x933fe5ed from memory into f14
la x2, scratch
li x3, 0x1a83ccb0 # load x3 with value 0x1a83ccb0
sw x3, 0(x2) # store 0x1a83ccb0 in memory
flh f7, 0(x2) # load 0x1a83ccb0 from memory into f7
fdiv.h f6, f14, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x86e1f6dd # load x3 with value 0x86e1f6dd
sw x3, 0(x2) # store 0x86e1f6dd in memory
flh f15, 0(x2) # load 0x86e1f6dd from memory into f15
la x2, scratch
li x3, 0x83606435 # load x3 with value 0x83606435
sw x3, 0(x2) # store 0x83606435 in memory
flh f27, 0(x2) # load 0x83606435 from memory into f27
fdiv.h f25, f15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x8bcf2e2d # load x3 with value 0x8bcf2e2d
sw x3, 0(x2) # store 0x8bcf2e2d in memory
flh f16, 0(x2) # load 0x8bcf2e2d from memory into f16
la x2, scratch
li x3, 0x5bea452c # load x3 with value 0x5bea452c
sw x3, 0(x2) # store 0x5bea452c in memory
flh f2, 0(x2) # load 0x5bea452c from memory into f2
fdiv.h f17, f16, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x6c79e605 # load x3 with value 0x6c79e605
sw x3, 0(x2) # store 0x6c79e605 in memory
flh f17, 0(x2) # load 0x6c79e605 from memory into f17
la x2, scratch
li x3, 0x73b3b2d0 # load x3 with value 0x73b3b2d0
sw x3, 0(x2) # store 0x73b3b2d0 in memory
flh f13, 0(x2) # load 0x73b3b2d0 from memory into f13
fdiv.h f26, f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x192b53f8 # load x3 with value 0x192b53f8
sw x3, 0(x2) # store 0x192b53f8 in memory
flh f18, 0(x2) # load 0x192b53f8 from memory into f18
la x2, scratch
li x3, 0x6c5ea7b7 # load x3 with value 0x6c5ea7b7
sw x3, 0(x2) # store 0x6c5ea7b7 in memory
flh f26, 0(x2) # load 0x6c5ea7b7 from memory into f26
fdiv.h f20, f18, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xc53a505c # load x3 with value 0xc53a505c
sw x3, 0(x2) # store 0xc53a505c in memory
flh f19, 0(x2) # load 0xc53a505c from memory into f19
la x2, scratch
li x3, 0xb4c3afb1 # load x3 with value 0xb4c3afb1
sw x3, 0(x2) # store 0xb4c3afb1 in memory
flh f5, 0(x2) # load 0xb4c3afb1 from memory into f5
fdiv.h f30, f19, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xe7545c74 # load x3 with value 0xe7545c74
sw x3, 0(x2) # store 0xe7545c74 in memory
flh f20, 0(x2) # load 0xe7545c74 from memory into f20
la x2, scratch
li x3, 0x0aadf057 # load x3 with value 0x0aadf057
sw x3, 0(x2) # store 0x0aadf057 in memory
flh f22, 0(x2) # load 0x0aadf057 from memory into f22
fdiv.h f5, f20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xf10d9f06 # load x3 with value 0xf10d9f06
sw x3, 0(x2) # store 0xf10d9f06 in memory
flh f21, 0(x2) # load 0xf10d9f06 from memory into f21
la x2, scratch
li x3, 0x4366fa43 # load x3 with value 0x4366fa43
sw x3, 0(x2) # store 0x4366fa43 in memory
flh f27, 0(x2) # load 0x4366fa43 from memory into f27
fdiv.h f26, f21, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x607c1f27 # load x3 with value 0x607c1f27
sw x3, 0(x2) # store 0x607c1f27 in memory
flh f22, 0(x2) # load 0x607c1f27 from memory into f22
la x2, scratch
li x3, 0x1a2abfb3 # load x3 with value 0x1a2abfb3
sw x3, 0(x2) # store 0x1a2abfb3 in memory
flh f30, 0(x2) # load 0x1a2abfb3 from memory into f30
fdiv.h f13, f22, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xfc59000a # load x3 with value 0xfc59000a
sw x3, 0(x2) # store 0xfc59000a in memory
flh f23, 0(x2) # load 0xfc59000a from memory into f23
la x2, scratch
li x3, 0xfa25d8ce # load x3 with value 0xfa25d8ce
sw x3, 0(x2) # store 0xfa25d8ce in memory
flh f8, 0(x2) # load 0xfa25d8ce from memory into f8
fdiv.h f18, f23, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xd296325e # load x3 with value 0xd296325e
sw x3, 0(x2) # store 0xd296325e in memory
flh f24, 0(x2) # load 0xd296325e from memory into f24
la x2, scratch
li x3, 0xade5aeac # load x3 with value 0xade5aeac
sw x3, 0(x2) # store 0xade5aeac in memory
flh f20, 0(x2) # load 0xade5aeac from memory into f20
fdiv.h f11, f24, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xf837b550 # load x3 with value 0xf837b550
sw x3, 0(x2) # store 0xf837b550 in memory
flh f25, 0(x2) # load 0xf837b550 from memory into f25
la x2, scratch
li x3, 0x29674afc # load x3 with value 0x29674afc
sw x3, 0(x2) # store 0x29674afc in memory
flh f28, 0(x2) # load 0x29674afc from memory into f28
fdiv.h f23, f25, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x438add8a # load x3 with value 0x438add8a
sw x3, 0(x2) # store 0x438add8a in memory
flh f26, 0(x2) # load 0x438add8a from memory into f26
la x2, scratch
li x3, 0x2dc42c4a # load x3 with value 0x2dc42c4a
sw x3, 0(x2) # store 0x2dc42c4a in memory
flh f30, 0(x2) # load 0x2dc42c4a from memory into f30
fdiv.h f14, f26, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xb7d059a5 # load x3 with value 0xb7d059a5
sw x3, 0(x2) # store 0xb7d059a5 in memory
flh f27, 0(x2) # load 0xb7d059a5 from memory into f27
la x2, scratch
li x3, 0x468022c4 # load x3 with value 0x468022c4
sw x3, 0(x2) # store 0x468022c4 in memory
flh f25, 0(x2) # load 0x468022c4 from memory into f25
fdiv.h f22, f27, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xce157299 # load x3 with value 0xce157299
sw x3, 0(x2) # store 0xce157299 in memory
flh f28, 0(x2) # load 0xce157299 from memory into f28
la x2, scratch
li x3, 0x3fe592ff # load x3 with value 0x3fe592ff
sw x3, 0(x2) # store 0x3fe592ff in memory
flh f7, 0(x2) # load 0x3fe592ff from memory into f7
fdiv.h f15, f28, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x7e4066f2 # load x3 with value 0x7e4066f2
sw x3, 0(x2) # store 0x7e4066f2 in memory
flh f29, 0(x2) # load 0x7e4066f2 from memory into f29
la x2, scratch
li x3, 0x58a304f4 # load x3 with value 0x58a304f4
sw x3, 0(x2) # store 0x58a304f4 in memory
flh f8, 0(x2) # load 0x58a304f4 from memory into f8
fdiv.h f25, f29, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xd305f5ca # load x3 with value 0xd305f5ca
sw x3, 0(x2) # store 0xd305f5ca in memory
flh f30, 0(x2) # load 0xd305f5ca from memory into f30
la x2, scratch
li x3, 0x3bab5bbc # load x3 with value 0x3bab5bbc
sw x3, 0(x2) # store 0x3bab5bbc in memory
flh f9, 0(x2) # load 0x3bab5bbc from memory into f9
fdiv.h f11, f30, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xe8895963 # load x3 with value 0xe8895963
sw x3, 0(x2) # store 0xe8895963 in memory
flh f31, 0(x2) # load 0xe8895963 from memory into f31
la x2, scratch
li x3, 0x43ae45d0 # load x3 with value 0x43ae45d0
sw x3, 0(x2) # store 0x43ae45d0 in memory
flh f2, 0(x2) # load 0x43ae45d0 from memory into f2
fdiv.h f17, f31, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x60fd73b7 # load x3 with value 0x60fd73b7
sw x3, 0(x2) # store 0x60fd73b7 in memory
flh f19, 0(x2) # load 0x60fd73b7 from memory into f19
la x2, scratch
li x3, 0x9fa22107 # load x3 with value 0x9fa22107
sw x3, 0(x2) # store 0x9fa22107 in memory
flh f0, 0(x2) # load 0x9fa22107 from memory into f0
fdiv.h f29, f19, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x52e055a0 # load x3 with value 0x52e055a0
sw x3, 0(x2) # store 0x52e055a0 in memory
flh f30, 0(x2) # load 0x52e055a0 from memory into f30
la x2, scratch
li x3, 0xf5d3a22d # load x3 with value 0xf5d3a22d
sw x3, 0(x2) # store 0xf5d3a22d in memory
flh f1, 0(x2) # load 0xf5d3a22d from memory into f1
fdiv.h f7, f30, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x35cccd59 # load x3 with value 0x35cccd59
sw x3, 0(x2) # store 0x35cccd59 in memory
flh f31, 0(x2) # load 0x35cccd59 from memory into f31
la x2, scratch
li x3, 0xe6a23e9c # load x3 with value 0xe6a23e9c
sw x3, 0(x2) # store 0xe6a23e9c in memory
flh f2, 0(x2) # load 0xe6a23e9c from memory into f2
fdiv.h f10, f31, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x9b2bc8f5 # load x3 with value 0x9b2bc8f5
sw x3, 0(x2) # store 0x9b2bc8f5 in memory
flh f21, 0(x2) # load 0x9b2bc8f5 from memory into f21
la x2, scratch
li x3, 0x8799c924 # load x3 with value 0x8799c924
sw x3, 0(x2) # store 0x8799c924 in memory
flh f3, 0(x2) # load 0x8799c924 from memory into f3
fdiv.h f25, f21, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x091dddfb # load x3 with value 0x091dddfb
sw x3, 0(x2) # store 0x091dddfb in memory
flh f9, 0(x2) # load 0x091dddfb from memory into f9
la x2, scratch
li x3, 0x9f1f36f4 # load x3 with value 0x9f1f36f4
sw x3, 0(x2) # store 0x9f1f36f4 in memory
flh f4, 0(x2) # load 0x9f1f36f4 from memory into f4
fdiv.h f16, f9, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xda407688 # load x3 with value 0xda407688
sw x3, 0(x2) # store 0xda407688 in memory
flh f23, 0(x2) # load 0xda407688 from memory into f23
la x2, scratch
li x3, 0x3895cd08 # load x3 with value 0x3895cd08
sw x3, 0(x2) # store 0x3895cd08 in memory
flh f5, 0(x2) # load 0x3895cd08 from memory into f5
fdiv.h f19, f23, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x5, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x41f9b5c5 # load x3 with value 0x41f9b5c5
sw x3, 0(x2) # store 0x41f9b5c5 in memory
flh f7, 0(x2) # load 0x41f9b5c5 from memory into f7
la x2, scratch
li x3, 0x80917129 # load x3 with value 0x80917129
sw x3, 0(x2) # store 0x80917129 in memory
flh f6, 0(x2) # load 0x80917129 from memory into f6
fdiv.h f4, f7, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
la x2, scratch
li x3, 0x7d21c221 # load x3 with value 0x7d21c221
sw x3, 0(x2) # store 0x7d21c221 in memory
flh f30, 0(x2) # load 0x7d21c221 from memory into f30
la x2, scratch
li x3, 0x54be99da # load x3 with value 0x54be99da
sw x3, 0(x2) # store 0x54be99da in memory
flh f7, 0(x2) # load 0x54be99da from memory into f7
fdiv.h f26, f30, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x30409591 # load x3 with value 0x30409591
sw x3, 0(x2) # store 0x30409591 in memory
flh f11, 0(x2) # load 0x30409591 from memory into f11
la x2, scratch
li x3, 0x06343473 # load x3 with value 0x06343473
sw x3, 0(x2) # store 0x06343473 in memory
flh f8, 0(x2) # load 0x06343473 from memory into f8
fdiv.h f30, f11, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x7f5eb89b # load x3 with value 0x7f5eb89b
sw x3, 0(x2) # store 0x7f5eb89b in memory
flh f13, 0(x2) # load 0x7f5eb89b from memory into f13
la x2, scratch
li x3, 0xb3b41b60 # load x3 with value 0xb3b41b60
sw x3, 0(x2) # store 0xb3b41b60 in memory
flh f9, 0(x2) # load 0xb3b41b60 from memory into f9
fdiv.h f12, f13, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x67c9c4f7 # load x3 with value 0x67c9c4f7
sw x3, 0(x2) # store 0x67c9c4f7 in memory
flh f9, 0(x2) # load 0x67c9c4f7 from memory into f9
la x2, scratch
li x3, 0x79593f66 # load x3 with value 0x79593f66
sw x3, 0(x2) # store 0x79593f66 in memory
flh f10, 0(x2) # load 0x79593f66 from memory into f10
fdiv.h f20, f9, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xf642b234 # load x3 with value 0xf642b234
sw x3, 0(x2) # store 0xf642b234 in memory
flh f29, 0(x2) # load 0xf642b234 from memory into f29
la x2, scratch
li x3, 0x7e2f9567 # load x3 with value 0x7e2f9567
sw x3, 0(x2) # store 0x7e2f9567 in memory
flh f11, 0(x2) # load 0x7e2f9567 from memory into f11
fdiv.h f15, f29, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x6cd22467 # load x3 with value 0x6cd22467
sw x3, 0(x2) # store 0x6cd22467 in memory
flh f7, 0(x2) # load 0x6cd22467 from memory into f7
la x2, scratch
li x3, 0x5b4ac389 # load x3 with value 0x5b4ac389
sw x3, 0(x2) # store 0x5b4ac389 in memory
flh f12, 0(x2) # load 0x5b4ac389 from memory into f12
fdiv.h f8, f7, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x02cad074 # load x3 with value 0x02cad074
sw x3, 0(x2) # store 0x02cad074 in memory
flh f19, 0(x2) # load 0x02cad074 from memory into f19
la x2, scratch
li x3, 0x18530e5e # load x3 with value 0x18530e5e
sw x3, 0(x2) # store 0x18530e5e in memory
flh f13, 0(x2) # load 0x18530e5e from memory into f13
fdiv.h f9, f19, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xc9234621 # load x3 with value 0xc9234621
sw x3, 0(x2) # store 0xc9234621 in memory
flh f21, 0(x2) # load 0xc9234621 from memory into f21
la x2, scratch
li x3, 0xb71d600d # load x3 with value 0xb71d600d
sw x3, 0(x2) # store 0xb71d600d in memory
flh f14, 0(x2) # load 0xb71d600d from memory into f14
fdiv.h f25, f21, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x2befeac8 # load x3 with value 0x2befeac8
sw x3, 0(x2) # store 0x2befeac8 in memory
flh f23, 0(x2) # load 0x2befeac8 from memory into f23
la x2, scratch
li x3, 0xff10c225 # load x3 with value 0xff10c225
sw x3, 0(x2) # store 0xff10c225 in memory
flh f15, 0(x2) # load 0xff10c225 from memory into f15
fdiv.h f7, f23, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x5d368d93 # load x3 with value 0x5d368d93
sw x3, 0(x2) # store 0x5d368d93 in memory
flh f15, 0(x2) # load 0x5d368d93 from memory into f15
la x2, scratch
li x3, 0xd5f52edb # load x3 with value 0xd5f52edb
sw x3, 0(x2) # store 0xd5f52edb in memory
flh f16, 0(x2) # load 0xd5f52edb from memory into f16
fdiv.h f8, f15, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xf99255e8 # load x3 with value 0xf99255e8
sw x3, 0(x2) # store 0xf99255e8 in memory
flh f12, 0(x2) # load 0xf99255e8 from memory into f12
la x2, scratch
li x3, 0xfe858732 # load x3 with value 0xfe858732
sw x3, 0(x2) # store 0xfe858732 in memory
flh f17, 0(x2) # load 0xfe858732 from memory into f17
fdiv.h f21, f12, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x323a77ba # load x3 with value 0x323a77ba
sw x3, 0(x2) # store 0x323a77ba in memory
flh f11, 0(x2) # load 0x323a77ba from memory into f11
la x2, scratch
li x3, 0x946ae4ef # load x3 with value 0x946ae4ef
sw x3, 0(x2) # store 0x946ae4ef in memory
flh f18, 0(x2) # load 0x946ae4ef from memory into f18
fdiv.h f2, f11, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x605591e9 # load x3 with value 0x605591e9
sw x3, 0(x2) # store 0x605591e9 in memory
flh f21, 0(x2) # load 0x605591e9 from memory into f21
la x2, scratch
li x3, 0x2ff92970 # load x3 with value 0x2ff92970
sw x3, 0(x2) # store 0x2ff92970 in memory
flh f19, 0(x2) # load 0x2ff92970 from memory into f19
fdiv.h f12, f21, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xb425970d # load x3 with value 0xb425970d
sw x3, 0(x2) # store 0xb425970d in memory
flh f23, 0(x2) # load 0xb425970d from memory into f23
la x2, scratch
li x3, 0x4ad47b40 # load x3 with value 0x4ad47b40
sw x3, 0(x2) # store 0x4ad47b40 in memory
flh f20, 0(x2) # load 0x4ad47b40 from memory into f20
fdiv.h f31, f23, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xeeb6eba5 # load x3 with value 0xeeb6eba5
sw x3, 0(x2) # store 0xeeb6eba5 in memory
flh f29, 0(x2) # load 0xeeb6eba5 from memory into f29
la x2, scratch
li x3, 0x4ffd22bc # load x3 with value 0x4ffd22bc
sw x3, 0(x2) # store 0x4ffd22bc in memory
flh f21, 0(x2) # load 0x4ffd22bc from memory into f21
fdiv.h f19, f29, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x072ebeb8 # load x3 with value 0x072ebeb8
sw x3, 0(x2) # store 0x072ebeb8 in memory
flh f12, 0(x2) # load 0x072ebeb8 from memory into f12
la x2, scratch
li x3, 0x97e877e1 # load x3 with value 0x97e877e1
sw x3, 0(x2) # store 0x97e877e1 in memory
flh f22, 0(x2) # load 0x97e877e1 from memory into f22
fdiv.h f29, f12, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x3942471b # load x3 with value 0x3942471b
sw x3, 0(x2) # store 0x3942471b in memory
flh f24, 0(x2) # load 0x3942471b from memory into f24
la x2, scratch
li x3, 0xe08fb5e9 # load x3 with value 0xe08fb5e9
sw x3, 0(x2) # store 0xe08fb5e9 in memory
flh f23, 0(x2) # load 0xe08fb5e9 from memory into f23
fdiv.h f16, f24, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x13c73c74 # load x3 with value 0x13c73c74
sw x3, 0(x2) # store 0x13c73c74 in memory
flh f7, 0(x2) # load 0x13c73c74 from memory into f7
la x2, scratch
li x3, 0xe6028f63 # load x3 with value 0xe6028f63
sw x3, 0(x2) # store 0xe6028f63 in memory
flh f24, 0(x2) # load 0xe6028f63 from memory into f24
fdiv.h f13, f7, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x3178f738 # load x3 with value 0x3178f738
sw x3, 0(x2) # store 0x3178f738 in memory
flh f28, 0(x2) # load 0x3178f738 from memory into f28
la x2, scratch
li x3, 0x3eafb1d7 # load x3 with value 0x3eafb1d7
sw x3, 0(x2) # store 0x3eafb1d7 in memory
flh f25, 0(x2) # load 0x3eafb1d7 from memory into f25
fdiv.h f15, f28, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0xd633f364 # load x3 with value 0xd633f364
sw x3, 0(x2) # store 0xd633f364 in memory
flh f24, 0(x2) # load 0xd633f364 from memory into f24
la x2, scratch
li x3, 0xa5c3a187 # load x3 with value 0xa5c3a187
sw x3, 0(x2) # store 0xa5c3a187 in memory
flh f26, 0(x2) # load 0xa5c3a187 from memory into f26
fdiv.h f6, f24, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x0f9b054b # load x3 with value 0x0f9b054b
sw x3, 0(x2) # store 0x0f9b054b in memory
flh f15, 0(x2) # load 0x0f9b054b from memory into f15
la x2, scratch
li x3, 0x2557d66f # load x3 with value 0x2557d66f
sw x3, 0(x2) # store 0x2557d66f in memory
flh f27, 0(x2) # load 0x2557d66f from memory into f27
fdiv.h f26, f15, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x816cca31 # load x3 with value 0x816cca31
sw x3, 0(x2) # store 0x816cca31 in memory
flh f10, 0(x2) # load 0x816cca31 from memory into f10
la x2, scratch
li x3, 0x776c2bb9 # load x3 with value 0x776c2bb9
sw x3, 0(x2) # store 0x776c2bb9 in memory
flh f28, 0(x2) # load 0x776c2bb9 from memory into f28
fdiv.h f13, f10, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x066054b9 # load x3 with value 0x066054b9
sw x3, 0(x2) # store 0x066054b9 in memory
flh f31, 0(x2) # load 0x066054b9 from memory into f31
la x2, scratch
li x3, 0x5dde4417 # load x3 with value 0x5dde4417
sw x3, 0(x2) # store 0x5dde4417 in memory
flh f29, 0(x2) # load 0x5dde4417 from memory into f29
fdiv.h f27, f31, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x236298ce # load x3 with value 0x236298ce
sw x3, 0(x2) # store 0x236298ce in memory
flh f28, 0(x2) # load 0x236298ce from memory into f28
la x2, scratch
li x3, 0x2d432616 # load x3 with value 0x2d432616
sw x3, 0(x2) # store 0x2d432616 in memory
flh f30, 0(x2) # load 0x2d432616 from memory into f30
fdiv.h f2, f28, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x9f186b14 # load x3 with value 0x9f186b14
sw x3, 0(x2) # store 0x9f186b14 in memory
flh f26, 0(x2) # load 0x9f186b14 from memory into f26
la x2, scratch
li x3, 0x6da56184 # load x3 with value 0x6da56184
sw x3, 0(x2) # store 0x6da56184 in memory
flh f31, 0(x2) # load 0x6da56184 from memory into f31
fdiv.h f30, f26, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xe28c2d33 # load x3 with value 0xe28c2d33
sw x3, 0(x2) # store 0xe28c2d33 in memory
flh f25, 0(x2) # load 0xe28c2d33 from memory into f25
la x2, scratch
li x3, 0x19acd83a # load x3 with value 0x19acd83a
sw x3, 0(x2) # store 0x19acd83a in memory
flh f6, 0(x2) # load 0x19acd83a from memory into f6
fdiv.h f0, f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x3fdd67d8 # load x3 with value 0x3fdd67d8
sw x3, 0(x2) # store 0x3fdd67d8 in memory
flh f7, 0(x2) # load 0x3fdd67d8 from memory into f7
la x2, scratch
li x3, 0x1fe46958 # load x3 with value 0x1fe46958
sw x3, 0(x2) # store 0x1fe46958 in memory
flh f24, 0(x2) # load 0x1fe46958 from memory into f24
fdiv.h f1, f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x50e9fdd6 # load x3 with value 0x50e9fdd6
sw x3, 0(x2) # store 0x50e9fdd6 in memory
flh f7, 0(x2) # load 0x50e9fdd6 from memory into f7
la x2, scratch
li x3, 0x8252218f # load x3 with value 0x8252218f
sw x3, 0(x2) # store 0x8252218f in memory
flh f15, 0(x2) # load 0x8252218f from memory into f15
fdiv.h f2, f7, f15 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x3eff70cd # load x3 with value 0x3eff70cd
sw x3, 0(x2) # store 0x3eff70cd in memory
flh f20, 0(x2) # load 0x3eff70cd from memory into f20
la x2, scratch
li x3, 0xc09ddcec # load x3 with value 0xc09ddcec
sw x3, 0(x2) # store 0xc09ddcec in memory
flh f14, 0(x2) # load 0xc09ddcec from memory into f14
fdiv.h f3, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x4)
la x2, scratch
li x3, 0x5cc19bbf # load x3 with value 0x5cc19bbf
sw x3, 0(x2) # store 0x5cc19bbf in memory
flh f25, 0(x2) # load 0x5cc19bbf from memory into f25
la x2, scratch
li x3, 0xcbe82cb4 # load x3 with value 0xcbe82cb4
sw x3, 0(x2) # store 0xcbe82cb4 in memory
flh f1, 0(x2) # load 0xcbe82cb4 from memory into f1
fdiv.h f4, f25, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x27860aee # load x3 with value 0x27860aee
sw x3, 0(x2) # store 0x27860aee in memory
flh f23, 0(x2) # load 0x27860aee from memory into f23
la x2, scratch
li x3, 0xcee2b369 # load x3 with value 0xcee2b369
sw x3, 0(x2) # store 0xcee2b369 in memory
flh f11, 0(x2) # load 0xcee2b369 from memory into f11
fdiv.h f5, f23, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbaa84536 # load x3 with value 0xbaa84536
sw x3, 0(x2) # store 0xbaa84536 in memory
flh f26, 0(x2) # load 0xbaa84536 from memory into f26
la x2, scratch
li x3, 0xa2266efe # load x3 with value 0xa2266efe
sw x3, 0(x2) # store 0xa2266efe in memory
flh f10, 0(x2) # load 0xa2266efe from memory into f10
fdiv.h f6, f26, f10 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa272bcf3 # load x3 with value 0xa272bcf3
sw x3, 0(x2) # store 0xa272bcf3 in memory
flh f2, 0(x2) # load 0xa272bcf3 from memory into f2
la x2, scratch
li x3, 0x8f51fd1d # load x3 with value 0x8f51fd1d
sw x3, 0(x2) # store 0x8f51fd1d in memory
flh f22, 0(x2) # load 0x8f51fd1d from memory into f22
fdiv.h f7, f2, f22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x4084b04b # load x3 with value 0x4084b04b
sw x3, 0(x2) # store 0x4084b04b in memory
flh f14, 0(x2) # load 0x4084b04b from memory into f14
la x2, scratch
li x3, 0x4bbb85f7 # load x3 with value 0x4bbb85f7
sw x3, 0(x2) # store 0x4bbb85f7 in memory
flh f13, 0(x2) # load 0x4bbb85f7 from memory into f13
fdiv.h f8, f14, f13 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x556a7738 # load x3 with value 0x556a7738
sw x3, 0(x2) # store 0x556a7738 in memory
flh f21, 0(x2) # load 0x556a7738 from memory into f21
la x2, scratch
li x3, 0x5b02727b # load x3 with value 0x5b02727b
sw x3, 0(x2) # store 0x5b02727b in memory
flh f6, 0(x2) # load 0x5b02727b from memory into f6
fdiv.h f9, f21, f6 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x6b537ab4 # load x3 with value 0x6b537ab4
sw x3, 0(x2) # store 0x6b537ab4 in memory
flh f3, 0(x2) # load 0x6b537ab4 from memory into f3
la x2, scratch
li x3, 0xd4fa2941 # load x3 with value 0xd4fa2941
sw x3, 0(x2) # store 0xd4fa2941 in memory
flh f27, 0(x2) # load 0xd4fa2941 from memory into f27
fdiv.h f10, f3, f27 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xd4a754dd # load x3 with value 0xd4a754dd
sw x3, 0(x2) # store 0xd4a754dd in memory
flh f21, 0(x2) # load 0xd4a754dd from memory into f21
la x2, scratch
li x3, 0xa8a0d239 # load x3 with value 0xa8a0d239
sw x3, 0(x2) # store 0xa8a0d239 in memory
flh f19, 0(x2) # load 0xa8a0d239 from memory into f19
fdiv.h f11, f21, f19 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xcad485ba # load x3 with value 0xcad485ba
sw x3, 0(x2) # store 0xcad485ba in memory
flh f21, 0(x2) # load 0xcad485ba from memory into f21
la x2, scratch
li x3, 0xc879cba8 # load x3 with value 0xc879cba8
sw x3, 0(x2) # store 0xc879cba8 in memory
flh f10, 0(x2) # load 0xc879cba8 from memory into f10
fdiv.h f12, f21, f10 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x1c7bebba # load x3 with value 0x1c7bebba
sw x3, 0(x2) # store 0x1c7bebba in memory
flh f8, 0(x2) # load 0x1c7bebba from memory into f8
la x2, scratch
li x3, 0x8918b0f5 # load x3 with value 0x8918b0f5
sw x3, 0(x2) # store 0x8918b0f5 in memory
flh f18, 0(x2) # load 0x8918b0f5 from memory into f18
fdiv.h f13, f8, f18 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x0cda0129 # load x3 with value 0x0cda0129
sw x3, 0(x2) # store 0x0cda0129 in memory
flh f1, 0(x2) # load 0x0cda0129 from memory into f1
la x2, scratch
li x3, 0x4356ffeb # load x3 with value 0x4356ffeb
sw x3, 0(x2) # store 0x4356ffeb in memory
flh f10, 0(x2) # load 0x4356ffeb from memory into f10
fdiv.h f14, f1, f10 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xc139b5d4 # load x3 with value 0xc139b5d4
sw x3, 0(x2) # store 0xc139b5d4 in memory
flh f11, 0(x2) # load 0xc139b5d4 from memory into f11
la x2, scratch
li x3, 0x31d75dd5 # load x3 with value 0x31d75dd5
sw x3, 0(x2) # store 0x31d75dd5 in memory
flh f29, 0(x2) # load 0x31d75dd5 from memory into f29
fdiv.h f15, f11, f29 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x071b04ae # load x3 with value 0x071b04ae
sw x3, 0(x2) # store 0x071b04ae in memory
flh f6, 0(x2) # load 0x071b04ae from memory into f6
la x2, scratch
li x3, 0x25f7be95 # load x3 with value 0x25f7be95
sw x3, 0(x2) # store 0x25f7be95 in memory
flh f18, 0(x2) # load 0x25f7be95 from memory into f18
fdiv.h f16, f6, f18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xcc6b9aa0 # load x3 with value 0xcc6b9aa0
sw x3, 0(x2) # store 0xcc6b9aa0 in memory
flh f5, 0(x2) # load 0xcc6b9aa0 from memory into f5
la x2, scratch
li x3, 0xebfef4d2 # load x3 with value 0xebfef4d2
sw x3, 0(x2) # store 0xebfef4d2 in memory
flh f13, 0(x2) # load 0xebfef4d2 from memory into f13
fdiv.h f17, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x49093d30 # load x3 with value 0x49093d30
sw x3, 0(x2) # store 0x49093d30 in memory
flh f22, 0(x2) # load 0x49093d30 from memory into f22
la x2, scratch
li x3, 0x26298c70 # load x3 with value 0x26298c70
sw x3, 0(x2) # store 0x26298c70 in memory
flh f17, 0(x2) # load 0x26298c70 from memory into f17
fdiv.h f18, f22, f17 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x6c0a8352 # load x3 with value 0x6c0a8352
sw x3, 0(x2) # store 0x6c0a8352 in memory
flh f14, 0(x2) # load 0x6c0a8352 from memory into f14
la x2, scratch
li x3, 0xb878e028 # load x3 with value 0xb878e028
sw x3, 0(x2) # store 0xb878e028 in memory
flh f22, 0(x2) # load 0xb878e028 from memory into f22
fdiv.h f19, f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x5c01f099 # load x3 with value 0x5c01f099
sw x3, 0(x2) # store 0x5c01f099 in memory
flh f22, 0(x2) # load 0x5c01f099 from memory into f22
la x2, scratch
li x3, 0xa8e6b283 # load x3 with value 0xa8e6b283
sw x3, 0(x2) # store 0xa8e6b283 in memory
flh f6, 0(x2) # load 0xa8e6b283 from memory into f6
fdiv.h f20, f22, f6 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xebad287f # load x3 with value 0xebad287f
sw x3, 0(x2) # store 0xebad287f in memory
flh f22, 0(x2) # load 0xebad287f from memory into f22
la x2, scratch
li x3, 0xfbc3cf13 # load x3 with value 0xfbc3cf13
sw x3, 0(x2) # store 0xfbc3cf13 in memory
flh f11, 0(x2) # load 0xfbc3cf13 from memory into f11
fdiv.h f21, f22, f11 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x86a833bc # load x3 with value 0x86a833bc
sw x3, 0(x2) # store 0x86a833bc in memory
flh f12, 0(x2) # load 0x86a833bc from memory into f12
la x2, scratch
li x3, 0x8209d351 # load x3 with value 0x8209d351
sw x3, 0(x2) # store 0x8209d351 in memory
flh f6, 0(x2) # load 0x8209d351 from memory into f6
fdiv.h f22, f12, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0xe7f3fa5f # load x3 with value 0xe7f3fa5f
sw x3, 0(x2) # store 0xe7f3fa5f in memory
flh f25, 0(x2) # load 0xe7f3fa5f from memory into f25
la x2, scratch
li x3, 0x5e01d4e4 # load x3 with value 0x5e01d4e4
sw x3, 0(x2) # store 0x5e01d4e4 in memory
flh f11, 0(x2) # load 0x5e01d4e4 from memory into f11
fdiv.h f23, f25, f11 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x14f3b6f4 # load x3 with value 0x14f3b6f4
sw x3, 0(x2) # store 0x14f3b6f4 in memory
flh f2, 0(x2) # load 0x14f3b6f4 from memory into f2
la x2, scratch
li x3, 0x68f3068a # load x3 with value 0x68f3068a
sw x3, 0(x2) # store 0x68f3068a in memory
flh f18, 0(x2) # load 0x68f3068a from memory into f18
fdiv.h f24, f2, f18 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0xff36e8a7 # load x3 with value 0xff36e8a7
sw x3, 0(x2) # store 0xff36e8a7 in memory
flh f28, 0(x2) # load 0xff36e8a7 from memory into f28
la x2, scratch
li x3, 0xaf33eaa7 # load x3 with value 0xaf33eaa7
sw x3, 0(x2) # store 0xaf33eaa7 in memory
flh f1, 0(x2) # load 0xaf33eaa7 from memory into f1
fdiv.h f25, f28, f1 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x3c43ad3c # load x3 with value 0x3c43ad3c
sw x3, 0(x2) # store 0x3c43ad3c in memory
flh f14, 0(x2) # load 0x3c43ad3c from memory into f14
la x2, scratch
li x3, 0x3c1dd694 # load x3 with value 0x3c1dd694
sw x3, 0(x2) # store 0x3c1dd694 in memory
flh f10, 0(x2) # load 0x3c1dd694 from memory into f10
fdiv.h f26, f14, f10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x3b06ad44 # load x3 with value 0x3b06ad44
sw x3, 0(x2) # store 0x3b06ad44 in memory
flh f21, 0(x2) # load 0x3b06ad44 from memory into f21
la x2, scratch
li x3, 0x0f53b10d # load x3 with value 0x0f53b10d
sw x3, 0(x2) # store 0x0f53b10d in memory
flh f5, 0(x2) # load 0x0f53b10d from memory into f5
fdiv.h f27, f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0xd3878129 # load x3 with value 0xd3878129
sw x3, 0(x2) # store 0xd3878129 in memory
flh f2, 0(x2) # load 0xd3878129 from memory into f2
la x2, scratch
li x3, 0xeb9a0289 # load x3 with value 0xeb9a0289
sw x3, 0(x2) # store 0xeb9a0289 in memory
flh f26, 0(x2) # load 0xeb9a0289 from memory into f26
fdiv.h f28, f2, f26 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xfb5808f7 # load x3 with value 0xfb5808f7
sw x3, 0(x2) # store 0xfb5808f7 in memory
flh f22, 0(x2) # load 0xfb5808f7 from memory into f22
la x2, scratch
li x3, 0xaea37777 # load x3 with value 0xaea37777
sw x3, 0(x2) # store 0xaea37777 in memory
flh f31, 0(x2) # load 0xaea37777 from memory into f31
fdiv.h f29, f22, f31 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x6db0b4b0 # load x3 with value 0x6db0b4b0
sw x3, 0(x2) # store 0x6db0b4b0 in memory
flh f9, 0(x2) # load 0x6db0b4b0 from memory into f9
la x2, scratch
li x3, 0x793f3fd0 # load x3 with value 0x793f3fd0
sw x3, 0(x2) # store 0x793f3fd0 in memory
flh f22, 0(x2) # load 0x793f3fd0 from memory into f22
fdiv.h f30, f9, f22 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x215ff263 # load x3 with value 0x215ff263
sw x3, 0(x2) # store 0x215ff263 in memory
flh f15, 0(x2) # load 0x215ff263 from memory into f15
la x2, scratch
li x3, 0x4c879619 # load x3 with value 0x4c879619
sw x3, 0(x2) # store 0x4c879619 in memory
flh f29, 0(x2) # load 0x4c879619 from memory into f29
fdiv.h f31, f15, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xad7be9c4 # load x3 with value 0xad7be9c4
sw x3, 0(x2) # store 0xad7be9c4 in memory
flh f30, 0(x2) # load 0xad7be9c4 from memory into f30
fdiv.h f28, f31, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0xad4084d1 # load x3 with value 0xad4084d1
sw x3, 0(x2) # store 0xad4084d1 in memory
flh f2, 0(x2) # load 0xad4084d1 from memory into f2
fdiv.h f18, f31, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x39d9f4cb # load x3 with value 0x39d9f4cb
sw x3, 0(x2) # store 0x39d9f4cb in memory
flh f25, 0(x2) # load 0x39d9f4cb from memory into f25
fdiv.h f23, f17, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
la x2, scratch
li x3, 0x75008373 # load x3 with value 0x75008373
sw x3, 0(x2) # store 0x75008373 in memory
flh f27, 0(x2) # load 0x75008373 from memory into f27
fdiv.h f3, f8, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
la x2, scratch
li x3, 0xc167a270 # load x3 with value 0xc167a270
sw x3, 0(x2) # store 0xc167a270 in memory
flh f30, 0(x2) # load 0xc167a270 from memory into f30
fdiv.h f1, f3, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0xf4bad65a # load x3 with value 0xf4bad65a
sw x3, 0(x2) # store 0xf4bad65a in memory
flh f27, 0(x2) # load 0xf4bad65a from memory into f27
fdiv.h f16, f24, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x3c8f5c82 # load x3 with value 0x3c8f5c82
sw x3, 0(x2) # store 0x3c8f5c82 in memory
flh f10, 0(x2) # load 0x3c8f5c82 from memory into f10
fdiv.h f8, f24, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0xd4021c55 # load x3 with value 0xd4021c55
sw x3, 0(x2) # store 0xd4021c55 in memory
flh f23, 0(x2) # load 0xd4021c55 from memory into f23
fdiv.h f7, f12, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
la x2, scratch
li x3, 0xa6cbdfe0 # load x3 with value 0xa6cbdfe0
sw x3, 0(x2) # store 0xa6cbdfe0 in memory
flh f24, 0(x2) # load 0xa6cbdfe0 from memory into f24
fdiv.h f7, f14, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x89ba1a60 # load x3 with value 0x89ba1a60
sw x3, 0(x2) # store 0x89ba1a60 in memory
flh f2, 0(x2) # load 0x89ba1a60 from memory into f2
fdiv.h f31, f26, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x807ccfe9 # load x3 with value 0x807ccfe9
sw x3, 0(x2) # store 0x807ccfe9 in memory
flh f16, 0(x2) # load 0x807ccfe9 from memory into f16
fdiv.h f27, f12, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0xc74990ed # load x3 with value 0xc74990ed
sw x3, 0(x2) # store 0xc74990ed in memory
flh f5, 0(x2) # load 0xc74990ed from memory into f5
fdiv.h f14, f24, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x3f6be1dc # load x3 with value 0x3f6be1dc
sw x3, 0(x2) # store 0x3f6be1dc in memory
flh f1, 0(x2) # load 0x3f6be1dc from memory into f1
fdiv.h f12, f24, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0xbaff6e77 # load x3 with value 0xbaff6e77
sw x3, 0(x2) # store 0xbaff6e77 in memory
flh f31, 0(x2) # load 0xbaff6e77 from memory into f31
fdiv.h f30, f13, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x5937a839 # load x3 with value 0x5937a839
sw x3, 0(x2) # store 0x5937a839 in memory
flh f25, 0(x2) # load 0x5937a839 from memory into f25
fdiv.h f21, f23, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x953c5448 # load x3 with value 0x953c5448
sw x3, 0(x2) # store 0x953c5448 in memory
flh f17, 0(x2) # load 0x953c5448 from memory into f17
fdiv.h f29, f8, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x24e451eb # load x3 with value 0x24e451eb
sw x3, 0(x2) # store 0x24e451eb in memory
flh f16, 0(x2) # load 0x24e451eb from memory into f16
fdiv.h f14, f13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
la x2, scratch
li x3, 0x3b0ec21b # load x3 with value 0x3b0ec21b
sw x3, 0(x2) # store 0x3b0ec21b in memory
flh f27, 0(x2) # load 0x3b0ec21b from memory into f27
fdiv.h f31, f18, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0xdd51513d # load x3 with value 0xdd51513d
sw x3, 0(x2) # store 0xdd51513d in memory
flh f24, 0(x2) # load 0xdd51513d from memory into f24
fdiv.h f15, f19, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
la x2, scratch
li x3, 0x3d62a532 # load x3 with value 0x3d62a532
sw x3, 0(x2) # store 0x3d62a532 in memory
flh f28, 0(x2) # load 0x3d62a532 from memory into f28
fdiv.h f3, f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x2, scratch
li x3, 0xbd2fb205 # load x3 with value 0xbd2fb205
sw x3, 0(x2) # store 0xbd2fb205 in memory
flh f19, 0(x2) # load 0xbd2fb205 from memory into f19
fdiv.h f22, f1, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
la x2, scratch
li x3, 0x93d17307 # load x3 with value 0x93d17307
sw x3, 0(x2) # store 0x93d17307 in memory
flh f17, 0(x2) # load 0x93d17307 from memory into f17
fdiv.h f23, f18, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
la x2, scratch
li x3, 0x6b7c5057 # load x3 with value 0x6b7c5057
sw x3, 0(x2) # store 0x6b7c5057 in memory
flh f26, 0(x2) # load 0x6b7c5057 from memory into f26
fdiv.h f6, f30, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x9e5b920c # load x3 with value 0x9e5b920c
sw x3, 0(x2) # store 0x9e5b920c in memory
flh f31, 0(x2) # load 0x9e5b920c from memory into f31
fdiv.h f29, f15, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0xa13466fd # load x3 with value 0xa13466fd
sw x3, 0(x2) # store 0xa13466fd in memory
flh f19, 0(x2) # load 0xa13466fd from memory into f19
fdiv.h f11, f2, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x63b4efb0 # load x3 with value 0x63b4efb0
sw x3, 0(x2) # store 0x63b4efb0 in memory
flh f10, 0(x2) # load 0x63b4efb0 from memory into f10
fdiv.h f9, f22, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x278663a1 # load x3 with value 0x278663a1
sw x3, 0(x2) # store 0x278663a1 in memory
flh f10, 0(x2) # load 0x278663a1 from memory into f10
fdiv.h f20, f25, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x81976bf4 # load x3 with value 0x81976bf4
sw x3, 0(x2) # store 0x81976bf4 in memory
flh f30, 0(x2) # load 0x81976bf4 from memory into f30
fdiv.h f7, f2, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x66d09499 # load x3 with value 0x66d09499
sw x3, 0(x2) # store 0x66d09499 in memory
flh f26, 0(x2) # load 0x66d09499 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.h f16, f26, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0xf4860125 # load x3 with value 0xf4860125
sw x3, 0(x2) # store 0xf4860125 in memory
flh f8, 0(x2) # load 0xf4860125 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fdiv.h f26, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x3ef80e15 # load x3 with value 0x3ef80e15
sw x3, 0(x2) # store 0x3ef80e15 in memory
flh f20, 0(x2) # load 0x3ef80e15 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fdiv.h f31, f20, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0xacb650bf # load x3 with value 0xacb650bf
sw x3, 0(x2) # store 0xacb650bf in memory
flh f11, 0(x2) # load 0xacb650bf from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fdiv.h f25, f11, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0xb0abb39c # load x3 with value 0xb0abb39c
sw x3, 0(x2) # store 0xb0abb39c in memory
flh f10, 0(x2) # load 0xb0abb39c from memory into f10
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f23, f10, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x954e084b # load x3 with value 0x954e084b
sw x3, 0(x2) # store 0x954e084b in memory
flh f8, 0(x2) # load 0x954e084b from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fdiv.h f18, f8, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x3e8db7f5 # load x3 with value 0x3e8db7f5
sw x3, 0(x2) # store 0x3e8db7f5 in memory
flh f7, 0(x2) # load 0x3e8db7f5 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fdiv.h f2, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x252153d0 # load x3 with value 0x252153d0
sw x3, 0(x2) # store 0x252153d0 in memory
flh f5, 0(x2) # load 0x252153d0 from memory into f5
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fdiv.h f18, f5, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0xd2b9452c # load x3 with value 0xd2b9452c
sw x3, 0(x2) # store 0xd2b9452c in memory
flh f12, 0(x2) # load 0xd2b9452c from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fdiv.h f31, f12, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0xda14e48d # load x3 with value 0xda14e48d
sw x3, 0(x2) # store 0xda14e48d in memory
flh f25, 0(x2) # load 0xda14e48d from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fdiv.h f10, f25, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x1dae2c1f # load x3 with value 0x1dae2c1f
sw x3, 0(x2) # store 0x1dae2c1f in memory
flh f7, 0(x2) # load 0x1dae2c1f from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fdiv.h f5, f7, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x673f9771 # load x3 with value 0x673f9771
sw x3, 0(x2) # store 0x673f9771 in memory
flh f30, 0(x2) # load 0x673f9771 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fdiv.h f14, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x98dfbcc5 # load x3 with value 0x98dfbcc5
sw x3, 0(x2) # store 0x98dfbcc5 in memory
flh f9, 0(x2) # load 0x98dfbcc5 from memory into f9
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fdiv.h f21, f9, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x90b60c41 # load x3 with value 0x90b60c41
sw x3, 0(x2) # store 0x90b60c41 in memory
flh f24, 0(x2) # load 0x90b60c41 from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fdiv.h f11, f24, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x60fd9f7d # load x3 with value 0x60fd9f7d
sw x3, 0(x2) # store 0x60fd9f7d in memory
flh f9, 0(x2) # load 0x60fd9f7d from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f17, f9, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x44176eb1 # load x3 with value 0x44176eb1
sw x3, 0(x2) # store 0x44176eb1 in memory
flh f5, 0(x2) # load 0x44176eb1 from memory into f5
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fdiv.h f25, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x82761722 # load x3 with value 0x82761722
sw x3, 0(x2) # store 0x82761722 in memory
flh f10, 0(x2) # load 0x82761722 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.h f24, f10, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x05aeacc2 # load x3 with value 0x05aeacc2
sw x3, 0(x2) # store 0x05aeacc2 in memory
flh f8, 0(x2) # load 0x05aeacc2 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fdiv.h f3, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x53d5323f # load x3 with value 0x53d5323f
sw x3, 0(x2) # store 0x53d5323f in memory
flh f8, 0(x2) # load 0x53d5323f from memory into f8
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fdiv.h f5, f8, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0xc295e1bd # load x3 with value 0xc295e1bd
sw x3, 0(x2) # store 0xc295e1bd in memory
flh f18, 0(x2) # load 0xc295e1bd from memory into f18
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fdiv.h f11, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x38a173e2 # load x3 with value 0x38a173e2
sw x3, 0(x2) # store 0x38a173e2 in memory
flh f25, 0(x2) # load 0x38a173e2 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fdiv.h f12, f25, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x308d1fe0 # load x3 with value 0x308d1fe0
sw x3, 0(x2) # store 0x308d1fe0 in memory
flh f18, 0(x2) # load 0x308d1fe0 from memory into f18
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f14, f18, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0xbe757b6c # load x3 with value 0xbe757b6c
sw x3, 0(x2) # store 0xbe757b6c in memory
flh f21, 0(x2) # load 0xbe757b6c from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
fdiv.h f25, f21, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x9fe29585 # load x3 with value 0x9fe29585
sw x3, 0(x2) # store 0x9fe29585 in memory
flh f22, 0(x2) # load 0x9fe29585 from memory into f22
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fdiv.h f20, f22, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x650124a3 # load x3 with value 0x650124a3
sw x3, 0(x2) # store 0x650124a3 in memory
flh f6, 0(x2) # load 0x650124a3 from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fdiv.h f17, f6, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x37d53398 # load x3 with value 0x37d53398
sw x3, 0(x2) # store 0x37d53398 in memory
flh f25, 0(x2) # load 0x37d53398 from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fdiv.h f5, f25, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0xc3ed44dd # load x3 with value 0xc3ed44dd
sw x3, 0(x2) # store 0xc3ed44dd in memory
flh f8, 0(x2) # load 0xc3ed44dd from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fdiv.h f9, f8, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0xbc799479 # load x3 with value 0xbc799479
sw x3, 0(x2) # store 0xbc799479 in memory
flh f3, 0(x2) # load 0xbc799479 from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fdiv.h f25, f3, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x88dbb8f1 # load x3 with value 0x88dbb8f1
sw x3, 0(x2) # store 0x88dbb8f1 in memory
flh f0, 0(x2) # load 0x88dbb8f1 from memory into f0
la x2, scratch
li x3, 0xae50c17b # load x3 with value 0xae50c17b
sw x3, 0(x2) # store 0xae50c17b in memory
flh f29, 0(x2) # load 0xae50c17b from memory into f29
fdiv.h f0, f0, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xff50163f # load x3 with value 0xff50163f
sw x3, 0(x2) # store 0xff50163f in memory
flh f1, 0(x2) # load 0xff50163f from memory into f1
la x2, scratch
li x3, 0x9aa59f2e # load x3 with value 0x9aa59f2e
sw x3, 0(x2) # store 0x9aa59f2e in memory
flh f22, 0(x2) # load 0x9aa59f2e from memory into f22
fdiv.h f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x2dacb400 # load x3 with value 0x2dacb400
sw x3, 0(x2) # store 0x2dacb400 in memory
flh f2, 0(x2) # load 0x2dacb400 from memory into f2
la x2, scratch
li x3, 0x221c3448 # load x3 with value 0x221c3448
sw x3, 0(x2) # store 0x221c3448 in memory
flh f28, 0(x2) # load 0x221c3448 from memory into f28
fdiv.h f2, f2, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x82e63fd9 # load x3 with value 0x82e63fd9
sw x3, 0(x2) # store 0x82e63fd9 in memory
flh f3, 0(x2) # load 0x82e63fd9 from memory into f3
la x2, scratch
li x3, 0xe20aafa3 # load x3 with value 0xe20aafa3
sw x3, 0(x2) # store 0xe20aafa3 in memory
flh f6, 0(x2) # load 0xe20aafa3 from memory into f6
fdiv.h f3, f3, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1114d9c3 # load x3 with value 0x1114d9c3
sw x3, 0(x2) # store 0x1114d9c3 in memory
flh f4, 0(x2) # load 0x1114d9c3 from memory into f4
la x2, scratch
li x3, 0x61e35304 # load x3 with value 0x61e35304
sw x3, 0(x2) # store 0x61e35304 in memory
flh f22, 0(x2) # load 0x61e35304 from memory into f22
fdiv.h f4, f4, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe9c5f4fd # load x3 with value 0xe9c5f4fd
sw x3, 0(x2) # store 0xe9c5f4fd in memory
flh f5, 0(x2) # load 0xe9c5f4fd from memory into f5
la x2, scratch
li x3, 0xcbc2f6f3 # load x3 with value 0xcbc2f6f3
sw x3, 0(x2) # store 0xcbc2f6f3 in memory
flh f3, 0(x2) # load 0xcbc2f6f3 from memory into f3
fdiv.h f5, f5, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x38dcd357 # load x3 with value 0x38dcd357
sw x3, 0(x2) # store 0x38dcd357 in memory
flh f6, 0(x2) # load 0x38dcd357 from memory into f6
la x2, scratch
li x3, 0xc0409afd # load x3 with value 0xc0409afd
sw x3, 0(x2) # store 0xc0409afd in memory
flh f9, 0(x2) # load 0xc0409afd from memory into f9
fdiv.h f6, f6, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7e8136cb # load x3 with value 0x7e8136cb
sw x3, 0(x2) # store 0x7e8136cb in memory
flh f7, 0(x2) # load 0x7e8136cb from memory into f7
la x2, scratch
li x3, 0x4675f4bb # load x3 with value 0x4675f4bb
sw x3, 0(x2) # store 0x4675f4bb in memory
flh f30, 0(x2) # load 0x4675f4bb from memory into f30
fdiv.h f7, f7, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xdcd35486 # load x3 with value 0xdcd35486
sw x3, 0(x2) # store 0xdcd35486 in memory
flh f8, 0(x2) # load 0xdcd35486 from memory into f8
la x2, scratch
li x3, 0x6354507d # load x3 with value 0x6354507d
sw x3, 0(x2) # store 0x6354507d in memory
flh f23, 0(x2) # load 0x6354507d from memory into f23
fdiv.h f8, f8, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xd28eabce # load x3 with value 0xd28eabce
sw x3, 0(x2) # store 0xd28eabce in memory
flh f9, 0(x2) # load 0xd28eabce from memory into f9
la x2, scratch
li x3, 0x3d6fec39 # load x3 with value 0x3d6fec39
sw x3, 0(x2) # store 0x3d6fec39 in memory
flh f31, 0(x2) # load 0x3d6fec39 from memory into f31
fdiv.h f9, f9, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x6d81a5be # load x3 with value 0x6d81a5be
sw x3, 0(x2) # store 0x6d81a5be in memory
flh f10, 0(x2) # load 0x6d81a5be from memory into f10
la x2, scratch
li x3, 0xf8055a4b # load x3 with value 0xf8055a4b
sw x3, 0(x2) # store 0xf8055a4b in memory
flh f31, 0(x2) # load 0xf8055a4b from memory into f31
fdiv.h f10, f10, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xdf15655f # load x3 with value 0xdf15655f
sw x3, 0(x2) # store 0xdf15655f in memory
flh f11, 0(x2) # load 0xdf15655f from memory into f11
la x2, scratch
li x3, 0x8092c898 # load x3 with value 0x8092c898
sw x3, 0(x2) # store 0x8092c898 in memory
flh f19, 0(x2) # load 0x8092c898 from memory into f19
fdiv.h f11, f11, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xe0549640 # load x3 with value 0xe0549640
sw x3, 0(x2) # store 0xe0549640 in memory
flh f12, 0(x2) # load 0xe0549640 from memory into f12
la x2, scratch
li x3, 0xd8515053 # load x3 with value 0xd8515053
sw x3, 0(x2) # store 0xd8515053 in memory
flh f10, 0(x2) # load 0xd8515053 from memory into f10
fdiv.h f12, f12, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xdf3a7113 # load x3 with value 0xdf3a7113
sw x3, 0(x2) # store 0xdf3a7113 in memory
flh f13, 0(x2) # load 0xdf3a7113 from memory into f13
la x2, scratch
li x3, 0x902ab73a # load x3 with value 0x902ab73a
sw x3, 0(x2) # store 0x902ab73a in memory
flh f17, 0(x2) # load 0x902ab73a from memory into f17
fdiv.h f13, f13, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x2534664c # load x3 with value 0x2534664c
sw x3, 0(x2) # store 0x2534664c in memory
flh f14, 0(x2) # load 0x2534664c from memory into f14
la x2, scratch
li x3, 0x963ec528 # load x3 with value 0x963ec528
sw x3, 0(x2) # store 0x963ec528 in memory
flh f17, 0(x2) # load 0x963ec528 from memory into f17
fdiv.h f14, f14, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x1be56dc7 # load x3 with value 0x1be56dc7
sw x3, 0(x2) # store 0x1be56dc7 in memory
flh f15, 0(x2) # load 0x1be56dc7 from memory into f15
la x2, scratch
li x3, 0x4ae1a445 # load x3 with value 0x4ae1a445
sw x3, 0(x2) # store 0x4ae1a445 in memory
flh f18, 0(x2) # load 0x4ae1a445 from memory into f18
fdiv.h f15, f15, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xdb046348 # load x3 with value 0xdb046348
sw x3, 0(x2) # store 0xdb046348 in memory
flh f16, 0(x2) # load 0xdb046348 from memory into f16
la x2, scratch
li x3, 0x282eaf25 # load x3 with value 0x282eaf25
sw x3, 0(x2) # store 0x282eaf25 in memory
flh f25, 0(x2) # load 0x282eaf25 from memory into f25
fdiv.h f16, f16, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x810b0939 # load x3 with value 0x810b0939
sw x3, 0(x2) # store 0x810b0939 in memory
flh f17, 0(x2) # load 0x810b0939 from memory into f17
la x2, scratch
li x3, 0x9c797408 # load x3 with value 0x9c797408
sw x3, 0(x2) # store 0x9c797408 in memory
flh f21, 0(x2) # load 0x9c797408 from memory into f21
fdiv.h f17, f17, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x4b5d7137 # load x3 with value 0x4b5d7137
sw x3, 0(x2) # store 0x4b5d7137 in memory
flh f18, 0(x2) # load 0x4b5d7137 from memory into f18
la x2, scratch
li x3, 0xbe06c51a # load x3 with value 0xbe06c51a
sw x3, 0(x2) # store 0xbe06c51a in memory
flh f12, 0(x2) # load 0xbe06c51a from memory into f12
fdiv.h f18, f18, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xe465100c # load x3 with value 0xe465100c
sw x3, 0(x2) # store 0xe465100c in memory
flh f19, 0(x2) # load 0xe465100c from memory into f19
la x2, scratch
li x3, 0x7da0fe7d # load x3 with value 0x7da0fe7d
sw x3, 0(x2) # store 0x7da0fe7d in memory
flh f13, 0(x2) # load 0x7da0fe7d from memory into f13
fdiv.h f19, f19, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x87959a6b # load x3 with value 0x87959a6b
sw x3, 0(x2) # store 0x87959a6b in memory
flh f20, 0(x2) # load 0x87959a6b from memory into f20
la x2, scratch
li x3, 0xcaea4c15 # load x3 with value 0xcaea4c15
sw x3, 0(x2) # store 0xcaea4c15 in memory
flh f31, 0(x2) # load 0xcaea4c15 from memory into f31
fdiv.h f20, f20, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xa84b64a7 # load x3 with value 0xa84b64a7
sw x3, 0(x2) # store 0xa84b64a7 in memory
flh f21, 0(x2) # load 0xa84b64a7 from memory into f21
la x2, scratch
li x3, 0x459b3b8e # load x3 with value 0x459b3b8e
sw x3, 0(x2) # store 0x459b3b8e in memory
flh f24, 0(x2) # load 0x459b3b8e from memory into f24
fdiv.h f21, f21, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x0623085b # load x3 with value 0x0623085b
sw x3, 0(x2) # store 0x0623085b in memory
flh f22, 0(x2) # load 0x0623085b from memory into f22
la x2, scratch
li x3, 0x2383a8b7 # load x3 with value 0x2383a8b7
sw x3, 0(x2) # store 0x2383a8b7 in memory
flh f8, 0(x2) # load 0x2383a8b7 from memory into f8
fdiv.h f22, f22, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xd0dc580e # load x3 with value 0xd0dc580e
sw x3, 0(x2) # store 0xd0dc580e in memory
flh f23, 0(x2) # load 0xd0dc580e from memory into f23
la x2, scratch
li x3, 0x2dce289d # load x3 with value 0x2dce289d
sw x3, 0(x2) # store 0x2dce289d in memory
flh f16, 0(x2) # load 0x2dce289d from memory into f16
fdiv.h f23, f23, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x7ca7cae1 # load x3 with value 0x7ca7cae1
sw x3, 0(x2) # store 0x7ca7cae1 in memory
flh f24, 0(x2) # load 0x7ca7cae1 from memory into f24
la x2, scratch
li x3, 0xf39992cc # load x3 with value 0xf39992cc
sw x3, 0(x2) # store 0xf39992cc in memory
flh f9, 0(x2) # load 0xf39992cc from memory into f9
fdiv.h f24, f24, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x4d9be2eb # load x3 with value 0x4d9be2eb
sw x3, 0(x2) # store 0x4d9be2eb in memory
flh f25, 0(x2) # load 0x4d9be2eb from memory into f25
la x2, scratch
li x3, 0x1eab8def # load x3 with value 0x1eab8def
sw x3, 0(x2) # store 0x1eab8def in memory
flh f29, 0(x2) # load 0x1eab8def from memory into f29
fdiv.h f25, f25, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x382546cc # load x3 with value 0x382546cc
sw x3, 0(x2) # store 0x382546cc in memory
flh f26, 0(x2) # load 0x382546cc from memory into f26
la x2, scratch
li x3, 0xb8b0f3f8 # load x3 with value 0xb8b0f3f8
sw x3, 0(x2) # store 0xb8b0f3f8 in memory
flh f20, 0(x2) # load 0xb8b0f3f8 from memory into f20
fdiv.h f26, f26, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x443c3027 # load x3 with value 0x443c3027
sw x3, 0(x2) # store 0x443c3027 in memory
flh f27, 0(x2) # load 0x443c3027 from memory into f27
la x2, scratch
li x3, 0x62bef187 # load x3 with value 0x62bef187
sw x3, 0(x2) # store 0x62bef187 in memory
flh f8, 0(x2) # load 0x62bef187 from memory into f8
fdiv.h f27, f27, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x293554a7 # load x3 with value 0x293554a7
sw x3, 0(x2) # store 0x293554a7 in memory
flh f28, 0(x2) # load 0x293554a7 from memory into f28
la x2, scratch
li x3, 0xc71ecd28 # load x3 with value 0xc71ecd28
sw x3, 0(x2) # store 0xc71ecd28 in memory
flh f23, 0(x2) # load 0xc71ecd28 from memory into f23
fdiv.h f28, f28, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xa2d5ebf4 # load x3 with value 0xa2d5ebf4
sw x3, 0(x2) # store 0xa2d5ebf4 in memory
flh f29, 0(x2) # load 0xa2d5ebf4 from memory into f29
la x2, scratch
li x3, 0xa3fbc323 # load x3 with value 0xa3fbc323
sw x3, 0(x2) # store 0xa3fbc323 in memory
flh f6, 0(x2) # load 0xa3fbc323 from memory into f6
fdiv.h f29, f29, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x994ff3aa # load x3 with value 0x994ff3aa
sw x3, 0(x2) # store 0x994ff3aa in memory
flh f30, 0(x2) # load 0x994ff3aa from memory into f30
la x2, scratch
li x3, 0x591b0217 # load x3 with value 0x591b0217
sw x3, 0(x2) # store 0x591b0217 in memory
flh f21, 0(x2) # load 0x591b0217 from memory into f21
fdiv.h f30, f30, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x0688919a # load x3 with value 0x0688919a
sw x3, 0(x2) # store 0x0688919a in memory
flh f31, 0(x2) # load 0x0688919a from memory into f31
la x2, scratch
li x3, 0x8f5942bc # load x3 with value 0x8f5942bc
sw x3, 0(x2) # store 0x8f5942bc in memory
flh f18, 0(x2) # load 0x8f5942bc from memory into f18
fdiv.h f31, f31, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xe465632f # load x3 with value 0xe465632f
sw x3, 0(x2) # store 0xe465632f in memory
flh f28, 0(x2) # load 0xe465632f from memory into f28
la x2, scratch
li x3, 0x5ec6fbc0 # load x3 with value 0x5ec6fbc0
sw x3, 0(x2) # store 0x5ec6fbc0 in memory
flh f0, 0(x2) # load 0x5ec6fbc0 from memory into f0
fdiv.h f0, f28, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x472dc2b8 # load x3 with value 0x472dc2b8
sw x3, 0(x2) # store 0x472dc2b8 in memory
flh f19, 0(x2) # load 0x472dc2b8 from memory into f19
la x2, scratch
li x3, 0x93586b56 # load x3 with value 0x93586b56
sw x3, 0(x2) # store 0x93586b56 in memory
flh f1, 0(x2) # load 0x93586b56 from memory into f1
fdiv.h f1, f19, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x9bfb73c6 # load x3 with value 0x9bfb73c6
sw x3, 0(x2) # store 0x9bfb73c6 in memory
flh f24, 0(x2) # load 0x9bfb73c6 from memory into f24
la x2, scratch
li x3, 0x7016cdaa # load x3 with value 0x7016cdaa
sw x3, 0(x2) # store 0x7016cdaa in memory
flh f2, 0(x2) # load 0x7016cdaa from memory into f2
fdiv.h f2, f24, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0xac5e6ff9 # load x3 with value 0xac5e6ff9
sw x3, 0(x2) # store 0xac5e6ff9 in memory
flh f16, 0(x2) # load 0xac5e6ff9 from memory into f16
la x2, scratch
li x3, 0x89546fef # load x3 with value 0x89546fef
sw x3, 0(x2) # store 0x89546fef in memory
flh f3, 0(x2) # load 0x89546fef from memory into f3
fdiv.h f3, f16, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4448cc88 # load x3 with value 0x4448cc88
sw x3, 0(x2) # store 0x4448cc88 in memory
flh f27, 0(x2) # load 0x4448cc88 from memory into f27
la x2, scratch
li x3, 0x842f3abd # load x3 with value 0x842f3abd
sw x3, 0(x2) # store 0x842f3abd in memory
flh f4, 0(x2) # load 0x842f3abd from memory into f4
fdiv.h f4, f27, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x55b29bc8 # load x3 with value 0x55b29bc8
sw x3, 0(x2) # store 0x55b29bc8 in memory
flh f30, 0(x2) # load 0x55b29bc8 from memory into f30
la x2, scratch
li x3, 0xbd3a7902 # load x3 with value 0xbd3a7902
sw x3, 0(x2) # store 0xbd3a7902 in memory
flh f5, 0(x2) # load 0xbd3a7902 from memory into f5
fdiv.h f5, f30, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x29606313 # load x3 with value 0x29606313
sw x3, 0(x2) # store 0x29606313 in memory
flh f11, 0(x2) # load 0x29606313 from memory into f11
la x2, scratch
li x3, 0xda275fc0 # load x3 with value 0xda275fc0
sw x3, 0(x2) # store 0xda275fc0 in memory
flh f6, 0(x2) # load 0xda275fc0 from memory into f6
fdiv.h f6, f11, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3f5d1d40 # load x3 with value 0x3f5d1d40
sw x3, 0(x2) # store 0x3f5d1d40 in memory
flh f16, 0(x2) # load 0x3f5d1d40 from memory into f16
la x2, scratch
li x3, 0x159dd5d4 # load x3 with value 0x159dd5d4
sw x3, 0(x2) # store 0x159dd5d4 in memory
flh f7, 0(x2) # load 0x159dd5d4 from memory into f7
fdiv.h f7, f16, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xa8bd08d3 # load x3 with value 0xa8bd08d3
sw x3, 0(x2) # store 0xa8bd08d3 in memory
flh f12, 0(x2) # load 0xa8bd08d3 from memory into f12
la x2, scratch
li x3, 0xe89c329a # load x3 with value 0xe89c329a
sw x3, 0(x2) # store 0xe89c329a in memory
flh f8, 0(x2) # load 0xe89c329a from memory into f8
fdiv.h f8, f12, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xbe755c67 # load x3 with value 0xbe755c67
sw x3, 0(x2) # store 0xbe755c67 in memory
flh f24, 0(x2) # load 0xbe755c67 from memory into f24
la x2, scratch
li x3, 0x20eeb2f6 # load x3 with value 0x20eeb2f6
sw x3, 0(x2) # store 0x20eeb2f6 in memory
flh f9, 0(x2) # load 0x20eeb2f6 from memory into f9
fdiv.h f9, f24, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x79306b2a # load x3 with value 0x79306b2a
sw x3, 0(x2) # store 0x79306b2a in memory
flh f29, 0(x2) # load 0x79306b2a from memory into f29
la x2, scratch
li x3, 0xff39c4b1 # load x3 with value 0xff39c4b1
sw x3, 0(x2) # store 0xff39c4b1 in memory
flh f10, 0(x2) # load 0xff39c4b1 from memory into f10
fdiv.h f10, f29, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xb07ee6e5 # load x3 with value 0xb07ee6e5
sw x3, 0(x2) # store 0xb07ee6e5 in memory
flh f21, 0(x2) # load 0xb07ee6e5 from memory into f21
la x2, scratch
li x3, 0x72e85db6 # load x3 with value 0x72e85db6
sw x3, 0(x2) # store 0x72e85db6 in memory
flh f11, 0(x2) # load 0x72e85db6 from memory into f11
fdiv.h f11, f21, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x457bf8e2 # load x3 with value 0x457bf8e2
sw x3, 0(x2) # store 0x457bf8e2 in memory
flh f25, 0(x2) # load 0x457bf8e2 from memory into f25
la x2, scratch
li x3, 0x2e561514 # load x3 with value 0x2e561514
sw x3, 0(x2) # store 0x2e561514 in memory
flh f12, 0(x2) # load 0x2e561514 from memory into f12
fdiv.h f12, f25, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x66a698e5 # load x3 with value 0x66a698e5
sw x3, 0(x2) # store 0x66a698e5 in memory
flh f17, 0(x2) # load 0x66a698e5 from memory into f17
la x2, scratch
li x3, 0x7bcf58a3 # load x3 with value 0x7bcf58a3
sw x3, 0(x2) # store 0x7bcf58a3 in memory
flh f13, 0(x2) # load 0x7bcf58a3 from memory into f13
fdiv.h f13, f17, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xbbc28492 # load x3 with value 0xbbc28492
sw x3, 0(x2) # store 0xbbc28492 in memory
flh f8, 0(x2) # load 0xbbc28492 from memory into f8
la x2, scratch
li x3, 0xd9990f77 # load x3 with value 0xd9990f77
sw x3, 0(x2) # store 0xd9990f77 in memory
flh f14, 0(x2) # load 0xd9990f77 from memory into f14
fdiv.h f14, f8, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x36f3c36d # load x3 with value 0x36f3c36d
sw x3, 0(x2) # store 0x36f3c36d in memory
flh f21, 0(x2) # load 0x36f3c36d from memory into f21
la x2, scratch
li x3, 0x50b80f39 # load x3 with value 0x50b80f39
sw x3, 0(x2) # store 0x50b80f39 in memory
flh f15, 0(x2) # load 0x50b80f39 from memory into f15
fdiv.h f15, f21, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x954b8ea1 # load x3 with value 0x954b8ea1
sw x3, 0(x2) # store 0x954b8ea1 in memory
flh f8, 0(x2) # load 0x954b8ea1 from memory into f8
la x2, scratch
li x3, 0xe2bf01e0 # load x3 with value 0xe2bf01e0
sw x3, 0(x2) # store 0xe2bf01e0 in memory
flh f16, 0(x2) # load 0xe2bf01e0 from memory into f16
fdiv.h f16, f8, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0xdac73014 # load x3 with value 0xdac73014
sw x3, 0(x2) # store 0xdac73014 in memory
flh f31, 0(x2) # load 0xdac73014 from memory into f31
la x2, scratch
li x3, 0x4bcfe506 # load x3 with value 0x4bcfe506
sw x3, 0(x2) # store 0x4bcfe506 in memory
flh f17, 0(x2) # load 0x4bcfe506 from memory into f17
fdiv.h f17, f31, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0xe17de29c # load x3 with value 0xe17de29c
sw x3, 0(x2) # store 0xe17de29c in memory
flh f16, 0(x2) # load 0xe17de29c from memory into f16
la x2, scratch
li x3, 0x3ad1a524 # load x3 with value 0x3ad1a524
sw x3, 0(x2) # store 0x3ad1a524 in memory
flh f18, 0(x2) # load 0x3ad1a524 from memory into f18
fdiv.h f18, f16, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x88940b19 # load x3 with value 0x88940b19
sw x3, 0(x2) # store 0x88940b19 in memory
flh f2, 0(x2) # load 0x88940b19 from memory into f2
la x2, scratch
li x3, 0xe976bd7c # load x3 with value 0xe976bd7c
sw x3, 0(x2) # store 0xe976bd7c in memory
flh f19, 0(x2) # load 0xe976bd7c from memory into f19
fdiv.h f19, f2, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0xcab7b71f # load x3 with value 0xcab7b71f
sw x3, 0(x2) # store 0xcab7b71f in memory
flh f15, 0(x2) # load 0xcab7b71f from memory into f15
la x2, scratch
li x3, 0x212d0da5 # load x3 with value 0x212d0da5
sw x3, 0(x2) # store 0x212d0da5 in memory
flh f20, 0(x2) # load 0x212d0da5 from memory into f20
fdiv.h f20, f15, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xb74e1884 # load x3 with value 0xb74e1884
sw x3, 0(x2) # store 0xb74e1884 in memory
flh f20, 0(x2) # load 0xb74e1884 from memory into f20
la x2, scratch
li x3, 0x135c3677 # load x3 with value 0x135c3677
sw x3, 0(x2) # store 0x135c3677 in memory
flh f21, 0(x2) # load 0x135c3677 from memory into f21
fdiv.h f21, f20, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x2b2dbc8d # load x3 with value 0x2b2dbc8d
sw x3, 0(x2) # store 0x2b2dbc8d in memory
flh f1, 0(x2) # load 0x2b2dbc8d from memory into f1
la x2, scratch
li x3, 0x1dcf7180 # load x3 with value 0x1dcf7180
sw x3, 0(x2) # store 0x1dcf7180 in memory
flh f22, 0(x2) # load 0x1dcf7180 from memory into f22
fdiv.h f22, f1, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x2dd263b3 # load x3 with value 0x2dd263b3
sw x3, 0(x2) # store 0x2dd263b3 in memory
flh f22, 0(x2) # load 0x2dd263b3 from memory into f22
la x2, scratch
li x3, 0x4bab3628 # load x3 with value 0x4bab3628
sw x3, 0(x2) # store 0x4bab3628 in memory
flh f23, 0(x2) # load 0x4bab3628 from memory into f23
fdiv.h f23, f22, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x12b4779b # load x3 with value 0x12b4779b
sw x3, 0(x2) # store 0x12b4779b in memory
flh f28, 0(x2) # load 0x12b4779b from memory into f28
la x2, scratch
li x3, 0xd26b4c01 # load x3 with value 0xd26b4c01
sw x3, 0(x2) # store 0xd26b4c01 in memory
flh f24, 0(x2) # load 0xd26b4c01 from memory into f24
fdiv.h f24, f28, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xcc774797 # load x3 with value 0xcc774797
sw x3, 0(x2) # store 0xcc774797 in memory
flh f1, 0(x2) # load 0xcc774797 from memory into f1
la x2, scratch
li x3, 0x7f627281 # load x3 with value 0x7f627281
sw x3, 0(x2) # store 0x7f627281 in memory
flh f25, 0(x2) # load 0x7f627281 from memory into f25
fdiv.h f25, f1, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x2f60a191 # load x3 with value 0x2f60a191
sw x3, 0(x2) # store 0x2f60a191 in memory
flh f30, 0(x2) # load 0x2f60a191 from memory into f30
la x2, scratch
li x3, 0x459d8b07 # load x3 with value 0x459d8b07
sw x3, 0(x2) # store 0x459d8b07 in memory
flh f26, 0(x2) # load 0x459d8b07 from memory into f26
fdiv.h f26, f30, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xbb2eacbf # load x3 with value 0xbb2eacbf
sw x3, 0(x2) # store 0xbb2eacbf in memory
flh f18, 0(x2) # load 0xbb2eacbf from memory into f18
la x2, scratch
li x3, 0xb53f6e5e # load x3 with value 0xb53f6e5e
sw x3, 0(x2) # store 0xb53f6e5e in memory
flh f27, 0(x2) # load 0xb53f6e5e from memory into f27
fdiv.h f27, f18, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x8d10afca # load x3 with value 0x8d10afca
sw x3, 0(x2) # store 0x8d10afca in memory
flh f8, 0(x2) # load 0x8d10afca from memory into f8
la x2, scratch
li x3, 0x3d7a2ada # load x3 with value 0x3d7a2ada
sw x3, 0(x2) # store 0x3d7a2ada in memory
flh f28, 0(x2) # load 0x3d7a2ada from memory into f28
fdiv.h f28, f8, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x8cd66df1 # load x3 with value 0x8cd66df1
sw x3, 0(x2) # store 0x8cd66df1 in memory
flh f21, 0(x2) # load 0x8cd66df1 from memory into f21
la x2, scratch
li x3, 0x8cfb58bf # load x3 with value 0x8cfb58bf
sw x3, 0(x2) # store 0x8cfb58bf in memory
flh f29, 0(x2) # load 0x8cfb58bf from memory into f29
fdiv.h f29, f21, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x05ef0f44 # load x3 with value 0x05ef0f44
sw x3, 0(x2) # store 0x05ef0f44 in memory
flh f31, 0(x2) # load 0x05ef0f44 from memory into f31
la x2, scratch
li x3, 0x33059ea4 # load x3 with value 0x33059ea4
sw x3, 0(x2) # store 0x33059ea4 in memory
flh f30, 0(x2) # load 0x33059ea4 from memory into f30
fdiv.h f30, f31, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x00754a57 # load x3 with value 0x00754a57
sw x3, 0(x2) # store 0x00754a57 in memory
flh f12, 0(x2) # load 0x00754a57 from memory into f12
la x2, scratch
li x3, 0x65d0a44b # load x3 with value 0x65d0a44b
sw x3, 0(x2) # store 0x65d0a44b in memory
flh f31, 0(x2) # load 0x65d0a44b from memory into f31
fdiv.h f31, f12, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0x63040ba9 # load x3 with value 0x63040ba9
sw x3, 0(x2) # store 0x63040ba9 in memory
flh f19, 0(x2) # load 0x63040ba9 from memory into f19
la x2, scratch
li x3, 0xa394b8fc # load x3 with value 0xa394b8fc
sw x3, 0(x2) # store 0xa394b8fc in memory
flh f30, 0(x2) # load 0xa394b8fc from memory into f30
fdiv.h f13, f19, f30, dyn # perform operation
fdiv.h f13, f19, f30, rdn # perform operation
fdiv.h f13, f19, f30, rmm # perform operation
fdiv.h f13, f19, f30, rne # perform operation
fdiv.h f13, f19, f30, rtz # perform operation
fdiv.h f13, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.h f15, f27, f5, dyn # perform operation
fdiv.h f15, f27, f5, rdn # perform operation
fdiv.h f15, f27, f5, rmm # perform operation
fdiv.h f15, f27, f5, rne # perform operation
fdiv.h f15, f27, f5, rtz # perform operation
fdiv.h f15, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f1, f29, f10, dyn # perform operation
fdiv.h f1, f29, f10, rdn # perform operation
fdiv.h f1, f29, f10, rmm # perform operation
fdiv.h f1, f29, f10, rne # perform operation
fdiv.h f1, f29, f10, rtz # perform operation
fdiv.h f1, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fdiv.h f13, f20, f21, dyn # perform operation
fdiv.h f13, f20, f21, rdn # perform operation
fdiv.h f13, f20, f21, rmm # perform operation
fdiv.h f13, f20, f21, rne # perform operation
fdiv.h f13, f20, f21, rtz # perform operation
fdiv.h f13, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fdiv.h f24, f15, f26, dyn # perform operation
fdiv.h f24, f15, f26, rdn # perform operation
fdiv.h f24, f15, f26, rmm # perform operation
fdiv.h f24, f15, f26, rne # perform operation
fdiv.h f24, f15, f26, rtz # perform operation
fdiv.h f24, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fdiv.h f3, f26, f9, dyn # perform operation
fdiv.h f3, f26, f9, rdn # perform operation
fdiv.h f3, f26, f9, rmm # perform operation
fdiv.h f3, f26, f9, rne # perform operation
fdiv.h f3, f26, f9, rtz # perform operation
fdiv.h f3, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f7, f28, f2, dyn # perform operation
fdiv.h f7, f28, f2, rdn # perform operation
fdiv.h f7, f28, f2, rmm # perform operation
fdiv.h f7, f28, f2, rne # perform operation
fdiv.h f7, f28, f2, rtz # perform operation
fdiv.h f7, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fdiv.h f8, f10, f26, dyn # perform operation
fdiv.h f8, f10, f26, rdn # perform operation
fdiv.h f8, f10, f26, rmm # perform operation
fdiv.h f8, f10, f26, rne # perform operation
fdiv.h f8, f10, f26, rtz # perform operation
fdiv.h f8, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fdiv.h f13, f11, f6, dyn # perform operation
fdiv.h f13, f11, f6, rdn # perform operation
fdiv.h f13, f11, f6, rmm # perform operation
fdiv.h f13, f11, f6, rne # perform operation
fdiv.h f13, f11, f6, rtz # perform operation
fdiv.h f13, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fdiv.h f15, f8, f30, dyn # perform operation
fdiv.h f15, f8, f30, rdn # perform operation
fdiv.h f15, f8, f30, rmm # perform operation
fdiv.h f15, f8, f30, rne # perform operation
fdiv.h f15, f8, f30, rtz # perform operation
fdiv.h f15, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fdiv.h f29, f10, f15, dyn # perform operation
fdiv.h f29, f10, f15, rdn # perform operation
fdiv.h f29, f10, f15, rmm # perform operation
fdiv.h f29, f10, f15, rne # perform operation
fdiv.h f29, f10, f15, rtz # perform operation
fdiv.h f29, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f7, f26, f2, dyn # perform operation
fdiv.h f7, f26, f2, rdn # perform operation
fdiv.h f7, f26, f2, rmm # perform operation
fdiv.h f7, f26, f2, rne # perform operation
fdiv.h f7, f26, f2, rtz # perform operation
fdiv.h f7, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fdiv.h f29, f5, f20, dyn # perform operation
fdiv.h f29, f5, f20, rdn # perform operation
fdiv.h f29, f5, f20, rmm # perform operation
fdiv.h f29, f5, f20, rne # perform operation
fdiv.h f29, f5, f20, rtz # perform operation
fdiv.h f29, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f14, f19, f6, dyn # perform operation
fdiv.h f14, f19, f6, rdn # perform operation
fdiv.h f14, f19, f6, rmm # perform operation
fdiv.h f14, f19, f6, rne # perform operation
fdiv.h f14, f19, f6, rtz # perform operation
fdiv.h f14, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fdiv.h f8, f26, f14, dyn # perform operation
fdiv.h f8, f26, f14, rdn # perform operation
fdiv.h f8, f26, f14, rmm # perform operation
fdiv.h f8, f26, f14, rne # perform operation
fdiv.h f8, f26, f14, rtz # perform operation
fdiv.h f8, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fdiv.h f20, f1, f11, dyn # perform operation
fdiv.h f20, f1, f11, rdn # perform operation
fdiv.h f20, f1, f11, rmm # perform operation
fdiv.h f20, f1, f11, rne # perform operation
fdiv.h f20, f1, f11, rtz # perform operation
fdiv.h f20, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f17, f27, f25, dyn # perform operation
fdiv.h f17, f27, f25, rdn # perform operation
fdiv.h f17, f27, f25, rmm # perform operation
fdiv.h f17, f27, f25, rne # perform operation
fdiv.h f17, f27, f25, rtz # perform operation
fdiv.h f17, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fdiv.h f20, f27, f10, dyn # perform operation
fdiv.h f20, f27, f10, rdn # perform operation
fdiv.h f20, f27, f10, rmm # perform operation
fdiv.h f20, f27, f10, rne # perform operation
fdiv.h f20, f27, f10, rtz # perform operation
fdiv.h f20, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fdiv.h f24, f2, f30, dyn # perform operation
fdiv.h f24, f2, f30, rdn # perform operation
fdiv.h f24, f2, f30, rmm # perform operation
fdiv.h f24, f2, f30, rne # perform operation
fdiv.h f24, f2, f30, rtz # perform operation
fdiv.h f24, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fdiv.h f2, f11, f23, dyn # perform operation
fdiv.h f2, f11, f23, rdn # perform operation
fdiv.h f2, f11, f23, rmm # perform operation
fdiv.h f2, f11, f23, rne # perform operation
fdiv.h f2, f11, f23, rtz # perform operation
fdiv.h f2, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f11, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fdiv.h f20, f12, f22, dyn # perform operation
fdiv.h f20, f12, f22, rdn # perform operation
fdiv.h f20, f12, f22, rmm # perform operation
fdiv.h f20, f12, f22, rne # perform operation
fdiv.h f20, f12, f22, rtz # perform operation
fdiv.h f20, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fdiv.h f20, f29, f15, dyn # perform operation
fdiv.h f20, f29, f15, rdn # perform operation
fdiv.h f20, f29, f15, rmm # perform operation
fdiv.h f20, f29, f15, rne # perform operation
fdiv.h f20, f29, f15, rtz # perform operation
fdiv.h f20, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fdiv.h f10, f8, f3, dyn # perform operation
fdiv.h f10, f8, f3, rdn # perform operation
fdiv.h f10, f8, f3, rmm # perform operation
fdiv.h f10, f8, f3, rne # perform operation
fdiv.h f10, f8, f3, rtz # perform operation
fdiv.h f10, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fdiv.h f9, f25, f17, dyn # perform operation
fdiv.h f9, f25, f17, rdn # perform operation
fdiv.h f9, f25, f17, rmm # perform operation
fdiv.h f9, f25, f17, rne # perform operation
fdiv.h f9, f25, f17, rtz # perform operation
fdiv.h f9, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fdiv.h f13, f21, f25, dyn # perform operation
fdiv.h f13, f21, f25, rdn # perform operation
fdiv.h f13, f21, f25, rmm # perform operation
fdiv.h f13, f21, f25, rne # perform operation
fdiv.h f13, f21, f25, rtz # perform operation
fdiv.h f13, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fdiv.h f26, f25, f16, dyn # perform operation
fdiv.h f26, f25, f16, rdn # perform operation
fdiv.h f26, f25, f16, rmm # perform operation
fdiv.h f26, f25, f16, rne # perform operation
fdiv.h f26, f25, f16, rtz # perform operation
fdiv.h f26, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fdiv.h f6, f27, f29, dyn # perform operation
fdiv.h f6, f27, f29, rdn # perform operation
fdiv.h f6, f27, f29, rmm # perform operation
fdiv.h f6, f27, f29, rne # perform operation
fdiv.h f6, f27, f29, rtz # perform operation
fdiv.h f6, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f27, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f11, f20, f17, dyn # perform operation
fdiv.h f11, f20, f17, rdn # perform operation
fdiv.h f11, f20, f17, rmm # perform operation
fdiv.h f11, f20, f17, rne # perform operation
fdiv.h f11, f20, f17, rtz # perform operation
fdiv.h f11, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fdiv.h f10, f28, f9, dyn # perform operation
fdiv.h f10, f28, f9, rdn # perform operation
fdiv.h f10, f28, f9, rmm # perform operation
fdiv.h f10, f28, f9, rne # perform operation
fdiv.h f10, f28, f9, rtz # perform operation
fdiv.h f10, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f27, f11, f30, dyn # perform operation
fdiv.h f27, f11, f30, rdn # perform operation
fdiv.h f27, f11, f30, rmm # perform operation
fdiv.h f27, f11, f30, rne # perform operation
fdiv.h f27, f11, f30, rtz # perform operation
fdiv.h f27, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fdiv.h f16, f30, f23, dyn # perform operation
fdiv.h f16, f30, f23, rdn # perform operation
fdiv.h f16, f30, f23, rmm # perform operation
fdiv.h f16, f30, f23, rne # perform operation
fdiv.h f16, f30, f23, rtz # perform operation
fdiv.h f16, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fdiv.h f2, f27, f25, dyn # perform operation
fdiv.h f2, f27, f25, rdn # perform operation
fdiv.h f2, f27, f25, rmm # perform operation
fdiv.h f2, f27, f25, rne # perform operation
fdiv.h f2, f27, f25, rtz # perform operation
fdiv.h f2, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fdiv.h f18, f24, f21, dyn # perform operation
fdiv.h f18, f24, f21, rdn # perform operation
fdiv.h f18, f24, f21, rmm # perform operation
fdiv.h f18, f24, f21, rne # perform operation
fdiv.h f18, f24, f21, rtz # perform operation
fdiv.h f18, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fdiv.h f14, f2, f18, dyn # perform operation
fdiv.h f14, f2, f18, rdn # perform operation
fdiv.h f14, f2, f18, rmm # perform operation
fdiv.h f14, f2, f18, rne # perform operation
fdiv.h f14, f2, f18, rtz # perform operation
fdiv.h f14, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f2, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f5, f7, f15, dyn # perform operation
fdiv.h f5, f7, f15, rdn # perform operation
fdiv.h f5, f7, f15, rmm # perform operation
fdiv.h f5, f7, f15, rne # perform operation
fdiv.h f5, f7, f15, rtz # perform operation
fdiv.h f5, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fdiv.h f3, f7, f8, dyn # perform operation
fdiv.h f3, f7, f8, rdn # perform operation
fdiv.h f3, f7, f8, rmm # perform operation
fdiv.h f3, f7, f8, rne # perform operation
fdiv.h f3, f7, f8, rtz # perform operation
fdiv.h f3, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fdiv.h f22, f14, f20, dyn # perform operation
fdiv.h f22, f14, f20, rdn # perform operation
fdiv.h f22, f14, f20, rmm # perform operation
fdiv.h f22, f14, f20, rne # perform operation
fdiv.h f22, f14, f20, rtz # perform operation
fdiv.h f22, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fdiv.h f3, f8, f11, dyn # perform operation
fdiv.h f3, f8, f11, rdn # perform operation
fdiv.h f3, f8, f11, rmm # perform operation
fdiv.h f3, f8, f11, rne # perform operation
fdiv.h f3, f8, f11, rtz # perform operation
fdiv.h f3, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f8, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f31, f23, f27, dyn # perform operation
fdiv.h f31, f23, f27, rdn # perform operation
fdiv.h f31, f23, f27, rmm # perform operation
fdiv.h f31, f23, f27, rne # perform operation
fdiv.h f31, f23, f27, rtz # perform operation
fdiv.h f31, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f23, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fdiv.h f21, f30, f24, dyn # perform operation
fdiv.h f21, f30, f24, rdn # perform operation
fdiv.h f21, f30, f24, rmm # perform operation
fdiv.h f21, f30, f24, rne # perform operation
fdiv.h f21, f30, f24, rtz # perform operation
fdiv.h f21, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fdiv.h f17, f16, f14, dyn # perform operation
fdiv.h f17, f16, f14, rdn # perform operation
fdiv.h f17, f16, f14, rmm # perform operation
fdiv.h f17, f16, f14, rne # perform operation
fdiv.h f17, f16, f14, rtz # perform operation
fdiv.h f17, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fdiv.h f21, f22, f30, dyn # perform operation
fdiv.h f21, f22, f30, rdn # perform operation
fdiv.h f21, f22, f30, rmm # perform operation
fdiv.h f21, f22, f30, rne # perform operation
fdiv.h f21, f22, f30, rtz # perform operation
fdiv.h f21, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fdiv.h f29, f14, f13, dyn # perform operation
fdiv.h f29, f14, f13, rdn # perform operation
fdiv.h f29, f14, f13, rmm # perform operation
fdiv.h f29, f14, f13, rne # perform operation
fdiv.h f29, f14, f13, rtz # perform operation
fdiv.h f29, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fdiv.h f29, f12, f7, dyn # perform operation
fdiv.h f29, f12, f7, rdn # perform operation
fdiv.h f29, f12, f7, rmm # perform operation
fdiv.h f29, f12, f7, rne # perform operation
fdiv.h f29, f12, f7, rtz # perform operation
fdiv.h f29, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fdiv.h f29, f18, f10, dyn # perform operation
fdiv.h f29, f18, f10, rdn # perform operation
fdiv.h f29, f18, f10, rmm # perform operation
fdiv.h f29, f18, f10, rne # perform operation
fdiv.h f29, f18, f10, rtz # perform operation
fdiv.h f29, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.h f21, f22, f8, dyn # perform operation
fdiv.h f21, f22, f8, rdn # perform operation
fdiv.h f21, f22, f8, rmm # perform operation
fdiv.h f21, f22, f8, rne # perform operation
fdiv.h f21, f22, f8, rtz # perform operation
fdiv.h f21, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fdiv.h f28, f26, f19, dyn # perform operation
fdiv.h f28, f26, f19, rdn # perform operation
fdiv.h f28, f26, f19, rmm # perform operation
fdiv.h f28, f26, f19, rne # perform operation
fdiv.h f28, f26, f19, rtz # perform operation
fdiv.h f28, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fdiv.h f5, f15, f8, dyn # perform operation
fdiv.h f5, f15, f8, rdn # perform operation
fdiv.h f5, f15, f8, rmm # perform operation
fdiv.h f5, f15, f8, rne # perform operation
fdiv.h f5, f15, f8, rtz # perform operation
fdiv.h f5, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fdiv.h f30, f14, f5, dyn # perform operation
fdiv.h f30, f14, f5, rdn # perform operation
fdiv.h f30, f14, f5, rmm # perform operation
fdiv.h f30, f14, f5, rne # perform operation
fdiv.h f30, f14, f5, rtz # perform operation
fdiv.h f30, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fdiv.h f14, f17, f11, dyn # perform operation
fdiv.h f14, f17, f11, rdn # perform operation
fdiv.h f14, f17, f11, rmm # perform operation
fdiv.h f14, f17, f11, rne # perform operation
fdiv.h f14, f17, f11, rtz # perform operation
fdiv.h f14, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fdiv.h f27, f26, f11, dyn # perform operation
fdiv.h f27, f26, f11, rdn # perform operation
fdiv.h f27, f26, f11, rmm # perform operation
fdiv.h f27, f26, f11, rne # perform operation
fdiv.h f27, f26, f11, rtz # perform operation
fdiv.h f27, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f26, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
fdiv.h f11, f6, f14, dyn # perform operation
fdiv.h f11, f6, f14, rdn # perform operation
fdiv.h f11, f6, f14, rmm # perform operation
fdiv.h f11, f6, f14, rne # perform operation
fdiv.h f11, f6, f14, rtz # perform operation
fdiv.h f11, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fdiv.h f3, f13, f12, dyn # perform operation
fdiv.h f3, f13, f12, rdn # perform operation
fdiv.h f3, f13, f12, rmm # perform operation
fdiv.h f3, f13, f12, rne # perform operation
fdiv.h f3, f13, f12, rtz # perform operation
fdiv.h f3, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fdiv.h f20, f15, f25, dyn # perform operation
fdiv.h f20, f15, f25, rdn # perform operation
fdiv.h f20, f15, f25, rmm # perform operation
fdiv.h f20, f15, f25, rne # perform operation
fdiv.h f20, f15, f25, rtz # perform operation
fdiv.h f20, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fdiv.h f13, f30, f7, dyn # perform operation
fdiv.h f13, f30, f7, rdn # perform operation
fdiv.h f13, f30, f7, rmm # perform operation
fdiv.h f13, f30, f7, rne # perform operation
fdiv.h f13, f30, f7, rtz # perform operation
fdiv.h f13, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fdiv.h f21, f24, f20, dyn # perform operation
fdiv.h f21, f24, f20, rdn # perform operation
fdiv.h f21, f24, f20, rmm # perform operation
fdiv.h f21, f24, f20, rne # perform operation
fdiv.h f21, f24, f20, rtz # perform operation
fdiv.h f21, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fdiv.h f12, f6, f31, dyn # perform operation
fdiv.h f12, f6, f31, rdn # perform operation
fdiv.h f12, f6, f31, rmm # perform operation
fdiv.h f12, f6, f31, rne # perform operation
fdiv.h f12, f6, f31, rtz # perform operation
fdiv.h f12, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f17, f9, f30, dyn # perform operation
fdiv.h f17, f9, f30, rdn # perform operation
fdiv.h f17, f9, f30, rmm # perform operation
fdiv.h f17, f9, f30, rne # perform operation
fdiv.h f17, f9, f30, rtz # perform operation
fdiv.h f17, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fdiv.h f7, f10, f15, dyn # perform operation
fdiv.h f7, f10, f15, rdn # perform operation
fdiv.h f7, f10, f15, rmm # perform operation
fdiv.h f7, f10, f15, rne # perform operation
fdiv.h f7, f10, f15, rtz # perform operation
fdiv.h f7, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f10, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f31, f8, f5, dyn # perform operation
fdiv.h f31, f8, f5, rdn # perform operation
fdiv.h f31, f8, f5, rmm # perform operation
fdiv.h f31, f8, f5, rne # perform operation
fdiv.h f31, f8, f5, rtz # perform operation
fdiv.h f31, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fdiv.h f21, f26, f13, dyn # perform operation
fdiv.h f21, f26, f13, rdn # perform operation
fdiv.h f21, f26, f13, rmm # perform operation
fdiv.h f21, f26, f13, rne # perform operation
fdiv.h f21, f26, f13, rtz # perform operation
fdiv.h f21, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f26, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fdiv.h f2, f5, f18, dyn # perform operation
fdiv.h f2, f5, f18, rdn # perform operation
fdiv.h f2, f5, f18, rmm # perform operation
fdiv.h f2, f5, f18, rne # perform operation
fdiv.h f2, f5, f18, rtz # perform operation
fdiv.h f2, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f16, f5, f8, dyn # perform operation
fdiv.h f16, f5, f8, rdn # perform operation
fdiv.h f16, f5, f8, rmm # perform operation
fdiv.h f16, f5, f8, rne # perform operation
fdiv.h f16, f5, f8, rtz # perform operation
fdiv.h f16, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fdiv.h f10, f17, f18, dyn # perform operation
fdiv.h f10, f17, f18, rdn # perform operation
fdiv.h f10, f17, f18, rmm # perform operation
fdiv.h f10, f17, f18, rne # perform operation
fdiv.h f10, f17, f18, rtz # perform operation
fdiv.h f10, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fdiv.h f25, f23, f1, dyn # perform operation
fdiv.h f25, f23, f1, rdn # perform operation
fdiv.h f25, f23, f1, rmm # perform operation
fdiv.h f25, f23, f1, rne # perform operation
fdiv.h f25, f23, f1, rtz # perform operation
fdiv.h f25, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fdiv.h f29, f8, f18, dyn # perform operation
fdiv.h f29, f8, f18, rdn # perform operation
fdiv.h f29, f8, f18, rmm # perform operation
fdiv.h f29, f8, f18, rne # perform operation
fdiv.h f29, f8, f18, rtz # perform operation
fdiv.h f29, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fdiv.h f31, f28, f1, dyn # perform operation
fdiv.h f31, f28, f1, rdn # perform operation
fdiv.h f31, f28, f1, rmm # perform operation
fdiv.h f31, f28, f1, rne # perform operation
fdiv.h f31, f28, f1, rtz # perform operation
fdiv.h f31, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f21, f20, f22, dyn # perform operation
fdiv.h f21, f20, f22, rdn # perform operation
fdiv.h f21, f20, f22, rmm # perform operation
fdiv.h f21, f20, f22, rne # perform operation
fdiv.h f21, f20, f22, rtz # perform operation
fdiv.h f21, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fdiv.h f25, f20, f10, dyn # perform operation
fdiv.h f25, f20, f10, rdn # perform operation
fdiv.h f25, f20, f10, rmm # perform operation
fdiv.h f25, f20, f10, rne # perform operation
fdiv.h f25, f20, f10, rtz # perform operation
fdiv.h f25, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f5, f16, f12, dyn # perform operation
fdiv.h f5, f16, f12, rdn # perform operation
fdiv.h f5, f16, f12, rmm # perform operation
fdiv.h f5, f16, f12, rne # perform operation
fdiv.h f5, f16, f12, rtz # perform operation
fdiv.h f5, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fdiv.h f1, f15, f16, dyn # perform operation
fdiv.h f1, f15, f16, rdn # perform operation
fdiv.h f1, f15, f16, rmm # perform operation
fdiv.h f1, f15, f16, rne # perform operation
fdiv.h f1, f15, f16, rtz # perform operation
fdiv.h f1, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fdiv.h f26, f18, f9, dyn # perform operation
fdiv.h f26, f18, f9, rdn # perform operation
fdiv.h f26, f18, f9, rmm # perform operation
fdiv.h f26, f18, f9, rne # perform operation
fdiv.h f26, f18, f9, rtz # perform operation
fdiv.h f26, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fdiv.h f25, f19, f26, dyn # perform operation
fdiv.h f25, f19, f26, rdn # perform operation
fdiv.h f25, f19, f26, rmm # perform operation
fdiv.h f25, f19, f26, rne # perform operation
fdiv.h f25, f19, f26, rtz # perform operation
fdiv.h f25, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f18, f11, f12, dyn # perform operation
fdiv.h f18, f11, f12, rdn # perform operation
fdiv.h f18, f11, f12, rmm # perform operation
fdiv.h f18, f11, f12, rne # perform operation
fdiv.h f18, f11, f12, rtz # perform operation
fdiv.h f18, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fdiv.h f17, f28, f27, dyn # perform operation
fdiv.h f17, f28, f27, rdn # perform operation
fdiv.h f17, f28, f27, rmm # perform operation
fdiv.h f17, f28, f27, rne # perform operation
fdiv.h f17, f28, f27, rtz # perform operation
fdiv.h f17, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fdiv.h f22, f25, f16, dyn # perform operation
fdiv.h f22, f25, f16, rdn # perform operation
fdiv.h f22, f25, f16, rmm # perform operation
fdiv.h f22, f25, f16, rne # perform operation
fdiv.h f22, f25, f16, rtz # perform operation
fdiv.h f22, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fdiv.h f2, f23, f12, dyn # perform operation
fdiv.h f2, f23, f12, rdn # perform operation
fdiv.h f2, f23, f12, rmm # perform operation
fdiv.h f2, f23, f12, rne # perform operation
fdiv.h f2, f23, f12, rtz # perform operation
fdiv.h f2, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fdiv.h f31, f14, f16, dyn # perform operation
fdiv.h f31, f14, f16, rdn # perform operation
fdiv.h f31, f14, f16, rmm # perform operation
fdiv.h f31, f14, f16, rne # perform operation
fdiv.h f31, f14, f16, rtz # perform operation
fdiv.h f31, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fdiv.h f19, f17, f5, dyn # perform operation
fdiv.h f19, f17, f5, rdn # perform operation
fdiv.h f19, f17, f5, rmm # perform operation
fdiv.h f19, f17, f5, rne # perform operation
fdiv.h f19, f17, f5, rtz # perform operation
fdiv.h f19, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fdiv.h f12, f17, f19, dyn # perform operation
fdiv.h f12, f17, f19, rdn # perform operation
fdiv.h f12, f17, f19, rmm # perform operation
fdiv.h f12, f17, f19, rne # perform operation
fdiv.h f12, f17, f19, rtz # perform operation
fdiv.h f12, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fdiv.h f5, f28, f24, dyn # perform operation
fdiv.h f5, f28, f24, rdn # perform operation
fdiv.h f5, f28, f24, rmm # perform operation
fdiv.h f5, f28, f24, rne # perform operation
fdiv.h f5, f28, f24, rtz # perform operation
fdiv.h f5, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fdiv.h f28, f31, f20, dyn # perform operation
fdiv.h f28, f31, f20, rdn # perform operation
fdiv.h f28, f31, f20, rmm # perform operation
fdiv.h f28, f31, f20, rne # perform operation
fdiv.h f28, f31, f20, rtz # perform operation
fdiv.h f28, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fdiv.h f9, f3, f27, dyn # perform operation
fdiv.h f9, f3, f27, rdn # perform operation
fdiv.h f9, f3, f27, rmm # perform operation
fdiv.h f9, f3, f27, rne # perform operation
fdiv.h f9, f3, f27, rtz # perform operation
fdiv.h f9, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fdiv.h f24, f12, f27, dyn # perform operation
fdiv.h f24, f12, f27, rdn # perform operation
fdiv.h f24, f12, f27, rmm # perform operation
fdiv.h f24, f12, f27, rne # perform operation
fdiv.h f24, f12, f27, rtz # perform operation
fdiv.h f24, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fdiv.h f26, f20, f3, dyn # perform operation
fdiv.h f26, f20, f3, rdn # perform operation
fdiv.h f26, f20, f3, rmm # perform operation
fdiv.h f26, f20, f3, rne # perform operation
fdiv.h f26, f20, f3, rtz # perform operation
fdiv.h f26, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.h f8, f11, f12, dyn # perform operation
fdiv.h f8, f11, f12, rdn # perform operation
fdiv.h f8, f11, f12, rmm # perform operation
fdiv.h f8, f11, f12, rne # perform operation
fdiv.h f8, f11, f12, rtz # perform operation
fdiv.h f8, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fdiv.h f7, f17, f9, dyn # perform operation
fdiv.h f7, f17, f9, rdn # perform operation
fdiv.h f7, f17, f9, rmm # perform operation
fdiv.h f7, f17, f9, rne # perform operation
fdiv.h f7, f17, f9, rtz # perform operation
fdiv.h f7, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fdiv.h f29, f6, f21, dyn # perform operation
fdiv.h f29, f6, f21, rdn # perform operation
fdiv.h f29, f6, f21, rmm # perform operation
fdiv.h f29, f6, f21, rne # perform operation
fdiv.h f29, f6, f21, rtz # perform operation
fdiv.h f29, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f25, f22, f11, dyn # perform operation
fdiv.h f25, f22, f11, rdn # perform operation
fdiv.h f25, f22, f11, rmm # perform operation
fdiv.h f25, f22, f11, rne # perform operation
fdiv.h f25, f22, f11, rtz # perform operation
fdiv.h f25, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fdiv.h f30, f24, f11, dyn # perform operation
fdiv.h f30, f24, f11, rdn # perform operation
fdiv.h f30, f24, f11, rmm # perform operation
fdiv.h f30, f24, f11, rne # perform operation
fdiv.h f30, f24, f11, rtz # perform operation
fdiv.h f30, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f7, f25, f8, dyn # perform operation
fdiv.h f7, f25, f8, rdn # perform operation
fdiv.h f7, f25, f8, rmm # perform operation
fdiv.h f7, f25, f8, rne # perform operation
fdiv.h f7, f25, f8, rtz # perform operation
fdiv.h f7, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fdiv.h f20, f5, f2, dyn # perform operation
fdiv.h f20, f5, f2, rdn # perform operation
fdiv.h f20, f5, f2, rmm # perform operation
fdiv.h f20, f5, f2, rne # perform operation
fdiv.h f20, f5, f2, rtz # perform operation
fdiv.h f20, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fdiv.h f21, f12, f25, dyn # perform operation
fdiv.h f21, f12, f25, rdn # perform operation
fdiv.h f21, f12, f25, rmm # perform operation
fdiv.h f21, f12, f25, rne # perform operation
fdiv.h f21, f12, f25, rtz # perform operation
fdiv.h f21, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fdiv.h f17, f18, f21, dyn # perform operation
fdiv.h f17, f18, f21, rdn # perform operation
fdiv.h f17, f18, f21, rmm # perform operation
fdiv.h f17, f18, f21, rne # perform operation
fdiv.h f17, f18, f21, rtz # perform operation
fdiv.h f17, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fdiv.h f6, f30, f2, dyn # perform operation
fdiv.h f6, f30, f2, rdn # perform operation
fdiv.h f6, f30, f2, rmm # perform operation
fdiv.h f6, f30, f2, rne # perform operation
fdiv.h f6, f30, f2, rtz # perform operation
fdiv.h f6, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f14, f25, f22, dyn # perform operation
fdiv.h f14, f25, f22, rdn # perform operation
fdiv.h f14, f25, f22, rmm # perform operation
fdiv.h f14, f25, f22, rne # perform operation
fdiv.h f14, f25, f22, rtz # perform operation
fdiv.h f14, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fdiv.h f6, f26, f31, dyn # perform operation
fdiv.h f6, f26, f31, rdn # perform operation
fdiv.h f6, f26, f31, rmm # perform operation
fdiv.h f6, f26, f31, rne # perform operation
fdiv.h f6, f26, f31, rtz # perform operation
fdiv.h f6, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f16, f10, f6, dyn # perform operation
fdiv.h f16, f10, f6, rdn # perform operation
fdiv.h f16, f10, f6, rmm # perform operation
fdiv.h f16, f10, f6, rne # perform operation
fdiv.h f16, f10, f6, rtz # perform operation
fdiv.h f16, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fdiv.h f31, f5, f29, dyn # perform operation
fdiv.h f31, f5, f29, rdn # perform operation
fdiv.h f31, f5, f29, rmm # perform operation
fdiv.h f31, f5, f29, rne # perform operation
fdiv.h f31, f5, f29, rtz # perform operation
fdiv.h f31, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fdiv.h f26, f2, f29, dyn # perform operation
fdiv.h f26, f2, f29, rdn # perform operation
fdiv.h f26, f2, f29, rmm # perform operation
fdiv.h f26, f2, f29, rne # perform operation
fdiv.h f26, f2, f29, rtz # perform operation
fdiv.h f26, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fdiv.h f9, f15, f14, dyn # perform operation
fdiv.h f9, f15, f14, rdn # perform operation
fdiv.h f9, f15, f14, rmm # perform operation
fdiv.h f9, f15, f14, rne # perform operation
fdiv.h f9, f15, f14, rtz # perform operation
fdiv.h f9, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.h f16, f25, f6, dyn # perform operation
fdiv.h f16, f25, f6, rdn # perform operation
fdiv.h f16, f25, f6, rmm # perform operation
fdiv.h f16, f25, f6, rne # perform operation
fdiv.h f16, f25, f6, rtz # perform operation
fdiv.h f16, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fdiv.h f1, f31, f28, dyn # perform operation
fdiv.h f1, f31, f28, rdn # perform operation
fdiv.h f1, f31, f28, rmm # perform operation
fdiv.h f1, f31, f28, rne # perform operation
fdiv.h f1, f31, f28, rtz # perform operation
fdiv.h f1, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fdiv.h f28, f23, f13, dyn # perform operation
fdiv.h f28, f23, f13, rdn # perform operation
fdiv.h f28, f23, f13, rmm # perform operation
fdiv.h f28, f23, f13, rne # perform operation
fdiv.h f28, f23, f13, rtz # perform operation
fdiv.h f28, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fdiv.h f12, f23, f5, dyn # perform operation
fdiv.h f12, f23, f5, rdn # perform operation
fdiv.h f12, f23, f5, rmm # perform operation
fdiv.h f12, f23, f5, rne # perform operation
fdiv.h f12, f23, f5, rtz # perform operation
fdiv.h f12, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fdiv.h f2, f22, f23, dyn # perform operation
fdiv.h f2, f22, f23, rdn # perform operation
fdiv.h f2, f22, f23, rmm # perform operation
fdiv.h f2, f22, f23, rne # perform operation
fdiv.h f2, f22, f23, rtz # perform operation
fdiv.h f2, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f22, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fdiv.h f21, f7, f15, dyn # perform operation
fdiv.h f21, f7, f15, rdn # perform operation
fdiv.h f21, f7, f15, rmm # perform operation
fdiv.h f21, f7, f15, rne # perform operation
fdiv.h f21, f7, f15, rtz # perform operation
fdiv.h f21, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f7, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fdiv.h f7, f15, f18, dyn # perform operation
fdiv.h f7, f15, f18, rdn # perform operation
fdiv.h f7, f15, f18, rmm # perform operation
fdiv.h f7, f15, f18, rne # perform operation
fdiv.h f7, f15, f18, rtz # perform operation
fdiv.h f7, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fdiv.h f22, f16, f25, dyn # perform operation
fdiv.h f22, f16, f25, rdn # perform operation
fdiv.h f22, f16, f25, rmm # perform operation
fdiv.h f22, f16, f25, rne # perform operation
fdiv.h f22, f16, f25, rtz # perform operation
fdiv.h f22, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fdiv.h f23, f7, f25, dyn # perform operation
fdiv.h f23, f7, f25, rdn # perform operation
fdiv.h f23, f7, f25, rmm # perform operation
fdiv.h f23, f7, f25, rne # perform operation
fdiv.h f23, f7, f25, rtz # perform operation
fdiv.h f23, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fdiv.h f29, f25, f30, dyn # perform operation
fdiv.h f29, f25, f30, rdn # perform operation
fdiv.h f29, f25, f30, rmm # perform operation
fdiv.h f29, f25, f30, rne # perform operation
fdiv.h f29, f25, f30, rtz # perform operation
fdiv.h f29, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fdiv.h f2, f23, f16, dyn # perform operation
fdiv.h f2, f23, f16, rdn # perform operation
fdiv.h f2, f23, f16, rmm # perform operation
fdiv.h f2, f23, f16, rne # perform operation
fdiv.h f2, f23, f16, rtz # perform operation
fdiv.h f2, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fdiv.h f20, f29, f24, dyn # perform operation
fdiv.h f20, f29, f24, rdn # perform operation
fdiv.h f20, f29, f24, rmm # perform operation
fdiv.h f20, f29, f24, rne # perform operation
fdiv.h f20, f29, f24, rtz # perform operation
fdiv.h f20, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f8, f2, f7, dyn # perform operation
fdiv.h f8, f2, f7, rdn # perform operation
fdiv.h f8, f2, f7, rmm # perform operation
fdiv.h f8, f2, f7, rne # perform operation
fdiv.h f8, f2, f7, rtz # perform operation
fdiv.h f8, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fdiv.h f12, f25, f21, dyn # perform operation
fdiv.h f12, f25, f21, rdn # perform operation
fdiv.h f12, f25, f21, rmm # perform operation
fdiv.h f12, f25, f21, rne # perform operation
fdiv.h f12, f25, f21, rtz # perform operation
fdiv.h f12, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fdiv.h f28, f16, f21, dyn # perform operation
fdiv.h f28, f16, f21, rdn # perform operation
fdiv.h f28, f16, f21, rmm # perform operation
fdiv.h f28, f16, f21, rne # perform operation
fdiv.h f28, f16, f21, rtz # perform operation
fdiv.h f28, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fdiv.h f16, f25, f15, dyn # perform operation
fdiv.h f16, f25, f15, rdn # perform operation
fdiv.h f16, f25, f15, rmm # perform operation
fdiv.h f16, f25, f15, rne # perform operation
fdiv.h f16, f25, f15, rtz # perform operation
fdiv.h f16, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fdiv.h f5, f20, f9, dyn # perform operation
fdiv.h f5, f20, f9, rdn # perform operation
fdiv.h f5, f20, f9, rmm # perform operation
fdiv.h f5, f20, f9, rne # perform operation
fdiv.h f5, f20, f9, rtz # perform operation
fdiv.h f5, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fdiv.h f16, f9, f18, dyn # perform operation
fdiv.h f16, f9, f18, rdn # perform operation
fdiv.h f16, f9, f18, rmm # perform operation
fdiv.h f16, f9, f18, rne # perform operation
fdiv.h f16, f9, f18, rtz # perform operation
fdiv.h f16, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fdiv.h f29, f13, f17, dyn # perform operation
fdiv.h f29, f13, f17, rdn # perform operation
fdiv.h f29, f13, f17, rmm # perform operation
fdiv.h f29, f13, f17, rne # perform operation
fdiv.h f29, f13, f17, rtz # perform operation
fdiv.h f29, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fdiv.h f5, f15, f28, dyn # perform operation
fdiv.h f5, f15, f28, rdn # perform operation
fdiv.h f5, f15, f28, rmm # perform operation
fdiv.h f5, f15, f28, rne # perform operation
fdiv.h f5, f15, f28, rtz # perform operation
fdiv.h f5, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fdiv.h f19, f24, f8, dyn # perform operation
fdiv.h f19, f24, f8, rdn # perform operation
fdiv.h f19, f24, f8, rmm # perform operation
fdiv.h f19, f24, f8, rne # perform operation
fdiv.h f19, f24, f8, rtz # perform operation
fdiv.h f19, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fdiv.h f10, f6, f11, dyn # perform operation
fdiv.h f10, f6, f11, rdn # perform operation
fdiv.h f10, f6, f11, rmm # perform operation
fdiv.h f10, f6, f11, rne # perform operation
fdiv.h f10, f6, f11, rtz # perform operation
fdiv.h f10, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f6, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fdiv.h f20, f7, f26, dyn # perform operation
fdiv.h f20, f7, f26, rdn # perform operation
fdiv.h f20, f7, f26, rmm # perform operation
fdiv.h f20, f7, f26, rne # perform operation
fdiv.h f20, f7, f26, rtz # perform operation
fdiv.h f20, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fdiv.h f26, f25, f18, dyn # perform operation
fdiv.h f26, f25, f18, rdn # perform operation
fdiv.h f26, f25, f18, rmm # perform operation
fdiv.h f26, f25, f18, rne # perform operation
fdiv.h f26, f25, f18, rtz # perform operation
fdiv.h f26, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f25, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fdiv.h f19, f26, f2, dyn # perform operation
fdiv.h f19, f26, f2, rdn # perform operation
fdiv.h f19, f26, f2, rmm # perform operation
fdiv.h f19, f26, f2, rne # perform operation
fdiv.h f19, f26, f2, rtz # perform operation
fdiv.h f19, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fdiv.h f5, f18, f9, dyn # perform operation
fdiv.h f5, f18, f9, rdn # perform operation
fdiv.h f5, f18, f9, rmm # perform operation
fdiv.h f5, f18, f9, rne # perform operation
fdiv.h f5, f18, f9, rtz # perform operation
fdiv.h f5, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fdiv.h f21, f28, f11, dyn # perform operation
fdiv.h f21, f28, f11, rdn # perform operation
fdiv.h f21, f28, f11, rmm # perform operation
fdiv.h f21, f28, f11, rne # perform operation
fdiv.h f21, f28, f11, rtz # perform operation
fdiv.h f21, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fdiv.h f24, f27, f14, dyn # perform operation
fdiv.h f24, f27, f14, rdn # perform operation
fdiv.h f24, f27, f14, rmm # perform operation
fdiv.h f24, f27, f14, rne # perform operation
fdiv.h f24, f27, f14, rtz # perform operation
fdiv.h f24, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.h f20, f26, f6, dyn # perform operation
fdiv.h f20, f26, f6, rdn # perform operation
fdiv.h f20, f26, f6, rmm # perform operation
fdiv.h f20, f26, f6, rne # perform operation
fdiv.h f20, f26, f6, rtz # perform operation
fdiv.h f20, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fdiv.h f14, f5, f27, dyn # perform operation
fdiv.h f14, f5, f27, rdn # perform operation
fdiv.h f14, f5, f27, rmm # perform operation
fdiv.h f14, f5, f27, rne # perform operation
fdiv.h f14, f5, f27, rtz # perform operation
fdiv.h f14, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fdiv.h f16, f27, f10, dyn # perform operation
fdiv.h f16, f27, f10, rdn # perform operation
fdiv.h f16, f27, f10, rmm # perform operation
fdiv.h f16, f27, f10, rne # perform operation
fdiv.h f16, f27, f10, rtz # perform operation
fdiv.h f16, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f10, f29, f31, dyn # perform operation
fdiv.h f10, f29, f31, rdn # perform operation
fdiv.h f10, f29, f31, rmm # perform operation
fdiv.h f10, f29, f31, rne # perform operation
fdiv.h f10, f29, f31, rtz # perform operation
fdiv.h f10, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fdiv.h f3, f22, f26, dyn # perform operation
fdiv.h f3, f22, f26, rdn # perform operation
fdiv.h f3, f22, f26, rmm # perform operation
fdiv.h f3, f22, f26, rne # perform operation
fdiv.h f3, f22, f26, rtz # perform operation
fdiv.h f3, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fdiv.h f21, f1, f14, dyn # perform operation
fdiv.h f21, f1, f14, rdn # perform operation
fdiv.h f21, f1, f14, rmm # perform operation
fdiv.h f21, f1, f14, rne # perform operation
fdiv.h f21, f1, f14, rtz # perform operation
fdiv.h f21, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f1, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fdiv.h f12, f11, f10, dyn # perform operation
fdiv.h f12, f11, f10, rdn # perform operation
fdiv.h f12, f11, f10, rmm # perform operation
fdiv.h f12, f11, f10, rne # perform operation
fdiv.h f12, f11, f10, rtz # perform operation
fdiv.h f12, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fdiv.h f26, f21, f5, dyn # perform operation
fdiv.h f26, f21, f5, rdn # perform operation
fdiv.h f26, f21, f5, rmm # perform operation
fdiv.h f26, f21, f5, rne # perform operation
fdiv.h f26, f21, f5, rtz # perform operation
fdiv.h f26, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f18, f15, f3, dyn # perform operation
fdiv.h f18, f15, f3, rdn # perform operation
fdiv.h f18, f15, f3, rmm # perform operation
fdiv.h f18, f15, f3, rne # perform operation
fdiv.h f18, f15, f3, rtz # perform operation
fdiv.h f18, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fdiv.h f7, f28, f3, dyn # perform operation
fdiv.h f7, f28, f3, rdn # perform operation
fdiv.h f7, f28, f3, rmm # perform operation
fdiv.h f7, f28, f3, rne # perform operation
fdiv.h f7, f28, f3, rtz # perform operation
fdiv.h f7, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f3, f31, f10, dyn # perform operation
fdiv.h f3, f31, f10, rdn # perform operation
fdiv.h f3, f31, f10, rmm # perform operation
fdiv.h f3, f31, f10, rne # perform operation
fdiv.h f3, f31, f10, rtz # perform operation
fdiv.h f3, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f31, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fdiv.h f29, f26, f21, dyn # perform operation
fdiv.h f29, f26, f21, rdn # perform operation
fdiv.h f29, f26, f21, rmm # perform operation
fdiv.h f29, f26, f21, rne # perform operation
fdiv.h f29, f26, f21, rtz # perform operation
fdiv.h f29, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fdiv.h f21, f27, f24, dyn # perform operation
fdiv.h f21, f27, f24, rdn # perform operation
fdiv.h f21, f27, f24, rmm # perform operation
fdiv.h f21, f27, f24, rne # perform operation
fdiv.h f21, f27, f24, rtz # perform operation
fdiv.h f21, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fdiv.h f8, f17, f6, dyn # perform operation
fdiv.h f8, f17, f6, rdn # perform operation
fdiv.h f8, f17, f6, rmm # perform operation
fdiv.h f8, f17, f6, rne # perform operation
fdiv.h f8, f17, f6, rtz # perform operation
fdiv.h f8, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fdiv.h f9, f29, f31, dyn # perform operation
fdiv.h f9, f29, f31, rdn # perform operation
fdiv.h f9, f29, f31, rmm # perform operation
fdiv.h f9, f29, f31, rne # perform operation
fdiv.h f9, f29, f31, rtz # perform operation
fdiv.h f9, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f29, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fdiv.h f2, f27, f30, dyn # perform operation
fdiv.h f2, f27, f30, rdn # perform operation
fdiv.h f2, f27, f30, rmm # perform operation
fdiv.h f2, f27, f30, rne # perform operation
fdiv.h f2, f27, f30, rtz # perform operation
fdiv.h f2, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fdiv.h f28, f18, f16, dyn # perform operation
fdiv.h f28, f18, f16, rdn # perform operation
fdiv.h f28, f18, f16, rmm # perform operation
fdiv.h f28, f18, f16, rne # perform operation
fdiv.h f28, f18, f16, rtz # perform operation
fdiv.h f28, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fdiv.h f14, f24, f31, dyn # perform operation
fdiv.h f14, f24, f31, rdn # perform operation
fdiv.h f14, f24, f31, rmm # perform operation
fdiv.h f14, f24, f31, rne # perform operation
fdiv.h f14, f24, f31, rtz # perform operation
fdiv.h f14, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f31, f18, f13, dyn # perform operation
fdiv.h f31, f18, f13, rdn # perform operation
fdiv.h f31, f18, f13, rmm # perform operation
fdiv.h f31, f18, f13, rne # perform operation
fdiv.h f31, f18, f13, rtz # perform operation
fdiv.h f31, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f18, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fdiv.h f1, f21, f27, dyn # perform operation
fdiv.h f1, f21, f27, rdn # perform operation
fdiv.h f1, f21, f27, rmm # perform operation
fdiv.h f1, f21, f27, rne # perform operation
fdiv.h f1, f21, f27, rtz # perform operation
fdiv.h f1, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f21, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fdiv.h f19, f15, f22, dyn # perform operation
fdiv.h f19, f15, f22, rdn # perform operation
fdiv.h f19, f15, f22, rmm # perform operation
fdiv.h f19, f15, f22, rne # perform operation
fdiv.h f19, f15, f22, rtz # perform operation
fdiv.h f19, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fdiv.h f29, f9, f16, dyn # perform operation
fdiv.h f29, f9, f16, rdn # perform operation
fdiv.h f29, f9, f16, rmm # perform operation
fdiv.h f29, f9, f16, rne # perform operation
fdiv.h f29, f9, f16, rtz # perform operation
fdiv.h f29, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fdiv.h f27, f14, f11, dyn # perform operation
fdiv.h f27, f14, f11, rdn # perform operation
fdiv.h f27, f14, f11, rmm # perform operation
fdiv.h f27, f14, f11, rne # perform operation
fdiv.h f27, f14, f11, rtz # perform operation
fdiv.h f27, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fdiv.h f19, f18, f22, dyn # perform operation
fdiv.h f19, f18, f22, rdn # perform operation
fdiv.h f19, f18, f22, rmm # perform operation
fdiv.h f19, f18, f22, rne # perform operation
fdiv.h f19, f18, f22, rtz # perform operation
fdiv.h f19, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fdiv.h f17, f28, f7, dyn # perform operation
fdiv.h f17, f28, f7, rdn # perform operation
fdiv.h f17, f28, f7, rmm # perform operation
fdiv.h f17, f28, f7, rne # perform operation
fdiv.h f17, f28, f7, rtz # perform operation
fdiv.h f17, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fdiv.h f21, f1, f10, dyn # perform operation
fdiv.h f21, f1, f10, rdn # perform operation
fdiv.h f21, f1, f10, rmm # perform operation
fdiv.h f21, f1, f10, rne # perform operation
fdiv.h f21, f1, f10, rtz # perform operation
fdiv.h f21, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fdiv.h f20, f23, f14, dyn # perform operation
fdiv.h f20, f23, f14, rdn # perform operation
fdiv.h f20, f23, f14, rmm # perform operation
fdiv.h f20, f23, f14, rne # perform operation
fdiv.h f20, f23, f14, rtz # perform operation
fdiv.h f20, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fdiv.h f18, f23, f8, dyn # perform operation
fdiv.h f18, f23, f8, rdn # perform operation
fdiv.h f18, f23, f8, rmm # perform operation
fdiv.h f18, f23, f8, rne # perform operation
fdiv.h f18, f23, f8, rtz # perform operation
fdiv.h f18, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.h f23, f27, f8, dyn # perform operation
fdiv.h f23, f27, f8, rdn # perform operation
fdiv.h f23, f27, f8, rmm # perform operation
fdiv.h f23, f27, f8, rne # perform operation
fdiv.h f23, f27, f8, rtz # perform operation
fdiv.h f23, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fdiv.h f18, f12, f29, dyn # perform operation
fdiv.h f18, f12, f29, rdn # perform operation
fdiv.h f18, f12, f29, rmm # perform operation
fdiv.h f18, f12, f29, rne # perform operation
fdiv.h f18, f12, f29, rtz # perform operation
fdiv.h f18, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fdiv.h f6, f7, f27, dyn # perform operation
fdiv.h f6, f7, f27, rdn # perform operation
fdiv.h f6, f7, f27, rmm # perform operation
fdiv.h f6, f7, f27, rne # perform operation
fdiv.h f6, f7, f27, rtz # perform operation
fdiv.h f6, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fdiv.h f20, f5, f24, dyn # perform operation
fdiv.h f20, f5, f24, rdn # perform operation
fdiv.h f20, f5, f24, rmm # perform operation
fdiv.h f20, f5, f24, rne # perform operation
fdiv.h f20, f5, f24, rtz # perform operation
fdiv.h f20, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fdiv.h f29, f24, f9, dyn # perform operation
fdiv.h f29, f24, f9, rdn # perform operation
fdiv.h f29, f24, f9, rmm # perform operation
fdiv.h f29, f24, f9, rne # perform operation
fdiv.h f29, f24, f9, rtz # perform operation
fdiv.h f29, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f28, f13, f10, dyn # perform operation
fdiv.h f28, f13, f10, rdn # perform operation
fdiv.h f28, f13, f10, rmm # perform operation
fdiv.h f28, f13, f10, rne # perform operation
fdiv.h f28, f13, f10, rtz # perform operation
fdiv.h f28, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fdiv.h f12, f17, f15, dyn # perform operation
fdiv.h f12, f17, f15, rdn # perform operation
fdiv.h f12, f17, f15, rmm # perform operation
fdiv.h f12, f17, f15, rne # perform operation
fdiv.h f12, f17, f15, rtz # perform operation
fdiv.h f12, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fdiv.h f12, f24, f23, dyn # perform operation
fdiv.h f12, f24, f23, rdn # perform operation
fdiv.h f12, f24, f23, rmm # perform operation
fdiv.h f12, f24, f23, rne # perform operation
fdiv.h f12, f24, f23, rtz # perform operation
fdiv.h f12, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fdiv.h f18, f9, f23, dyn # perform operation
fdiv.h f18, f9, f23, rdn # perform operation
fdiv.h f18, f9, f23, rmm # perform operation
fdiv.h f18, f9, f23, rne # perform operation
fdiv.h f18, f9, f23, rtz # perform operation
fdiv.h f18, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fdiv.h f11, f3, f29, dyn # perform operation
fdiv.h f11, f3, f29, rdn # perform operation
fdiv.h f11, f3, f29, rmm # perform operation
fdiv.h f11, f3, f29, rne # perform operation
fdiv.h f11, f3, f29, rtz # perform operation
fdiv.h f11, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f11, f15, f28, dyn # perform operation
fdiv.h f11, f15, f28, rdn # perform operation
fdiv.h f11, f15, f28, rmm # perform operation
fdiv.h f11, f15, f28, rne # perform operation
fdiv.h f11, f15, f28, rtz # perform operation
fdiv.h f11, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f30, f18, f5, dyn # perform operation
fdiv.h f30, f18, f5, rdn # perform operation
fdiv.h f30, f18, f5, rmm # perform operation
fdiv.h f30, f18, f5, rne # perform operation
fdiv.h f30, f18, f5, rtz # perform operation
fdiv.h f30, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f23, f6, f7, dyn # perform operation
fdiv.h f23, f6, f7, rdn # perform operation
fdiv.h f23, f6, f7, rmm # perform operation
fdiv.h f23, f6, f7, rne # perform operation
fdiv.h f23, f6, f7, rtz # perform operation
fdiv.h f23, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fdiv.h f1, f24, f6, dyn # perform operation
fdiv.h f1, f24, f6, rdn # perform operation
fdiv.h f1, f24, f6, rmm # perform operation
fdiv.h f1, f24, f6, rne # perform operation
fdiv.h f1, f24, f6, rtz # perform operation
fdiv.h f1, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fdiv.h f31, f24, f16, dyn # perform operation
fdiv.h f31, f24, f16, rdn # perform operation
fdiv.h f31, f24, f16, rmm # perform operation
fdiv.h f31, f24, f16, rne # perform operation
fdiv.h f31, f24, f16, rtz # perform operation
fdiv.h f31, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fdiv.h f30, f8, f5, dyn # perform operation
fdiv.h f30, f8, f5, rdn # perform operation
fdiv.h f30, f8, f5, rmm # perform operation
fdiv.h f30, f8, f5, rne # perform operation
fdiv.h f30, f8, f5, rtz # perform operation
fdiv.h f30, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fdiv.h f31, f25, f13, dyn # perform operation
fdiv.h f31, f25, f13, rdn # perform operation
fdiv.h f31, f25, f13, rmm # perform operation
fdiv.h f31, f25, f13, rne # perform operation
fdiv.h f31, f25, f13, rtz # perform operation
fdiv.h f31, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fdiv.h f1, f14, f9, dyn # perform operation
fdiv.h f1, f14, f9, rdn # perform operation
fdiv.h f1, f14, f9, rmm # perform operation
fdiv.h f1, f14, f9, rne # perform operation
fdiv.h f1, f14, f9, rtz # perform operation
fdiv.h f1, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fdiv.h f19, f18, f24, dyn # perform operation
fdiv.h f19, f18, f24, rdn # perform operation
fdiv.h f19, f18, f24, rmm # perform operation
fdiv.h f19, f18, f24, rne # perform operation
fdiv.h f19, f18, f24, rtz # perform operation
fdiv.h f19, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fdiv.h f25, f1, f16, dyn # perform operation
fdiv.h f25, f1, f16, rdn # perform operation
fdiv.h f25, f1, f16, rmm # perform operation
fdiv.h f25, f1, f16, rne # perform operation
fdiv.h f25, f1, f16, rtz # perform operation
fdiv.h f25, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f1, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fdiv.h f28, f24, f16, dyn # perform operation
fdiv.h f28, f24, f16, rdn # perform operation
fdiv.h f28, f24, f16, rmm # perform operation
fdiv.h f28, f24, f16, rne # perform operation
fdiv.h f28, f24, f16, rtz # perform operation
fdiv.h f28, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fdiv.h f31, f28, f29, dyn # perform operation
fdiv.h f31, f28, f29, rdn # perform operation
fdiv.h f31, f28, f29, rmm # perform operation
fdiv.h f31, f28, f29, rne # perform operation
fdiv.h f31, f28, f29, rtz # perform operation
fdiv.h f31, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f29, f27, f2, dyn # perform operation
fdiv.h f29, f27, f2, rdn # perform operation
fdiv.h f29, f27, f2, rmm # perform operation
fdiv.h f29, f27, f2, rne # perform operation
fdiv.h f29, f27, f2, rtz # perform operation
fdiv.h f29, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f6, f20, f16, dyn # perform operation
fdiv.h f6, f20, f16, rdn # perform operation
fdiv.h f6, f20, f16, rmm # perform operation
fdiv.h f6, f20, f16, rne # perform operation
fdiv.h f6, f20, f16, rtz # perform operation
fdiv.h f6, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fdiv.h f20, f2, f1, dyn # perform operation
fdiv.h f20, f2, f1, rdn # perform operation
fdiv.h f20, f2, f1, rmm # perform operation
fdiv.h f20, f2, f1, rne # perform operation
fdiv.h f20, f2, f1, rtz # perform operation
fdiv.h f20, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fdiv.h f25, f9, f1, dyn # perform operation
fdiv.h f25, f9, f1, rdn # perform operation
fdiv.h f25, f9, f1, rmm # perform operation
fdiv.h f25, f9, f1, rne # perform operation
fdiv.h f25, f9, f1, rtz # perform operation
fdiv.h f25, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fdiv.h f29, f17, f30, dyn # perform operation
fdiv.h f29, f17, f30, rdn # perform operation
fdiv.h f29, f17, f30, rmm # perform operation
fdiv.h f29, f17, f30, rne # perform operation
fdiv.h f29, f17, f30, rtz # perform operation
fdiv.h f29, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fdiv.h f15, f17, f30, dyn # perform operation
fdiv.h f15, f17, f30, rdn # perform operation
fdiv.h f15, f17, f30, rmm # perform operation
fdiv.h f15, f17, f30, rne # perform operation
fdiv.h f15, f17, f30, rtz # perform operation
fdiv.h f15, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f22, f28, f21, dyn # perform operation
fdiv.h f22, f28, f21, rdn # perform operation
fdiv.h f22, f28, f21, rmm # perform operation
fdiv.h f22, f28, f21, rne # perform operation
fdiv.h f22, f28, f21, rtz # perform operation
fdiv.h f22, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fdiv.h f3, f28, f6, dyn # perform operation
fdiv.h f3, f28, f6, rdn # perform operation
fdiv.h f3, f28, f6, rmm # perform operation
fdiv.h f3, f28, f6, rne # perform operation
fdiv.h f3, f28, f6, rtz # perform operation
fdiv.h f3, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fdiv.h f23, f22, f11, dyn # perform operation
fdiv.h f23, f22, f11, rdn # perform operation
fdiv.h f23, f22, f11, rmm # perform operation
fdiv.h f23, f22, f11, rne # perform operation
fdiv.h f23, f22, f11, rtz # perform operation
fdiv.h f23, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fdiv.h f31, f26, f5, dyn # perform operation
fdiv.h f31, f26, f5, rdn # perform operation
fdiv.h f31, f26, f5, rmm # perform operation
fdiv.h f31, f26, f5, rne # perform operation
fdiv.h f31, f26, f5, rtz # perform operation
fdiv.h f31, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fdiv.h f25, f19, f2, dyn # perform operation
fdiv.h f25, f19, f2, rdn # perform operation
fdiv.h f25, f19, f2, rmm # perform operation
fdiv.h f25, f19, f2, rne # perform operation
fdiv.h f25, f19, f2, rtz # perform operation
fdiv.h f25, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fdiv.h f12, f28, f14, dyn # perform operation
fdiv.h f12, f28, f14, rdn # perform operation
fdiv.h f12, f28, f14, rmm # perform operation
fdiv.h f12, f28, f14, rne # perform operation
fdiv.h f12, f28, f14, rtz # perform operation
fdiv.h f12, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fdiv.h f21, f3, f26, dyn # perform operation
fdiv.h f21, f3, f26, rdn # perform operation
fdiv.h f21, f3, f26, rmm # perform operation
fdiv.h f21, f3, f26, rne # perform operation
fdiv.h f21, f3, f26, rtz # perform operation
fdiv.h f21, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fdiv.h f2, f13, f24, dyn # perform operation
fdiv.h f2, f13, f24, rdn # perform operation
fdiv.h f2, f13, f24, rmm # perform operation
fdiv.h f2, f13, f24, rne # perform operation
fdiv.h f2, f13, f24, rtz # perform operation
fdiv.h f2, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fdiv.h f25, f22, f5, dyn # perform operation
fdiv.h f25, f22, f5, rdn # perform operation
fdiv.h f25, f22, f5, rmm # perform operation
fdiv.h f25, f22, f5, rne # perform operation
fdiv.h f25, f22, f5, rtz # perform operation
fdiv.h f25, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fdiv.h f1, f27, f9, dyn # perform operation
fdiv.h f1, f27, f9, rdn # perform operation
fdiv.h f1, f27, f9, rmm # perform operation
fdiv.h f1, f27, f9, rne # perform operation
fdiv.h f1, f27, f9, rtz # perform operation
fdiv.h f1, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f27, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fdiv.h f22, f20, f18, dyn # perform operation
fdiv.h f22, f20, f18, rdn # perform operation
fdiv.h f22, f20, f18, rmm # perform operation
fdiv.h f22, f20, f18, rne # perform operation
fdiv.h f22, f20, f18, rtz # perform operation
fdiv.h f22, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fdiv.h f6, f13, f28, dyn # perform operation
fdiv.h f6, f13, f28, rdn # perform operation
fdiv.h f6, f13, f28, rmm # perform operation
fdiv.h f6, f13, f28, rne # perform operation
fdiv.h f6, f13, f28, rtz # perform operation
fdiv.h f6, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.h f24, f31, f8, dyn # perform operation
fdiv.h f24, f31, f8, rdn # perform operation
fdiv.h f24, f31, f8, rmm # perform operation
fdiv.h f24, f31, f8, rne # perform operation
fdiv.h f24, f31, f8, rtz # perform operation
fdiv.h f24, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fdiv.h f14, f13, f18, dyn # perform operation
fdiv.h f14, f13, f18, rdn # perform operation
fdiv.h f14, f13, f18, rmm # perform operation
fdiv.h f14, f13, f18, rne # perform operation
fdiv.h f14, f13, f18, rtz # perform operation
fdiv.h f14, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fdiv.h f24, f14, f20, dyn # perform operation
fdiv.h f24, f14, f20, rdn # perform operation
fdiv.h f24, f14, f20, rmm # perform operation
fdiv.h f24, f14, f20, rne # perform operation
fdiv.h f24, f14, f20, rtz # perform operation
fdiv.h f24, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fdiv.h f16, f1, f12, dyn # perform operation
fdiv.h f16, f1, f12, rdn # perform operation
fdiv.h f16, f1, f12, rmm # perform operation
fdiv.h f16, f1, f12, rne # perform operation
fdiv.h f16, f1, f12, rtz # perform operation
fdiv.h f16, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fdiv.h f15, f31, f24, dyn # perform operation
fdiv.h f15, f31, f24, rdn # perform operation
fdiv.h f15, f31, f24, rmm # perform operation
fdiv.h f15, f31, f24, rne # perform operation
fdiv.h f15, f31, f24, rtz # perform operation
fdiv.h f15, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fdiv.h f22, f7, f10, dyn # perform operation
fdiv.h f22, f7, f10, rdn # perform operation
fdiv.h f22, f7, f10, rmm # perform operation
fdiv.h f22, f7, f10, rne # perform operation
fdiv.h f22, f7, f10, rtz # perform operation
fdiv.h f22, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fdiv.h f28, f6, f20, dyn # perform operation
fdiv.h f28, f6, f20, rdn # perform operation
fdiv.h f28, f6, f20, rmm # perform operation
fdiv.h f28, f6, f20, rne # perform operation
fdiv.h f28, f6, f20, rtz # perform operation
fdiv.h f28, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fdiv.h f5, f7, f31, dyn # perform operation
fdiv.h f5, f7, f31, rdn # perform operation
fdiv.h f5, f7, f31, rmm # perform operation
fdiv.h f5, f7, f31, rne # perform operation
fdiv.h f5, f7, f31, rtz # perform operation
fdiv.h f5, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fdiv.h f28, f19, f8, dyn # perform operation
fdiv.h f28, f19, f8, rdn # perform operation
fdiv.h f28, f19, f8, rmm # perform operation
fdiv.h f28, f19, f8, rne # perform operation
fdiv.h f28, f19, f8, rtz # perform operation
fdiv.h f28, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fdiv.h f31, f24, f20, dyn # perform operation
fdiv.h f31, f24, f20, rdn # perform operation
fdiv.h f31, f24, f20, rmm # perform operation
fdiv.h f31, f24, f20, rne # perform operation
fdiv.h f31, f24, f20, rtz # perform operation
fdiv.h f31, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fdiv.h f2, f17, f31, dyn # perform operation
fdiv.h f2, f17, f31, rdn # perform operation
fdiv.h f2, f17, f31, rmm # perform operation
fdiv.h f2, f17, f31, rne # perform operation
fdiv.h f2, f17, f31, rtz # perform operation
fdiv.h f2, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fdiv.h f22, f18, f1, dyn # perform operation
fdiv.h f22, f18, f1, rdn # perform operation
fdiv.h f22, f18, f1, rmm # perform operation
fdiv.h f22, f18, f1, rne # perform operation
fdiv.h f22, f18, f1, rtz # perform operation
fdiv.h f22, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fdiv.h f12, f18, f30, dyn # perform operation
fdiv.h f12, f18, f30, rdn # perform operation
fdiv.h f12, f18, f30, rmm # perform operation
fdiv.h f12, f18, f30, rne # perform operation
fdiv.h f12, f18, f30, rtz # perform operation
fdiv.h f12, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f18, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fdiv.h f13, f30, f17, dyn # perform operation
fdiv.h f13, f30, f17, rdn # perform operation
fdiv.h f13, f30, f17, rmm # perform operation
fdiv.h f13, f30, f17, rne # perform operation
fdiv.h f13, f30, f17, rtz # perform operation
fdiv.h f13, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fdiv.h f13, f22, f19, dyn # perform operation
fdiv.h f13, f22, f19, rdn # perform operation
fdiv.h f13, f22, f19, rmm # perform operation
fdiv.h f13, f22, f19, rne # perform operation
fdiv.h f13, f22, f19, rtz # perform operation
fdiv.h f13, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fdiv.h f8, f21, f31, dyn # perform operation
fdiv.h f8, f21, f31, rdn # perform operation
fdiv.h f8, f21, f31, rmm # perform operation
fdiv.h f8, f21, f31, rne # perform operation
fdiv.h f8, f21, f31, rtz # perform operation
fdiv.h f8, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.h f28, f25, f2, dyn # perform operation
fdiv.h f28, f25, f2, rdn # perform operation
fdiv.h f28, f25, f2, rmm # perform operation
fdiv.h f28, f25, f2, rne # perform operation
fdiv.h f28, f25, f2, rtz # perform operation
fdiv.h f28, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fdiv.h f20, f22, f11, dyn # perform operation
fdiv.h f20, f22, f11, rdn # perform operation
fdiv.h f20, f22, f11, rmm # perform operation
fdiv.h f20, f22, f11, rne # perform operation
fdiv.h f20, f22, f11, rtz # perform operation
fdiv.h f20, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fdiv.h f8, f11, f28, dyn # perform operation
fdiv.h f8, f11, f28, rdn # perform operation
fdiv.h f8, f11, f28, rmm # perform operation
fdiv.h f8, f11, f28, rne # perform operation
fdiv.h f8, f11, f28, rtz # perform operation
fdiv.h f8, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fdiv.h f18, f29, f28, dyn # perform operation
fdiv.h f18, f29, f28, rdn # perform operation
fdiv.h f18, f29, f28, rmm # perform operation
fdiv.h f18, f29, f28, rne # perform operation
fdiv.h f18, f29, f28, rtz # perform operation
fdiv.h f18, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fdiv.h f5, f26, f22, dyn # perform operation
fdiv.h f5, f26, f22, rdn # perform operation
fdiv.h f5, f26, f22, rmm # perform operation
fdiv.h f5, f26, f22, rne # perform operation
fdiv.h f5, f26, f22, rtz # perform operation
fdiv.h f5, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fdiv.h f8, f19, f3, dyn # perform operation
fdiv.h f8, f19, f3, rdn # perform operation
fdiv.h f8, f19, f3, rmm # perform operation
fdiv.h f8, f19, f3, rne # perform operation
fdiv.h f8, f19, f3, rtz # perform operation
fdiv.h f8, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fdiv.h f27, f10, f6, dyn # perform operation
fdiv.h f27, f10, f6, rdn # perform operation
fdiv.h f27, f10, f6, rmm # perform operation
fdiv.h f27, f10, f6, rne # perform operation
fdiv.h f27, f10, f6, rtz # perform operation
fdiv.h f27, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fdiv.h f19, f30, f22, dyn # perform operation
fdiv.h f19, f30, f22, rdn # perform operation
fdiv.h f19, f30, f22, rmm # perform operation
fdiv.h f19, f30, f22, rne # perform operation
fdiv.h f19, f30, f22, rtz # perform operation
fdiv.h f19, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fdiv.h f12, f17, f20, dyn # perform operation
fdiv.h f12, f17, f20, rdn # perform operation
fdiv.h f12, f17, f20, rmm # perform operation
fdiv.h f12, f17, f20, rne # perform operation
fdiv.h f12, f17, f20, rtz # perform operation
fdiv.h f12, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
fdiv.h f22, f8, f17, dyn # perform operation
fdiv.h f22, f8, f17, rdn # perform operation
fdiv.h f22, f8, f17, rmm # perform operation
fdiv.h f22, f8, f17, rne # perform operation
fdiv.h f22, f8, f17, rtz # perform operation
fdiv.h f22, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fdiv.h f21, f1, f7, dyn # perform operation
fdiv.h f21, f1, f7, rdn # perform operation
fdiv.h f21, f1, f7, rmm # perform operation
fdiv.h f21, f1, f7, rne # perform operation
fdiv.h f21, f1, f7, rtz # perform operation
fdiv.h f21, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f20, f9, f5, dyn # perform operation
fdiv.h f20, f9, f5, rdn # perform operation
fdiv.h f20, f9, f5, rmm # perform operation
fdiv.h f20, f9, f5, rne # perform operation
fdiv.h f20, f9, f5, rtz # perform operation
fdiv.h f20, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f9, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.h f15, f13, f14, dyn # perform operation
fdiv.h f15, f13, f14, rdn # perform operation
fdiv.h f15, f13, f14, rmm # perform operation
fdiv.h f15, f13, f14, rne # perform operation
fdiv.h f15, f13, f14, rtz # perform operation
fdiv.h f15, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fdiv.h f9, f29, f8, dyn # perform operation
fdiv.h f9, f29, f8, rdn # perform operation
fdiv.h f9, f29, f8, rmm # perform operation
fdiv.h f9, f29, f8, rne # perform operation
fdiv.h f9, f29, f8, rtz # perform operation
fdiv.h f9, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f19, f30, f3, dyn # perform operation
fdiv.h f19, f30, f3, rdn # perform operation
fdiv.h f19, f30, f3, rmm # perform operation
fdiv.h f19, f30, f3, rne # perform operation
fdiv.h f19, f30, f3, rtz # perform operation
fdiv.h f19, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fdiv.h f28, f18, f10, dyn # perform operation
fdiv.h f28, f18, f10, rdn # perform operation
fdiv.h f28, f18, f10, rmm # perform operation
fdiv.h f28, f18, f10, rne # perform operation
fdiv.h f28, f18, f10, rtz # perform operation
fdiv.h f28, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fdiv.h f19, f5, f9, dyn # perform operation
fdiv.h f19, f5, f9, rdn # perform operation
fdiv.h f19, f5, f9, rmm # perform operation
fdiv.h f19, f5, f9, rne # perform operation
fdiv.h f19, f5, f9, rtz # perform operation
fdiv.h f19, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fdiv.h f18, f9, f26, dyn # perform operation
fdiv.h f18, f9, f26, rdn # perform operation
fdiv.h f18, f9, f26, rmm # perform operation
fdiv.h f18, f9, f26, rne # perform operation
fdiv.h f18, f9, f26, rtz # perform operation
fdiv.h f18, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fdiv.h f17, f10, f1, dyn # perform operation
fdiv.h f17, f10, f1, rdn # perform operation
fdiv.h f17, f10, f1, rmm # perform operation
fdiv.h f17, f10, f1, rne # perform operation
fdiv.h f17, f10, f1, rtz # perform operation
fdiv.h f17, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fdiv.h f17, f1, f18, dyn # perform operation
fdiv.h f17, f1, f18, rdn # perform operation
fdiv.h f17, f1, f18, rmm # perform operation
fdiv.h f17, f1, f18, rne # perform operation
fdiv.h f17, f1, f18, rtz # perform operation
fdiv.h f17, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fdiv.h f19, f8, f14, dyn # perform operation
fdiv.h f19, f8, f14, rdn # perform operation
fdiv.h f19, f8, f14, rmm # perform operation
fdiv.h f19, f8, f14, rne # perform operation
fdiv.h f19, f8, f14, rtz # perform operation
fdiv.h f19, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fdiv.h f10, f16, f12, dyn # perform operation
fdiv.h f10, f16, f12, rdn # perform operation
fdiv.h f10, f16, f12, rmm # perform operation
fdiv.h f10, f16, f12, rne # perform operation
fdiv.h f10, f16, f12, rtz # perform operation
fdiv.h f10, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f16, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f21, f31, f29, dyn # perform operation
fdiv.h f21, f31, f29, rdn # perform operation
fdiv.h f21, f31, f29, rmm # perform operation
fdiv.h f21, f31, f29, rne # perform operation
fdiv.h f21, f31, f29, rtz # perform operation
fdiv.h f21, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fdiv.h f7, f24, f20, dyn # perform operation
fdiv.h f7, f24, f20, rdn # perform operation
fdiv.h f7, f24, f20, rmm # perform operation
fdiv.h f7, f24, f20, rne # perform operation
fdiv.h f7, f24, f20, rtz # perform operation
fdiv.h f7, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fdiv.h f31, f7, f9, dyn # perform operation
fdiv.h f31, f7, f9, rdn # perform operation
fdiv.h f31, f7, f9, rmm # perform operation
fdiv.h f31, f7, f9, rne # perform operation
fdiv.h f31, f7, f9, rtz # perform operation
fdiv.h f31, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fdiv.h f9, f20, f11, dyn # perform operation
fdiv.h f9, f20, f11, rdn # perform operation
fdiv.h f9, f20, f11, rmm # perform operation
fdiv.h f9, f20, f11, rne # perform operation
fdiv.h f9, f20, f11, rtz # perform operation
fdiv.h f9, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fdiv.h f13, f5, f11, dyn # perform operation
fdiv.h f13, f5, f11, rdn # perform operation
fdiv.h f13, f5, f11, rmm # perform operation
fdiv.h f13, f5, f11, rne # perform operation
fdiv.h f13, f5, f11, rtz # perform operation
fdiv.h f13, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f5, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fdiv.h f28, f12, f17, dyn # perform operation
fdiv.h f28, f12, f17, rdn # perform operation
fdiv.h f28, f12, f17, rmm # perform operation
fdiv.h f28, f12, f17, rne # perform operation
fdiv.h f28, f12, f17, rtz # perform operation
fdiv.h f28, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.h f1, f15, f14, dyn # perform operation
fdiv.h f1, f15, f14, rdn # perform operation
fdiv.h f1, f15, f14, rmm # perform operation
fdiv.h f1, f15, f14, rne # perform operation
fdiv.h f1, f15, f14, rtz # perform operation
fdiv.h f1, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fdiv.h f29, f25, f22, dyn # perform operation
fdiv.h f29, f25, f22, rdn # perform operation
fdiv.h f29, f25, f22, rmm # perform operation
fdiv.h f29, f25, f22, rne # perform operation
fdiv.h f29, f25, f22, rtz # perform operation
fdiv.h f29, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fdiv.h f13, f30, f14, dyn # perform operation
fdiv.h f13, f30, f14, rdn # perform operation
fdiv.h f13, f30, f14, rmm # perform operation
fdiv.h f13, f30, f14, rne # perform operation
fdiv.h f13, f30, f14, rtz # perform operation
fdiv.h f13, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fdiv.h f1, f22, f19, dyn # perform operation
fdiv.h f1, f22, f19, rdn # perform operation
fdiv.h f1, f22, f19, rmm # perform operation
fdiv.h f1, f22, f19, rne # perform operation
fdiv.h f1, f22, f19, rtz # perform operation
fdiv.h f1, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fdiv.h f28, f6, f13, dyn # perform operation
fdiv.h f28, f6, f13, rdn # perform operation
fdiv.h f28, f6, f13, rmm # perform operation
fdiv.h f28, f6, f13, rne # perform operation
fdiv.h f28, f6, f13, rtz # perform operation
fdiv.h f28, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f27, f30, f10, dyn # perform operation
fdiv.h f27, f30, f10, rdn # perform operation
fdiv.h f27, f30, f10, rmm # perform operation
fdiv.h f27, f30, f10, rne # perform operation
fdiv.h f27, f30, f10, rtz # perform operation
fdiv.h f27, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fdiv.h f23, f2, f12, dyn # perform operation
fdiv.h f23, f2, f12, rdn # perform operation
fdiv.h f23, f2, f12, rmm # perform operation
fdiv.h f23, f2, f12, rne # perform operation
fdiv.h f23, f2, f12, rtz # perform operation
fdiv.h f23, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fdiv.h f1, f25, f5, dyn # perform operation
fdiv.h f1, f25, f5, rdn # perform operation
fdiv.h f1, f25, f5, rmm # perform operation
fdiv.h f1, f25, f5, rne # perform operation
fdiv.h f1, f25, f5, rtz # perform operation
fdiv.h f1, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fdiv.h f13, f9, f6, dyn # perform operation
fdiv.h f13, f9, f6, rdn # perform operation
fdiv.h f13, f9, f6, rmm # perform operation
fdiv.h f13, f9, f6, rne # perform operation
fdiv.h f13, f9, f6, rtz # perform operation
fdiv.h f13, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fdiv.h f17, f26, f24, dyn # perform operation
fdiv.h f17, f26, f24, rdn # perform operation
fdiv.h f17, f26, f24, rmm # perform operation
fdiv.h f17, f26, f24, rne # perform operation
fdiv.h f17, f26, f24, rtz # perform operation
fdiv.h f17, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fdiv.h f16, f7, f2, dyn # perform operation
fdiv.h f16, f7, f2, rdn # perform operation
fdiv.h f16, f7, f2, rmm # perform operation
fdiv.h f16, f7, f2, rne # perform operation
fdiv.h f16, f7, f2, rtz # perform operation
fdiv.h f16, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fdiv.h f6, f25, f21, dyn # perform operation
fdiv.h f6, f25, f21, rdn # perform operation
fdiv.h f6, f25, f21, rmm # perform operation
fdiv.h f6, f25, f21, rne # perform operation
fdiv.h f6, f25, f21, rtz # perform operation
fdiv.h f6, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fdiv.h f5, f18, f17, dyn # perform operation
fdiv.h f5, f18, f17, rdn # perform operation
fdiv.h f5, f18, f17, rmm # perform operation
fdiv.h f5, f18, f17, rne # perform operation
fdiv.h f5, f18, f17, rtz # perform operation
fdiv.h f5, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fdiv.h f29, f13, f26, dyn # perform operation
fdiv.h f29, f13, f26, rdn # perform operation
fdiv.h f29, f13, f26, rmm # perform operation
fdiv.h f29, f13, f26, rne # perform operation
fdiv.h f29, f13, f26, rtz # perform operation
fdiv.h f29, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f2, f16, f5, dyn # perform operation
fdiv.h f2, f16, f5, rdn # perform operation
fdiv.h f2, f16, f5, rmm # perform operation
fdiv.h f2, f16, f5, rne # perform operation
fdiv.h f2, f16, f5, rtz # perform operation
fdiv.h f2, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f7, f3, f11, dyn # perform operation
fdiv.h f7, f3, f11, rdn # perform operation
fdiv.h f7, f3, f11, rmm # perform operation
fdiv.h f7, f3, f11, rne # perform operation
fdiv.h f7, f3, f11, rtz # perform operation
fdiv.h f7, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fdiv.h f6, f14, f31, dyn # perform operation
fdiv.h f6, f14, f31, rdn # perform operation
fdiv.h f6, f14, f31, rmm # perform operation
fdiv.h f6, f14, f31, rne # perform operation
fdiv.h f6, f14, f31, rtz # perform operation
fdiv.h f6, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fdiv.h f17, f10, f3, dyn # perform operation
fdiv.h f17, f10, f3, rdn # perform operation
fdiv.h f17, f10, f3, rmm # perform operation
fdiv.h f17, f10, f3, rne # perform operation
fdiv.h f17, f10, f3, rtz # perform operation
fdiv.h f17, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fdiv.h f2, f26, f16, dyn # perform operation
fdiv.h f2, f26, f16, rdn # perform operation
fdiv.h f2, f26, f16, rmm # perform operation
fdiv.h f2, f26, f16, rne # perform operation
fdiv.h f2, f26, f16, rtz # perform operation
fdiv.h f2, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fdiv.h f19, f29, f2, dyn # perform operation
fdiv.h f19, f29, f2, rdn # perform operation
fdiv.h f19, f29, f2, rmm # perform operation
fdiv.h f19, f29, f2, rne # perform operation
fdiv.h f19, f29, f2, rtz # perform operation
fdiv.h f19, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fdiv.h f22, f10, f23, dyn # perform operation
fdiv.h f22, f10, f23, rdn # perform operation
fdiv.h f22, f10, f23, rmm # perform operation
fdiv.h f22, f10, f23, rne # perform operation
fdiv.h f22, f10, f23, rtz # perform operation
fdiv.h f22, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fdiv.h f3, f18, f2, dyn # perform operation
fdiv.h f3, f18, f2, rdn # perform operation
fdiv.h f3, f18, f2, rmm # perform operation
fdiv.h f3, f18, f2, rne # perform operation
fdiv.h f3, f18, f2, rtz # perform operation
fdiv.h f3, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fdiv.h f18, f14, f6, dyn # perform operation
fdiv.h f18, f14, f6, rdn # perform operation
fdiv.h f18, f14, f6, rmm # perform operation
fdiv.h f18, f14, f6, rne # perform operation
fdiv.h f18, f14, f6, rtz # perform operation
fdiv.h f18, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fdiv.h f14, f15, f24, dyn # perform operation
fdiv.h f14, f15, f24, rdn # perform operation
fdiv.h f14, f15, f24, rmm # perform operation
fdiv.h f14, f15, f24, rne # perform operation
fdiv.h f14, f15, f24, rtz # perform operation
fdiv.h f14, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fdiv.h f22, f28, f19, dyn # perform operation
fdiv.h f22, f28, f19, rdn # perform operation
fdiv.h f22, f28, f19, rmm # perform operation
fdiv.h f22, f28, f19, rne # perform operation
fdiv.h f22, f28, f19, rtz # perform operation
fdiv.h f22, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fdiv.h f22, f28, f3, dyn # perform operation
fdiv.h f22, f28, f3, rdn # perform operation
fdiv.h f22, f28, f3, rmm # perform operation
fdiv.h f22, f28, f3, rne # perform operation
fdiv.h f22, f28, f3, rtz # perform operation
fdiv.h f22, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fdiv.h f3, f11, f14, dyn # perform operation
fdiv.h f3, f11, f14, rdn # perform operation
fdiv.h f3, f11, f14, rmm # perform operation
fdiv.h f3, f11, f14, rne # perform operation
fdiv.h f3, f11, f14, rtz # perform operation
fdiv.h f3, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fdiv.h f8, f7, f11, dyn # perform operation
fdiv.h f8, f7, f11, rdn # perform operation
fdiv.h f8, f7, f11, rmm # perform operation
fdiv.h f8, f7, f11, rne # perform operation
fdiv.h f8, f7, f11, rtz # perform operation
fdiv.h f8, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f11, f21, f16, dyn # perform operation
fdiv.h f11, f21, f16, rdn # perform operation
fdiv.h f11, f21, f16, rmm # perform operation
fdiv.h f11, f21, f16, rne # perform operation
fdiv.h f11, f21, f16, rtz # perform operation
fdiv.h f11, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fdiv.h f28, f7, f19, dyn # perform operation
fdiv.h f28, f7, f19, rdn # perform operation
fdiv.h f28, f7, f19, rmm # perform operation
fdiv.h f28, f7, f19, rne # perform operation
fdiv.h f28, f7, f19, rtz # perform operation
fdiv.h f28, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fdiv.h f19, f7, f9, dyn # perform operation
fdiv.h f19, f7, f9, rdn # perform operation
fdiv.h f19, f7, f9, rmm # perform operation
fdiv.h f19, f7, f9, rne # perform operation
fdiv.h f19, f7, f9, rtz # perform operation
fdiv.h f19, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fdiv.h f31, f19, f28, dyn # perform operation
fdiv.h f31, f19, f28, rdn # perform operation
fdiv.h f31, f19, f28, rmm # perform operation
fdiv.h f31, f19, f28, rne # perform operation
fdiv.h f31, f19, f28, rtz # perform operation
fdiv.h f31, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fdiv.h f11, f26, f17, dyn # perform operation
fdiv.h f11, f26, f17, rdn # perform operation
fdiv.h f11, f26, f17, rmm # perform operation
fdiv.h f11, f26, f17, rne # perform operation
fdiv.h f11, f26, f17, rtz # perform operation
fdiv.h f11, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f2, f17, f8, dyn # perform operation
fdiv.h f2, f17, f8, rdn # perform operation
fdiv.h f2, f17, f8, rmm # perform operation
fdiv.h f2, f17, f8, rne # perform operation
fdiv.h f2, f17, f8, rtz # perform operation
fdiv.h f2, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
fdiv.h f15, f10, f1, dyn # perform operation
fdiv.h f15, f10, f1, rdn # perform operation
fdiv.h f15, f10, f1, rmm # perform operation
fdiv.h f15, f10, f1, rne # perform operation
fdiv.h f15, f10, f1, rtz # perform operation
fdiv.h f15, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fdiv.h f1, f6, f25, dyn # perform operation
fdiv.h f1, f6, f25, rdn # perform operation
fdiv.h f1, f6, f25, rmm # perform operation
fdiv.h f1, f6, f25, rne # perform operation
fdiv.h f1, f6, f25, rtz # perform operation
fdiv.h f1, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fdiv.h f23, f27, f5, dyn # perform operation
fdiv.h f23, f27, f5, rdn # perform operation
fdiv.h f23, f27, f5, rmm # perform operation
fdiv.h f23, f27, f5, rne # perform operation
fdiv.h f23, f27, f5, rtz # perform operation
fdiv.h f23, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
fdiv.h f11, f15, f20, dyn # perform operation
fdiv.h f11, f15, f20, rdn # perform operation
fdiv.h f11, f15, f20, rmm # perform operation
fdiv.h f11, f15, f20, rne # perform operation
fdiv.h f11, f15, f20, rtz # perform operation
fdiv.h f11, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fdiv.h f13, f11, f5, dyn # perform operation
fdiv.h f13, f11, f5, rdn # perform operation
fdiv.h f13, f11, f5, rmm # perform operation
fdiv.h f13, f11, f5, rne # perform operation
fdiv.h f13, f11, f5, rtz # perform operation
fdiv.h f13, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fdiv.h f23, f27, f30, dyn # perform operation
fdiv.h f23, f27, f30, rdn # perform operation
fdiv.h f23, f27, f30, rmm # perform operation
fdiv.h f23, f27, f30, rne # perform operation
fdiv.h f23, f27, f30, rtz # perform operation
fdiv.h f23, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f18, f15, f19, dyn # perform operation
fdiv.h f18, f15, f19, rdn # perform operation
fdiv.h f18, f15, f19, rmm # perform operation
fdiv.h f18, f15, f19, rne # perform operation
fdiv.h f18, f15, f19, rtz # perform operation
fdiv.h f18, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fdiv.h f3, f18, f12, dyn # perform operation
fdiv.h f3, f18, f12, rdn # perform operation
fdiv.h f3, f18, f12, rmm # perform operation
fdiv.h f3, f18, f12, rne # perform operation
fdiv.h f3, f18, f12, rtz # perform operation
fdiv.h f3, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fdiv.h f5, f6, f25, dyn # perform operation
fdiv.h f5, f6, f25, rdn # perform operation
fdiv.h f5, f6, f25, rmm # perform operation
fdiv.h f5, f6, f25, rne # perform operation
fdiv.h f5, f6, f25, rtz # perform operation
fdiv.h f5, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fdiv.h f28, f27, f21, dyn # perform operation
fdiv.h f28, f27, f21, rdn # perform operation
fdiv.h f28, f27, f21, rmm # perform operation
fdiv.h f28, f27, f21, rne # perform operation
fdiv.h f28, f27, f21, rtz # perform operation
fdiv.h f28, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fdiv.h f20, f11, f1, dyn # perform operation
fdiv.h f20, f11, f1, rdn # perform operation
fdiv.h f20, f11, f1, rmm # perform operation
fdiv.h f20, f11, f1, rne # perform operation
fdiv.h f20, f11, f1, rtz # perform operation
fdiv.h f20, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fdiv.h f6, f11, f21, dyn # perform operation
fdiv.h f6, f11, f21, rdn # perform operation
fdiv.h f6, f11, f21, rmm # perform operation
fdiv.h f6, f11, f21, rne # perform operation
fdiv.h f6, f11, f21, rtz # perform operation
fdiv.h f6, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fdiv.h f31, f13, f24, dyn # perform operation
fdiv.h f31, f13, f24, rdn # perform operation
fdiv.h f31, f13, f24, rmm # perform operation
fdiv.h f31, f13, f24, rne # perform operation
fdiv.h f31, f13, f24, rtz # perform operation
fdiv.h f31, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fdiv.h f26, f1, f25, dyn # perform operation
fdiv.h f26, f1, f25, rdn # perform operation
fdiv.h f26, f1, f25, rmm # perform operation
fdiv.h f26, f1, f25, rne # perform operation
fdiv.h f26, f1, f25, rtz # perform operation
fdiv.h f26, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fdiv.h f3, f6, f31, dyn # perform operation
fdiv.h f3, f6, f31, rdn # perform operation
fdiv.h f3, f6, f31, rmm # perform operation
fdiv.h f3, f6, f31, rne # perform operation
fdiv.h f3, f6, f31, rtz # perform operation
fdiv.h f3, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fdiv.h f31, f30, f3, dyn # perform operation
fdiv.h f31, f30, f3, rdn # perform operation
fdiv.h f31, f30, f3, rmm # perform operation
fdiv.h f31, f30, f3, rne # perform operation
fdiv.h f31, f30, f3, rtz # perform operation
fdiv.h f31, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f5, f26, f29, dyn # perform operation
fdiv.h f5, f26, f29, rdn # perform operation
fdiv.h f5, f26, f29, rmm # perform operation
fdiv.h f5, f26, f29, rne # perform operation
fdiv.h f5, f26, f29, rtz # perform operation
fdiv.h f5, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fdiv.h f5, f29, f13, dyn # perform operation
fdiv.h f5, f29, f13, rdn # perform operation
fdiv.h f5, f29, f13, rmm # perform operation
fdiv.h f5, f29, f13, rne # perform operation
fdiv.h f5, f29, f13, rtz # perform operation
fdiv.h f5, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f21, f3, f23, dyn # perform operation
fdiv.h f21, f3, f23, rdn # perform operation
fdiv.h f21, f3, f23, rmm # perform operation
fdiv.h f21, f3, f23, rne # perform operation
fdiv.h f21, f3, f23, rtz # perform operation
fdiv.h f21, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fdiv.h f11, f3, f18, dyn # perform operation
fdiv.h f11, f3, f18, rdn # perform operation
fdiv.h f11, f3, f18, rmm # perform operation
fdiv.h f11, f3, f18, rne # perform operation
fdiv.h f11, f3, f18, rtz # perform operation
fdiv.h f11, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f14, f19, f13, dyn # perform operation
fdiv.h f14, f19, f13, rdn # perform operation
fdiv.h f14, f19, f13, rmm # perform operation
fdiv.h f14, f19, f13, rne # perform operation
fdiv.h f14, f19, f13, rtz # perform operation
fdiv.h f14, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fdiv.h f29, f22, f21, dyn # perform operation
fdiv.h f29, f22, f21, rdn # perform operation
fdiv.h f29, f22, f21, rmm # perform operation
fdiv.h f29, f22, f21, rne # perform operation
fdiv.h f29, f22, f21, rtz # perform operation
fdiv.h f29, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.h f17, f26, f15, dyn # perform operation
fdiv.h f17, f26, f15, rdn # perform operation
fdiv.h f17, f26, f15, rmm # perform operation
fdiv.h f17, f26, f15, rne # perform operation
fdiv.h f17, f26, f15, rtz # perform operation
fdiv.h f17, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fdiv.h f10, f20, f25, dyn # perform operation
fdiv.h f10, f20, f25, rdn # perform operation
fdiv.h f10, f20, f25, rmm # perform operation
fdiv.h f10, f20, f25, rne # perform operation
fdiv.h f10, f20, f25, rtz # perform operation
fdiv.h f10, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f31, f9, f20, dyn # perform operation
fdiv.h f31, f9, f20, rdn # perform operation
fdiv.h f31, f9, f20, rmm # perform operation
fdiv.h f31, f9, f20, rne # perform operation
fdiv.h f31, f9, f20, rtz # perform operation
fdiv.h f31, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f9, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fdiv.h f16, f11, f6, dyn # perform operation
fdiv.h f16, f11, f6, rdn # perform operation
fdiv.h f16, f11, f6, rmm # perform operation
fdiv.h f16, f11, f6, rne # perform operation
fdiv.h f16, f11, f6, rtz # perform operation
fdiv.h f16, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fdiv.h f17, f26, f3, dyn # perform operation
fdiv.h f17, f26, f3, rdn # perform operation
fdiv.h f17, f26, f3, rmm # perform operation
fdiv.h f17, f26, f3, rne # perform operation
fdiv.h f17, f26, f3, rtz # perform operation
fdiv.h f17, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f26, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fdiv.h f30, f28, f31, dyn # perform operation
fdiv.h f30, f28, f31, rdn # perform operation
fdiv.h f30, f28, f31, rmm # perform operation
fdiv.h f30, f28, f31, rne # perform operation
fdiv.h f30, f28, f31, rtz # perform operation
fdiv.h f30, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
fdiv.h f22, f28, f8, dyn # perform operation
fdiv.h f22, f28, f8, rdn # perform operation
fdiv.h f22, f28, f8, rmm # perform operation
fdiv.h f22, f28, f8, rne # perform operation
fdiv.h f22, f28, f8, rtz # perform operation
fdiv.h f22, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fdiv.h f8, f16, f10, dyn # perform operation
fdiv.h f8, f16, f10, rdn # perform operation
fdiv.h f8, f16, f10, rmm # perform operation
fdiv.h f8, f16, f10, rne # perform operation
fdiv.h f8, f16, f10, rtz # perform operation
fdiv.h f8, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fdiv.h f11, f5, f1, dyn # perform operation
fdiv.h f11, f5, f1, rdn # perform operation
fdiv.h f11, f5, f1, rmm # perform operation
fdiv.h f11, f5, f1, rne # perform operation
fdiv.h f11, f5, f1, rtz # perform operation
fdiv.h f11, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
fdiv.h f27, f19, f14, dyn # perform operation
fdiv.h f27, f19, f14, rdn # perform operation
fdiv.h f27, f19, f14, rmm # perform operation
fdiv.h f27, f19, f14, rne # perform operation
fdiv.h f27, f19, f14, rtz # perform operation
fdiv.h f27, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fdiv.h f17, f18, f11, dyn # perform operation
fdiv.h f17, f18, f11, rdn # perform operation
fdiv.h f17, f18, f11, rmm # perform operation
fdiv.h f17, f18, f11, rne # perform operation
fdiv.h f17, f18, f11, rtz # perform operation
fdiv.h f17, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fdiv.h f19, f16, f29, dyn # perform operation
fdiv.h f19, f16, f29, rdn # perform operation
fdiv.h f19, f16, f29, rmm # perform operation
fdiv.h f19, f16, f29, rne # perform operation
fdiv.h f19, f16, f29, rtz # perform operation
fdiv.h f19, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fdiv.h f6, f16, f3, dyn # perform operation
fdiv.h f6, f16, f3, rdn # perform operation
fdiv.h f6, f16, f3, rmm # perform operation
fdiv.h f6, f16, f3, rne # perform operation
fdiv.h f6, f16, f3, rtz # perform operation
fdiv.h f6, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fdiv.h f7, f14, f28, dyn # perform operation
fdiv.h f7, f14, f28, rdn # perform operation
fdiv.h f7, f14, f28, rmm # perform operation
fdiv.h f7, f14, f28, rne # perform operation
fdiv.h f7, f14, f28, rtz # perform operation
fdiv.h f7, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fdiv.h f1, f12, f23, dyn # perform operation
fdiv.h f1, f12, f23, rdn # perform operation
fdiv.h f1, f12, f23, rmm # perform operation
fdiv.h f1, f12, f23, rne # perform operation
fdiv.h f1, f12, f23, rtz # perform operation
fdiv.h f1, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fdiv.h f31, f17, f3, dyn # perform operation
fdiv.h f31, f17, f3, rdn # perform operation
fdiv.h f31, f17, f3, rmm # perform operation
fdiv.h f31, f17, f3, rne # perform operation
fdiv.h f31, f17, f3, rtz # perform operation
fdiv.h f31, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fdiv.h f12, f27, f13, dyn # perform operation
fdiv.h f12, f27, f13, rdn # perform operation
fdiv.h f12, f27, f13, rmm # perform operation
fdiv.h f12, f27, f13, rne # perform operation
fdiv.h f12, f27, f13, rtz # perform operation
fdiv.h f12, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f27, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fdiv.h f30, f16, f1, dyn # perform operation
fdiv.h f30, f16, f1, rdn # perform operation
fdiv.h f30, f16, f1, rmm # perform operation
fdiv.h f30, f16, f1, rne # perform operation
fdiv.h f30, f16, f1, rtz # perform operation
fdiv.h f30, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fdiv.h f31, f13, f25, dyn # perform operation
fdiv.h f31, f13, f25, rdn # perform operation
fdiv.h f31, f13, f25, rmm # perform operation
fdiv.h f31, f13, f25, rne # perform operation
fdiv.h f31, f13, f25, rtz # perform operation
fdiv.h f31, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fdiv.h f7, f28, f18, dyn # perform operation
fdiv.h f7, f28, f18, rdn # perform operation
fdiv.h f7, f28, f18, rmm # perform operation
fdiv.h f7, f28, f18, rne # perform operation
fdiv.h f7, f28, f18, rtz # perform operation
fdiv.h f7, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fdiv.h f26, f10, f12, dyn # perform operation
fdiv.h f26, f10, f12, rdn # perform operation
fdiv.h f26, f10, f12, rmm # perform operation
fdiv.h f26, f10, f12, rne # perform operation
fdiv.h f26, f10, f12, rtz # perform operation
fdiv.h f26, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fdiv.h f22, f23, f24, dyn # perform operation
fdiv.h f22, f23, f24, rdn # perform operation
fdiv.h f22, f23, f24, rmm # perform operation
fdiv.h f22, f23, f24, rne # perform operation
fdiv.h f22, f23, f24, rtz # perform operation
fdiv.h f22, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fdiv.h f14, f15, f7, dyn # perform operation
fdiv.h f14, f15, f7, rdn # perform operation
fdiv.h f14, f15, f7, rmm # perform operation
fdiv.h f14, f15, f7, rne # perform operation
fdiv.h f14, f15, f7, rtz # perform operation
fdiv.h f14, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fdiv.h f18, f6, f12, dyn # perform operation
fdiv.h f18, f6, f12, rdn # perform operation
fdiv.h f18, f6, f12, rmm # perform operation
fdiv.h f18, f6, f12, rne # perform operation
fdiv.h f18, f6, f12, rtz # perform operation
fdiv.h f18, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fdiv.h f2, f13, f15, dyn # perform operation
fdiv.h f2, f13, f15, rdn # perform operation
fdiv.h f2, f13, f15, rmm # perform operation
fdiv.h f2, f13, f15, rne # perform operation
fdiv.h f2, f13, f15, rtz # perform operation
fdiv.h f2, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fdiv.h f16, f21, f23, dyn # perform operation
fdiv.h f16, f21, f23, rdn # perform operation
fdiv.h f16, f21, f23, rmm # perform operation
fdiv.h f16, f21, f23, rne # perform operation
fdiv.h f16, f21, f23, rtz # perform operation
fdiv.h f16, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fdiv.h f11, f31, f3, dyn # perform operation
fdiv.h f11, f31, f3, rdn # perform operation
fdiv.h f11, f31, f3, rmm # perform operation
fdiv.h f11, f31, f3, rne # perform operation
fdiv.h f11, f31, f3, rtz # perform operation
fdiv.h f11, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fdiv.h f24, f28, f23, dyn # perform operation
fdiv.h f24, f28, f23, rdn # perform operation
fdiv.h f24, f28, f23, rmm # perform operation
fdiv.h f24, f28, f23, rne # perform operation
fdiv.h f24, f28, f23, rtz # perform operation
fdiv.h f24, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.h f29, f23, f15, dyn # perform operation
fdiv.h f29, f23, f15, rdn # perform operation
fdiv.h f29, f23, f15, rmm # perform operation
fdiv.h f29, f23, f15, rne # perform operation
fdiv.h f29, f23, f15, rtz # perform operation
fdiv.h f29, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fdiv.h f25, f9, f24, dyn # perform operation
fdiv.h f25, f9, f24, rdn # perform operation
fdiv.h f25, f9, f24, rmm # perform operation
fdiv.h f25, f9, f24, rne # perform operation
fdiv.h f25, f9, f24, rtz # perform operation
fdiv.h f25, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fdiv.h f15, f24, f29, dyn # perform operation
fdiv.h f15, f24, f29, rdn # perform operation
fdiv.h f15, f24, f29, rmm # perform operation
fdiv.h f15, f24, f29, rne # perform operation
fdiv.h f15, f24, f29, rtz # perform operation
fdiv.h f15, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fdiv.h f20, f2, f3, dyn # perform operation
fdiv.h f20, f2, f3, rdn # perform operation
fdiv.h f20, f2, f3, rmm # perform operation
fdiv.h f20, f2, f3, rne # perform operation
fdiv.h f20, f2, f3, rtz # perform operation
fdiv.h f20, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fdiv.h f14, f6, f19, dyn # perform operation
fdiv.h f14, f6, f19, rdn # perform operation
fdiv.h f14, f6, f19, rmm # perform operation
fdiv.h f14, f6, f19, rne # perform operation
fdiv.h f14, f6, f19, rtz # perform operation
fdiv.h f14, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fdiv.h f16, f20, f13, dyn # perform operation
fdiv.h f16, f20, f13, rdn # perform operation
fdiv.h f16, f20, f13, rmm # perform operation
fdiv.h f16, f20, f13, rne # perform operation
fdiv.h f16, f20, f13, rtz # perform operation
fdiv.h f16, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fdiv.h f20, f9, f16, dyn # perform operation
fdiv.h f20, f9, f16, rdn # perform operation
fdiv.h f20, f9, f16, rmm # perform operation
fdiv.h f20, f9, f16, rne # perform operation
fdiv.h f20, f9, f16, rtz # perform operation
fdiv.h f20, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fdiv.h f21, f24, f1, dyn # perform operation
fdiv.h f21, f24, f1, rdn # perform operation
fdiv.h f21, f24, f1, rmm # perform operation
fdiv.h f21, f24, f1, rne # perform operation
fdiv.h f21, f24, f1, rtz # perform operation
fdiv.h f21, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f24, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fdiv.h f8, f31, f22, dyn # perform operation
fdiv.h f8, f31, f22, rdn # perform operation
fdiv.h f8, f31, f22, rmm # perform operation
fdiv.h f8, f31, f22, rne # perform operation
fdiv.h f8, f31, f22, rtz # perform operation
fdiv.h f8, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fdiv.h f23, f22, f19, dyn # perform operation
fdiv.h f23, f22, f19, rdn # perform operation
fdiv.h f23, f22, f19, rmm # perform operation
fdiv.h f23, f22, f19, rne # perform operation
fdiv.h f23, f22, f19, rtz # perform operation
fdiv.h f23, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f22, f10, f28, dyn # perform operation
fdiv.h f22, f10, f28, rdn # perform operation
fdiv.h f22, f10, f28, rmm # perform operation
fdiv.h f22, f10, f28, rne # perform operation
fdiv.h f22, f10, f28, rtz # perform operation
fdiv.h f22, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f6, f10, f1, dyn # perform operation
fdiv.h f6, f10, f1, rdn # perform operation
fdiv.h f6, f10, f1, rmm # perform operation
fdiv.h f6, f10, f1, rne # perform operation
fdiv.h f6, f10, f1, rtz # perform operation
fdiv.h f6, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fdiv.h f21, f13, f5, dyn # perform operation
fdiv.h f21, f13, f5, rdn # perform operation
fdiv.h f21, f13, f5, rmm # perform operation
fdiv.h f21, f13, f5, rne # perform operation
fdiv.h f21, f13, f5, rtz # perform operation
fdiv.h f21, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f13, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fdiv.h f11, f30, f14, dyn # perform operation
fdiv.h f11, f30, f14, rdn # perform operation
fdiv.h f11, f30, f14, rmm # perform operation
fdiv.h f11, f30, f14, rne # perform operation
fdiv.h f11, f30, f14, rtz # perform operation
fdiv.h f11, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fdiv.h f23, f12, f22, dyn # perform operation
fdiv.h f23, f12, f22, rdn # perform operation
fdiv.h f23, f12, f22, rmm # perform operation
fdiv.h f23, f12, f22, rne # perform operation
fdiv.h f23, f12, f22, rtz # perform operation
fdiv.h f23, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fdiv.h f10, f26, f2, dyn # perform operation
fdiv.h f10, f26, f2, rdn # perform operation
fdiv.h f10, f26, f2, rmm # perform operation
fdiv.h f10, f26, f2, rne # perform operation
fdiv.h f10, f26, f2, rtz # perform operation
fdiv.h f10, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fdiv.h f9, f29, f6, dyn # perform operation
fdiv.h f9, f29, f6, rdn # perform operation
fdiv.h f9, f29, f6, rmm # perform operation
fdiv.h f9, f29, f6, rne # perform operation
fdiv.h f9, f29, f6, rtz # perform operation
fdiv.h f9, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fdiv.h f15, f8, f22, dyn # perform operation
fdiv.h f15, f8, f22, rdn # perform operation
fdiv.h f15, f8, f22, rmm # perform operation
fdiv.h f15, f8, f22, rne # perform operation
fdiv.h f15, f8, f22, rtz # perform operation
fdiv.h f15, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fdiv.h f29, f18, f2, dyn # perform operation
fdiv.h f29, f18, f2, rdn # perform operation
fdiv.h f29, f18, f2, rmm # perform operation
fdiv.h f29, f18, f2, rne # perform operation
fdiv.h f29, f18, f2, rtz # perform operation
fdiv.h f29, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fdiv.h f21, f24, f3, dyn # perform operation
fdiv.h f21, f24, f3, rdn # perform operation
fdiv.h f21, f24, f3, rmm # perform operation
fdiv.h f21, f24, f3, rne # perform operation
fdiv.h f21, f24, f3, rtz # perform operation
fdiv.h f21, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fdiv.h f7, f16, f1, dyn # perform operation
fdiv.h f7, f16, f1, rdn # perform operation
fdiv.h f7, f16, f1, rmm # perform operation
fdiv.h f7, f16, f1, rne # perform operation
fdiv.h f7, f16, f1, rtz # perform operation
fdiv.h f7, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fdiv.h f21, f27, f18, dyn # perform operation
fdiv.h f21, f27, f18, rdn # perform operation
fdiv.h f21, f27, f18, rmm # perform operation
fdiv.h f21, f27, f18, rne # perform operation
fdiv.h f21, f27, f18, rtz # perform operation
fdiv.h f21, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fdiv.h f28, f30, f10, dyn # perform operation
fdiv.h f28, f30, f10, rdn # perform operation
fdiv.h f28, f30, f10, rmm # perform operation
fdiv.h f28, f30, f10, rne # perform operation
fdiv.h f28, f30, f10, rtz # perform operation
fdiv.h f28, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fdiv.h f17, f2, f7, dyn # perform operation
fdiv.h f17, f2, f7, rdn # perform operation
fdiv.h f17, f2, f7, rmm # perform operation
fdiv.h f17, f2, f7, rne # perform operation
fdiv.h f17, f2, f7, rtz # perform operation
fdiv.h f17, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fdiv.h f13, f11, f9, dyn # perform operation
fdiv.h f13, f11, f9, rdn # perform operation
fdiv.h f13, f11, f9, rmm # perform operation
fdiv.h f13, f11, f9, rne # perform operation
fdiv.h f13, f11, f9, rtz # perform operation
fdiv.h f13, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fdiv.h f1, f19, f25, dyn # perform operation
fdiv.h f1, f19, f25, rdn # perform operation
fdiv.h f1, f19, f25, rmm # perform operation
fdiv.h f1, f19, f25, rne # perform operation
fdiv.h f1, f19, f25, rtz # perform operation
fdiv.h f1, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fdiv.h f5, f25, f22, dyn # perform operation
fdiv.h f5, f25, f22, rdn # perform operation
fdiv.h f5, f25, f22, rmm # perform operation
fdiv.h f5, f25, f22, rne # perform operation
fdiv.h f5, f25, f22, rtz # perform operation
fdiv.h f5, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fdiv.h f30, f23, f14, dyn # perform operation
fdiv.h f30, f23, f14, rdn # perform operation
fdiv.h f30, f23, f14, rmm # perform operation
fdiv.h f30, f23, f14, rne # perform operation
fdiv.h f30, f23, f14, rtz # perform operation
fdiv.h f30, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f23, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fdiv.h f9, f31, f7, dyn # perform operation
fdiv.h f9, f31, f7, rdn # perform operation
fdiv.h f9, f31, f7, rmm # perform operation
fdiv.h f9, f31, f7, rne # perform operation
fdiv.h f9, f31, f7, rtz # perform operation
fdiv.h f9, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f31, f29, f14, dyn # perform operation
fdiv.h f31, f29, f14, rdn # perform operation
fdiv.h f31, f29, f14, rmm # perform operation
fdiv.h f31, f29, f14, rne # perform operation
fdiv.h f31, f29, f14, rtz # perform operation
fdiv.h f31, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fdiv.h f28, f20, f7, dyn # perform operation
fdiv.h f28, f20, f7, rdn # perform operation
fdiv.h f28, f20, f7, rmm # perform operation
fdiv.h f28, f20, f7, rne # perform operation
fdiv.h f28, f20, f7, rtz # perform operation
fdiv.h f28, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fdiv.h f26, f21, f12, dyn # perform operation
fdiv.h f26, f21, f12, rdn # perform operation
fdiv.h f26, f21, f12, rmm # perform operation
fdiv.h f26, f21, f12, rne # perform operation
fdiv.h f26, f21, f12, rtz # perform operation
fdiv.h f26, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fdiv.h f25, f11, f6, dyn # perform operation
fdiv.h f25, f11, f6, rdn # perform operation
fdiv.h f25, f11, f6, rmm # perform operation
fdiv.h f25, f11, f6, rne # perform operation
fdiv.h f25, f11, f6, rtz # perform operation
fdiv.h f25, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fdiv.h f22, f17, f6, dyn # perform operation
fdiv.h f22, f17, f6, rdn # perform operation
fdiv.h f22, f17, f6, rmm # perform operation
fdiv.h f22, f17, f6, rne # perform operation
fdiv.h f22, f17, f6, rtz # perform operation
fdiv.h f22, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f17, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f12, 0(x2) # load 0x0000fe00 from memory into f12
fdiv.h f25, f18, f12, dyn # perform operation
fdiv.h f25, f18, f12, rdn # perform operation
fdiv.h f25, f18, f12, rmm # perform operation
fdiv.h f25, f18, f12, rne # perform operation
fdiv.h f25, f18, f12, rtz # perform operation
fdiv.h f25, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fdiv.h f25, f22, f8, dyn # perform operation
fdiv.h f25, f22, f8, rdn # perform operation
fdiv.h f25, f22, f8, rmm # perform operation
fdiv.h f25, f22, f8, rne # perform operation
fdiv.h f25, f22, f8, rtz # perform operation
fdiv.h f25, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fdiv.h f1, f8, f25, dyn # perform operation
fdiv.h f1, f8, f25, rdn # perform operation
fdiv.h f1, f8, f25, rmm # perform operation
fdiv.h f1, f8, f25, rne # perform operation
fdiv.h f1, f8, f25, rtz # perform operation
fdiv.h f1, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fdiv.h f1, f2, f5, dyn # perform operation
fdiv.h f1, f2, f5, rdn # perform operation
fdiv.h f1, f2, f5, rmm # perform operation
fdiv.h f1, f2, f5, rne # perform operation
fdiv.h f1, f2, f5, rtz # perform operation
fdiv.h f1, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fdiv.h f24, f14, f31, dyn # perform operation
fdiv.h f24, f14, f31, rdn # perform operation
fdiv.h f24, f14, f31, rmm # perform operation
fdiv.h f24, f14, f31, rne # perform operation
fdiv.h f24, f14, f31, rtz # perform operation
fdiv.h f24, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fdiv.h f20, f19, f3, dyn # perform operation
fdiv.h f20, f19, f3, rdn # perform operation
fdiv.h f20, f19, f3, rmm # perform operation
fdiv.h f20, f19, f3, rne # perform operation
fdiv.h f20, f19, f3, rtz # perform operation
fdiv.h f20, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fdiv.h f1, f30, f13, dyn # perform operation
fdiv.h f1, f30, f13, rdn # perform operation
fdiv.h f1, f30, f13, rmm # perform operation
fdiv.h f1, f30, f13, rne # perform operation
fdiv.h f1, f30, f13, rtz # perform operation
fdiv.h f1, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fdiv.h f20, f25, f6, dyn # perform operation
fdiv.h f20, f25, f6, rdn # perform operation
fdiv.h f20, f25, f6, rmm # perform operation
fdiv.h f20, f25, f6, rne # perform operation
fdiv.h f20, f25, f6, rtz # perform operation
fdiv.h f20, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fdiv.h f3, f19, f1, dyn # perform operation
fdiv.h f3, f19, f1, rdn # perform operation
fdiv.h f3, f19, f1, rmm # perform operation
fdiv.h f3, f19, f1, rne # perform operation
fdiv.h f3, f19, f1, rtz # perform operation
fdiv.h f3, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fdiv.h f29, f27, f7, dyn # perform operation
fdiv.h f29, f27, f7, rdn # perform operation
fdiv.h f29, f27, f7, rmm # perform operation
fdiv.h f29, f27, f7, rne # perform operation
fdiv.h f29, f27, f7, rtz # perform operation
fdiv.h f29, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fdiv.h f29, f3, f27, dyn # perform operation
fdiv.h f29, f3, f27, rdn # perform operation
fdiv.h f29, f3, f27, rmm # perform operation
fdiv.h f29, f3, f27, rne # perform operation
fdiv.h f29, f3, f27, rtz # perform operation
fdiv.h f29, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fdiv.h f10, f23, f22, dyn # perform operation
fdiv.h f10, f23, f22, rdn # perform operation
fdiv.h f10, f23, f22, rmm # perform operation
fdiv.h f10, f23, f22, rne # perform operation
fdiv.h f10, f23, f22, rtz # perform operation
fdiv.h f10, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fdiv.h f26, f18, f17, dyn # perform operation
fdiv.h f26, f18, f17, rdn # perform operation
fdiv.h f26, f18, f17, rmm # perform operation
fdiv.h f26, f18, f17, rne # perform operation
fdiv.h f26, f18, f17, rtz # perform operation
fdiv.h f26, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fdiv.h f19, f10, f31, dyn # perform operation
fdiv.h f19, f10, f31, rdn # perform operation
fdiv.h f19, f10, f31, rmm # perform operation
fdiv.h f19, f10, f31, rne # perform operation
fdiv.h f19, f10, f31, rtz # perform operation
fdiv.h f19, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fdiv.h f12, f13, f6, dyn # perform operation
fdiv.h f12, f13, f6, rdn # perform operation
fdiv.h f12, f13, f6, rmm # perform operation
fdiv.h f12, f13, f6, rne # perform operation
fdiv.h f12, f13, f6, rtz # perform operation
fdiv.h f12, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fdiv.h f23, f7, f18, dyn # perform operation
fdiv.h f23, f7, f18, rdn # perform operation
fdiv.h f23, f7, f18, rmm # perform operation
fdiv.h f23, f7, f18, rne # perform operation
fdiv.h f23, f7, f18, rtz # perform operation
fdiv.h f23, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fdiv.h f3, f25, f17, dyn # perform operation
fdiv.h f3, f25, f17, rdn # perform operation
fdiv.h f3, f25, f17, rmm # perform operation
fdiv.h f3, f25, f17, rne # perform operation
fdiv.h f3, f25, f17, rtz # perform operation
fdiv.h f3, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fdiv.h f13, f21, f10, dyn # perform operation
fdiv.h f13, f21, f10, rdn # perform operation
fdiv.h f13, f21, f10, rmm # perform operation
fdiv.h f13, f21, f10, rne # perform operation
fdiv.h f13, f21, f10, rtz # perform operation
fdiv.h f13, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fdiv.h f2, f18, f10, dyn # perform operation
fdiv.h f2, f18, f10, rdn # perform operation
fdiv.h f2, f18, f10, rmm # perform operation
fdiv.h f2, f18, f10, rne # perform operation
fdiv.h f2, f18, f10, rtz # perform operation
fdiv.h f2, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fdiv.h f25, f10, f7, dyn # perform operation
fdiv.h f25, f10, f7, rdn # perform operation
fdiv.h f25, f10, f7, rmm # perform operation
fdiv.h f25, f10, f7, rne # perform operation
fdiv.h f25, f10, f7, rtz # perform operation
fdiv.h f25, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fdiv.h f6, f28, f2, dyn # perform operation
fdiv.h f6, f28, f2, rdn # perform operation
fdiv.h f6, f28, f2, rmm # perform operation
fdiv.h f6, f28, f2, rne # perform operation
fdiv.h f6, f28, f2, rtz # perform operation
fdiv.h f6, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fdiv.h f24, f11, f29, dyn # perform operation
fdiv.h f24, f11, f29, rdn # perform operation
fdiv.h f24, f11, f29, rmm # perform operation
fdiv.h f24, f11, f29, rne # perform operation
fdiv.h f24, f11, f29, rtz # perform operation
fdiv.h f24, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f28, f8, f12, dyn # perform operation
fdiv.h f28, f8, f12, rdn # perform operation
fdiv.h f28, f8, f12, rmm # perform operation
fdiv.h f28, f8, f12, rne # perform operation
fdiv.h f28, f8, f12, rtz # perform operation
fdiv.h f28, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fdiv.h f27, f16, f6, dyn # perform operation
fdiv.h f27, f16, f6, rdn # perform operation
fdiv.h f27, f16, f6, rmm # perform operation
fdiv.h f27, f16, f6, rne # perform operation
fdiv.h f27, f16, f6, rtz # perform operation
fdiv.h f27, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fdiv.h f12, f30, f10, dyn # perform operation
fdiv.h f12, f30, f10, rdn # perform operation
fdiv.h f12, f30, f10, rmm # perform operation
fdiv.h f12, f30, f10, rne # perform operation
fdiv.h f12, f30, f10, rtz # perform operation
fdiv.h f12, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fdiv.h f19, f26, f10, dyn # perform operation
fdiv.h f19, f26, f10, rdn # perform operation
fdiv.h f19, f26, f10, rmm # perform operation
fdiv.h f19, f26, f10, rne # perform operation
fdiv.h f19, f26, f10, rtz # perform operation
fdiv.h f19, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fdiv.h f16, f23, f7, dyn # perform operation
fdiv.h f16, f23, f7, rdn # perform operation
fdiv.h f16, f23, f7, rmm # perform operation
fdiv.h f16, f23, f7, rne # perform operation
fdiv.h f16, f23, f7, rtz # perform operation
fdiv.h f16, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fdiv.h f25, f3, f1, dyn # perform operation
fdiv.h f25, f3, f1, rdn # perform operation
fdiv.h f25, f3, f1, rmm # perform operation
fdiv.h f25, f3, f1, rne # perform operation
fdiv.h f25, f3, f1, rtz # perform operation
fdiv.h f25, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
fdiv.h f31, f27, f19, dyn # perform operation
fdiv.h f31, f27, f19, rdn # perform operation
fdiv.h f31, f27, f19, rmm # perform operation
fdiv.h f31, f27, f19, rne # perform operation
fdiv.h f31, f27, f19, rtz # perform operation
fdiv.h f31, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fdiv.h f31, f7, f6, dyn # perform operation
fdiv.h f31, f7, f6, rdn # perform operation
fdiv.h f31, f7, f6, rmm # perform operation
fdiv.h f31, f7, f6, rne # perform operation
fdiv.h f31, f7, f6, rtz # perform operation
fdiv.h f31, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fdiv.h f8, f12, f11, dyn # perform operation
fdiv.h f8, f12, f11, rdn # perform operation
fdiv.h f8, f12, f11, rmm # perform operation
fdiv.h f8, f12, f11, rne # perform operation
fdiv.h f8, f12, f11, rtz # perform operation
fdiv.h f8, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
fdiv.h f30, f28, f25, dyn # perform operation
fdiv.h f30, f28, f25, rdn # perform operation
fdiv.h f30, f28, f25, rmm # perform operation
fdiv.h f30, f28, f25, rne # perform operation
fdiv.h f30, f28, f25, rtz # perform operation
fdiv.h f30, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f31, f10, f3, dyn # perform operation
fdiv.h f31, f10, f3, rdn # perform operation
fdiv.h f31, f10, f3, rmm # perform operation
fdiv.h f31, f10, f3, rne # perform operation
fdiv.h f31, f10, f3, rtz # perform operation
fdiv.h f31, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f10, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fdiv.h f19, f30, f31, dyn # perform operation
fdiv.h f19, f30, f31, rdn # perform operation
fdiv.h f19, f30, f31, rmm # perform operation
fdiv.h f19, f30, f31, rne # perform operation
fdiv.h f19, f30, f31, rtz # perform operation
fdiv.h f19, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f26, f12, f7, dyn # perform operation
fdiv.h f26, f12, f7, rdn # perform operation
fdiv.h f26, f12, f7, rmm # perform operation
fdiv.h f26, f12, f7, rne # perform operation
fdiv.h f26, f12, f7, rtz # perform operation
fdiv.h f26, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fdiv.h f5, f22, f28, dyn # perform operation
fdiv.h f5, f22, f28, rdn # perform operation
fdiv.h f5, f22, f28, rmm # perform operation
fdiv.h f5, f22, f28, rne # perform operation
fdiv.h f5, f22, f28, rtz # perform operation
fdiv.h f5, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f22, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fdiv.h f8, f6, f24, dyn # perform operation
fdiv.h f8, f6, f24, rdn # perform operation
fdiv.h f8, f6, f24, rmm # perform operation
fdiv.h f8, f6, f24, rne # perform operation
fdiv.h f8, f6, f24, rtz # perform operation
fdiv.h f8, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fdiv.h f6, f29, f8, dyn # perform operation
fdiv.h f6, f29, f8, rdn # perform operation
fdiv.h f6, f29, f8, rmm # perform operation
fdiv.h f6, f29, f8, rne # perform operation
fdiv.h f6, f29, f8, rtz # perform operation
fdiv.h f6, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fdiv.h f21, f27, f10, dyn # perform operation
fdiv.h f21, f27, f10, rdn # perform operation
fdiv.h f21, f27, f10, rmm # perform operation
fdiv.h f21, f27, f10, rne # perform operation
fdiv.h f21, f27, f10, rtz # perform operation
fdiv.h f21, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fdiv.h f30, f25, f13, dyn # perform operation
fdiv.h f30, f25, f13, rdn # perform operation
fdiv.h f30, f25, f13, rmm # perform operation
fdiv.h f30, f25, f13, rne # perform operation
fdiv.h f30, f25, f13, rtz # perform operation
fdiv.h f30, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f25, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fdiv.h f26, f6, f9, dyn # perform operation
fdiv.h f26, f6, f9, rdn # perform operation
fdiv.h f26, f6, f9, rmm # perform operation
fdiv.h f26, f6, f9, rne # perform operation
fdiv.h f26, f6, f9, rtz # perform operation
fdiv.h f26, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fdiv.h f12, f5, f3, dyn # perform operation
fdiv.h f12, f5, f3, rdn # perform operation
fdiv.h f12, f5, f3, rmm # perform operation
fdiv.h f12, f5, f3, rne # perform operation
fdiv.h f12, f5, f3, rtz # perform operation
fdiv.h f12, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f21, f3, f27, dyn # perform operation
fdiv.h f21, f3, f27, rdn # perform operation
fdiv.h f21, f3, f27, rmm # perform operation
fdiv.h f21, f3, f27, rne # perform operation
fdiv.h f21, f3, f27, rtz # perform operation
fdiv.h f21, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fdiv.h f2, f19, f5, dyn # perform operation
fdiv.h f2, f19, f5, rdn # perform operation
fdiv.h f2, f19, f5, rmm # perform operation
fdiv.h f2, f19, f5, rne # perform operation
fdiv.h f2, f19, f5, rtz # perform operation
fdiv.h f2, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fdiv.h f25, f19, f18, dyn # perform operation
fdiv.h f25, f19, f18, rdn # perform operation
fdiv.h f25, f19, f18, rmm # perform operation
fdiv.h f25, f19, f18, rne # perform operation
fdiv.h f25, f19, f18, rtz # perform operation
fdiv.h f25, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fdiv.h f10, f26, f15, dyn # perform operation
fdiv.h f10, f26, f15, rdn # perform operation
fdiv.h f10, f26, f15, rmm # perform operation
fdiv.h f10, f26, f15, rne # perform operation
fdiv.h f10, f26, f15, rtz # perform operation
fdiv.h f10, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fdiv.h f22, f5, f15, dyn # perform operation
fdiv.h f22, f5, f15, rdn # perform operation
fdiv.h f22, f5, f15, rmm # perform operation
fdiv.h f22, f5, f15, rne # perform operation
fdiv.h f22, f5, f15, rtz # perform operation
fdiv.h f22, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f5, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fdiv.h f20, f17, f22, dyn # perform operation
fdiv.h f20, f17, f22, rdn # perform operation
fdiv.h f20, f17, f22, rmm # perform operation
fdiv.h f20, f17, f22, rne # perform operation
fdiv.h f20, f17, f22, rtz # perform operation
fdiv.h f20, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f17, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fdiv.h f22, f30, f28, dyn # perform operation
fdiv.h f22, f30, f28, rdn # perform operation
fdiv.h f22, f30, f28, rmm # perform operation
fdiv.h f22, f30, f28, rne # perform operation
fdiv.h f22, f30, f28, rtz # perform operation
fdiv.h f22, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fdiv.h f6, f8, f14, dyn # perform operation
fdiv.h f6, f8, f14, rdn # perform operation
fdiv.h f6, f8, f14, rmm # perform operation
fdiv.h f6, f8, f14, rne # perform operation
fdiv.h f6, f8, f14, rtz # perform operation
fdiv.h f6, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.h f1, f11, f14, dyn # perform operation
fdiv.h f1, f11, f14, rdn # perform operation
fdiv.h f1, f11, f14, rmm # perform operation
fdiv.h f1, f11, f14, rne # perform operation
fdiv.h f1, f11, f14, rtz # perform operation
fdiv.h f1, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fdiv.h f30, f8, f28, dyn # perform operation
fdiv.h f30, f8, f28, rdn # perform operation
fdiv.h f30, f8, f28, rmm # perform operation
fdiv.h f30, f8, f28, rne # perform operation
fdiv.h f30, f8, f28, rtz # perform operation
fdiv.h f30, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fdiv.h f2, f11, f7, dyn # perform operation
fdiv.h f2, f11, f7, rdn # perform operation
fdiv.h f2, f11, f7, rmm # perform operation
fdiv.h f2, f11, f7, rne # perform operation
fdiv.h f2, f11, f7, rtz # perform operation
fdiv.h f2, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fdiv.h f12, f24, f25, dyn # perform operation
fdiv.h f12, f24, f25, rdn # perform operation
fdiv.h f12, f24, f25, rmm # perform operation
fdiv.h f12, f24, f25, rne # perform operation
fdiv.h f12, f24, f25, rtz # perform operation
fdiv.h f12, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fdiv.h f11, f23, f25, dyn # perform operation
fdiv.h f11, f23, f25, rdn # perform operation
fdiv.h f11, f23, f25, rmm # perform operation
fdiv.h f11, f23, f25, rne # perform operation
fdiv.h f11, f23, f25, rtz # perform operation
fdiv.h f11, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f23, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f5, f30, f10, dyn # perform operation
fdiv.h f5, f30, f10, rdn # perform operation
fdiv.h f5, f30, f10, rmm # perform operation
fdiv.h f5, f30, f10, rne # perform operation
fdiv.h f5, f30, f10, rtz # perform operation
fdiv.h f5, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fdiv.h f16, f7, f28, dyn # perform operation
fdiv.h f16, f7, f28, rdn # perform operation
fdiv.h f16, f7, f28, rmm # perform operation
fdiv.h f16, f7, f28, rne # perform operation
fdiv.h f16, f7, f28, rtz # perform operation
fdiv.h f16, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fdiv.h f15, f14, f8, dyn # perform operation
fdiv.h f15, f14, f8, rdn # perform operation
fdiv.h f15, f14, f8, rmm # perform operation
fdiv.h f15, f14, f8, rne # perform operation
fdiv.h f15, f14, f8, rtz # perform operation
fdiv.h f15, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f14, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fdiv.h f16, f10, f20, dyn # perform operation
fdiv.h f16, f10, f20, rdn # perform operation
fdiv.h f16, f10, f20, rmm # perform operation
fdiv.h f16, f10, f20, rne # perform operation
fdiv.h f16, f10, f20, rtz # perform operation
fdiv.h f16, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
fdiv.h f23, f14, f22, dyn # perform operation
fdiv.h f23, f14, f22, rdn # perform operation
fdiv.h f23, f14, f22, rmm # perform operation
fdiv.h f23, f14, f22, rne # perform operation
fdiv.h f23, f14, f22, rtz # perform operation
fdiv.h f23, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fdiv.h f30, f23, f12, dyn # perform operation
fdiv.h f30, f23, f12, rdn # perform operation
fdiv.h f30, f23, f12, rmm # perform operation
fdiv.h f30, f23, f12, rne # perform operation
fdiv.h f30, f23, f12, rtz # perform operation
fdiv.h f30, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f23, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fdiv.h f10, f24, f20, dyn # perform operation
fdiv.h f10, f24, f20, rdn # perform operation
fdiv.h f10, f24, f20, rmm # perform operation
fdiv.h f10, f24, f20, rne # perform operation
fdiv.h f10, f24, f20, rtz # perform operation
fdiv.h f10, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fdiv.h f22, f30, f27, dyn # perform operation
fdiv.h f22, f30, f27, rdn # perform operation
fdiv.h f22, f30, f27, rmm # perform operation
fdiv.h f22, f30, f27, rne # perform operation
fdiv.h f22, f30, f27, rtz # perform operation
fdiv.h f22, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fdiv.h f27, f23, f11, dyn # perform operation
fdiv.h f27, f23, f11, rdn # perform operation
fdiv.h f27, f23, f11, rmm # perform operation
fdiv.h f27, f23, f11, rne # perform operation
fdiv.h f27, f23, f11, rtz # perform operation
fdiv.h f27, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f23, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fdiv.h f2, f31, f18, dyn # perform operation
fdiv.h f2, f31, f18, rdn # perform operation
fdiv.h f2, f31, f18, rmm # perform operation
fdiv.h f2, f31, f18, rne # perform operation
fdiv.h f2, f31, f18, rtz # perform operation
fdiv.h f2, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fdiv.h f24, f17, f7, dyn # perform operation
fdiv.h f24, f17, f7, rdn # perform operation
fdiv.h f24, f17, f7, rmm # perform operation
fdiv.h f24, f17, f7, rne # perform operation
fdiv.h f24, f17, f7, rtz # perform operation
fdiv.h f24, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fdiv.h f10, f22, f15, dyn # perform operation
fdiv.h f10, f22, f15, rdn # perform operation
fdiv.h f10, f22, f15, rmm # perform operation
fdiv.h f10, f22, f15, rne # perform operation
fdiv.h f10, f22, f15, rtz # perform operation
fdiv.h f10, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fdiv.h f1, f31, f25, dyn # perform operation
fdiv.h f1, f31, f25, rdn # perform operation
fdiv.h f1, f31, f25, rmm # perform operation
fdiv.h f1, f31, f25, rne # perform operation
fdiv.h f1, f31, f25, rtz # perform operation
fdiv.h f1, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f31, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f28, f1, f13, dyn # perform operation
fdiv.h f28, f1, f13, rdn # perform operation
fdiv.h f28, f1, f13, rmm # perform operation
fdiv.h f28, f1, f13, rne # perform operation
fdiv.h f28, f1, f13, rtz # perform operation
fdiv.h f28, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fdiv.h f7, f15, f25, dyn # perform operation
fdiv.h f7, f15, f25, rdn # perform operation
fdiv.h f7, f15, f25, rmm # perform operation
fdiv.h f7, f15, f25, rne # perform operation
fdiv.h f7, f15, f25, rtz # perform operation
fdiv.h f7, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fdiv.h f13, f15, f28, dyn # perform operation
fdiv.h f13, f15, f28, rdn # perform operation
fdiv.h f13, f15, f28, rmm # perform operation
fdiv.h f13, f15, f28, rne # perform operation
fdiv.h f13, f15, f28, rtz # perform operation
fdiv.h f13, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f15, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fdiv.h f9, f28, f24, dyn # perform operation
fdiv.h f9, f28, f24, rdn # perform operation
fdiv.h f9, f28, f24, rmm # perform operation
fdiv.h f9, f28, f24, rne # perform operation
fdiv.h f9, f28, f24, rtz # perform operation
fdiv.h f9, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fdiv.h f23, f11, f1, dyn # perform operation
fdiv.h f23, f11, f1, rdn # perform operation
fdiv.h f23, f11, f1, rmm # perform operation
fdiv.h f23, f11, f1, rne # perform operation
fdiv.h f23, f11, f1, rtz # perform operation
fdiv.h f23, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f11, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fdiv.h f12, f17, f24, dyn # perform operation
fdiv.h f12, f17, f24, rdn # perform operation
fdiv.h f12, f17, f24, rmm # perform operation
fdiv.h f12, f17, f24, rne # perform operation
fdiv.h f12, f17, f24, rtz # perform operation
fdiv.h f12, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fdiv.h f11, f30, f3, dyn # perform operation
fdiv.h f11, f30, f3, rdn # perform operation
fdiv.h f11, f30, f3, rmm # perform operation
fdiv.h f11, f30, f3, rne # perform operation
fdiv.h f11, f30, f3, rtz # perform operation
fdiv.h f11, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fdiv.h f18, f14, f26, dyn # perform operation
fdiv.h f18, f14, f26, rdn # perform operation
fdiv.h f18, f14, f26, rmm # perform operation
fdiv.h f18, f14, f26, rne # perform operation
fdiv.h f18, f14, f26, rtz # perform operation
fdiv.h f18, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f7, f2, f13, dyn # perform operation
fdiv.h f7, f2, f13, rdn # perform operation
fdiv.h f7, f2, f13, rmm # perform operation
fdiv.h f7, f2, f13, rne # perform operation
fdiv.h f7, f2, f13, rtz # perform operation
fdiv.h f7, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fdiv.h f22, f17, f10, dyn # perform operation
fdiv.h f22, f17, f10, rdn # perform operation
fdiv.h f22, f17, f10, rmm # perform operation
fdiv.h f22, f17, f10, rne # perform operation
fdiv.h f22, f17, f10, rtz # perform operation
fdiv.h f22, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fdiv.h f15, f27, f25, dyn # perform operation
fdiv.h f15, f27, f25, rdn # perform operation
fdiv.h f15, f27, f25, rmm # perform operation
fdiv.h f15, f27, f25, rne # perform operation
fdiv.h f15, f27, f25, rtz # perform operation
fdiv.h f15, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fdiv.h f29, f15, f7, dyn # perform operation
fdiv.h f29, f15, f7, rdn # perform operation
fdiv.h f29, f15, f7, rmm # perform operation
fdiv.h f29, f15, f7, rne # perform operation
fdiv.h f29, f15, f7, rtz # perform operation
fdiv.h f29, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f9, f31, f12, dyn # perform operation
fdiv.h f9, f31, f12, rdn # perform operation
fdiv.h f9, f31, f12, rmm # perform operation
fdiv.h f9, f31, f12, rne # perform operation
fdiv.h f9, f31, f12, rtz # perform operation
fdiv.h f9, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fdiv.h f27, f19, f5, dyn # perform operation
fdiv.h f27, f19, f5, rdn # perform operation
fdiv.h f27, f19, f5, rmm # perform operation
fdiv.h f27, f19, f5, rne # perform operation
fdiv.h f27, f19, f5, rtz # perform operation
fdiv.h f27, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fdiv.h f13, f6, f12, dyn # perform operation
fdiv.h f13, f6, f12, rdn # perform operation
fdiv.h f13, f6, f12, rmm # perform operation
fdiv.h f13, f6, f12, rne # perform operation
fdiv.h f13, f6, f12, rtz # perform operation
fdiv.h f13, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f11, f6, f24, dyn # perform operation
fdiv.h f11, f6, f24, rdn # perform operation
fdiv.h f11, f6, f24, rmm # perform operation
fdiv.h f11, f6, f24, rne # perform operation
fdiv.h f11, f6, f24, rtz # perform operation
fdiv.h f11, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f6, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fdiv.h f23, f12, f10, dyn # perform operation
fdiv.h f23, f12, f10, rdn # perform operation
fdiv.h f23, f12, f10, rmm # perform operation
fdiv.h f23, f12, f10, rne # perform operation
fdiv.h f23, f12, f10, rtz # perform operation
fdiv.h f23, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fdiv.h f12, f8, f16, dyn # perform operation
fdiv.h f12, f8, f16, rdn # perform operation
fdiv.h f12, f8, f16, rmm # perform operation
fdiv.h f12, f8, f16, rne # perform operation
fdiv.h f12, f8, f16, rtz # perform operation
fdiv.h f12, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fdiv.h f20, f9, f14, dyn # perform operation
fdiv.h f20, f9, f14, rdn # perform operation
fdiv.h f20, f9, f14, rmm # perform operation
fdiv.h f20, f9, f14, rne # perform operation
fdiv.h f20, f9, f14, rtz # perform operation
fdiv.h f20, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
fdiv.h f27, f9, f1, dyn # perform operation
fdiv.h f27, f9, f1, rdn # perform operation
fdiv.h f27, f9, f1, rmm # perform operation
fdiv.h f27, f9, f1, rne # perform operation
fdiv.h f27, f9, f1, rtz # perform operation
fdiv.h f27, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fdiv.h f21, f26, f12, dyn # perform operation
fdiv.h f21, f26, f12, rdn # perform operation
fdiv.h f21, f26, f12, rmm # perform operation
fdiv.h f21, f26, f12, rne # perform operation
fdiv.h f21, f26, f12, rtz # perform operation
fdiv.h f21, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fdiv.h f13, f30, f2, dyn # perform operation
fdiv.h f13, f30, f2, rdn # perform operation
fdiv.h f13, f30, f2, rmm # perform operation
fdiv.h f13, f30, f2, rne # perform operation
fdiv.h f13, f30, f2, rtz # perform operation
fdiv.h f13, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f30, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f31, f20, f19, dyn # perform operation
fdiv.h f31, f20, f19, rdn # perform operation
fdiv.h f31, f20, f19, rmm # perform operation
fdiv.h f31, f20, f19, rne # perform operation
fdiv.h f31, f20, f19, rtz # perform operation
fdiv.h f31, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f20, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fdiv.h f27, f24, f25, dyn # perform operation
fdiv.h f27, f24, f25, rdn # perform operation
fdiv.h f27, f24, f25, rmm # perform operation
fdiv.h f27, f24, f25, rne # perform operation
fdiv.h f27, f24, f25, rtz # perform operation
fdiv.h f27, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fdiv.h f18, f8, f28, dyn # perform operation
fdiv.h f18, f8, f28, rdn # perform operation
fdiv.h f18, f8, f28, rmm # perform operation
fdiv.h f18, f8, f28, rne # perform operation
fdiv.h f18, f8, f28, rtz # perform operation
fdiv.h f18, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fdiv.h f21, f2, f23, dyn # perform operation
fdiv.h f21, f2, f23, rdn # perform operation
fdiv.h f21, f2, f23, rmm # perform operation
fdiv.h f21, f2, f23, rne # perform operation
fdiv.h f21, f2, f23, rtz # perform operation
fdiv.h f21, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fdiv.h f15, f8, f6, dyn # perform operation
fdiv.h f15, f8, f6, rdn # perform operation
fdiv.h f15, f8, f6, rmm # perform operation
fdiv.h f15, f8, f6, rne # perform operation
fdiv.h f15, f8, f6, rtz # perform operation
fdiv.h f15, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fdiv.h f30, f11, f28, dyn # perform operation
fdiv.h f30, f11, f28, rdn # perform operation
fdiv.h f30, f11, f28, rmm # perform operation
fdiv.h f30, f11, f28, rne # perform operation
fdiv.h f30, f11, f28, rtz # perform operation
fdiv.h f30, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fdiv.h f28, f6, f14, dyn # perform operation
fdiv.h f28, f6, f14, rdn # perform operation
fdiv.h f28, f6, f14, rmm # perform operation
fdiv.h f28, f6, f14, rne # perform operation
fdiv.h f28, f6, f14, rtz # perform operation
fdiv.h f28, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f12, f14, f24, dyn # perform operation
fdiv.h f12, f14, f24, rdn # perform operation
fdiv.h f12, f14, f24, rmm # perform operation
fdiv.h f12, f14, f24, rne # perform operation
fdiv.h f12, f14, f24, rtz # perform operation
fdiv.h f12, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fdiv.h f18, f9, f6, dyn # perform operation
fdiv.h f18, f9, f6, rdn # perform operation
fdiv.h f18, f9, f6, rmm # perform operation
fdiv.h f18, f9, f6, rne # perform operation
fdiv.h f18, f9, f6, rtz # perform operation
fdiv.h f18, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fdiv.h f21, f19, f7, dyn # perform operation
fdiv.h f21, f19, f7, rdn # perform operation
fdiv.h f21, f19, f7, rmm # perform operation
fdiv.h f21, f19, f7, rne # perform operation
fdiv.h f21, f19, f7, rtz # perform operation
fdiv.h f21, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fdiv.h f24, f21, f7, dyn # perform operation
fdiv.h f24, f21, f7, rdn # perform operation
fdiv.h f24, f21, f7, rmm # perform operation
fdiv.h f24, f21, f7, rne # perform operation
fdiv.h f24, f21, f7, rtz # perform operation
fdiv.h f24, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fdiv.h f27, f8, f31, dyn # perform operation
fdiv.h f27, f8, f31, rdn # perform operation
fdiv.h f27, f8, f31, rmm # perform operation
fdiv.h f27, f8, f31, rne # perform operation
fdiv.h f27, f8, f31, rtz # perform operation
fdiv.h f27, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fdiv.h f1, f26, f29, dyn # perform operation
fdiv.h f1, f26, f29, rdn # perform operation
fdiv.h f1, f26, f29, rmm # perform operation
fdiv.h f1, f26, f29, rne # perform operation
fdiv.h f1, f26, f29, rtz # perform operation
fdiv.h f1, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fdiv.h f1, f8, f6, dyn # perform operation
fdiv.h f1, f8, f6, rdn # perform operation
fdiv.h f1, f8, f6, rmm # perform operation
fdiv.h f1, f8, f6, rne # perform operation
fdiv.h f1, f8, f6, rtz # perform operation
fdiv.h f1, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fdiv.h f29, f8, f24, dyn # perform operation
fdiv.h f29, f8, f24, rdn # perform operation
fdiv.h f29, f8, f24, rmm # perform operation
fdiv.h f29, f8, f24, rne # perform operation
fdiv.h f29, f8, f24, rtz # perform operation
fdiv.h f29, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fdiv.h f11, f27, f19, dyn # perform operation
fdiv.h f11, f27, f19, rdn # perform operation
fdiv.h f11, f27, f19, rmm # perform operation
fdiv.h f11, f27, f19, rne # perform operation
fdiv.h f11, f27, f19, rtz # perform operation
fdiv.h f11, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fdiv.h f9, f26, f31, dyn # perform operation
fdiv.h f9, f26, f31, rdn # perform operation
fdiv.h f9, f26, f31, rmm # perform operation
fdiv.h f9, f26, f31, rne # perform operation
fdiv.h f9, f26, f31, rtz # perform operation
fdiv.h f9, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fdiv.h f9, f15, f1, dyn # perform operation
fdiv.h f9, f15, f1, rdn # perform operation
fdiv.h f9, f15, f1, rmm # perform operation
fdiv.h f9, f15, f1, rne # perform operation
fdiv.h f9, f15, f1, rtz # perform operation
fdiv.h f9, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f15, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fdiv.h f26, f11, f25, dyn # perform operation
fdiv.h f26, f11, f25, rdn # perform operation
fdiv.h f26, f11, f25, rmm # perform operation
fdiv.h f26, f11, f25, rne # perform operation
fdiv.h f26, f11, f25, rtz # perform operation
fdiv.h f26, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fdiv.h f31, f6, f17, dyn # perform operation
fdiv.h f31, f6, f17, rdn # perform operation
fdiv.h f31, f6, f17, rmm # perform operation
fdiv.h f31, f6, f17, rne # perform operation
fdiv.h f31, f6, f17, rtz # perform operation
fdiv.h f31, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fdiv.h f20, f5, f30, dyn # perform operation
fdiv.h f20, f5, f30, rdn # perform operation
fdiv.h f20, f5, f30, rmm # perform operation
fdiv.h f20, f5, f30, rne # perform operation
fdiv.h f20, f5, f30, rtz # perform operation
fdiv.h f20, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fdiv.h f19, f27, f2, dyn # perform operation
fdiv.h f19, f27, f2, rdn # perform operation
fdiv.h f19, f27, f2, rmm # perform operation
fdiv.h f19, f27, f2, rne # perform operation
fdiv.h f19, f27, f2, rtz # perform operation
fdiv.h f19, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fdiv.h f2, f21, f26, dyn # perform operation
fdiv.h f2, f21, f26, rdn # perform operation
fdiv.h f2, f21, f26, rmm # perform operation
fdiv.h f2, f21, f26, rne # perform operation
fdiv.h f2, f21, f26, rtz # perform operation
fdiv.h f2, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fdiv.h f31, f25, f2, dyn # perform operation
fdiv.h f31, f25, f2, rdn # perform operation
fdiv.h f31, f25, f2, rmm # perform operation
fdiv.h f31, f25, f2, rne # perform operation
fdiv.h f31, f25, f2, rtz # perform operation
fdiv.h f31, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f25, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fdiv.h f24, f14, f22, dyn # perform operation
fdiv.h f24, f14, f22, rdn # perform operation
fdiv.h f24, f14, f22, rmm # perform operation
fdiv.h f24, f14, f22, rne # perform operation
fdiv.h f24, f14, f22, rtz # perform operation
fdiv.h f24, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fdiv.h f26, f2, f21, dyn # perform operation
fdiv.h f26, f2, f21, rdn # perform operation
fdiv.h f26, f2, f21, rmm # perform operation
fdiv.h f26, f2, f21, rne # perform operation
fdiv.h f26, f2, f21, rtz # perform operation
fdiv.h f26, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fdiv.h f30, f9, f21, dyn # perform operation
fdiv.h f30, f9, f21, rdn # perform operation
fdiv.h f30, f9, f21, rmm # perform operation
fdiv.h f30, f9, f21, rne # perform operation
fdiv.h f30, f9, f21, rtz # perform operation
fdiv.h f30, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fdiv.h f15, f18, f17, dyn # perform operation
fdiv.h f15, f18, f17, rdn # perform operation
fdiv.h f15, f18, f17, rmm # perform operation
fdiv.h f15, f18, f17, rne # perform operation
fdiv.h f15, f18, f17, rtz # perform operation
fdiv.h f15, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f1, f29, f19, dyn # perform operation
fdiv.h f1, f29, f19, rdn # perform operation
fdiv.h f1, f29, f19, rmm # perform operation
fdiv.h f1, f29, f19, rne # perform operation
fdiv.h f1, f29, f19, rtz # perform operation
fdiv.h f1, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fdiv.h f1, f19, f23, dyn # perform operation
fdiv.h f1, f19, f23, rdn # perform operation
fdiv.h f1, f19, f23, rmm # perform operation
fdiv.h f1, f19, f23, rne # perform operation
fdiv.h f1, f19, f23, rtz # perform operation
fdiv.h f1, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fdiv.h f3, f5, f16, dyn # perform operation
fdiv.h f3, f5, f16, rdn # perform operation
fdiv.h f3, f5, f16, rmm # perform operation
fdiv.h f3, f5, f16, rne # perform operation
fdiv.h f3, f5, f16, rtz # perform operation
fdiv.h f3, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fdiv.h f26, f20, f15, dyn # perform operation
fdiv.h f26, f20, f15, rdn # perform operation
fdiv.h f26, f20, f15, rmm # perform operation
fdiv.h f26, f20, f15, rne # perform operation
fdiv.h f26, f20, f15, rtz # perform operation
fdiv.h f26, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fdiv.h f29, f27, f10, dyn # perform operation
fdiv.h f29, f27, f10, rdn # perform operation
fdiv.h f29, f27, f10, rmm # perform operation
fdiv.h f29, f27, f10, rne # perform operation
fdiv.h f29, f27, f10, rtz # perform operation
fdiv.h f29, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fdiv.h f16, f31, f24, dyn # perform operation
fdiv.h f16, f31, f24, rdn # perform operation
fdiv.h f16, f31, f24, rmm # perform operation
fdiv.h f16, f31, f24, rne # perform operation
fdiv.h f16, f31, f24, rtz # perform operation
fdiv.h f16, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fdiv.h f19, f13, f21, dyn # perform operation
fdiv.h f19, f13, f21, rdn # perform operation
fdiv.h f19, f13, f21, rmm # perform operation
fdiv.h f19, f13, f21, rne # perform operation
fdiv.h f19, f13, f21, rtz # perform operation
fdiv.h f19, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fdiv.h f5, f21, f6, dyn # perform operation
fdiv.h f5, f21, f6, rdn # perform operation
fdiv.h f5, f21, f6, rmm # perform operation
fdiv.h f5, f21, f6, rne # perform operation
fdiv.h f5, f21, f6, rtz # perform operation
fdiv.h f5, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fdiv.h f12, f5, f29, dyn # perform operation
fdiv.h f12, f5, f29, rdn # perform operation
fdiv.h f12, f5, f29, rmm # perform operation
fdiv.h f12, f5, f29, rne # perform operation
fdiv.h f12, f5, f29, rtz # perform operation
fdiv.h f12, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fdiv.h f25, f22, f21, dyn # perform operation
fdiv.h f25, f22, f21, rdn # perform operation
fdiv.h f25, f22, f21, rmm # perform operation
fdiv.h f25, f22, f21, rne # perform operation
fdiv.h f25, f22, f21, rtz # perform operation
fdiv.h f25, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fdiv.h f27, f26, f19, dyn # perform operation
fdiv.h f27, f26, f19, rdn # perform operation
fdiv.h f27, f26, f19, rmm # perform operation
fdiv.h f27, f26, f19, rne # perform operation
fdiv.h f27, f26, f19, rtz # perform operation
fdiv.h f27, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fdiv.h f23, f26, f15, dyn # perform operation
fdiv.h f23, f26, f15, rdn # perform operation
fdiv.h f23, f26, f15, rmm # perform operation
fdiv.h f23, f26, f15, rne # perform operation
fdiv.h f23, f26, f15, rtz # perform operation
fdiv.h f23, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f9, f23, f6, dyn # perform operation
fdiv.h f9, f23, f6, rdn # perform operation
fdiv.h f9, f23, f6, rmm # perform operation
fdiv.h f9, f23, f6, rne # perform operation
fdiv.h f9, f23, f6, rtz # perform operation
fdiv.h f9, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fdiv.h f24, f31, f8, dyn # perform operation
fdiv.h f24, f31, f8, rdn # perform operation
fdiv.h f24, f31, f8, rmm # perform operation
fdiv.h f24, f31, f8, rne # perform operation
fdiv.h f24, f31, f8, rtz # perform operation
fdiv.h f24, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fdiv.h f22, f20, f16, dyn # perform operation
fdiv.h f22, f20, f16, rdn # perform operation
fdiv.h f22, f20, f16, rmm # perform operation
fdiv.h f22, f20, f16, rne # perform operation
fdiv.h f22, f20, f16, rtz # perform operation
fdiv.h f22, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f28, f30, f25, dyn # perform operation
fdiv.h f28, f30, f25, rdn # perform operation
fdiv.h f28, f30, f25, rmm # perform operation
fdiv.h f28, f30, f25, rne # perform operation
fdiv.h f28, f30, f25, rtz # perform operation
fdiv.h f28, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fdiv.h f5, f27, f17, dyn # perform operation
fdiv.h f5, f27, f17, rdn # perform operation
fdiv.h f5, f27, f17, rmm # perform operation
fdiv.h f5, f27, f17, rne # perform operation
fdiv.h f5, f27, f17, rtz # perform operation
fdiv.h f5, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fdiv.h f21, f22, f20, dyn # perform operation
fdiv.h f21, f22, f20, rdn # perform operation
fdiv.h f21, f22, f20, rmm # perform operation
fdiv.h f21, f22, f20, rne # perform operation
fdiv.h f21, f22, f20, rtz # perform operation
fdiv.h f21, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f14, f3, f12, dyn # perform operation
fdiv.h f14, f3, f12, rdn # perform operation
fdiv.h f14, f3, f12, rmm # perform operation
fdiv.h f14, f3, f12, rne # perform operation
fdiv.h f14, f3, f12, rtz # perform operation
fdiv.h f14, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fdiv.h f13, f1, f26, dyn # perform operation
fdiv.h f13, f1, f26, rdn # perform operation
fdiv.h f13, f1, f26, rmm # perform operation
fdiv.h f13, f1, f26, rne # perform operation
fdiv.h f13, f1, f26, rtz # perform operation
fdiv.h f13, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fdiv.h f12, f17, f29, dyn # perform operation
fdiv.h f12, f17, f29, rdn # perform operation
fdiv.h f12, f17, f29, rmm # perform operation
fdiv.h f12, f17, f29, rne # perform operation
fdiv.h f12, f17, f29, rtz # perform operation
fdiv.h f12, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fdiv.h f15, f2, f30, dyn # perform operation
fdiv.h f15, f2, f30, rdn # perform operation
fdiv.h f15, f2, f30, rmm # perform operation
fdiv.h f15, f2, f30, rne # perform operation
fdiv.h f15, f2, f30, rtz # perform operation
fdiv.h f15, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fdiv.h f16, f11, f18, dyn # perform operation
fdiv.h f16, f11, f18, rdn # perform operation
fdiv.h f16, f11, f18, rmm # perform operation
fdiv.h f16, f11, f18, rne # perform operation
fdiv.h f16, f11, f18, rtz # perform operation
fdiv.h f16, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fdiv.h f8, f24, f20, dyn # perform operation
fdiv.h f8, f24, f20, rdn # perform operation
fdiv.h f8, f24, f20, rmm # perform operation
fdiv.h f8, f24, f20, rne # perform operation
fdiv.h f8, f24, f20, rtz # perform operation
fdiv.h f8, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fdiv.h f28, f22, f29, dyn # perform operation
fdiv.h f28, f22, f29, rdn # perform operation
fdiv.h f28, f22, f29, rmm # perform operation
fdiv.h f28, f22, f29, rne # perform operation
fdiv.h f28, f22, f29, rtz # perform operation
fdiv.h f28, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fdiv.h f28, f15, f26, dyn # perform operation
fdiv.h f28, f15, f26, rdn # perform operation
fdiv.h f28, f15, f26, rmm # perform operation
fdiv.h f28, f15, f26, rne # perform operation
fdiv.h f28, f15, f26, rtz # perform operation
fdiv.h f28, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f13, f3, f28, dyn # perform operation
fdiv.h f13, f3, f28, rdn # perform operation
fdiv.h f13, f3, f28, rmm # perform operation
fdiv.h f13, f3, f28, rne # perform operation
fdiv.h f13, f3, f28, rtz # perform operation
fdiv.h f13, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fdiv.h f6, f2, f28, dyn # perform operation
fdiv.h f6, f2, f28, rdn # perform operation
fdiv.h f6, f2, f28, rmm # perform operation
fdiv.h f6, f2, f28, rne # perform operation
fdiv.h f6, f2, f28, rtz # perform operation
fdiv.h f6, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fdiv.h f30, f28, f16, dyn # perform operation
fdiv.h f30, f28, f16, rdn # perform operation
fdiv.h f30, f28, f16, rmm # perform operation
fdiv.h f30, f28, f16, rne # perform operation
fdiv.h f30, f28, f16, rtz # perform operation
fdiv.h f30, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fdiv.h f1, f8, f30, dyn # perform operation
fdiv.h f1, f8, f30, rdn # perform operation
fdiv.h f1, f8, f30, rmm # perform operation
fdiv.h f1, f8, f30, rne # perform operation
fdiv.h f1, f8, f30, rtz # perform operation
fdiv.h f1, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fdiv.h f21, f6, f9, dyn # perform operation
fdiv.h f21, f6, f9, rdn # perform operation
fdiv.h f21, f6, f9, rmm # perform operation
fdiv.h f21, f6, f9, rne # perform operation
fdiv.h f21, f6, f9, rtz # perform operation
fdiv.h f21, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fdiv.h f15, f27, f22, dyn # perform operation
fdiv.h f15, f27, f22, rdn # perform operation
fdiv.h f15, f27, f22, rmm # perform operation
fdiv.h f15, f27, f22, rne # perform operation
fdiv.h f15, f27, f22, rtz # perform operation
fdiv.h f15, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fdiv.h f28, f22, f27, dyn # perform operation
fdiv.h f28, f22, f27, rdn # perform operation
fdiv.h f28, f22, f27, rmm # perform operation
fdiv.h f28, f22, f27, rne # perform operation
fdiv.h f28, f22, f27, rtz # perform operation
fdiv.h f28, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f22, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fdiv.h f17, f24, f14, dyn # perform operation
fdiv.h f17, f24, f14, rdn # perform operation
fdiv.h f17, f24, f14, rmm # perform operation
fdiv.h f17, f24, f14, rne # perform operation
fdiv.h f17, f24, f14, rtz # perform operation
fdiv.h f17, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f24, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fdiv.h f12, f16, f11, dyn # perform operation
fdiv.h f12, f16, f11, rdn # perform operation
fdiv.h f12, f16, f11, rmm # perform operation
fdiv.h f12, f16, f11, rne # perform operation
fdiv.h f12, f16, f11, rtz # perform operation
fdiv.h f12, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fdiv.h f25, f5, f8, dyn # perform operation
fdiv.h f25, f5, f8, rdn # perform operation
fdiv.h f25, f5, f8, rmm # perform operation
fdiv.h f25, f5, f8, rne # perform operation
fdiv.h f25, f5, f8, rtz # perform operation
fdiv.h f25, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fdiv.h f31, f14, f6, dyn # perform operation
fdiv.h f31, f14, f6, rdn # perform operation
fdiv.h f31, f14, f6, rmm # perform operation
fdiv.h f31, f14, f6, rne # perform operation
fdiv.h f31, f14, f6, rtz # perform operation
fdiv.h f31, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f21, f7, f27, dyn # perform operation
fdiv.h f21, f7, f27, rdn # perform operation
fdiv.h f21, f7, f27, rmm # perform operation
fdiv.h f21, f7, f27, rne # perform operation
fdiv.h f21, f7, f27, rtz # perform operation
fdiv.h f21, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fdiv.h f21, f23, f18, dyn # perform operation
fdiv.h f21, f23, f18, rdn # perform operation
fdiv.h f21, f23, f18, rmm # perform operation
fdiv.h f21, f23, f18, rne # perform operation
fdiv.h f21, f23, f18, rtz # perform operation
fdiv.h f21, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f8, f28, f16, dyn # perform operation
fdiv.h f8, f28, f16, rdn # perform operation
fdiv.h f8, f28, f16, rmm # perform operation
fdiv.h f8, f28, f16, rne # perform operation
fdiv.h f8, f28, f16, rtz # perform operation
fdiv.h f8, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f28, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fdiv.h f15, f17, f13, dyn # perform operation
fdiv.h f15, f17, f13, rdn # perform operation
fdiv.h f15, f17, f13, rmm # perform operation
fdiv.h f15, f17, f13, rne # perform operation
fdiv.h f15, f17, f13, rtz # perform operation
fdiv.h f15, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fdiv.h f3, f19, f13, dyn # perform operation
fdiv.h f3, f19, f13, rdn # perform operation
fdiv.h f3, f19, f13, rmm # perform operation
fdiv.h f3, f19, f13, rne # perform operation
fdiv.h f3, f19, f13, rtz # perform operation
fdiv.h f3, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fdiv.h f30, f20, f24, dyn # perform operation
fdiv.h f30, f20, f24, rdn # perform operation
fdiv.h f30, f20, f24, rmm # perform operation
fdiv.h f30, f20, f24, rne # perform operation
fdiv.h f30, f20, f24, rtz # perform operation
fdiv.h f30, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fdiv.h f8, f29, f24, dyn # perform operation
fdiv.h f8, f29, f24, rdn # perform operation
fdiv.h f8, f29, f24, rmm # perform operation
fdiv.h f8, f29, f24, rne # perform operation
fdiv.h f8, f29, f24, rtz # perform operation
fdiv.h f8, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fdiv.h f28, f31, f29, dyn # perform operation
fdiv.h f28, f31, f29, rdn # perform operation
fdiv.h f28, f31, f29, rmm # perform operation
fdiv.h f28, f31, f29, rne # perform operation
fdiv.h f28, f31, f29, rtz # perform operation
fdiv.h f28, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fdiv.h f26, f24, f16, dyn # perform operation
fdiv.h f26, f24, f16, rdn # perform operation
fdiv.h f26, f24, f16, rmm # perform operation
fdiv.h f26, f24, f16, rne # perform operation
fdiv.h f26, f24, f16, rtz # perform operation
fdiv.h f26, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fdiv.h f15, f2, f5, dyn # perform operation
fdiv.h f15, f2, f5, rdn # perform operation
fdiv.h f15, f2, f5, rmm # perform operation
fdiv.h f15, f2, f5, rne # perform operation
fdiv.h f15, f2, f5, rtz # perform operation
fdiv.h f15, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fdiv.h f15, f19, f20, dyn # perform operation
fdiv.h f15, f19, f20, rdn # perform operation
fdiv.h f15, f19, f20, rmm # perform operation
fdiv.h f15, f19, f20, rne # perform operation
fdiv.h f15, f19, f20, rtz # perform operation
fdiv.h f15, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fdiv.h f26, f18, f1, dyn # perform operation
fdiv.h f26, f18, f1, rdn # perform operation
fdiv.h f26, f18, f1, rmm # perform operation
fdiv.h f26, f18, f1, rne # perform operation
fdiv.h f26, f18, f1, rtz # perform operation
fdiv.h f26, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fdiv.h f31, f2, f28, dyn # perform operation
fdiv.h f31, f2, f28, rdn # perform operation
fdiv.h f31, f2, f28, rmm # perform operation
fdiv.h f31, f2, f28, rne # perform operation
fdiv.h f31, f2, f28, rtz # perform operation
fdiv.h f31, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fdiv.h f17, f18, f22, dyn # perform operation
fdiv.h f17, f18, f22, rdn # perform operation
fdiv.h f17, f18, f22, rmm # perform operation
fdiv.h f17, f18, f22, rne # perform operation
fdiv.h f17, f18, f22, rtz # perform operation
fdiv.h f17, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fdiv.h f13, f5, f8, dyn # perform operation
fdiv.h f13, f5, f8, rdn # perform operation
fdiv.h f13, f5, f8, rmm # perform operation
fdiv.h f13, f5, f8, rne # perform operation
fdiv.h f13, f5, f8, rtz # perform operation
fdiv.h f13, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fdiv.h f13, f12, f18, dyn # perform operation
fdiv.h f13, f12, f18, rdn # perform operation
fdiv.h f13, f12, f18, rmm # perform operation
fdiv.h f13, f12, f18, rne # perform operation
fdiv.h f13, f12, f18, rtz # perform operation
fdiv.h f13, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fdiv.h f22, f15, f27, dyn # perform operation
fdiv.h f22, f15, f27, rdn # perform operation
fdiv.h f22, f15, f27, rmm # perform operation
fdiv.h f22, f15, f27, rne # perform operation
fdiv.h f22, f15, f27, rtz # perform operation
fdiv.h f22, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f14, f11, f10, dyn # perform operation
fdiv.h f14, f11, f10, rdn # perform operation
fdiv.h f14, f11, f10, rmm # perform operation
fdiv.h f14, f11, f10, rne # perform operation
fdiv.h f14, f11, f10, rtz # perform operation
fdiv.h f14, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fdiv.h f29, f12, f18, dyn # perform operation
fdiv.h f29, f12, f18, rdn # perform operation
fdiv.h f29, f12, f18, rmm # perform operation
fdiv.h f29, f12, f18, rne # perform operation
fdiv.h f29, f12, f18, rtz # perform operation
fdiv.h f29, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f12, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f9, f26, f30, dyn # perform operation
fdiv.h f9, f26, f30, rdn # perform operation
fdiv.h f9, f26, f30, rmm # perform operation
fdiv.h f9, f26, f30, rne # perform operation
fdiv.h f9, f26, f30, rtz # perform operation
fdiv.h f9, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fdiv.h f28, f24, f22, dyn # perform operation
fdiv.h f28, f24, f22, rdn # perform operation
fdiv.h f28, f24, f22, rmm # perform operation
fdiv.h f28, f24, f22, rne # perform operation
fdiv.h f28, f24, f22, rtz # perform operation
fdiv.h f28, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f22, f7, f26, dyn # perform operation
fdiv.h f22, f7, f26, rdn # perform operation
fdiv.h f22, f7, f26, rmm # perform operation
fdiv.h f22, f7, f26, rne # perform operation
fdiv.h f22, f7, f26, rtz # perform operation
fdiv.h f22, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fdiv.h f22, f2, f30, dyn # perform operation
fdiv.h f22, f2, f30, rdn # perform operation
fdiv.h f22, f2, f30, rmm # perform operation
fdiv.h f22, f2, f30, rne # perform operation
fdiv.h f22, f2, f30, rtz # perform operation
fdiv.h f22, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fdiv.h f5, f23, f16, dyn # perform operation
fdiv.h f5, f23, f16, rdn # perform operation
fdiv.h f5, f23, f16, rmm # perform operation
fdiv.h f5, f23, f16, rne # perform operation
fdiv.h f5, f23, f16, rtz # perform operation
fdiv.h f5, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f17, f28, f15, dyn # perform operation
fdiv.h f17, f28, f15, rdn # perform operation
fdiv.h f17, f28, f15, rmm # perform operation
fdiv.h f17, f28, f15, rne # perform operation
fdiv.h f17, f28, f15, rtz # perform operation
fdiv.h f17, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fdiv.h f9, f19, f28, dyn # perform operation
fdiv.h f9, f19, f28, rdn # perform operation
fdiv.h f9, f19, f28, rmm # perform operation
fdiv.h f9, f19, f28, rne # perform operation
fdiv.h f9, f19, f28, rtz # perform operation
fdiv.h f9, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fdiv.h f26, f21, f25, dyn # perform operation
fdiv.h f26, f21, f25, rdn # perform operation
fdiv.h f26, f21, f25, rmm # perform operation
fdiv.h f26, f21, f25, rne # perform operation
fdiv.h f26, f21, f25, rtz # perform operation
fdiv.h f26, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fdiv.h f27, f8, f3, dyn # perform operation
fdiv.h f27, f8, f3, rdn # perform operation
fdiv.h f27, f8, f3, rmm # perform operation
fdiv.h f27, f8, f3, rne # perform operation
fdiv.h f27, f8, f3, rtz # perform operation
fdiv.h f27, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fdiv.h f1, f31, f14, dyn # perform operation
fdiv.h f1, f31, f14, rdn # perform operation
fdiv.h f1, f31, f14, rmm # perform operation
fdiv.h f1, f31, f14, rne # perform operation
fdiv.h f1, f31, f14, rtz # perform operation
fdiv.h f1, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fdiv.h f7, f1, f6, dyn # perform operation
fdiv.h f7, f1, f6, rdn # perform operation
fdiv.h f7, f1, f6, rmm # perform operation
fdiv.h f7, f1, f6, rne # perform operation
fdiv.h f7, f1, f6, rtz # perform operation
fdiv.h f7, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fdiv.h f14, f8, f5, dyn # perform operation
fdiv.h f14, f8, f5, rdn # perform operation
fdiv.h f14, f8, f5, rmm # perform operation
fdiv.h f14, f8, f5, rne # perform operation
fdiv.h f14, f8, f5, rtz # perform operation
fdiv.h f14, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fdiv.h f2, f26, f10, dyn # perform operation
fdiv.h f2, f26, f10, rdn # perform operation
fdiv.h f2, f26, f10, rmm # perform operation
fdiv.h f2, f26, f10, rne # perform operation
fdiv.h f2, f26, f10, rtz # perform operation
fdiv.h f2, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fdiv.h f14, f9, f13, dyn # perform operation
fdiv.h f14, f9, f13, rdn # perform operation
fdiv.h f14, f9, f13, rmm # perform operation
fdiv.h f14, f9, f13, rne # perform operation
fdiv.h f14, f9, f13, rtz # perform operation
fdiv.h f14, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fdiv.h f13, f14, f24, dyn # perform operation
fdiv.h f13, f14, f24, rdn # perform operation
fdiv.h f13, f14, f24, rmm # perform operation
fdiv.h f13, f14, f24, rne # perform operation
fdiv.h f13, f14, f24, rtz # perform operation
fdiv.h f13, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fdiv.h f20, f9, f28, dyn # perform operation
fdiv.h f20, f9, f28, rdn # perform operation
fdiv.h f20, f9, f28, rmm # perform operation
fdiv.h f20, f9, f28, rne # perform operation
fdiv.h f20, f9, f28, rtz # perform operation
fdiv.h f20, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f1, f6, f12, dyn # perform operation
fdiv.h f1, f6, f12, rdn # perform operation
fdiv.h f1, f6, f12, rmm # perform operation
fdiv.h f1, f6, f12, rne # perform operation
fdiv.h f1, f6, f12, rtz # perform operation
fdiv.h f1, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fdiv.h f1, f23, f3, dyn # perform operation
fdiv.h f1, f23, f3, rdn # perform operation
fdiv.h f1, f23, f3, rmm # perform operation
fdiv.h f1, f23, f3, rne # perform operation
fdiv.h f1, f23, f3, rtz # perform operation
fdiv.h f1, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fdiv.h f2, f29, f9, dyn # perform operation
fdiv.h f2, f29, f9, rdn # perform operation
fdiv.h f2, f29, f9, rmm # perform operation
fdiv.h f2, f29, f9, rne # perform operation
fdiv.h f2, f29, f9, rtz # perform operation
fdiv.h f2, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f29, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fdiv.h f26, f14, f22, dyn # perform operation
fdiv.h f26, f14, f22, rdn # perform operation
fdiv.h f26, f14, f22, rmm # perform operation
fdiv.h f26, f14, f22, rne # perform operation
fdiv.h f26, f14, f22, rtz # perform operation
fdiv.h f26, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f14, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fdiv.h f28, f29, f22, dyn # perform operation
fdiv.h f28, f29, f22, rdn # perform operation
fdiv.h f28, f29, f22, rmm # perform operation
fdiv.h f28, f29, f22, rne # perform operation
fdiv.h f28, f29, f22, rtz # perform operation
fdiv.h f28, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fdiv.h f15, f8, f14, dyn # perform operation
fdiv.h f15, f8, f14, rdn # perform operation
fdiv.h f15, f8, f14, rmm # perform operation
fdiv.h f15, f8, f14, rne # perform operation
fdiv.h f15, f8, f14, rtz # perform operation
fdiv.h f15, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fdiv.h f29, f11, f26, dyn # perform operation
fdiv.h f29, f11, f26, rdn # perform operation
fdiv.h f29, f11, f26, rmm # perform operation
fdiv.h f29, f11, f26, rne # perform operation
fdiv.h f29, f11, f26, rtz # perform operation
fdiv.h f29, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fdiv.h f21, f11, f9, dyn # perform operation
fdiv.h f21, f11, f9, rdn # perform operation
fdiv.h f21, f11, f9, rmm # perform operation
fdiv.h f21, f11, f9, rne # perform operation
fdiv.h f21, f11, f9, rtz # perform operation
fdiv.h f21, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fdiv.h f28, f22, f29, dyn # perform operation
fdiv.h f28, f22, f29, rdn # perform operation
fdiv.h f28, f22, f29, rmm # perform operation
fdiv.h f28, f22, f29, rne # perform operation
fdiv.h f28, f22, f29, rtz # perform operation
fdiv.h f28, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fdiv.h f14, f6, f27, dyn # perform operation
fdiv.h f14, f6, f27, rdn # perform operation
fdiv.h f14, f6, f27, rmm # perform operation
fdiv.h f14, f6, f27, rne # perform operation
fdiv.h f14, f6, f27, rtz # perform operation
fdiv.h f14, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f6, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fdiv.h f29, f11, f19, dyn # perform operation
fdiv.h f29, f11, f19, rdn # perform operation
fdiv.h f29, f11, f19, rmm # perform operation
fdiv.h f29, f11, f19, rne # perform operation
fdiv.h f29, f11, f19, rtz # perform operation
fdiv.h f29, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fdiv.h f20, f18, f22, dyn # perform operation
fdiv.h f20, f18, f22, rdn # perform operation
fdiv.h f20, f18, f22, rmm # perform operation
fdiv.h f20, f18, f22, rne # perform operation
fdiv.h f20, f18, f22, rtz # perform operation
fdiv.h f20, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f20, f10, f6, dyn # perform operation
fdiv.h f20, f10, f6, rdn # perform operation
fdiv.h f20, f10, f6, rmm # perform operation
fdiv.h f20, f10, f6, rne # perform operation
fdiv.h f20, f10, f6, rtz # perform operation
fdiv.h f20, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fdiv.h f31, f17, f19, dyn # perform operation
fdiv.h f31, f17, f19, rdn # perform operation
fdiv.h f31, f17, f19, rmm # perform operation
fdiv.h f31, f17, f19, rne # perform operation
fdiv.h f31, f17, f19, rtz # perform operation
fdiv.h f31, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f17, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f24, f27, f15, dyn # perform operation
fdiv.h f24, f27, f15, rdn # perform operation
fdiv.h f24, f27, f15, rmm # perform operation
fdiv.h f24, f27, f15, rne # perform operation
fdiv.h f24, f27, f15, rtz # perform operation
fdiv.h f24, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fdiv.h f7, f17, f20, dyn # perform operation
fdiv.h f7, f17, f20, rdn # perform operation
fdiv.h f7, f17, f20, rmm # perform operation
fdiv.h f7, f17, f20, rne # perform operation
fdiv.h f7, f17, f20, rtz # perform operation
fdiv.h f7, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f13, f26, f29, dyn # perform operation
fdiv.h f13, f26, f29, rdn # perform operation
fdiv.h f13, f26, f29, rmm # perform operation
fdiv.h f13, f26, f29, rne # perform operation
fdiv.h f13, f26, f29, rtz # perform operation
fdiv.h f13, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fdiv.h f10, f16, f27, dyn # perform operation
fdiv.h f10, f16, f27, rdn # perform operation
fdiv.h f10, f16, f27, rmm # perform operation
fdiv.h f10, f16, f27, rne # perform operation
fdiv.h f10, f16, f27, rtz # perform operation
fdiv.h f10, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f16, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fdiv.h f6, f30, f28, dyn # perform operation
fdiv.h f6, f30, f28, rdn # perform operation
fdiv.h f6, f30, f28, rmm # perform operation
fdiv.h f6, f30, f28, rne # perform operation
fdiv.h f6, f30, f28, rtz # perform operation
fdiv.h f6, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fdiv.h f24, f20, f10, dyn # perform operation
fdiv.h f24, f20, f10, rdn # perform operation
fdiv.h f24, f20, f10, rmm # perform operation
fdiv.h f24, f20, f10, rne # perform operation
fdiv.h f24, f20, f10, rtz # perform operation
fdiv.h f24, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f20, f24, f27, dyn # perform operation
fdiv.h f20, f24, f27, rdn # perform operation
fdiv.h f20, f24, f27, rmm # perform operation
fdiv.h f20, f24, f27, rne # perform operation
fdiv.h f20, f24, f27, rtz # perform operation
fdiv.h f20, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fdiv.h f9, f15, f2, dyn # perform operation
fdiv.h f9, f15, f2, rdn # perform operation
fdiv.h f9, f15, f2, rmm # perform operation
fdiv.h f9, f15, f2, rne # perform operation
fdiv.h f9, f15, f2, rtz # perform operation
fdiv.h f9, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fdiv.h f13, f22, f11, dyn # perform operation
fdiv.h f13, f22, f11, rdn # perform operation
fdiv.h f13, f22, f11, rmm # perform operation
fdiv.h f13, f22, f11, rne # perform operation
fdiv.h f13, f22, f11, rtz # perform operation
fdiv.h f13, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fdiv.h f23, f26, f30, dyn # perform operation
fdiv.h f23, f26, f30, rdn # perform operation
fdiv.h f23, f26, f30, rmm # perform operation
fdiv.h f23, f26, f30, rne # perform operation
fdiv.h f23, f26, f30, rtz # perform operation
fdiv.h f23, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f18, f10, f12, dyn # perform operation
fdiv.h f18, f10, f12, rdn # perform operation
fdiv.h f18, f10, f12, rmm # perform operation
fdiv.h f18, f10, f12, rne # perform operation
fdiv.h f18, f10, f12, rtz # perform operation
fdiv.h f18, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f10, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fdiv.h f16, f31, f1, dyn # perform operation
fdiv.h f16, f31, f1, rdn # perform operation
fdiv.h f16, f31, f1, rmm # perform operation
fdiv.h f16, f31, f1, rne # perform operation
fdiv.h f16, f31, f1, rtz # perform operation
fdiv.h f16, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fdiv.h f17, f23, f30, dyn # perform operation
fdiv.h f17, f23, f30, rdn # perform operation
fdiv.h f17, f23, f30, rmm # perform operation
fdiv.h f17, f23, f30, rne # perform operation
fdiv.h f17, f23, f30, rtz # perform operation
fdiv.h f17, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f23, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fdiv.h f22, f16, f29, dyn # perform operation
fdiv.h f22, f16, f29, rdn # perform operation
fdiv.h f22, f16, f29, rmm # perform operation
fdiv.h f22, f16, f29, rne # perform operation
fdiv.h f22, f16, f29, rtz # perform operation
fdiv.h f22, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f29, f16, f21, dyn # perform operation
fdiv.h f29, f16, f21, rdn # perform operation
fdiv.h f29, f16, f21, rmm # perform operation
fdiv.h f29, f16, f21, rne # perform operation
fdiv.h f29, f16, f21, rtz # perform operation
fdiv.h f29, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fdiv.h f9, f19, f8, dyn # perform operation
fdiv.h f9, f19, f8, rdn # perform operation
fdiv.h f9, f19, f8, rmm # perform operation
fdiv.h f9, f19, f8, rne # perform operation
fdiv.h f9, f19, f8, rtz # perform operation
fdiv.h f9, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fdiv.h f26, f16, f25, dyn # perform operation
fdiv.h f26, f16, f25, rdn # perform operation
fdiv.h f26, f16, f25, rmm # perform operation
fdiv.h f26, f16, f25, rne # perform operation
fdiv.h f26, f16, f25, rtz # perform operation
fdiv.h f26, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fdiv.h f27, f28, f11, dyn # perform operation
fdiv.h f27, f28, f11, rdn # perform operation
fdiv.h f27, f28, f11, rmm # perform operation
fdiv.h f27, f28, f11, rne # perform operation
fdiv.h f27, f28, f11, rtz # perform operation
fdiv.h f27, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fdiv.h f27, f14, f7, dyn # perform operation
fdiv.h f27, f14, f7, rdn # perform operation
fdiv.h f27, f14, f7, rmm # perform operation
fdiv.h f27, f14, f7, rne # perform operation
fdiv.h f27, f14, f7, rtz # perform operation
fdiv.h f27, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fdiv.h f16, f17, f30, dyn # perform operation
fdiv.h f16, f17, f30, rdn # perform operation
fdiv.h f16, f17, f30, rmm # perform operation
fdiv.h f16, f17, f30, rne # perform operation
fdiv.h f16, f17, f30, rtz # perform operation
fdiv.h f16, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
fdiv.h f17, f31, f24, dyn # perform operation
fdiv.h f17, f31, f24, rdn # perform operation
fdiv.h f17, f31, f24, rmm # perform operation
fdiv.h f17, f31, f24, rne # perform operation
fdiv.h f17, f31, f24, rtz # perform operation
fdiv.h f17, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fdiv.h f10, f13, f29, dyn # perform operation
fdiv.h f10, f13, f29, rdn # perform operation
fdiv.h f10, f13, f29, rmm # perform operation
fdiv.h f10, f13, f29, rne # perform operation
fdiv.h f10, f13, f29, rtz # perform operation
fdiv.h f10, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f13, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fdiv.h f15, f12, f17, dyn # perform operation
fdiv.h f15, f12, f17, rdn # perform operation
fdiv.h f15, f12, f17, rmm # perform operation
fdiv.h f15, f12, f17, rne # perform operation
fdiv.h f15, f12, f17, rtz # perform operation
fdiv.h f15, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fdiv.h f8, f6, f23, dyn # perform operation
fdiv.h f8, f6, f23, rdn # perform operation
fdiv.h f8, f6, f23, rmm # perform operation
fdiv.h f8, f6, f23, rne # perform operation
fdiv.h f8, f6, f23, rtz # perform operation
fdiv.h f8, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fdiv.h f1, f26, f30, dyn # perform operation
fdiv.h f1, f26, f30, rdn # perform operation
fdiv.h f1, f26, f30, rmm # perform operation
fdiv.h f1, f26, f30, rne # perform operation
fdiv.h f1, f26, f30, rtz # perform operation
fdiv.h f1, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fdiv.h f9, f26, f27, dyn # perform operation
fdiv.h f9, f26, f27, rdn # perform operation
fdiv.h f9, f26, f27, rmm # perform operation
fdiv.h f9, f26, f27, rne # perform operation
fdiv.h f9, f26, f27, rtz # perform operation
fdiv.h f9, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f2, f10, f31, dyn # perform operation
fdiv.h f2, f10, f31, rdn # perform operation
fdiv.h f2, f10, f31, rmm # perform operation
fdiv.h f2, f10, f31, rne # perform operation
fdiv.h f2, f10, f31, rtz # perform operation
fdiv.h f2, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fdiv.h f16, f9, f18, dyn # perform operation
fdiv.h f16, f9, f18, rdn # perform operation
fdiv.h f16, f9, f18, rmm # perform operation
fdiv.h f16, f9, f18, rne # perform operation
fdiv.h f16, f9, f18, rtz # perform operation
fdiv.h f16, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fdiv.h f5, f20, f10, dyn # perform operation
fdiv.h f5, f20, f10, rdn # perform operation
fdiv.h f5, f20, f10, rmm # perform operation
fdiv.h f5, f20, f10, rne # perform operation
fdiv.h f5, f20, f10, rtz # perform operation
fdiv.h f5, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fdiv.h f12, f7, f13, dyn # perform operation
fdiv.h f12, f7, f13, rdn # perform operation
fdiv.h f12, f7, f13, rmm # perform operation
fdiv.h f12, f7, f13, rne # perform operation
fdiv.h f12, f7, f13, rtz # perform operation
fdiv.h f12, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fdiv.h f6, f11, f12, dyn # perform operation
fdiv.h f6, f11, f12, rdn # perform operation
fdiv.h f6, f11, f12, rmm # perform operation
fdiv.h f6, f11, f12, rne # perform operation
fdiv.h f6, f11, f12, rtz # perform operation
fdiv.h f6, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fdiv.h f18, f3, f20, dyn # perform operation
fdiv.h f18, f3, f20, rdn # perform operation
fdiv.h f18, f3, f20, rmm # perform operation
fdiv.h f18, f3, f20, rne # perform operation
fdiv.h f18, f3, f20, rtz # perform operation
fdiv.h f18, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fdiv.h f16, f11, f10, dyn # perform operation
fdiv.h f16, f11, f10, rdn # perform operation
fdiv.h f16, f11, f10, rmm # perform operation
fdiv.h f16, f11, f10, rne # perform operation
fdiv.h f16, f11, f10, rtz # perform operation
fdiv.h f16, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fdiv.h f21, f3, f12, dyn # perform operation
fdiv.h f21, f3, f12, rdn # perform operation
fdiv.h f21, f3, f12, rmm # perform operation
fdiv.h f21, f3, f12, rne # perform operation
fdiv.h f21, f3, f12, rtz # perform operation
fdiv.h f21, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fdiv.h f18, f16, f3, dyn # perform operation
fdiv.h f18, f16, f3, rdn # perform operation
fdiv.h f18, f16, f3, rmm # perform operation
fdiv.h f18, f16, f3, rne # perform operation
fdiv.h f18, f16, f3, rtz # perform operation
fdiv.h f18, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fdiv.h f11, f13, f14, dyn # perform operation
fdiv.h f11, f13, f14, rdn # perform operation
fdiv.h f11, f13, f14, rmm # perform operation
fdiv.h f11, f13, f14, rne # perform operation
fdiv.h f11, f13, f14, rtz # perform operation
fdiv.h f11, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fdiv.h f30, f28, f13, dyn # perform operation
fdiv.h f30, f28, f13, rdn # perform operation
fdiv.h f30, f28, f13, rmm # perform operation
fdiv.h f30, f28, f13, rne # perform operation
fdiv.h f30, f28, f13, rtz # perform operation
fdiv.h f30, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fdiv.h f13, f24, f5, dyn # perform operation
fdiv.h f13, f24, f5, rdn # perform operation
fdiv.h f13, f24, f5, rmm # perform operation
fdiv.h f13, f24, f5, rne # perform operation
fdiv.h f13, f24, f5, rtz # perform operation
fdiv.h f13, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fdiv.h f30, f5, f8, dyn # perform operation
fdiv.h f30, f5, f8, rdn # perform operation
fdiv.h f30, f5, f8, rmm # perform operation
fdiv.h f30, f5, f8, rne # perform operation
fdiv.h f30, f5, f8, rtz # perform operation
fdiv.h f30, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fdiv.h f24, f16, f3, dyn # perform operation
fdiv.h f24, f16, f3, rdn # perform operation
fdiv.h f24, f16, f3, rmm # perform operation
fdiv.h f24, f16, f3, rne # perform operation
fdiv.h f24, f16, f3, rtz # perform operation
fdiv.h f24, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fdiv.h f29, f5, f25, dyn # perform operation
fdiv.h f29, f5, f25, rdn # perform operation
fdiv.h f29, f5, f25, rmm # perform operation
fdiv.h f29, f5, f25, rne # perform operation
fdiv.h f29, f5, f25, rtz # perform operation
fdiv.h f29, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f7, f17, f25, dyn # perform operation
fdiv.h f7, f17, f25, rdn # perform operation
fdiv.h f7, f17, f25, rmm # perform operation
fdiv.h f7, f17, f25, rne # perform operation
fdiv.h f7, f17, f25, rtz # perform operation
fdiv.h f7, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.h f18, f19, f8, dyn # perform operation
fdiv.h f18, f19, f8, rdn # perform operation
fdiv.h f18, f19, f8, rmm # perform operation
fdiv.h f18, f19, f8, rne # perform operation
fdiv.h f18, f19, f8, rtz # perform operation
fdiv.h f18, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fdiv.h f11, f12, f28, dyn # perform operation
fdiv.h f11, f12, f28, rdn # perform operation
fdiv.h f11, f12, f28, rmm # perform operation
fdiv.h f11, f12, f28, rne # perform operation
fdiv.h f11, f12, f28, rtz # perform operation
fdiv.h f11, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fdiv.h f13, f21, f17, dyn # perform operation
fdiv.h f13, f21, f17, rdn # perform operation
fdiv.h f13, f21, f17, rmm # perform operation
fdiv.h f13, f21, f17, rne # perform operation
fdiv.h f13, f21, f17, rtz # perform operation
fdiv.h f13, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fdiv.h f5, f22, f13, dyn # perform operation
fdiv.h f5, f22, f13, rdn # perform operation
fdiv.h f5, f22, f13, rmm # perform operation
fdiv.h f5, f22, f13, rne # perform operation
fdiv.h f5, f22, f13, rtz # perform operation
fdiv.h f5, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fdiv.h f29, f27, f18, dyn # perform operation
fdiv.h f29, f27, f18, rdn # perform operation
fdiv.h f29, f27, f18, rmm # perform operation
fdiv.h f29, f27, f18, rne # perform operation
fdiv.h f29, f27, f18, rtz # perform operation
fdiv.h f29, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f14, f12, f24, dyn # perform operation
fdiv.h f14, f12, f24, rdn # perform operation
fdiv.h f14, f12, f24, rmm # perform operation
fdiv.h f14, f12, f24, rne # perform operation
fdiv.h f14, f12, f24, rtz # perform operation
fdiv.h f14, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
fdiv.h f3, f19, f9, dyn # perform operation
fdiv.h f3, f19, f9, rdn # perform operation
fdiv.h f3, f19, f9, rmm # perform operation
fdiv.h f3, f19, f9, rne # perform operation
fdiv.h f3, f19, f9, rtz # perform operation
fdiv.h f3, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fdiv.h f22, f30, f20, dyn # perform operation
fdiv.h f22, f30, f20, rdn # perform operation
fdiv.h f22, f30, f20, rmm # perform operation
fdiv.h f22, f30, f20, rne # perform operation
fdiv.h f22, f30, f20, rtz # perform operation
fdiv.h f22, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fdiv.h f10, f21, f8, dyn # perform operation
fdiv.h f10, f21, f8, rdn # perform operation
fdiv.h f10, f21, f8, rmm # perform operation
fdiv.h f10, f21, f8, rne # perform operation
fdiv.h f10, f21, f8, rtz # perform operation
fdiv.h f10, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f21, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f15, 0(x2) # load 0x0000fc01 from memory into f15
fdiv.h f2, f30, f15, dyn # perform operation
fdiv.h f2, f30, f15, rdn # perform operation
fdiv.h f2, f30, f15, rmm # perform operation
fdiv.h f2, f30, f15, rne # perform operation
fdiv.h f2, f30, f15, rtz # perform operation
fdiv.h f2, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f12, f5, f22, dyn # perform operation
fdiv.h f12, f5, f22, rdn # perform operation
fdiv.h f12, f5, f22, rmm # perform operation
fdiv.h f12, f5, f22, rne # perform operation
fdiv.h f12, f5, f22, rtz # perform operation
fdiv.h f12, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f8, f23, f1, dyn # perform operation
fdiv.h f8, f23, f1, rdn # perform operation
fdiv.h f8, f23, f1, rmm # perform operation
fdiv.h f8, f23, f1, rne # perform operation
fdiv.h f8, f23, f1, rtz # perform operation
fdiv.h f8, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f21, f22, f31, dyn # perform operation
fdiv.h f21, f22, f31, rdn # perform operation
fdiv.h f21, f22, f31, rmm # perform operation
fdiv.h f21, f22, f31, rne # perform operation
fdiv.h f21, f22, f31, rtz # perform operation
fdiv.h f21, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fdiv.h f16, f28, f6, dyn # perform operation
fdiv.h f16, f28, f6, rdn # perform operation
fdiv.h f16, f28, f6, rmm # perform operation
fdiv.h f16, f28, f6, rne # perform operation
fdiv.h f16, f28, f6, rtz # perform operation
fdiv.h f16, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fdiv.h f10, f1, f12, dyn # perform operation
fdiv.h f10, f1, f12, rdn # perform operation
fdiv.h f10, f1, f12, rmm # perform operation
fdiv.h f10, f1, f12, rne # perform operation
fdiv.h f10, f1, f12, rtz # perform operation
fdiv.h f10, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fdiv.h f19, f30, f12, dyn # perform operation
fdiv.h f19, f30, f12, rdn # perform operation
fdiv.h f19, f30, f12, rmm # perform operation
fdiv.h f19, f30, f12, rne # perform operation
fdiv.h f19, f30, f12, rtz # perform operation
fdiv.h f19, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fdiv.h f24, f20, f22, dyn # perform operation
fdiv.h f24, f20, f22, rdn # perform operation
fdiv.h f24, f20, f22, rmm # perform operation
fdiv.h f24, f20, f22, rne # perform operation
fdiv.h f24, f20, f22, rtz # perform operation
fdiv.h f24, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f7, f28, f15, dyn # perform operation
fdiv.h f7, f28, f15, rdn # perform operation
fdiv.h f7, f28, f15, rmm # perform operation
fdiv.h f7, f28, f15, rne # perform operation
fdiv.h f7, f28, f15, rtz # perform operation
fdiv.h f7, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fdiv.h f31, f23, f19, dyn # perform operation
fdiv.h f31, f23, f19, rdn # perform operation
fdiv.h f31, f23, f19, rmm # perform operation
fdiv.h f31, f23, f19, rne # perform operation
fdiv.h f31, f23, f19, rtz # perform operation
fdiv.h f31, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fdiv.h f12, f2, f16, dyn # perform operation
fdiv.h f12, f2, f16, rdn # perform operation
fdiv.h f12, f2, f16, rmm # perform operation
fdiv.h f12, f2, f16, rne # perform operation
fdiv.h f12, f2, f16, rtz # perform operation
fdiv.h f12, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fdiv.h f8, f15, f6, dyn # perform operation
fdiv.h f8, f15, f6, rdn # perform operation
fdiv.h f8, f15, f6, rmm # perform operation
fdiv.h f8, f15, f6, rne # perform operation
fdiv.h f8, f15, f6, rtz # perform operation
fdiv.h f8, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fdiv.h f8, f2, f21, dyn # perform operation
fdiv.h f8, f2, f21, rdn # perform operation
fdiv.h f8, f2, f21, rmm # perform operation
fdiv.h f8, f2, f21, rne # perform operation
fdiv.h f8, f2, f21, rtz # perform operation
fdiv.h f8, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fdiv.h f31, f27, f5, dyn # perform operation
fdiv.h f31, f27, f5, rdn # perform operation
fdiv.h f31, f27, f5, rmm # perform operation
fdiv.h f31, f27, f5, rne # perform operation
fdiv.h f31, f27, f5, rtz # perform operation
fdiv.h f31, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fdiv.h f30, f19, f12, dyn # perform operation
fdiv.h f30, f19, f12, rdn # perform operation
fdiv.h f30, f19, f12, rmm # perform operation
fdiv.h f30, f19, f12, rne # perform operation
fdiv.h f30, f19, f12, rtz # perform operation
fdiv.h f30, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f14, f19, f23, dyn # perform operation
fdiv.h f14, f19, f23, rdn # perform operation
fdiv.h f14, f19, f23, rmm # perform operation
fdiv.h f14, f19, f23, rne # perform operation
fdiv.h f14, f19, f23, rtz # perform operation
fdiv.h f14, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fdiv.h f26, f6, f5, dyn # perform operation
fdiv.h f26, f6, f5, rdn # perform operation
fdiv.h f26, f6, f5, rmm # perform operation
fdiv.h f26, f6, f5, rne # perform operation
fdiv.h f26, f6, f5, rtz # perform operation
fdiv.h f26, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fdiv.h f22, f16, f5, dyn # perform operation
fdiv.h f22, f16, f5, rdn # perform operation
fdiv.h f22, f16, f5, rmm # perform operation
fdiv.h f22, f16, f5, rne # perform operation
fdiv.h f22, f16, f5, rtz # perform operation
fdiv.h f22, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fdiv.h f22, f19, f1, dyn # perform operation
fdiv.h f22, f19, f1, rdn # perform operation
fdiv.h f22, f19, f1, rmm # perform operation
fdiv.h f22, f19, f1, rne # perform operation
fdiv.h f22, f19, f1, rtz # perform operation
fdiv.h f22, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.h f20, f31, f13, dyn # perform operation
fdiv.h f20, f31, f13, rdn # perform operation
fdiv.h f20, f31, f13, rmm # perform operation
fdiv.h f20, f31, f13, rne # perform operation
fdiv.h f20, f31, f13, rtz # perform operation
fdiv.h f20, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fdiv.h f11, f2, f24, dyn # perform operation
fdiv.h f11, f2, f24, rdn # perform operation
fdiv.h f11, f2, f24, rmm # perform operation
fdiv.h f11, f2, f24, rne # perform operation
fdiv.h f11, f2, f24, rtz # perform operation
fdiv.h f11, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f2, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fdiv.h f3, f2, f1, dyn # perform operation
fdiv.h f3, f2, f1, rdn # perform operation
fdiv.h f3, f2, f1, rmm # perform operation
fdiv.h f3, f2, f1, rne # perform operation
fdiv.h f3, f2, f1, rtz # perform operation
fdiv.h f3, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fdiv.h f27, f18, f17, dyn # perform operation
fdiv.h f27, f18, f17, rdn # perform operation
fdiv.h f27, f18, f17, rmm # perform operation
fdiv.h f27, f18, f17, rne # perform operation
fdiv.h f27, f18, f17, rtz # perform operation
fdiv.h f27, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fdiv.h f6, f8, f31, dyn # perform operation
fdiv.h f6, f8, f31, rdn # perform operation
fdiv.h f6, f8, f31, rmm # perform operation
fdiv.h f6, f8, f31, rne # perform operation
fdiv.h f6, f8, f31, rtz # perform operation
fdiv.h f6, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fdiv.h f7, f16, f21, dyn # perform operation
fdiv.h f7, f16, f21, rdn # perform operation
fdiv.h f7, f16, f21, rmm # perform operation
fdiv.h f7, f16, f21, rne # perform operation
fdiv.h f7, f16, f21, rtz # perform operation
fdiv.h f7, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fdiv.h f29, f30, f17, dyn # perform operation
fdiv.h f29, f30, f17, rdn # perform operation
fdiv.h f29, f30, f17, rmm # perform operation
fdiv.h f29, f30, f17, rne # perform operation
fdiv.h f29, f30, f17, rtz # perform operation
fdiv.h f29, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f5, f13, f30, dyn # perform operation
fdiv.h f5, f13, f30, rdn # perform operation
fdiv.h f5, f13, f30, rmm # perform operation
fdiv.h f5, f13, f30, rne # perform operation
fdiv.h f5, f13, f30, rtz # perform operation
fdiv.h f5, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fdiv.h f2, f10, f24, dyn # perform operation
fdiv.h f2, f10, f24, rdn # perform operation
fdiv.h f2, f10, f24, rmm # perform operation
fdiv.h f2, f10, f24, rne # perform operation
fdiv.h f2, f10, f24, rtz # perform operation
fdiv.h f2, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f19, 0(x2) # load 0x0000fe00 from memory into f19
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fdiv.h f28, f19, f18, dyn # perform operation
fdiv.h f28, f19, f18, rdn # perform operation
fdiv.h f28, f19, f18, rmm # perform operation
fdiv.h f28, f19, f18, rne # perform operation
fdiv.h f28, f19, f18, rtz # perform operation
fdiv.h f28, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f9, 0(x2) # load 0x0000fe00 from memory into f9
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f2, f9, f10, dyn # perform operation
fdiv.h f2, f9, f10, rdn # perform operation
fdiv.h f2, f9, f10, rmm # perform operation
fdiv.h f2, f9, f10, rne # perform operation
fdiv.h f2, f9, f10, rtz # perform operation
fdiv.h f2, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fdiv.h f10, f24, f17, dyn # perform operation
fdiv.h f10, f24, f17, rdn # perform operation
fdiv.h f10, f24, f17, rmm # perform operation
fdiv.h f10, f24, f17, rne # perform operation
fdiv.h f10, f24, f17, rtz # perform operation
fdiv.h f10, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f24, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.h f1, f24, f20, dyn # perform operation
fdiv.h f1, f24, f20, rdn # perform operation
fdiv.h f1, f24, f20, rmm # perform operation
fdiv.h f1, f24, f20, rne # perform operation
fdiv.h f1, f24, f20, rtz # perform operation
fdiv.h f1, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fdiv.h f21, f19, f8, dyn # perform operation
fdiv.h f21, f19, f8, rdn # perform operation
fdiv.h f21, f19, f8, rmm # perform operation
fdiv.h f21, f19, f8, rne # perform operation
fdiv.h f21, f19, f8, rtz # perform operation
fdiv.h f21, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fdiv.h f14, f20, f24, dyn # perform operation
fdiv.h f14, f20, f24, rdn # perform operation
fdiv.h f14, f20, f24, rmm # perform operation
fdiv.h f14, f20, f24, rne # perform operation
fdiv.h f14, f20, f24, rtz # perform operation
fdiv.h f14, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fdiv.h f22, f19, f27, dyn # perform operation
fdiv.h f22, f19, f27, rdn # perform operation
fdiv.h f22, f19, f27, rmm # perform operation
fdiv.h f22, f19, f27, rne # perform operation
fdiv.h f22, f19, f27, rtz # perform operation
fdiv.h f22, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f19, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fdiv.h f16, f18, f12, dyn # perform operation
fdiv.h f16, f18, f12, rdn # perform operation
fdiv.h f16, f18, f12, rmm # perform operation
fdiv.h f16, f18, f12, rne # perform operation
fdiv.h f16, f18, f12, rtz # perform operation
fdiv.h f16, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fdiv.h f7, f13, f28, dyn # perform operation
fdiv.h f7, f13, f28, rdn # perform operation
fdiv.h f7, f13, f28, rmm # perform operation
fdiv.h f7, f13, f28, rne # perform operation
fdiv.h f7, f13, f28, rtz # perform operation
fdiv.h f7, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fdiv.h f30, f19, f1, dyn # perform operation
fdiv.h f30, f19, f1, rdn # perform operation
fdiv.h f30, f19, f1, rmm # perform operation
fdiv.h f30, f19, f1, rne # perform operation
fdiv.h f30, f19, f1, rtz # perform operation
fdiv.h f30, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fdiv.h f14, f3, f11, dyn # perform operation
fdiv.h f14, f3, f11, rdn # perform operation
fdiv.h f14, f3, f11, rmm # perform operation
fdiv.h f14, f3, f11, rne # perform operation
fdiv.h f14, f3, f11, rtz # perform operation
fdiv.h f14, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fdiv.h f1, f27, f5, dyn # perform operation
fdiv.h f1, f27, f5, rdn # perform operation
fdiv.h f1, f27, f5, rmm # perform operation
fdiv.h f1, f27, f5, rne # perform operation
fdiv.h f1, f27, f5, rtz # perform operation
fdiv.h f1, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fdiv.h f13, f28, f3, dyn # perform operation
fdiv.h f13, f28, f3, rdn # perform operation
fdiv.h f13, f28, f3, rmm # perform operation
fdiv.h f13, f28, f3, rne # perform operation
fdiv.h f13, f28, f3, rtz # perform operation
fdiv.h f13, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fdiv.h f23, f16, f30, dyn # perform operation
fdiv.h f23, f16, f30, rdn # perform operation
fdiv.h f23, f16, f30, rmm # perform operation
fdiv.h f23, f16, f30, rne # perform operation
fdiv.h f23, f16, f30, rtz # perform operation
fdiv.h f23, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f16, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fdiv.h f28, f31, f12, dyn # perform operation
fdiv.h f28, f31, f12, rdn # perform operation
fdiv.h f28, f31, f12, rmm # perform operation
fdiv.h f28, f31, f12, rne # perform operation
fdiv.h f28, f31, f12, rtz # perform operation
fdiv.h f28, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fdiv.h f8, f22, f19, dyn # perform operation
fdiv.h f8, f22, f19, rdn # perform operation
fdiv.h f8, f22, f19, rmm # perform operation
fdiv.h f8, f22, f19, rne # perform operation
fdiv.h f8, f22, f19, rtz # perform operation
fdiv.h f8, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fdiv.h f29, f17, f18, dyn # perform operation
fdiv.h f29, f17, f18, rdn # perform operation
fdiv.h f29, f17, f18, rmm # perform operation
fdiv.h f29, f17, f18, rne # perform operation
fdiv.h f29, f17, f18, rtz # perform operation
fdiv.h f29, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fdiv.h f27, f7, f2, dyn # perform operation
fdiv.h f27, f7, f2, rdn # perform operation
fdiv.h f27, f7, f2, rmm # perform operation
fdiv.h f27, f7, f2, rne # perform operation
fdiv.h f27, f7, f2, rtz # perform operation
fdiv.h f27, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fdiv.h f23, f26, f10, dyn # perform operation
fdiv.h f23, f26, f10, rdn # perform operation
fdiv.h f23, f26, f10, rmm # perform operation
fdiv.h f23, f26, f10, rne # perform operation
fdiv.h f23, f26, f10, rtz # perform operation
fdiv.h f23, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.h f23, f20, f27, dyn # perform operation
fdiv.h f23, f20, f27, rdn # perform operation
fdiv.h f23, f20, f27, rmm # perform operation
fdiv.h f23, f20, f27, rne # perform operation
fdiv.h f23, f20, f27, rtz # perform operation
fdiv.h f23, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fdiv.h f27, f23, f21, dyn # perform operation
fdiv.h f27, f23, f21, rdn # perform operation
fdiv.h f27, f23, f21, rmm # perform operation
fdiv.h f27, f23, f21, rne # perform operation
fdiv.h f27, f23, f21, rtz # perform operation
fdiv.h f27, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fdiv.h f20, f14, f19, dyn # perform operation
fdiv.h f20, f14, f19, rdn # perform operation
fdiv.h f20, f14, f19, rmm # perform operation
fdiv.h f20, f14, f19, rne # perform operation
fdiv.h f20, f14, f19, rtz # perform operation
fdiv.h f20, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fdiv.h f26, f31, f6, dyn # perform operation
fdiv.h f26, f31, f6, rdn # perform operation
fdiv.h f26, f31, f6, rmm # perform operation
fdiv.h f26, f31, f6, rne # perform operation
fdiv.h f26, f31, f6, rtz # perform operation
fdiv.h f26, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fdiv.h f3, f1, f28, dyn # perform operation
fdiv.h f3, f1, f28, rdn # perform operation
fdiv.h f3, f1, f28, rmm # perform operation
fdiv.h f3, f1, f28, rne # perform operation
fdiv.h f3, f1, f28, rtz # perform operation
fdiv.h f3, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f7, f3, f24, dyn # perform operation
fdiv.h f7, f3, f24, rdn # perform operation
fdiv.h f7, f3, f24, rmm # perform operation
fdiv.h f7, f3, f24, rne # perform operation
fdiv.h f7, f3, f24, rtz # perform operation
fdiv.h f7, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fdiv.h f5, f28, f6, dyn # perform operation
fdiv.h f5, f28, f6, rdn # perform operation
fdiv.h f5, f28, f6, rmm # perform operation
fdiv.h f5, f28, f6, rne # perform operation
fdiv.h f5, f28, f6, rtz # perform operation
fdiv.h f5, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fdiv.h f17, f1, f10, dyn # perform operation
fdiv.h f17, f1, f10, rdn # perform operation
fdiv.h f17, f1, f10, rmm # perform operation
fdiv.h f17, f1, f10, rne # perform operation
fdiv.h f17, f1, f10, rtz # perform operation
fdiv.h f17, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fdiv.h f11, f17, f20, dyn # perform operation
fdiv.h f11, f17, f20, rdn # perform operation
fdiv.h f11, f17, f20, rmm # perform operation
fdiv.h f11, f17, f20, rne # perform operation
fdiv.h f11, f17, f20, rtz # perform operation
fdiv.h f11, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
fdiv.h f20, f22, f9, dyn # perform operation
fdiv.h f20, f22, f9, rdn # perform operation
fdiv.h f20, f22, f9, rmm # perform operation
fdiv.h f20, f22, f9, rne # perform operation
fdiv.h f20, f22, f9, rtz # perform operation
fdiv.h f20, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fdiv.h f6, f17, f24, dyn # perform operation
fdiv.h f6, f17, f24, rdn # perform operation
fdiv.h f6, f17, f24, rmm # perform operation
fdiv.h f6, f17, f24, rne # perform operation
fdiv.h f6, f17, f24, rtz # perform operation
fdiv.h f6, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f9, f7, f1, dyn # perform operation
fdiv.h f9, f7, f1, rdn # perform operation
fdiv.h f9, f7, f1, rmm # perform operation
fdiv.h f9, f7, f1, rne # perform operation
fdiv.h f9, f7, f1, rtz # perform operation
fdiv.h f9, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.h f29, f7, f2, dyn # perform operation
fdiv.h f29, f7, f2, rdn # perform operation
fdiv.h f29, f7, f2, rmm # perform operation
fdiv.h f29, f7, f2, rne # perform operation
fdiv.h f29, f7, f2, rtz # perform operation
fdiv.h f29, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f9, f20, f10, dyn # perform operation
fdiv.h f9, f20, f10, rdn # perform operation
fdiv.h f9, f20, f10, rmm # perform operation
fdiv.h f9, f20, f10, rne # perform operation
fdiv.h f9, f20, f10, rtz # perform operation
fdiv.h f9, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fdiv.h f21, f17, f26, dyn # perform operation
fdiv.h f21, f17, f26, rdn # perform operation
fdiv.h f21, f17, f26, rmm # perform operation
fdiv.h f21, f17, f26, rne # perform operation
fdiv.h f21, f17, f26, rtz # perform operation
fdiv.h f21, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fdiv.h f17, f16, f21, dyn # perform operation
fdiv.h f17, f16, f21, rdn # perform operation
fdiv.h f17, f16, f21, rmm # perform operation
fdiv.h f17, f16, f21, rne # perform operation
fdiv.h f17, f16, f21, rtz # perform operation
fdiv.h f17, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fdiv.h f14, f17, f12, dyn # perform operation
fdiv.h f14, f17, f12, rdn # perform operation
fdiv.h f14, f17, f12, rmm # perform operation
fdiv.h f14, f17, f12, rne # perform operation
fdiv.h f14, f17, f12, rtz # perform operation
fdiv.h f14, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fdiv.h f8, f3, f26, dyn # perform operation
fdiv.h f8, f3, f26, rdn # perform operation
fdiv.h f8, f3, f26, rmm # perform operation
fdiv.h f8, f3, f26, rne # perform operation
fdiv.h f8, f3, f26, rtz # perform operation
fdiv.h f8, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fdiv.h f1, f9, f6, dyn # perform operation
fdiv.h f1, f9, f6, rdn # perform operation
fdiv.h f1, f9, f6, rmm # perform operation
fdiv.h f1, f9, f6, rne # perform operation
fdiv.h f1, f9, f6, rtz # perform operation
fdiv.h f1, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f9, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f9, f2, f17, dyn # perform operation
fdiv.h f9, f2, f17, rdn # perform operation
fdiv.h f9, f2, f17, rmm # perform operation
fdiv.h f9, f2, f17, rne # perform operation
fdiv.h f9, f2, f17, rtz # perform operation
fdiv.h f9, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fdiv.h f3, f16, f17, dyn # perform operation
fdiv.h f3, f16, f17, rdn # perform operation
fdiv.h f3, f16, f17, rmm # perform operation
fdiv.h f3, f16, f17, rne # perform operation
fdiv.h f3, f16, f17, rtz # perform operation
fdiv.h f3, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f1, f14, f9, dyn # perform operation
fdiv.h f1, f14, f9, rdn # perform operation
fdiv.h f1, f14, f9, rmm # perform operation
fdiv.h f1, f14, f9, rne # perform operation
fdiv.h f1, f14, f9, rtz # perform operation
fdiv.h f1, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f3, f24, f29, dyn # perform operation
fdiv.h f3, f24, f29, rdn # perform operation
fdiv.h f3, f24, f29, rmm # perform operation
fdiv.h f3, f24, f29, rne # perform operation
fdiv.h f3, f24, f29, rtz # perform operation
fdiv.h f3, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fdiv.h f25, f19, f24, dyn # perform operation
fdiv.h f25, f19, f24, rdn # perform operation
fdiv.h f25, f19, f24, rmm # perform operation
fdiv.h f25, f19, f24, rne # perform operation
fdiv.h f25, f19, f24, rtz # perform operation
fdiv.h f25, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f19, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fdiv.h f19, f1, f18, dyn # perform operation
fdiv.h f19, f1, f18, rdn # perform operation
fdiv.h f19, f1, f18, rmm # perform operation
fdiv.h f19, f1, f18, rne # perform operation
fdiv.h f19, f1, f18, rtz # perform operation
fdiv.h f19, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f1, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fdiv.h f12, f25, f19, dyn # perform operation
fdiv.h f12, f25, f19, rdn # perform operation
fdiv.h f12, f25, f19, rmm # perform operation
fdiv.h f12, f25, f19, rne # perform operation
fdiv.h f12, f25, f19, rtz # perform operation
fdiv.h f12, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f25, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fdiv.h f21, f13, f3, dyn # perform operation
fdiv.h f21, f13, f3, rdn # perform operation
fdiv.h f21, f13, f3, rmm # perform operation
fdiv.h f21, f13, f3, rne # perform operation
fdiv.h f21, f13, f3, rtz # perform operation
fdiv.h f21, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fdiv.h f19, f27, f5, dyn # perform operation
fdiv.h f19, f27, f5, rdn # perform operation
fdiv.h f19, f27, f5, rmm # perform operation
fdiv.h f19, f27, f5, rne # perform operation
fdiv.h f19, f27, f5, rtz # perform operation
fdiv.h f19, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.h f10, f19, f22, dyn # perform operation
fdiv.h f10, f19, f22, rdn # perform operation
fdiv.h f10, f19, f22, rmm # perform operation
fdiv.h f10, f19, f22, rne # perform operation
fdiv.h f10, f19, f22, rtz # perform operation
fdiv.h f10, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fdiv.h f10, f1, f23, dyn # perform operation
fdiv.h f10, f1, f23, rdn # perform operation
fdiv.h f10, f1, f23, rmm # perform operation
fdiv.h f10, f1, f23, rne # perform operation
fdiv.h f10, f1, f23, rtz # perform operation
fdiv.h f10, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fdiv.h f2, f9, f26, dyn # perform operation
fdiv.h f2, f9, f26, rdn # perform operation
fdiv.h f2, f9, f26, rmm # perform operation
fdiv.h f2, f9, f26, rne # perform operation
fdiv.h f2, f9, f26, rtz # perform operation
fdiv.h f2, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fdiv.h f3, f18, f12, dyn # perform operation
fdiv.h f3, f18, f12, rdn # perform operation
fdiv.h f3, f18, f12, rmm # perform operation
fdiv.h f3, f18, f12, rne # perform operation
fdiv.h f3, f18, f12, rtz # perform operation
fdiv.h f3, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f18, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fdiv.h f9, f22, f17, dyn # perform operation
fdiv.h f9, f22, f17, rdn # perform operation
fdiv.h f9, f22, f17, rmm # perform operation
fdiv.h f9, f22, f17, rne # perform operation
fdiv.h f9, f22, f17, rtz # perform operation
fdiv.h f9, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fdiv.h f23, f7, f25, dyn # perform operation
fdiv.h f23, f7, f25, rdn # perform operation
fdiv.h f23, f7, f25, rmm # perform operation
fdiv.h f23, f7, f25, rne # perform operation
fdiv.h f23, f7, f25, rtz # perform operation
fdiv.h f23, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f7, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fdiv.h f14, f27, f3, dyn # perform operation
fdiv.h f14, f27, f3, rdn # perform operation
fdiv.h f14, f27, f3, rmm # perform operation
fdiv.h f14, f27, f3, rne # perform operation
fdiv.h f14, f27, f3, rtz # perform operation
fdiv.h f14, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fdiv.h f28, f5, f29, dyn # perform operation
fdiv.h f28, f5, f29, rdn # perform operation
fdiv.h f28, f5, f29, rmm # perform operation
fdiv.h f28, f5, f29, rne # perform operation
fdiv.h f28, f5, f29, rtz # perform operation
fdiv.h f28, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fdiv.h f23, f16, f25, dyn # perform operation
fdiv.h f23, f16, f25, rdn # perform operation
fdiv.h f23, f16, f25, rmm # perform operation
fdiv.h f23, f16, f25, rne # perform operation
fdiv.h f23, f16, f25, rtz # perform operation
fdiv.h f23, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fdiv.h f19, f18, f23, dyn # perform operation
fdiv.h f19, f18, f23, rdn # perform operation
fdiv.h f19, f18, f23, rmm # perform operation
fdiv.h f19, f18, f23, rne # perform operation
fdiv.h f19, f18, f23, rtz # perform operation
fdiv.h f19, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f18, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fdiv.h f11, f2, f23, dyn # perform operation
fdiv.h f11, f2, f23, rdn # perform operation
fdiv.h f11, f2, f23, rmm # perform operation
fdiv.h f11, f2, f23, rne # perform operation
fdiv.h f11, f2, f23, rtz # perform operation
fdiv.h f11, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f2, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fdiv.h f5, f11, f16, dyn # perform operation
fdiv.h f5, f11, f16, rdn # perform operation
fdiv.h f5, f11, f16, rmm # perform operation
fdiv.h f5, f11, f16, rne # perform operation
fdiv.h f5, f11, f16, rtz # perform operation
fdiv.h f5, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fdiv.h f12, f14, f1, dyn # perform operation
fdiv.h f12, f14, f1, rdn # perform operation
fdiv.h f12, f14, f1, rmm # perform operation
fdiv.h f12, f14, f1, rne # perform operation
fdiv.h f12, f14, f1, rtz # perform operation
fdiv.h f12, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fdiv.h f19, f9, f29, dyn # perform operation
fdiv.h f19, f9, f29, rdn # perform operation
fdiv.h f19, f9, f29, rmm # perform operation
fdiv.h f19, f9, f29, rne # perform operation
fdiv.h f19, f9, f29, rtz # perform operation
fdiv.h f19, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fdiv.h f5, f9, f22, dyn # perform operation
fdiv.h f5, f9, f22, rdn # perform operation
fdiv.h f5, f9, f22, rmm # perform operation
fdiv.h f5, f9, f22, rne # perform operation
fdiv.h f5, f9, f22, rtz # perform operation
fdiv.h f5, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f9, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fdiv.h f21, f17, f27, dyn # perform operation
fdiv.h f21, f17, f27, rdn # perform operation
fdiv.h f21, f17, f27, rmm # perform operation
fdiv.h f21, f17, f27, rne # perform operation
fdiv.h f21, f17, f27, rtz # perform operation
fdiv.h f21, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fdiv.h f28, f17, f27, dyn # perform operation
fdiv.h f28, f17, f27, rdn # perform operation
fdiv.h f28, f17, f27, rmm # perform operation
fdiv.h f28, f17, f27, rne # perform operation
fdiv.h f28, f17, f27, rtz # perform operation
fdiv.h f28, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f2, 0(x2) # load 0x0000fc01 from memory into f2
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fdiv.h f20, f2, f10, dyn # perform operation
fdiv.h f20, f2, f10, rdn # perform operation
fdiv.h f20, f2, f10, rmm # perform operation
fdiv.h f20, f2, f10, rne # perform operation
fdiv.h f20, f2, f10, rtz # perform operation
fdiv.h f20, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f2, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fdiv.h f26, f22, f17, dyn # perform operation
fdiv.h f26, f22, f17, rdn # perform operation
fdiv.h f26, f22, f17, rmm # perform operation
fdiv.h f26, f22, f17, rne # perform operation
fdiv.h f26, f22, f17, rtz # perform operation
fdiv.h f26, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f19, f6, f26, dyn # perform operation
fdiv.h f19, f6, f26, rdn # perform operation
fdiv.h f19, f6, f26, rmm # perform operation
fdiv.h f19, f6, f26, rne # perform operation
fdiv.h f19, f6, f26, rtz # perform operation
fdiv.h f19, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f1, 0(x2) # load 0x0000fc01 from memory into f1
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fdiv.h f8, f1, f24, dyn # perform operation
fdiv.h f8, f1, f24, rdn # perform operation
fdiv.h f8, f1, f24, rmm # perform operation
fdiv.h f8, f1, f24, rne # perform operation
fdiv.h f8, f1, f24, rtz # perform operation
fdiv.h f8, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fdiv.h f30, f11, f29, dyn # perform operation
fdiv.h f30, f11, f29, rdn # perform operation
fdiv.h f30, f11, f29, rmm # perform operation
fdiv.h f30, f11, f29, rne # perform operation
fdiv.h f30, f11, f29, rtz # perform operation
fdiv.h f30, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fdiv.h f31, f29, f10, dyn # perform operation
fdiv.h f31, f29, f10, rdn # perform operation
fdiv.h f31, f29, f10, rmm # perform operation
fdiv.h f31, f29, f10, rne # perform operation
fdiv.h f31, f29, f10, rtz # perform operation
fdiv.h f31, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fdiv.h f21, f17, f10, dyn # perform operation
fdiv.h f21, f17, f10, rdn # perform operation
fdiv.h f21, f17, f10, rmm # perform operation
fdiv.h f21, f17, f10, rne # perform operation
fdiv.h f21, f17, f10, rtz # perform operation
fdiv.h f21, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f28, 0(x2) # load 0x0000fc01 from memory into f28
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f31, f28, f12, dyn # perform operation
fdiv.h f31, f28, f12, rdn # perform operation
fdiv.h f31, f28, f12, rmm # perform operation
fdiv.h f31, f28, f12, rne # perform operation
fdiv.h f31, f28, f12, rtz # perform operation
fdiv.h f31, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fdiv.h f13, f22, f31, dyn # perform operation
fdiv.h f13, f22, f31, rdn # perform operation
fdiv.h f13, f22, f31, rmm # perform operation
fdiv.h f13, f22, f31, rne # perform operation
fdiv.h f13, f22, f31, rtz # perform operation
fdiv.h f13, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fdiv.h f7, f22, f29, dyn # perform operation
fdiv.h f7, f22, f29, rdn # perform operation
fdiv.h f7, f22, f29, rmm # perform operation
fdiv.h f7, f22, f29, rne # perform operation
fdiv.h f7, f22, f29, rtz # perform operation
fdiv.h f7, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fdiv.h f8, f31, f17, dyn # perform operation
fdiv.h f8, f31, f17, rdn # perform operation
fdiv.h f8, f31, f17, rmm # perform operation
fdiv.h f8, f31, f17, rne # perform operation
fdiv.h f8, f31, f17, rtz # perform operation
fdiv.h f8, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.h f17, f26, f23, dyn # perform operation
fdiv.h f17, f26, f23, rdn # perform operation
fdiv.h f17, f26, f23, rmm # perform operation
fdiv.h f17, f26, f23, rne # perform operation
fdiv.h f17, f26, f23, rtz # perform operation
fdiv.h f17, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fdiv.h f1, f11, f5, dyn # perform operation
fdiv.h f1, f11, f5, rdn # perform operation
fdiv.h f1, f11, f5, rmm # perform operation
fdiv.h f1, f11, f5, rne # perform operation
fdiv.h f1, f11, f5, rtz # perform operation
fdiv.h f1, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fdiv.h f31, f5, f10, dyn # perform operation
fdiv.h f31, f5, f10, rdn # perform operation
fdiv.h f31, f5, f10, rmm # perform operation
fdiv.h f31, f5, f10, rne # perform operation
fdiv.h f31, f5, f10, rtz # perform operation
fdiv.h f31, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fdiv.h f17, f9, f29, dyn # perform operation
fdiv.h f17, f9, f29, rdn # perform operation
fdiv.h f17, f9, f29, rmm # perform operation
fdiv.h f17, f9, f29, rne # perform operation
fdiv.h f17, f9, f29, rtz # perform operation
fdiv.h f17, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fdiv.h f25, f30, f6, dyn # perform operation
fdiv.h f25, f30, f6, rdn # perform operation
fdiv.h f25, f30, f6, rmm # perform operation
fdiv.h f25, f30, f6, rne # perform operation
fdiv.h f25, f30, f6, rtz # perform operation
fdiv.h f25, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f23, f20, f24, dyn # perform operation
fdiv.h f23, f20, f24, rdn # perform operation
fdiv.h f23, f20, f24, rmm # perform operation
fdiv.h f23, f20, f24, rne # perform operation
fdiv.h f23, f20, f24, rtz # perform operation
fdiv.h f23, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fdiv.h f16, f26, f25, dyn # perform operation
fdiv.h f16, f26, f25, rdn # perform operation
fdiv.h f16, f26, f25, rmm # perform operation
fdiv.h f16, f26, f25, rne # perform operation
fdiv.h f16, f26, f25, rtz # perform operation
fdiv.h f16, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fdiv.h f31, f5, f23, dyn # perform operation
fdiv.h f31, f5, f23, rdn # perform operation
fdiv.h f31, f5, f23, rmm # perform operation
fdiv.h f31, f5, f23, rne # perform operation
fdiv.h f31, f5, f23, rtz # perform operation
fdiv.h f31, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fdiv.h f25, f13, f11, dyn # perform operation
fdiv.h f25, f13, f11, rdn # perform operation
fdiv.h f25, f13, f11, rmm # perform operation
fdiv.h f25, f13, f11, rne # perform operation
fdiv.h f25, f13, f11, rtz # perform operation
fdiv.h f25, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
fdiv.h f1, f11, f7, dyn # perform operation
fdiv.h f1, f11, f7, rdn # perform operation
fdiv.h f1, f11, f7, rmm # perform operation
fdiv.h f1, f11, f7, rne # perform operation
fdiv.h f1, f11, f7, rtz # perform operation
fdiv.h f1, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fdiv.h f20, f24, f7, dyn # perform operation
fdiv.h f20, f24, f7, rdn # perform operation
fdiv.h f20, f24, f7, rmm # perform operation
fdiv.h f20, f24, f7, rne # perform operation
fdiv.h f20, f24, f7, rtz # perform operation
fdiv.h f20, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f24, f29, f5, dyn # perform operation
fdiv.h f24, f29, f5, rdn # perform operation
fdiv.h f24, f29, f5, rmm # perform operation
fdiv.h f24, f29, f5, rne # perform operation
fdiv.h f24, f29, f5, rtz # perform operation
fdiv.h f24, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fdiv.h f30, f19, f23, dyn # perform operation
fdiv.h f30, f19, f23, rdn # perform operation
fdiv.h f30, f19, f23, rmm # perform operation
fdiv.h f30, f19, f23, rne # perform operation
fdiv.h f30, f19, f23, rtz # perform operation
fdiv.h f30, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f19, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fdiv.h f28, f25, f22, dyn # perform operation
fdiv.h f28, f25, f22, rdn # perform operation
fdiv.h f28, f25, f22, rmm # perform operation
fdiv.h f28, f25, f22, rne # perform operation
fdiv.h f28, f25, f22, rtz # perform operation
fdiv.h f28, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fdiv.h f15, f18, f29, dyn # perform operation
fdiv.h f15, f18, f29, rdn # perform operation
fdiv.h f15, f18, f29, rmm # perform operation
fdiv.h f15, f18, f29, rne # perform operation
fdiv.h f15, f18, f29, rtz # perform operation
fdiv.h f15, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fdiv.h f30, f8, f2, dyn # perform operation
fdiv.h f30, f8, f2, rdn # perform operation
fdiv.h f30, f8, f2, rmm # perform operation
fdiv.h f30, f8, f2, rne # perform operation
fdiv.h f30, f8, f2, rtz # perform operation
fdiv.h f30, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fdiv.h f27, f3, f5, dyn # perform operation
fdiv.h f27, f3, f5, rdn # perform operation
fdiv.h f27, f3, f5, rmm # perform operation
fdiv.h f27, f3, f5, rne # perform operation
fdiv.h f27, f3, f5, rtz # perform operation
fdiv.h f27, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fdiv.h f24, f11, f18, dyn # perform operation
fdiv.h f24, f11, f18, rdn # perform operation
fdiv.h f24, f11, f18, rmm # perform operation
fdiv.h f24, f11, f18, rne # perform operation
fdiv.h f24, f11, f18, rtz # perform operation
fdiv.h f24, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fdiv.h f24, f26, f2, dyn # perform operation
fdiv.h f24, f26, f2, rdn # perform operation
fdiv.h f24, f26, f2, rmm # perform operation
fdiv.h f24, f26, f2, rne # perform operation
fdiv.h f24, f26, f2, rtz # perform operation
fdiv.h f24, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f26, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fdiv.h f25, f13, f23, dyn # perform operation
fdiv.h f25, f13, f23, rdn # perform operation
fdiv.h f25, f13, f23, rmm # perform operation
fdiv.h f25, f13, f23, rne # perform operation
fdiv.h f25, f13, f23, rtz # perform operation
fdiv.h f25, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fdiv.h f6, f10, f24, dyn # perform operation
fdiv.h f6, f10, f24, rdn # perform operation
fdiv.h f6, f10, f24, rmm # perform operation
fdiv.h f6, f10, f24, rne # perform operation
fdiv.h f6, f10, f24, rtz # perform operation
fdiv.h f6, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f12, f8, f27, dyn # perform operation
fdiv.h f12, f8, f27, rdn # perform operation
fdiv.h f12, f8, f27, rmm # perform operation
fdiv.h f12, f8, f27, rne # perform operation
fdiv.h f12, f8, f27, rtz # perform operation
fdiv.h f12, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fdiv.h f20, f29, f3, dyn # perform operation
fdiv.h f20, f29, f3, rdn # perform operation
fdiv.h f20, f29, f3, rmm # perform operation
fdiv.h f20, f29, f3, rne # perform operation
fdiv.h f20, f29, f3, rtz # perform operation
fdiv.h f20, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fdiv.h f18, f6, f1, dyn # perform operation
fdiv.h f18, f6, f1, rdn # perform operation
fdiv.h f18, f6, f1, rmm # perform operation
fdiv.h f18, f6, f1, rne # perform operation
fdiv.h f18, f6, f1, rtz # perform operation
fdiv.h f18, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fdiv.h f30, f5, f29, dyn # perform operation
fdiv.h f30, f5, f29, rdn # perform operation
fdiv.h f30, f5, f29, rmm # perform operation
fdiv.h f30, f5, f29, rne # perform operation
fdiv.h f30, f5, f29, rtz # perform operation
fdiv.h f30, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fdiv.h f23, f8, f9, dyn # perform operation
fdiv.h f23, f8, f9, rdn # perform operation
fdiv.h f23, f8, f9, rmm # perform operation
fdiv.h f23, f8, f9, rne # perform operation
fdiv.h f23, f8, f9, rtz # perform operation
fdiv.h f23, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fdiv.h f9, f31, f2, dyn # perform operation
fdiv.h f9, f31, f2, rdn # perform operation
fdiv.h f9, f31, f2, rmm # perform operation
fdiv.h f9, f31, f2, rne # perform operation
fdiv.h f9, f31, f2, rtz # perform operation
fdiv.h f9, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fdiv.h f18, f23, f17, dyn # perform operation
fdiv.h f18, f23, f17, rdn # perform operation
fdiv.h f18, f23, f17, rmm # perform operation
fdiv.h f18, f23, f17, rne # perform operation
fdiv.h f18, f23, f17, rtz # perform operation
fdiv.h f18, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fdiv.h f23, f28, f26, dyn # perform operation
fdiv.h f23, f28, f26, rdn # perform operation
fdiv.h f23, f28, f26, rmm # perform operation
fdiv.h f23, f28, f26, rne # perform operation
fdiv.h f23, f28, f26, rtz # perform operation
fdiv.h f23, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fdiv.h f10, f11, f30, dyn # perform operation
fdiv.h f10, f11, f30, rdn # perform operation
fdiv.h f10, f11, f30, rmm # perform operation
fdiv.h f10, f11, f30, rne # perform operation
fdiv.h f10, f11, f30, rtz # perform operation
fdiv.h f10, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fdiv.h f8, f16, f17, dyn # perform operation
fdiv.h f8, f16, f17, rdn # perform operation
fdiv.h f8, f16, f17, rmm # perform operation
fdiv.h f8, f16, f17, rne # perform operation
fdiv.h f8, f16, f17, rtz # perform operation
fdiv.h f8, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fdiv.h f25, f22, f16, dyn # perform operation
fdiv.h f25, f22, f16, rdn # perform operation
fdiv.h f25, f22, f16, rmm # perform operation
fdiv.h f25, f22, f16, rne # perform operation
fdiv.h f25, f22, f16, rtz # perform operation
fdiv.h f25, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fdiv.h f23, f3, f13, dyn # perform operation
fdiv.h f23, f3, f13, rdn # perform operation
fdiv.h f23, f3, f13, rmm # perform operation
fdiv.h f23, f3, f13, rne # perform operation
fdiv.h f23, f3, f13, rtz # perform operation
fdiv.h f23, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f3, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fdiv.h f12, f3, f5, dyn # perform operation
fdiv.h f12, f3, f5, rdn # perform operation
fdiv.h f12, f3, f5, rmm # perform operation
fdiv.h f12, f3, f5, rne # perform operation
fdiv.h f12, f3, f5, rtz # perform operation
fdiv.h f12, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fdiv.h f25, f14, f26, dyn # perform operation
fdiv.h f25, f14, f26, rdn # perform operation
fdiv.h f25, f14, f26, rmm # perform operation
fdiv.h f25, f14, f26, rne # perform operation
fdiv.h f25, f14, f26, rtz # perform operation
fdiv.h f25, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fdiv.h f28, f12, f22, dyn # perform operation
fdiv.h f28, f12, f22, rdn # perform operation
fdiv.h f28, f12, f22, rmm # perform operation
fdiv.h f28, f12, f22, rne # perform operation
fdiv.h f28, f12, f22, rtz # perform operation
fdiv.h f28, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fdiv.h f17, f14, f13, dyn # perform operation
fdiv.h f17, f14, f13, rdn # perform operation
fdiv.h f17, f14, f13, rmm # perform operation
fdiv.h f17, f14, f13, rne # perform operation
fdiv.h f17, f14, f13, rtz # perform operation
fdiv.h f17, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
fdiv.h f8, f18, f21, dyn # perform operation
fdiv.h f8, f18, f21, rdn # perform operation
fdiv.h f8, f18, f21, rmm # perform operation
fdiv.h f8, f18, f21, rne # perform operation
fdiv.h f8, f18, f21, rtz # perform operation
fdiv.h f8, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fdiv.h f10, f22, f18, dyn # perform operation
fdiv.h f10, f22, f18, rdn # perform operation
fdiv.h f10, f22, f18, rmm # perform operation
fdiv.h f10, f22, f18, rne # perform operation
fdiv.h f10, f22, f18, rtz # perform operation
fdiv.h f10, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fdiv.h f28, f10, f22, dyn # perform operation
fdiv.h f28, f10, f22, rdn # perform operation
fdiv.h f28, f10, f22, rmm # perform operation
fdiv.h f28, f10, f22, rne # perform operation
fdiv.h f28, f10, f22, rtz # perform operation
fdiv.h f28, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.h f3, f10, f28, dyn # perform operation
fdiv.h f3, f10, f28, rdn # perform operation
fdiv.h f3, f10, f28, rmm # perform operation
fdiv.h f3, f10, f28, rne # perform operation
fdiv.h f3, f10, f28, rtz # perform operation
fdiv.h f3, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f10, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fdiv.h f17, f23, f28, dyn # perform operation
fdiv.h f17, f23, f28, rdn # perform operation
fdiv.h f17, f23, f28, rmm # perform operation
fdiv.h f17, f23, f28, rne # perform operation
fdiv.h f17, f23, f28, rtz # perform operation
fdiv.h f17, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f3, f26, f15, dyn # perform operation
fdiv.h f3, f26, f15, rdn # perform operation
fdiv.h f3, f26, f15, rmm # perform operation
fdiv.h f3, f26, f15, rne # perform operation
fdiv.h f3, f26, f15, rtz # perform operation
fdiv.h f3, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fdiv.h f22, f12, f6, dyn # perform operation
fdiv.h f22, f12, f6, rdn # perform operation
fdiv.h f22, f12, f6, rmm # perform operation
fdiv.h f22, f12, f6, rne # perform operation
fdiv.h f22, f12, f6, rtz # perform operation
fdiv.h f22, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f12, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fdiv.h f12, f22, f7, dyn # perform operation
fdiv.h f12, f22, f7, rdn # perform operation
fdiv.h f12, f22, f7, rmm # perform operation
fdiv.h f12, f22, f7, rne # perform operation
fdiv.h f12, f22, f7, rtz # perform operation
fdiv.h f12, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f23, f11, f2, dyn # perform operation
fdiv.h f23, f11, f2, rdn # perform operation
fdiv.h f23, f11, f2, rmm # perform operation
fdiv.h f23, f11, f2, rne # perform operation
fdiv.h f23, f11, f2, rtz # perform operation
fdiv.h f23, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fdiv.h f14, f27, f5, dyn # perform operation
fdiv.h f14, f27, f5, rdn # perform operation
fdiv.h f14, f27, f5, rmm # perform operation
fdiv.h f14, f27, f5, rne # perform operation
fdiv.h f14, f27, f5, rtz # perform operation
fdiv.h f14, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f27, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fdiv.h f17, f6, f16, dyn # perform operation
fdiv.h f17, f6, f16, rdn # perform operation
fdiv.h f17, f6, f16, rmm # perform operation
fdiv.h f17, f6, f16, rne # perform operation
fdiv.h f17, f6, f16, rtz # perform operation
fdiv.h f17, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f6, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fdiv.h f6, f16, f25, dyn # perform operation
fdiv.h f6, f16, f25, rdn # perform operation
fdiv.h f6, f16, f25, rmm # perform operation
fdiv.h f6, f16, f25, rne # perform operation
fdiv.h f6, f16, f25, rtz # perform operation
fdiv.h f6, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fdiv.h f26, f27, f15, dyn # perform operation
fdiv.h f26, f27, f15, rdn # perform operation
fdiv.h f26, f27, f15, rmm # perform operation
fdiv.h f26, f27, f15, rne # perform operation
fdiv.h f26, f27, f15, rtz # perform operation
fdiv.h f26, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fdiv.h f21, f1, f31, dyn # perform operation
fdiv.h f21, f1, f31, rdn # perform operation
fdiv.h f21, f1, f31, rmm # perform operation
fdiv.h f21, f1, f31, rne # perform operation
fdiv.h f21, f1, f31, rtz # perform operation
fdiv.h f21, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fdiv.h f13, f25, f31, dyn # perform operation
fdiv.h f13, f25, f31, rdn # perform operation
fdiv.h f13, f25, f31, rmm # perform operation
fdiv.h f13, f25, f31, rne # perform operation
fdiv.h f13, f25, f31, rtz # perform operation
fdiv.h f13, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f25, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fdiv.h f13, f27, f7, dyn # perform operation
fdiv.h f13, f27, f7, rdn # perform operation
fdiv.h f13, f27, f7, rmm # perform operation
fdiv.h f13, f27, f7, rne # perform operation
fdiv.h f13, f27, f7, rtz # perform operation
fdiv.h f13, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f27, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fdiv.h f8, f10, f20, dyn # perform operation
fdiv.h f8, f10, f20, rdn # perform operation
fdiv.h f8, f10, f20, rmm # perform operation
fdiv.h f8, f10, f20, rne # perform operation
fdiv.h f8, f10, f20, rtz # perform operation
fdiv.h f8, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fdiv.h f27, f22, f8, dyn # perform operation
fdiv.h f27, f22, f8, rdn # perform operation
fdiv.h f27, f22, f8, rmm # perform operation
fdiv.h f27, f22, f8, rne # perform operation
fdiv.h f27, f22, f8, rtz # perform operation
fdiv.h f27, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f22, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fdiv.h f16, f19, f30, dyn # perform operation
fdiv.h f16, f19, f30, rdn # perform operation
fdiv.h f16, f19, f30, rmm # perform operation
fdiv.h f16, f19, f30, rne # perform operation
fdiv.h f16, f19, f30, rtz # perform operation
fdiv.h f16, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.h f8, f20, f3, dyn # perform operation
fdiv.h f8, f20, f3, rdn # perform operation
fdiv.h f8, f20, f3, rmm # perform operation
fdiv.h f8, f20, f3, rne # perform operation
fdiv.h f8, f20, f3, rtz # perform operation
fdiv.h f8, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f20, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fdiv.h f28, f12, f11, dyn # perform operation
fdiv.h f28, f12, f11, rdn # perform operation
fdiv.h f28, f12, f11, rmm # perform operation
fdiv.h f28, f12, f11, rne # perform operation
fdiv.h f28, f12, f11, rtz # perform operation
fdiv.h f28, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fdiv.h f1, f21, f13, dyn # perform operation
fdiv.h f1, f21, f13, rdn # perform operation
fdiv.h f1, f21, f13, rmm # perform operation
fdiv.h f1, f21, f13, rne # perform operation
fdiv.h f1, f21, f13, rtz # perform operation
fdiv.h f1, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fdiv.h f23, f25, f3, dyn # perform operation
fdiv.h f23, f25, f3, rdn # perform operation
fdiv.h f23, f25, f3, rmm # perform operation
fdiv.h f23, f25, f3, rne # perform operation
fdiv.h f23, f25, f3, rtz # perform operation
fdiv.h f23, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f25, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fdiv.h f24, f30, f27, dyn # perform operation
fdiv.h f24, f30, f27, rdn # perform operation
fdiv.h f24, f30, f27, rmm # perform operation
fdiv.h f24, f30, f27, rne # perform operation
fdiv.h f24, f30, f27, rtz # perform operation
fdiv.h f24, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f30, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fdiv.h f31, f7, f2, dyn # perform operation
fdiv.h f31, f7, f2, rdn # perform operation
fdiv.h f31, f7, f2, rmm # perform operation
fdiv.h f31, f7, f2, rne # perform operation
fdiv.h f31, f7, f2, rtz # perform operation
fdiv.h f31, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f7, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fdiv.h f11, f15, f30, dyn # perform operation
fdiv.h f11, f15, f30, rdn # perform operation
fdiv.h f11, f15, f30, rmm # perform operation
fdiv.h f11, f15, f30, rne # perform operation
fdiv.h f11, f15, f30, rtz # perform operation
fdiv.h f11, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fdiv.h f24, f28, f17, dyn # perform operation
fdiv.h f24, f28, f17, rdn # perform operation
fdiv.h f24, f28, f17, rmm # perform operation
fdiv.h f24, f28, f17, rne # perform operation
fdiv.h f24, f28, f17, rtz # perform operation
fdiv.h f24, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fdiv.h f31, f2, f27, dyn # perform operation
fdiv.h f31, f2, f27, rdn # perform operation
fdiv.h f31, f2, f27, rmm # perform operation
fdiv.h f31, f2, f27, rne # perform operation
fdiv.h f31, f2, f27, rtz # perform operation
fdiv.h f31, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fdiv.h f10, f23, f6, dyn # perform operation
fdiv.h f10, f23, f6, rdn # perform operation
fdiv.h f10, f23, f6, rmm # perform operation
fdiv.h f10, f23, f6, rne # perform operation
fdiv.h f10, f23, f6, rtz # perform operation
fdiv.h f10, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fdiv.h f7, f19, f13, dyn # perform operation
fdiv.h f7, f19, f13, rdn # perform operation
fdiv.h f7, f19, f13, rmm # perform operation
fdiv.h f7, f19, f13, rne # perform operation
fdiv.h f7, f19, f13, rtz # perform operation
fdiv.h f7, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f19, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fdiv.h f28, f18, f6, dyn # perform operation
fdiv.h f28, f18, f6, rdn # perform operation
fdiv.h f28, f18, f6, rmm # perform operation
fdiv.h f28, f18, f6, rne # perform operation
fdiv.h f28, f18, f6, rtz # perform operation
fdiv.h f28, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f6 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x072f63ad # load x3 with value 0x072f63ad
sw x3, 0(x2) # store 0x072f63ad in memory
flh f9, 0(x2) # load 0x072f63ad from memory into f9
la x2, scratch
li x3, 0xb5d314a6 # load x3 with value 0xb5d314a6
sw x3, 0(x2) # store 0xb5d314a6 in memory
flh f28, 0(x2) # load 0xb5d314a6 from memory into f28
fdiv.h f30, f9, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x9000ac3b # load x3 with value 0x9000ac3b
sw x3, 0(x2) # store 0x9000ac3b in memory
flw f17, 0(x2) # load 0x9000ac3b from memory into f17
fdiv.h f20, f3, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f22, 0(x2) # load 0xfffe8000 from memory into f22
la x2, scratch
li x3, 0x262700b2 # load x3 with value 0x262700b2
sw x3, 0(x2) # store 0x262700b2 in memory
flw f27, 0(x2) # load 0x262700b2 from memory into f27
fdiv.h f14, f22, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f23, 0(x2) # load 0x7fff3c00 from memory into f23
la x2, scratch
li x3, 0x80bc274f # load x3 with value 0x80bc274f
sw x3, 0(x2) # store 0x80bc274f in memory
flw f3, 0(x2) # load 0x80bc274f from memory into f3
fdiv.h f17, f23, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f10, 0(x2) # load 0xbeefbc00 from memory into f10
la x2, scratch
li x3, 0x3c7aeac7 # load x3 with value 0x3c7aeac7
sw x3, 0(x2) # store 0x3c7aeac7 in memory
flw f22, 0(x2) # load 0x3c7aeac7 from memory into f22
fdiv.h f28, f10, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f21, 0(x2) # load 0xfeff0400 from memory into f21
la x2, scratch
li x3, 0x76d32804 # load x3 with value 0x76d32804
sw x3, 0(x2) # store 0x76d32804 in memory
flw f5, 0(x2) # load 0x76d32804 from memory into f5
fdiv.h f29, f21, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f16, 0(x2) # load 0x0fff8400 from memory into f16
la x2, scratch
li x3, 0x3faed3e4 # load x3 with value 0x3faed3e4
sw x3, 0(x2) # store 0x3faed3e4 in memory
flw f19, 0(x2) # load 0x3faed3e4 from memory into f19
fdiv.h f25, f16, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f16, 0(x2) # load 0xefff7bff from memory into f16
la x2, scratch
li x3, 0x58caf485 # load x3 with value 0x58caf485
sw x3, 0(x2) # store 0x58caf485 in memory
flw f3, 0(x2) # load 0x58caf485 from memory into f3
fdiv.h f9, f16, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f12, 0(x2) # load 0xc0defbff from memory into f12
la x2, scratch
li x3, 0xa4bbe9a7 # load x3 with value 0xa4bbe9a7
sw x3, 0(x2) # store 0xa4bbe9a7 in memory
flw f11, 0(x2) # load 0xa4bbe9a7 from memory into f11
fdiv.h f15, f12, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f24, 0(x2) # load 0x4f1a7c00 from memory into f24
la x2, scratch
li x3, 0x635dca11 # load x3 with value 0x635dca11
sw x3, 0(x2) # store 0x635dca11 in memory
flw f6, 0(x2) # load 0x635dca11 from memory into f6
fdiv.h f8, f24, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f14, 0(x2) # load 0x0ffffc00 from memory into f14
la x2, scratch
li x3, 0x49a0caed # load x3 with value 0x49a0caed
sw x3, 0(x2) # store 0x49a0caed in memory
flw f17, 0(x2) # load 0x49a0caed from memory into f17
fdiv.h f11, f14, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f31, 0(x2) # load 0xffef7e00 from memory into f31
la x2, scratch
li x3, 0x04ddd8bd # load x3 with value 0x04ddd8bd
sw x3, 0(x2) # store 0x04ddd8bd in memory
flw f28, 0(x2) # load 0x04ddd8bd from memory into f28
fdiv.h f23, f31, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f30, 0(x2) # load 0xfeef7fff from memory into f30
la x2, scratch
li x3, 0xd9ad4dce # load x3 with value 0xd9ad4dce
sw x3, 0(x2) # store 0xd9ad4dce in memory
flw f28, 0(x2) # load 0xd9ad4dce from memory into f28
fdiv.h f26, f30, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f24, 0(x2) # load 0xa1b27c01 from memory into f24
la x2, scratch
li x3, 0x48607ebe # load x3 with value 0x48607ebe
sw x3, 0(x2) # store 0x48607ebe in memory
flw f16, 0(x2) # load 0x48607ebe from memory into f16
fdiv.h f23, f24, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f26, 0(x2) # load 0x4fd77dff from memory into f26
la x2, scratch
li x3, 0x7acdb9f6 # load x3 with value 0x7acdb9f6
sw x3, 0(x2) # store 0x7acdb9f6 in memory
flw f9, 0(x2) # load 0x7acdb9f6 from memory into f9
fdiv.h f23, f26, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0xd8932d88 # load x3 with value 0xd8932d88
sw x3, 0(x2) # store 0xd8932d88 in memory
flw f26, 0(x2) # load 0xd8932d88 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f11, f26, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xeace8e55 # load x3 with value 0xeace8e55
sw x3, 0(x2) # store 0xeace8e55 in memory
flw f6, 0(x2) # load 0xeace8e55 from memory into f6
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f17, 0(x2) # load 0xfffe8000 from memory into f17
fdiv.h f29, f6, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x7ad55841 # load x3 with value 0x7ad55841
sw x3, 0(x2) # store 0x7ad55841 in memory
flw f3, 0(x2) # load 0x7ad55841 from memory into f3
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f1, 0(x2) # load 0x7fff3c00 from memory into f1
fdiv.h f18, f3, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xcc468096 # load x3 with value 0xcc468096
sw x3, 0(x2) # store 0xcc468096 in memory
flw f22, 0(x2) # load 0xcc468096 from memory into f22
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f21, 0(x2) # load 0xbeefbc00 from memory into f21
fdiv.h f9, f22, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0xdcefef9e # load x3 with value 0xdcefef9e
sw x3, 0(x2) # store 0xdcefef9e in memory
flw f7, 0(x2) # load 0xdcefef9e from memory into f7
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f15, 0(x2) # load 0xfeff0400 from memory into f15
fdiv.h f27, f7, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x505d2a73 # load x3 with value 0x505d2a73
sw x3, 0(x2) # store 0x505d2a73 in memory
flw f11, 0(x2) # load 0x505d2a73 from memory into f11
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f17, 0(x2) # load 0x0fff8400 from memory into f17
fdiv.h f3, f11, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xd169f76b # load x3 with value 0xd169f76b
sw x3, 0(x2) # store 0xd169f76b in memory
flw f29, 0(x2) # load 0xd169f76b from memory into f29
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f24, 0(x2) # load 0xefff7bff from memory into f24
fdiv.h f30, f29, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xb470f07f # load x3 with value 0xb470f07f
sw x3, 0(x2) # store 0xb470f07f in memory
flw f18, 0(x2) # load 0xb470f07f from memory into f18
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f21, 0(x2) # load 0xc0defbff from memory into f21
fdiv.h f26, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x01e7ba45 # load x3 with value 0x01e7ba45
sw x3, 0(x2) # store 0x01e7ba45 in memory
flw f26, 0(x2) # load 0x01e7ba45 from memory into f26
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f19, 0(x2) # load 0x4f1a7c00 from memory into f19
fdiv.h f28, f26, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0xcaa2ba68 # load x3 with value 0xcaa2ba68
sw x3, 0(x2) # store 0xcaa2ba68 in memory
flw f6, 0(x2) # load 0xcaa2ba68 from memory into f6
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f8, 0(x2) # load 0x0ffffc00 from memory into f8
fdiv.h f21, f6, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x60261956 # load x3 with value 0x60261956
sw x3, 0(x2) # store 0x60261956 in memory
flw f1, 0(x2) # load 0x60261956 from memory into f1
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f29, 0(x2) # load 0xffef7e00 from memory into f29
fdiv.h f10, f1, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0x40cd16fe # load x3 with value 0x40cd16fe
sw x3, 0(x2) # store 0x40cd16fe in memory
flw f31, 0(x2) # load 0x40cd16fe from memory into f31
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f5, 0(x2) # load 0xfeef7fff from memory into f5
fdiv.h f3, f31, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xed797972 # load x3 with value 0xed797972
sw x3, 0(x2) # store 0xed797972 in memory
flw f13, 0(x2) # load 0xed797972 from memory into f13
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f14, 0(x2) # load 0xa1b27c01 from memory into f14
fdiv.h f1, f13, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0xe0682936 # load x3 with value 0xe0682936
sw x3, 0(x2) # store 0xe0682936 in memory
flw f14, 0(x2) # load 0xe0682936 from memory into f14
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f15, 0(x2) # load 0x4fd77dff from memory into f15
fdiv.h f23, f14, f15 # perform operation

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
