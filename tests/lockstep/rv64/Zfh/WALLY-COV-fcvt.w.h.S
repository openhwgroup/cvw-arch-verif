///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fcvt.w.h.S
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
li x3, 0x693ceef1a2bf1d5f # load x3 with value 0x693ceef1a2bf1d5f
sw x3, 0(x2) # store 0x693ceef1a2bf1d5f in memory
flh f14, 0(x2) # load 0x693ceef1a2bf1d5f from memory into f14
fcvt.w.h x0, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xa40ba43b1fcf6966 # load x3 with value 0xa40ba43b1fcf6966
sw x3, 0(x2) # store 0xa40ba43b1fcf6966 in memory
flh f1, 0(x2) # load 0xa40ba43b1fcf6966 from memory into f1
fcvt.w.h x1, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xb8fdcdac692b8039 # load x3 with value 0xb8fdcdac692b8039
sw x3, 0(x2) # store 0xb8fdcdac692b8039 in memory
flh f28, 0(x2) # load 0xb8fdcdac692b8039 from memory into f28
fcvt.w.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x36540730ce02481f # load x3 with value 0x36540730ce02481f
sw x3, 0(x2) # store 0x36540730ce02481f in memory
flh f22, 0(x2) # load 0x36540730ce02481f from memory into f22
fcvt.w.h x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd15c255be2518ed1 # load x3 with value 0xd15c255be2518ed1
sw x3, 0(x2) # store 0xd15c255be2518ed1 in memory
flh f6, 0(x2) # load 0xd15c255be2518ed1 from memory into f6
fcvt.w.h x4, f6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf7d86edaa951d62c # load x3 with value 0xf7d86edaa951d62c
sw x3, 0(x2) # store 0xf7d86edaa951d62c in memory
flh f28, 0(x2) # load 0xf7d86edaa951d62c from memory into f28
fcvt.w.h x5, f28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x40058b75365527ea # load x3 with value 0x40058b75365527ea
sw x3, 0(x2) # store 0x40058b75365527ea in memory
flh f27, 0(x2) # load 0x40058b75365527ea from memory into f27
fcvt.w.h x6, f27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x18e31db2bbe182dc # load x3 with value 0x18e31db2bbe182dc
sw x3, 0(x2) # store 0x18e31db2bbe182dc in memory
flh f6, 0(x2) # load 0x18e31db2bbe182dc from memory into f6
fcvt.w.h x7, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x798838d19fe6428 # load x3 with value 0x798838d19fe6428
sw x3, 0(x2) # store 0x798838d19fe6428 in memory
flh f24, 0(x2) # load 0x798838d19fe6428 from memory into f24
fcvt.w.h x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x89f3c61be47b1d95 # load x3 with value 0x89f3c61be47b1d95
sw x3, 0(x2) # store 0x89f3c61be47b1d95 in memory
flh f18, 0(x2) # load 0x89f3c61be47b1d95 from memory into f18
fcvt.w.h x9, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x301bd57d444abe55 # load x3 with value 0x301bd57d444abe55
sw x3, 0(x2) # store 0x301bd57d444abe55 in memory
flh f3, 0(x2) # load 0x301bd57d444abe55 from memory into f3
fcvt.w.h x10, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x41405b4a8afba52a # load x3 with value 0x41405b4a8afba52a
sw x3, 0(x2) # store 0x41405b4a8afba52a in memory
flh f16, 0(x2) # load 0x41405b4a8afba52a from memory into f16
fcvt.w.h x11, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xb9ee8327f74bd20a # load x3 with value 0xb9ee8327f74bd20a
sw x3, 0(x2) # store 0xb9ee8327f74bd20a in memory
flh f16, 0(x2) # load 0xb9ee8327f74bd20a from memory into f16
fcvt.w.h x12, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xc8a0d10d62c791f6 # load x3 with value 0xc8a0d10d62c791f6
sw x3, 0(x2) # store 0xc8a0d10d62c791f6 in memory
flh f13, 0(x2) # load 0xc8a0d10d62c791f6 from memory into f13
fcvt.w.h x13, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x893104da332c276c # load x3 with value 0x893104da332c276c
sw x3, 0(x2) # store 0x893104da332c276c in memory
flh f6, 0(x2) # load 0x893104da332c276c from memory into f6
fcvt.w.h x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x9c531fe22d3752c5 # load x3 with value 0x9c531fe22d3752c5
sw x3, 0(x2) # store 0x9c531fe22d3752c5 in memory
flh f18, 0(x2) # load 0x9c531fe22d3752c5 from memory into f18
fcvt.w.h x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x2e63408a7c7ca1af # load x3 with value 0x2e63408a7c7ca1af
sw x3, 0(x2) # store 0x2e63408a7c7ca1af in memory
flh f29, 0(x2) # load 0x2e63408a7c7ca1af from memory into f29
fcvt.w.h x16, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xe53d5495379b01d2 # load x3 with value 0xe53d5495379b01d2
sw x3, 0(x2) # store 0xe53d5495379b01d2 in memory
flh f12, 0(x2) # load 0xe53d5495379b01d2 from memory into f12
fcvt.w.h x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xa2c1b5e3d7841a56 # load x3 with value 0xa2c1b5e3d7841a56
sw x3, 0(x2) # store 0xa2c1b5e3d7841a56 in memory
flh f27, 0(x2) # load 0xa2c1b5e3d7841a56 from memory into f27
fcvt.w.h x18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x98e4ab252312a240 # load x3 with value 0x98e4ab252312a240
sw x3, 0(x2) # store 0x98e4ab252312a240 in memory
flh f8, 0(x2) # load 0x98e4ab252312a240 from memory into f8
fcvt.w.h x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xd283330bb3cfe281 # load x3 with value 0xd283330bb3cfe281
sw x3, 0(x2) # store 0xd283330bb3cfe281 in memory
flh f26, 0(x2) # load 0xd283330bb3cfe281 from memory into f26
fcvt.w.h x20, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x7e88be29bcc9ede1 # load x3 with value 0x7e88be29bcc9ede1
sw x3, 0(x2) # store 0x7e88be29bcc9ede1 in memory
flh f30, 0(x2) # load 0x7e88be29bcc9ede1 from memory into f30
fcvt.w.h x21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x721877145f979599 # load x3 with value 0x721877145f979599
sw x3, 0(x2) # store 0x721877145f979599 in memory
flh f30, 0(x2) # load 0x721877145f979599 from memory into f30
fcvt.w.h x22, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xae5e487c1134985b # load x3 with value 0xae5e487c1134985b
sw x3, 0(x2) # store 0xae5e487c1134985b in memory
flh f23, 0(x2) # load 0xae5e487c1134985b from memory into f23
fcvt.w.h x23, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xe85b5a86a5a576c6 # load x3 with value 0xe85b5a86a5a576c6
sw x3, 0(x2) # store 0xe85b5a86a5a576c6 in memory
flh f20, 0(x2) # load 0xe85b5a86a5a576c6 from memory into f20
fcvt.w.h x24, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x466a020d47afbd89 # load x3 with value 0x466a020d47afbd89
sw x3, 0(x2) # store 0x466a020d47afbd89 in memory
flh f17, 0(x2) # load 0x466a020d47afbd89 from memory into f17
fcvt.w.h x25, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xf370248097b63c9b # load x3 with value 0xf370248097b63c9b
sw x3, 0(x2) # store 0xf370248097b63c9b in memory
flh f10, 0(x2) # load 0xf370248097b63c9b from memory into f10
fcvt.w.h x26, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x227a35ddd2f5798 # load x3 with value 0x227a35ddd2f5798
sw x3, 0(x2) # store 0x227a35ddd2f5798 in memory
flh f8, 0(x2) # load 0x227a35ddd2f5798 from memory into f8
fcvt.w.h x27, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x451c8171e132efcb # load x3 with value 0x451c8171e132efcb
sw x3, 0(x2) # store 0x451c8171e132efcb in memory
flh f6, 0(x2) # load 0x451c8171e132efcb from memory into f6
fcvt.w.h x28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x61f9f8aa25a20bd8 # load x3 with value 0x61f9f8aa25a20bd8
sw x3, 0(x2) # store 0x61f9f8aa25a20bd8 in memory
flh f7, 0(x2) # load 0x61f9f8aa25a20bd8 from memory into f7
fcvt.w.h x29, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x9b712c124d2b6306 # load x3 with value 0x9b712c124d2b6306
sw x3, 0(x2) # store 0x9b712c124d2b6306 in memory
flh f8, 0(x2) # load 0x9b712c124d2b6306 from memory into f8
fcvt.w.h x30, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xf88be9a644270d4e # load x3 with value 0xf88be9a644270d4e
sw x3, 0(x2) # store 0xf88be9a644270d4e in memory
flh f7, 0(x2) # load 0xf88be9a644270d4e from memory into f7
fcvt.w.h x31, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x5, x20 # perform first operation
fcvt.w.h x8, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x3, x17 # perform first operation
fcvt.w.h x7, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x19, x12 # perform first operation
fcvt.w.h x21, f13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f24, f6, f23 # perform first operation
fcvt.w.h x23, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x14, x11 # perform first operation
fcvt.w.h x21, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x26, x1 # perform first operation
fcvt.w.h x28, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x30, x19 # perform first operation
fcvt.w.h x12, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x18, x30 # perform first operation
fcvt.w.h x11, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x7, x12 # perform first operation
fcvt.w.h x25, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x15, x24 # perform first operation
fcvt.w.h x3, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x31, x30 # perform first operation
fcvt.w.h x18, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x11, x20 # perform first operation
fcvt.w.h x28, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x20, x3 # perform first operation
fcvt.w.h x20, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x31, x16 # perform first operation
fcvt.w.h x16, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x3, x20 # perform first operation
fcvt.w.h x5, f10 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xb91bbde89aa5db60 # load x3 with value 0xb91bbde89aa5db60
sw x3, 0(x2) # store 0xb91bbde89aa5db60 in memory
flh f0, 0(x2) # load 0xb91bbde89aa5db60 from memory into f0
fcvt.w.h x2, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x668e6f9ea2ece7c # load x3 with value 0x668e6f9ea2ece7c
sw x3, 0(x2) # store 0x668e6f9ea2ece7c in memory
flh f1, 0(x2) # load 0x668e6f9ea2ece7c from memory into f1
fcvt.w.h x23, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x261fa30e53d4dd03 # load x3 with value 0x261fa30e53d4dd03
sw x3, 0(x2) # store 0x261fa30e53d4dd03 in memory
flh f2, 0(x2) # load 0x261fa30e53d4dd03 from memory into f2
fcvt.w.h x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x2b6f9053f6795ef0 # load x3 with value 0x2b6f9053f6795ef0
sw x3, 0(x2) # store 0x2b6f9053f6795ef0 in memory
flh f3, 0(x2) # load 0x2b6f9053f6795ef0 from memory into f3
fcvt.w.h x5, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8eab52c3a0c98f7a # load x3 with value 0x8eab52c3a0c98f7a
sw x3, 0(x2) # store 0x8eab52c3a0c98f7a in memory
flh f4, 0(x2) # load 0x8eab52c3a0c98f7a from memory into f4
fcvt.w.h x20, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x825498fc8aab56ac # load x3 with value 0x825498fc8aab56ac
sw x3, 0(x2) # store 0x825498fc8aab56ac in memory
flh f5, 0(x2) # load 0x825498fc8aab56ac from memory into f5
fcvt.w.h x27, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x22b7b3512443faee # load x3 with value 0x22b7b3512443faee
sw x3, 0(x2) # store 0x22b7b3512443faee in memory
flh f6, 0(x2) # load 0x22b7b3512443faee from memory into f6
fcvt.w.h x8, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfc733d5131ece22d # load x3 with value 0xfc733d5131ece22d
sw x3, 0(x2) # store 0xfc733d5131ece22d in memory
flh f7, 0(x2) # load 0xfc733d5131ece22d from memory into f7
fcvt.w.h x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xd9cce04ed69558d6 # load x3 with value 0xd9cce04ed69558d6
sw x3, 0(x2) # store 0xd9cce04ed69558d6 in memory
flh f8, 0(x2) # load 0xd9cce04ed69558d6 from memory into f8
fcvt.w.h x3, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x34dfa88ade7e38e7 # load x3 with value 0x34dfa88ade7e38e7
sw x3, 0(x2) # store 0x34dfa88ade7e38e7 in memory
flh f9, 0(x2) # load 0x34dfa88ade7e38e7 from memory into f9
fcvt.w.h x19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x393d5bc715a9ccb9 # load x3 with value 0x393d5bc715a9ccb9
sw x3, 0(x2) # store 0x393d5bc715a9ccb9 in memory
flh f10, 0(x2) # load 0x393d5bc715a9ccb9 from memory into f10
fcvt.w.h x6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x93cee03de4fceb15 # load x3 with value 0x93cee03de4fceb15
sw x3, 0(x2) # store 0x93cee03de4fceb15 in memory
flh f11, 0(x2) # load 0x93cee03de4fceb15 from memory into f11
fcvt.w.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x9484f86327df13a # load x3 with value 0x9484f86327df13a
sw x3, 0(x2) # store 0x9484f86327df13a in memory
flh f12, 0(x2) # load 0x9484f86327df13a from memory into f12
fcvt.w.h x27, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xdf2a464c49c9d441 # load x3 with value 0xdf2a464c49c9d441
sw x3, 0(x2) # store 0xdf2a464c49c9d441 in memory
flh f13, 0(x2) # load 0xdf2a464c49c9d441 from memory into f13
fcvt.w.h x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x4185ff9637757fb4 # load x3 with value 0x4185ff9637757fb4
sw x3, 0(x2) # store 0x4185ff9637757fb4 in memory
flh f14, 0(x2) # load 0x4185ff9637757fb4 from memory into f14
fcvt.w.h x23, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xa103183bee0eab51 # load x3 with value 0xa103183bee0eab51
sw x3, 0(x2) # store 0xa103183bee0eab51 in memory
flh f15, 0(x2) # load 0xa103183bee0eab51 from memory into f15
fcvt.w.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x245da2c9b70ad50c # load x3 with value 0x245da2c9b70ad50c
sw x3, 0(x2) # store 0x245da2c9b70ad50c in memory
flh f16, 0(x2) # load 0x245da2c9b70ad50c from memory into f16
fcvt.w.h x31, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xc9c02fd68e7c2ba9 # load x3 with value 0xc9c02fd68e7c2ba9
sw x3, 0(x2) # store 0xc9c02fd68e7c2ba9 in memory
flh f17, 0(x2) # load 0xc9c02fd68e7c2ba9 from memory into f17
fcvt.w.h x31, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x8ef667f9800da4a1 # load x3 with value 0x8ef667f9800da4a1
sw x3, 0(x2) # store 0x8ef667f9800da4a1 in memory
flh f18, 0(x2) # load 0x8ef667f9800da4a1 from memory into f18
fcvt.w.h x9, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xd742cebe3a632490 # load x3 with value 0xd742cebe3a632490
sw x3, 0(x2) # store 0xd742cebe3a632490 in memory
flh f19, 0(x2) # load 0xd742cebe3a632490 from memory into f19
fcvt.w.h x14, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x8bbd8e7e183d624a # load x3 with value 0x8bbd8e7e183d624a
sw x3, 0(x2) # store 0x8bbd8e7e183d624a in memory
flh f20, 0(x2) # load 0x8bbd8e7e183d624a from memory into f20
fcvt.w.h x12, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xb86b7ac73470f6c2 # load x3 with value 0xb86b7ac73470f6c2
sw x3, 0(x2) # store 0xb86b7ac73470f6c2 in memory
flh f21, 0(x2) # load 0xb86b7ac73470f6c2 from memory into f21
fcvt.w.h x21, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xcfd956645b80bbf # load x3 with value 0xcfd956645b80bbf
sw x3, 0(x2) # store 0xcfd956645b80bbf in memory
flh f22, 0(x2) # load 0xcfd956645b80bbf from memory into f22
fcvt.w.h x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x61fb6a5f939c48f0 # load x3 with value 0x61fb6a5f939c48f0
sw x3, 0(x2) # store 0x61fb6a5f939c48f0 in memory
flh f23, 0(x2) # load 0x61fb6a5f939c48f0 from memory into f23
fcvt.w.h x23, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xcc009103a8b9e89d # load x3 with value 0xcc009103a8b9e89d
sw x3, 0(x2) # store 0xcc009103a8b9e89d in memory
flh f24, 0(x2) # load 0xcc009103a8b9e89d from memory into f24
fcvt.w.h x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x997f51cfeecb3910 # load x3 with value 0x997f51cfeecb3910
sw x3, 0(x2) # store 0x997f51cfeecb3910 in memory
flh f25, 0(x2) # load 0x997f51cfeecb3910 from memory into f25
fcvt.w.h x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x59d985f7830ef05c # load x3 with value 0x59d985f7830ef05c
sw x3, 0(x2) # store 0x59d985f7830ef05c in memory
flh f26, 0(x2) # load 0x59d985f7830ef05c from memory into f26
fcvt.w.h x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x5e738e8b52e22790 # load x3 with value 0x5e738e8b52e22790
sw x3, 0(x2) # store 0x5e738e8b52e22790 in memory
flh f27, 0(x2) # load 0x5e738e8b52e22790 from memory into f27
fcvt.w.h x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xfcfe421ec961569a # load x3 with value 0xfcfe421ec961569a
sw x3, 0(x2) # store 0xfcfe421ec961569a in memory
flh f28, 0(x2) # load 0xfcfe421ec961569a from memory into f28
fcvt.w.h x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x8d6d85c7b676c5ea # load x3 with value 0x8d6d85c7b676c5ea
sw x3, 0(x2) # store 0x8d6d85c7b676c5ea in memory
flh f29, 0(x2) # load 0x8d6d85c7b676c5ea from memory into f29
fcvt.w.h x8, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x4f7ced9b135b6888 # load x3 with value 0x4f7ced9b135b6888
sw x3, 0(x2) # store 0x4f7ced9b135b6888 in memory
flh f30, 0(x2) # load 0x4f7ced9b135b6888 from memory into f30
fcvt.w.h x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x37b299cf973f6bf6 # load x3 with value 0x37b299cf973f6bf6
sw x3, 0(x2) # store 0x37b299cf973f6bf6 in memory
flh f31, 0(x2) # load 0x37b299cf973f6bf6 from memory into f31
fcvt.w.h x13, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fcvt.w.h x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fcvt.w.h x18, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fcvt.w.h x31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fcvt.w.h x10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fcvt.w.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fcvt.w.h x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fcvt.w.h x1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fcvt.w.h x31, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fcvt.w.h x16, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fcvt.w.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fcvt.w.h x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fcvt.w.h x29, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fcvt.w.h x11, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fcvt.w.h x19, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fcvt.w.h x5, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fcvt.w.h x5, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fcvt.w.h x19, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fcvt.w.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fcvt.w.h x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fcvt.w.h x2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fcvt.w.h x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fcvt.w.h x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fcvt.w.h x1, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fcvt.w.h x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fcvt.w.h x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fcvt.w.h x3, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fcvt.w.h x31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fcvt.w.h x8, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fcvt.w.h x26, f14, dyn # perform operation
fcvt.w.h x26, f14, rdn # perform operation
fcvt.w.h x26, f14, rmm # perform operation
fcvt.w.h x26, f14, rne # perform operation
fcvt.w.h x26, f14, rtz # perform operation
fcvt.w.h x26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fcvt.w.h x31, f6, dyn # perform operation
fcvt.w.h x31, f6, rdn # perform operation
fcvt.w.h x31, f6, rmm # perform operation
fcvt.w.h x31, f6, rne # perform operation
fcvt.w.h x31, f6, rtz # perform operation
fcvt.w.h x31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x31, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fcvt.w.h x5, f6, dyn # perform operation
fcvt.w.h x5, f6, rdn # perform operation
fcvt.w.h x5, f6, rmm # perform operation
fcvt.w.h x5, f6, rne # perform operation
fcvt.w.h x5, f6, rtz # perform operation
fcvt.w.h x5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x5, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x5, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x5, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x5, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x5, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fcvt.w.h x5, f25, dyn # perform operation
fcvt.w.h x5, f25, rdn # perform operation
fcvt.w.h x5, f25, rmm # perform operation
fcvt.w.h x5, f25, rne # perform operation
fcvt.w.h x5, f25, rtz # perform operation
fcvt.w.h x5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fcvt.w.h x16, f20, dyn # perform operation
fcvt.w.h x16, f20, rdn # perform operation
fcvt.w.h x16, f20, rmm # perform operation
fcvt.w.h x16, f20, rne # perform operation
fcvt.w.h x16, f20, rtz # perform operation
fcvt.w.h x16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x16, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fcvt.w.h x30, f21, dyn # perform operation
fcvt.w.h x30, f21, rdn # perform operation
fcvt.w.h x30, f21, rmm # perform operation
fcvt.w.h x30, f21, rne # perform operation
fcvt.w.h x30, f21, rtz # perform operation
fcvt.w.h x30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x30, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fcvt.w.h x27, f23, dyn # perform operation
fcvt.w.h x27, f23, rdn # perform operation
fcvt.w.h x27, f23, rmm # perform operation
fcvt.w.h x27, f23, rne # perform operation
fcvt.w.h x27, f23, rtz # perform operation
fcvt.w.h x27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fcvt.w.h x12, f22, dyn # perform operation
fcvt.w.h x12, f22, rdn # perform operation
fcvt.w.h x12, f22, rmm # perform operation
fcvt.w.h x12, f22, rne # perform operation
fcvt.w.h x12, f22, rtz # perform operation
fcvt.w.h x12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fcvt.w.h x29, f30, dyn # perform operation
fcvt.w.h x29, f30, rdn # perform operation
fcvt.w.h x29, f30, rmm # perform operation
fcvt.w.h x29, f30, rne # perform operation
fcvt.w.h x29, f30, rtz # perform operation
fcvt.w.h x29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fcvt.w.h x29, f1, dyn # perform operation
fcvt.w.h x29, f1, rdn # perform operation
fcvt.w.h x29, f1, rmm # perform operation
fcvt.w.h x29, f1, rne # perform operation
fcvt.w.h x29, f1, rtz # perform operation
fcvt.w.h x29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fcvt.w.h x8, f15, dyn # perform operation
fcvt.w.h x8, f15, rdn # perform operation
fcvt.w.h x8, f15, rmm # perform operation
fcvt.w.h x8, f15, rne # perform operation
fcvt.w.h x8, f15, rtz # perform operation
fcvt.w.h x8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fcvt.w.h x23, f22, dyn # perform operation
fcvt.w.h x23, f22, rdn # perform operation
fcvt.w.h x23, f22, rmm # perform operation
fcvt.w.h x23, f22, rne # perform operation
fcvt.w.h x23, f22, rtz # perform operation
fcvt.w.h x23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x23, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fcvt.w.h x28, f29, dyn # perform operation
fcvt.w.h x28, f29, rdn # perform operation
fcvt.w.h x28, f29, rmm # perform operation
fcvt.w.h x28, f29, rne # perform operation
fcvt.w.h x28, f29, rtz # perform operation
fcvt.w.h x28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fcvt.w.h x6, f9, dyn # perform operation
fcvt.w.h x6, f9, rdn # perform operation
fcvt.w.h x6, f9, rmm # perform operation
fcvt.w.h x6, f9, rne # perform operation
fcvt.w.h x6, f9, rtz # perform operation
fcvt.w.h x6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x6, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fcvt.w.h x6, f5, dyn # perform operation
fcvt.w.h x6, f5, rdn # perform operation
fcvt.w.h x6, f5, rmm # perform operation
fcvt.w.h x6, f5, rne # perform operation
fcvt.w.h x6, f5, rtz # perform operation
fcvt.w.h x6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x6, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x6, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x6, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x6, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x6, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fcvt.w.h x19, f10, dyn # perform operation
fcvt.w.h x19, f10, rdn # perform operation
fcvt.w.h x19, f10, rmm # perform operation
fcvt.w.h x19, f10, rne # perform operation
fcvt.w.h x19, f10, rtz # perform operation
fcvt.w.h x19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x19, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fcvt.w.h x14, f25, dyn # perform operation
fcvt.w.h x14, f25, rdn # perform operation
fcvt.w.h x14, f25, rmm # perform operation
fcvt.w.h x14, f25, rne # perform operation
fcvt.w.h x14, f25, rtz # perform operation
fcvt.w.h x14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fcvt.w.h x25, f24, dyn # perform operation
fcvt.w.h x25, f24, rdn # perform operation
fcvt.w.h x25, f24, rmm # perform operation
fcvt.w.h x25, f24, rne # perform operation
fcvt.w.h x25, f24, rtz # perform operation
fcvt.w.h x25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fcvt.w.h x21, f9, dyn # perform operation
fcvt.w.h x21, f9, rdn # perform operation
fcvt.w.h x21, f9, rmm # perform operation
fcvt.w.h x21, f9, rne # perform operation
fcvt.w.h x21, f9, rtz # perform operation
fcvt.w.h x21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fcvt.w.h x27, f7, dyn # perform operation
fcvt.w.h x27, f7, rdn # perform operation
fcvt.w.h x27, f7, rmm # perform operation
fcvt.w.h x27, f7, rne # perform operation
fcvt.w.h x27, f7, rtz # perform operation
fcvt.w.h x27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x27, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fcvt.w.h x27, f31, dyn # perform operation
fcvt.w.h x27, f31, rdn # perform operation
fcvt.w.h x27, f31, rmm # perform operation
fcvt.w.h x27, f31, rne # perform operation
fcvt.w.h x27, f31, rtz # perform operation
fcvt.w.h x27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fcvt.w.h x8, f27, dyn # perform operation
fcvt.w.h x8, f27, rdn # perform operation
fcvt.w.h x8, f27, rmm # perform operation
fcvt.w.h x8, f27, rne # perform operation
fcvt.w.h x8, f27, rtz # perform operation
fcvt.w.h x8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
fcvt.w.h x7, f13, dyn # perform operation
fcvt.w.h x7, f13, rdn # perform operation
fcvt.w.h x7, f13, rmm # perform operation
fcvt.w.h x7, f13, rne # perform operation
fcvt.w.h x7, f13, rtz # perform operation
fcvt.w.h x7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fcvt.w.h x24, f5, dyn # perform operation
fcvt.w.h x24, f5, rdn # perform operation
fcvt.w.h x24, f5, rmm # perform operation
fcvt.w.h x24, f5, rne # perform operation
fcvt.w.h x24, f5, rtz # perform operation
fcvt.w.h x24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fcvt.w.h x12, f11, dyn # perform operation
fcvt.w.h x12, f11, rdn # perform operation
fcvt.w.h x12, f11, rmm # perform operation
fcvt.w.h x12, f11, rne # perform operation
fcvt.w.h x12, f11, rtz # perform operation
fcvt.w.h x12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
fcvt.w.h x18, f20, dyn # perform operation
fcvt.w.h x18, f20, rdn # perform operation
fcvt.w.h x18, f20, rmm # perform operation
fcvt.w.h x18, f20, rne # perform operation
fcvt.w.h x18, f20, rtz # perform operation
fcvt.w.h x18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fcvt.w.h x25, f24, dyn # perform operation
fcvt.w.h x25, f24, rdn # perform operation
fcvt.w.h x25, f24, rmm # perform operation
fcvt.w.h x25, f24, rne # perform operation
fcvt.w.h x25, f24, rtz # perform operation
fcvt.w.h x25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fcvt.w.h x14, f18, dyn # perform operation
fcvt.w.h x14, f18, rdn # perform operation
fcvt.w.h x14, f18, rmm # perform operation
fcvt.w.h x14, f18, rne # perform operation
fcvt.w.h x14, f18, rtz # perform operation
fcvt.w.h x14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x7973370249eed847 # load x3 with value 0x7973370249eed847
sw x3, 0(x2) # store 0x7973370249eed847 in memory
flh f11, 0(x2) # load 0x7973370249eed847 from memory into f11
fcvt.w.h x15, f11, dyn # perform operation
fcvt.w.h x15, f11, rdn # perform operation
fcvt.w.h x15, f11, rmm # perform operation
fcvt.w.h x15, f11, rne # perform operation
fcvt.w.h x15, f11, rtz # perform operation
fcvt.w.h x15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)


# Testcase Improper NaNBoxed argument test (Value 0x0 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fcvt.w.h x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f20, 0(x2) # load 0xfffe8000 from memory into f20
fcvt.w.h x15, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f15, 0(x2) # load 0x7fff3c00 from memory into f15
fcvt.w.h x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f16, 0(x2) # load 0xbeefbc00 from memory into f16
fcvt.w.h x20, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f5, 0(x2) # load 0xfeff0400 from memory into f5
fcvt.w.h x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f13, 0(x2) # load 0x0fff8400 from memory into f13
fcvt.w.h x5, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f6, 0(x2) # load 0xefff7bff from memory into f6
fcvt.w.h x10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f16, 0(x2) # load 0xc0defbff from memory into f16
fcvt.w.h x14, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f1, 0(x2) # load 0x4f1a7c00 from memory into f1
fcvt.w.h x7, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 160)

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f8, 0(x2) # load 0x0ffffc00 from memory into f8
fcvt.w.h x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f8, 0(x2) # load 0xffef7e00 from memory into f8
fcvt.w.h x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f9, 0(x2) # load 0xfeef7fff from memory into f9
fcvt.w.h x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f6, 0(x2) # load 0xa1b27c01 from memory into f6
fcvt.w.h x23, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f23, 0(x2) # load 0x4fd77dff from memory into f23
fcvt.w.h x10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

.EQU SIGSIZE,2008


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
