///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fclass.h.S
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


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0xf747dae95ffca24a # load x3 with value 0xf747dae95ffca24a
sw x3, 0(x2) # store 0xf747dae95ffca24a in memory
flh f25, 0(x2) # load 0xf747dae95ffca24a from memory into f25
fclass.h x0, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x2212e04518a751da # load x3 with value 0x2212e04518a751da
sw x3, 0(x2) # store 0x2212e04518a751da in memory
flh f20, 0(x2) # load 0x2212e04518a751da from memory into f20
fclass.h x1, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x74a6264b92d38d87 # load x3 with value 0x74a6264b92d38d87
sw x3, 0(x2) # store 0x74a6264b92d38d87 in memory
flh f2, 0(x2) # load 0x74a6264b92d38d87 from memory into f2
fclass.h x2, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x9576fc2017c97267 # load x3 with value 0x9576fc2017c97267
sw x3, 0(x2) # store 0x9576fc2017c97267 in memory
flh f19, 0(x2) # load 0x9576fc2017c97267 from memory into f19
fclass.h x3, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x54234057a7c52283 # load x3 with value 0x54234057a7c52283
sw x3, 0(x2) # store 0x54234057a7c52283 in memory
flh f1, 0(x2) # load 0x54234057a7c52283 from memory into f1
fclass.h x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb915d50425c00f6d # load x3 with value 0xb915d50425c00f6d
sw x3, 0(x2) # store 0xb915d50425c00f6d in memory
flh f11, 0(x2) # load 0xb915d50425c00f6d from memory into f11
fclass.h x5, f11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3a62d20043d0547f # load x3 with value 0x3a62d20043d0547f
sw x3, 0(x2) # store 0x3a62d20043d0547f in memory
flh f3, 0(x2) # load 0x3a62d20043d0547f from memory into f3
fclass.h x6, f3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb3faf838724e8912 # load x3 with value 0xb3faf838724e8912
sw x3, 0(x2) # store 0xb3faf838724e8912 in memory
flh f29, 0(x2) # load 0xb3faf838724e8912 from memory into f29
fclass.h x7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xed82f672914c5a5f # load x3 with value 0xed82f672914c5a5f
sw x3, 0(x2) # store 0xed82f672914c5a5f in memory
flh f24, 0(x2) # load 0xed82f672914c5a5f from memory into f24
fclass.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xff53d35eef2d6665 # load x3 with value 0xff53d35eef2d6665
sw x3, 0(x2) # store 0xff53d35eef2d6665 in memory
flh f6, 0(x2) # load 0xff53d35eef2d6665 from memory into f6
fclass.h x9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x3ee896c751904fd5 # load x3 with value 0x3ee896c751904fd5
sw x3, 0(x2) # store 0x3ee896c751904fd5 in memory
flh f14, 0(x2) # load 0x3ee896c751904fd5 from memory into f14
fclass.h x10, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x9e8fd5d5bfbe56d9 # load x3 with value 0x9e8fd5d5bfbe56d9
sw x3, 0(x2) # store 0x9e8fd5d5bfbe56d9 in memory
flh f5, 0(x2) # load 0x9e8fd5d5bfbe56d9 from memory into f5
fclass.h x11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x3293247620755047 # load x3 with value 0x3293247620755047
sw x3, 0(x2) # store 0x3293247620755047 in memory
flh f12, 0(x2) # load 0x3293247620755047 from memory into f12
fclass.h x12, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x2d457de0b188bd21 # load x3 with value 0x2d457de0b188bd21
sw x3, 0(x2) # store 0x2d457de0b188bd21 in memory
flh f10, 0(x2) # load 0x2d457de0b188bd21 from memory into f10
fclass.h x13, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xc980d4b83e73b05c # load x3 with value 0xc980d4b83e73b05c
sw x3, 0(x2) # store 0xc980d4b83e73b05c in memory
flh f3, 0(x2) # load 0xc980d4b83e73b05c from memory into f3
fclass.h x14, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x30d84fd2426a191c # load x3 with value 0x30d84fd2426a191c
sw x3, 0(x2) # store 0x30d84fd2426a191c in memory
flh f11, 0(x2) # load 0x30d84fd2426a191c from memory into f11
fclass.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x5aa0086904405e4c # load x3 with value 0x5aa0086904405e4c
sw x3, 0(x2) # store 0x5aa0086904405e4c in memory
flh f6, 0(x2) # load 0x5aa0086904405e4c from memory into f6
fclass.h x16, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x6e07eba8abd37bfa # load x3 with value 0x6e07eba8abd37bfa
sw x3, 0(x2) # store 0x6e07eba8abd37bfa in memory
flh f10, 0(x2) # load 0x6e07eba8abd37bfa from memory into f10
fclass.h x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x8d52335eff806a56 # load x3 with value 0x8d52335eff806a56
sw x3, 0(x2) # store 0x8d52335eff806a56 in memory
flh f17, 0(x2) # load 0x8d52335eff806a56 from memory into f17
fclass.h x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xe97f656bb9c470b4 # load x3 with value 0xe97f656bb9c470b4
sw x3, 0(x2) # store 0xe97f656bb9c470b4 in memory
flh f1, 0(x2) # load 0xe97f656bb9c470b4 from memory into f1
fclass.h x19, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x1666a7170a870f60 # load x3 with value 0x1666a7170a870f60
sw x3, 0(x2) # store 0x1666a7170a870f60 in memory
flh f9, 0(x2) # load 0x1666a7170a870f60 from memory into f9
fclass.h x20, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xaf413b7041b2a509 # load x3 with value 0xaf413b7041b2a509
sw x3, 0(x2) # store 0xaf413b7041b2a509 in memory
flh f13, 0(x2) # load 0xaf413b7041b2a509 from memory into f13
fclass.h x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xbf299fb8dc04f672 # load x3 with value 0xbf299fb8dc04f672
sw x3, 0(x2) # store 0xbf299fb8dc04f672 in memory
flh f7, 0(x2) # load 0xbf299fb8dc04f672 from memory into f7
fclass.h x22, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x3428e343a77ff082 # load x3 with value 0x3428e343a77ff082
sw x3, 0(x2) # store 0x3428e343a77ff082 in memory
flh f25, 0(x2) # load 0x3428e343a77ff082 from memory into f25
fclass.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xaf4d27991e15064e # load x3 with value 0xaf4d27991e15064e
sw x3, 0(x2) # store 0xaf4d27991e15064e in memory
flh f10, 0(x2) # load 0xaf4d27991e15064e from memory into f10
fclass.h x24, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xd8e723e05582b82d # load x3 with value 0xd8e723e05582b82d
sw x3, 0(x2) # store 0xd8e723e05582b82d in memory
flh f27, 0(x2) # load 0xd8e723e05582b82d from memory into f27
fclass.h x25, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xb15cd2f9add249a4 # load x3 with value 0xb15cd2f9add249a4
sw x3, 0(x2) # store 0xb15cd2f9add249a4 in memory
flh f6, 0(x2) # load 0xb15cd2f9add249a4 from memory into f6
fclass.h x26, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x79cfe6d6e5a75dcc # load x3 with value 0x79cfe6d6e5a75dcc
sw x3, 0(x2) # store 0x79cfe6d6e5a75dcc in memory
flh f15, 0(x2) # load 0x79cfe6d6e5a75dcc from memory into f15
fclass.h x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xdd9fb21c846e7c1b # load x3 with value 0xdd9fb21c846e7c1b
sw x3, 0(x2) # store 0xdd9fb21c846e7c1b in memory
flh f1, 0(x2) # load 0xdd9fb21c846e7c1b from memory into f1
fclass.h x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x153ca536671c21d0 # load x3 with value 0x153ca536671c21d0
sw x3, 0(x2) # store 0x153ca536671c21d0 in memory
flh f21, 0(x2) # load 0x153ca536671c21d0 from memory into f21
fclass.h x29, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x755464de28281e0b # load x3 with value 0x755464de28281e0b
sw x3, 0(x2) # store 0x755464de28281e0b in memory
flh f23, 0(x2) # load 0x755464de28281e0b from memory into f23
fclass.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xd0d1e19a5a5c6e66 # load x3 with value 0xd0d1e19a5a5c6e66
sw x3, 0(x2) # store 0xd0d1e19a5a5c6e66 in memory
flh f19, 0(x2) # load 0xd0d1e19a5a5c6e66 from memory into f19
fclass.h x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x9, x11 # perform first operation
fclass.h x2, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x24, x22 # perform first operation
fclass.h x11, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x25, x11 # perform first operation
fclass.h x14, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f7, f28, f16 # perform first operation
fclass.h x7, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x26, x17 # perform first operation
fclass.h x1, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x6, x19 # perform first operation
fclass.h x9, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x29, x8 # perform first operation
fclass.h x27, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x17, x2 # perform first operation
fclass.h x7, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x19, x25 # perform first operation
fclass.h x12, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x6, x3 # perform first operation
fclass.h x21, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x27, x11 # perform first operation
fclass.h x9, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x2, x10 # perform first operation
fclass.h x15, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x24, x7 # perform first operation
fclass.h x24, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x25, x11 # perform first operation
fclass.h x11, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x25, x9 # perform first operation
fclass.h x14, f6 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x66a33183bb191cdd # load x3 with value 0x66a33183bb191cdd
sw x3, 0(x2) # store 0x66a33183bb191cdd in memory
flh f0, 0(x2) # load 0x66a33183bb191cdd from memory into f0
fclass.h x12, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xecc94a8855d21382 # load x3 with value 0xecc94a8855d21382
sw x3, 0(x2) # store 0xecc94a8855d21382 in memory
flh f1, 0(x2) # load 0xecc94a8855d21382 from memory into f1
fclass.h x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xf756b7477e7afa35 # load x3 with value 0xf756b7477e7afa35
sw x3, 0(x2) # store 0xf756b7477e7afa35 in memory
flh f2, 0(x2) # load 0xf756b7477e7afa35 from memory into f2
fclass.h x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x7c286dc744d66aaa # load x3 with value 0x7c286dc744d66aaa
sw x3, 0(x2) # store 0x7c286dc744d66aaa in memory
flh f3, 0(x2) # load 0x7c286dc744d66aaa from memory into f3
fclass.h x20, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x58c13e9c679c2be8 # load x3 with value 0x58c13e9c679c2be8
sw x3, 0(x2) # store 0x58c13e9c679c2be8 in memory
flh f4, 0(x2) # load 0x58c13e9c679c2be8 from memory into f4
fclass.h x8, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4241f698538c7d42 # load x3 with value 0x4241f698538c7d42
sw x3, 0(x2) # store 0x4241f698538c7d42 in memory
flh f5, 0(x2) # load 0x4241f698538c7d42 from memory into f5
fclass.h x2, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x122e3c3e558a1454 # load x3 with value 0x122e3c3e558a1454
sw x3, 0(x2) # store 0x122e3c3e558a1454 in memory
flh f6, 0(x2) # load 0x122e3c3e558a1454 from memory into f6
fclass.h x11, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcf861205f119c75e # load x3 with value 0xcf861205f119c75e
sw x3, 0(x2) # store 0xcf861205f119c75e in memory
flh f7, 0(x2) # load 0xcf861205f119c75e from memory into f7
fclass.h x1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xe00ffbb483b0fa09 # load x3 with value 0xe00ffbb483b0fa09
sw x3, 0(x2) # store 0xe00ffbb483b0fa09 in memory
flh f8, 0(x2) # load 0xe00ffbb483b0fa09 from memory into f8
fclass.h x16, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x882f1ecd44a31d47 # load x3 with value 0x882f1ecd44a31d47
sw x3, 0(x2) # store 0x882f1ecd44a31d47 in memory
flh f9, 0(x2) # load 0x882f1ecd44a31d47 from memory into f9
fclass.h x20, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x50ae9f7a4fe4c3ec # load x3 with value 0x50ae9f7a4fe4c3ec
sw x3, 0(x2) # store 0x50ae9f7a4fe4c3ec in memory
flh f10, 0(x2) # load 0x50ae9f7a4fe4c3ec from memory into f10
fclass.h x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x37cb04d5c440782d # load x3 with value 0x37cb04d5c440782d
sw x3, 0(x2) # store 0x37cb04d5c440782d in memory
flh f11, 0(x2) # load 0x37cb04d5c440782d from memory into f11
fclass.h x16, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x852243c84d96975d # load x3 with value 0x852243c84d96975d
sw x3, 0(x2) # store 0x852243c84d96975d in memory
flh f12, 0(x2) # load 0x852243c84d96975d from memory into f12
fclass.h x20, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x55ec6091613be397 # load x3 with value 0x55ec6091613be397
sw x3, 0(x2) # store 0x55ec6091613be397 in memory
flh f13, 0(x2) # load 0x55ec6091613be397 from memory into f13
fclass.h x26, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x7b42842a720d2a2f # load x3 with value 0x7b42842a720d2a2f
sw x3, 0(x2) # store 0x7b42842a720d2a2f in memory
flh f14, 0(x2) # load 0x7b42842a720d2a2f from memory into f14
fclass.h x1, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x3ab4cdc753cc21ab # load x3 with value 0x3ab4cdc753cc21ab
sw x3, 0(x2) # store 0x3ab4cdc753cc21ab in memory
flh f15, 0(x2) # load 0x3ab4cdc753cc21ab from memory into f15
fclass.h x10, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x6eb25b4506829db3 # load x3 with value 0x6eb25b4506829db3
sw x3, 0(x2) # store 0x6eb25b4506829db3 in memory
flh f16, 0(x2) # load 0x6eb25b4506829db3 from memory into f16
fclass.h x11, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x2d886b6e1dea9c53 # load x3 with value 0x2d886b6e1dea9c53
sw x3, 0(x2) # store 0x2d886b6e1dea9c53 in memory
flh f17, 0(x2) # load 0x2d886b6e1dea9c53 from memory into f17
fclass.h x10, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x66221dcf23988d63 # load x3 with value 0x66221dcf23988d63
sw x3, 0(x2) # store 0x66221dcf23988d63 in memory
flh f18, 0(x2) # load 0x66221dcf23988d63 from memory into f18
fclass.h x24, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x1676456cf675fcd5 # load x3 with value 0x1676456cf675fcd5
sw x3, 0(x2) # store 0x1676456cf675fcd5 in memory
flh f19, 0(x2) # load 0x1676456cf675fcd5 from memory into f19
fclass.h x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x2582b5ff47f3cffa # load x3 with value 0x2582b5ff47f3cffa
sw x3, 0(x2) # store 0x2582b5ff47f3cffa in memory
flh f20, 0(x2) # load 0x2582b5ff47f3cffa from memory into f20
fclass.h x15, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x167c0535f2ee4036 # load x3 with value 0x167c0535f2ee4036
sw x3, 0(x2) # store 0x167c0535f2ee4036 in memory
flh f21, 0(x2) # load 0x167c0535f2ee4036 from memory into f21
fclass.h x22, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x434d7257b3093ef3 # load x3 with value 0x434d7257b3093ef3
sw x3, 0(x2) # store 0x434d7257b3093ef3 in memory
flh f22, 0(x2) # load 0x434d7257b3093ef3 from memory into f22
fclass.h x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xfb651d1db4aacb55 # load x3 with value 0xfb651d1db4aacb55
sw x3, 0(x2) # store 0xfb651d1db4aacb55 in memory
flh f23, 0(x2) # load 0xfb651d1db4aacb55 from memory into f23
fclass.h x30, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xf72bbc7955ec33d0 # load x3 with value 0xf72bbc7955ec33d0
sw x3, 0(x2) # store 0xf72bbc7955ec33d0 in memory
flh f24, 0(x2) # load 0xf72bbc7955ec33d0 from memory into f24
fclass.h x6, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xabce4cc28c03553e # load x3 with value 0xabce4cc28c03553e
sw x3, 0(x2) # store 0xabce4cc28c03553e in memory
flh f25, 0(x2) # load 0xabce4cc28c03553e from memory into f25
fclass.h x19, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x346146a33ddbb948 # load x3 with value 0x346146a33ddbb948
sw x3, 0(x2) # store 0x346146a33ddbb948 in memory
flh f26, 0(x2) # load 0x346146a33ddbb948 from memory into f26
fclass.h x16, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x4f44f53cebe349ba # load x3 with value 0x4f44f53cebe349ba
sw x3, 0(x2) # store 0x4f44f53cebe349ba in memory
flh f27, 0(x2) # load 0x4f44f53cebe349ba from memory into f27
fclass.h x29, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xc16a8d540076c97 # load x3 with value 0xc16a8d540076c97
sw x3, 0(x2) # store 0xc16a8d540076c97 in memory
flh f28, 0(x2) # load 0xc16a8d540076c97 from memory into f28
fclass.h x25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x7a6f600e67a353d8 # load x3 with value 0x7a6f600e67a353d8
sw x3, 0(x2) # store 0x7a6f600e67a353d8 in memory
flh f29, 0(x2) # load 0x7a6f600e67a353d8 from memory into f29
fclass.h x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xaa10d583b4f9f4ff # load x3 with value 0xaa10d583b4f9f4ff
sw x3, 0(x2) # store 0xaa10d583b4f9f4ff in memory
flh f30, 0(x2) # load 0xaa10d583b4f9f4ff from memory into f30
fclass.h x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xa75e3afab3a34bed # load x3 with value 0xa75e3afab3a34bed
sw x3, 0(x2) # store 0xa75e3afab3a34bed in memory
flh f31, 0(x2) # load 0xa75e3afab3a34bed from memory into f31
fclass.h x21, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fclass.h x23, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fclass.h x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fclass.h x1, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fclass.h x1, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fclass.h x27, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fclass.h x21, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fclass.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fclass.h x25, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fclass.h x21, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fclass.h x12, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fclass.h x9, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fclass.h x9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fclass.h x24, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fclass.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fclass.h x22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fclass.h x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fclass.h x6, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fclass.h x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fclass.h x26, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fclass.h x10, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fclass.h x20, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fclass.h x31, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fclass.h x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fclass.h x18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fclass.h x31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fclass.h x23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fclass.h x2, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fclass.h x27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase Improper NaNBoxed argument test (Value 0x0 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fclass.h x25, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f16, 0(x2) # load 0xfffe8000 from memory into f16
fclass.h x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f26, 0(x2) # load 0x7fff3c00 from memory into f26
fclass.h x22, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f3, 0(x2) # load 0xbeefbc00 from memory into f3
fclass.h x25, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 760)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f18, 0(x2) # load 0xfeff0400 from memory into f18
fclass.h x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f17, 0(x2) # load 0x0fff8400 from memory into f17
fclass.h x22, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f16, 0(x2) # load 0xefff7bff from memory into f16
fclass.h x21, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f25, 0(x2) # load 0xc0defbff from memory into f25
fclass.h x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f3, 0(x2) # load 0x4f1a7c00 from memory into f3
fclass.h x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f29, 0(x2) # load 0x0ffffc00 from memory into f29
fclass.h x2, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f9, 0(x2) # load 0xffef7e00 from memory into f9
fclass.h x2, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f6, 0(x2) # load 0xfeef7fff from memory into f6
fclass.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f27, 0(x2) # load 0xa1b27c01 from memory into f27
fclass.h x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f21, 0(x2) # load 0x4fd77dff from memory into f21
fclass.h x29, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

.EQU SIGSIZE,848


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
