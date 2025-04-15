///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.w.d.S
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
li x3, 0x5d30e9ab # load x3 with 32 MSBs 0x000000005d30e9ab
sw x3, 0(x2) # store x3 (0x5d30e9ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d30e9ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000005d30e9ab from memory into f17
fcvt.w.d x0, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x33f9c227 # load x3 with 32 MSBs 0x0000000033f9c227
sw x3, 0(x2) # store x3 (0x33f9c227) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000033f9c227
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000033f9c227 from memory into f23
fcvt.w.d x1, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x0a175131 # load x3 with 32 MSBs 0x000000000a175131
sw x3, 0(x2) # store x3 (0x0a175131) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000a175131
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000000a175131 from memory into f25
fcvt.w.d x2, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xa93f362d # load x3 with 32 MSBs 0x00000000a93f362d
sw x3, 0(x2) # store x3 (0xa93f362d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a93f362d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000a93f362d from memory into f25
fcvt.w.d x3, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7a56266a # load x3 with 32 MSBs 0x000000007a56266a
sw x3, 0(x2) # store x3 (0x7a56266a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a56266a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000007a56266a from memory into f2
fcvt.w.d x4, f2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdb1c58f6 # load x3 with 32 MSBs 0x00000000db1c58f6
sw x3, 0(x2) # store x3 (0xdb1c58f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db1c58f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000db1c58f6 from memory into f28
fcvt.w.d x5, f28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe149d2ed # load x3 with 32 MSBs 0x00000000e149d2ed
sw x3, 0(x2) # store x3 (0xe149d2ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e149d2ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e149d2ed from memory into f18
fcvt.w.d x6, f18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe2e1d379 # load x3 with 32 MSBs 0x00000000e2e1d379
sw x3, 0(x2) # store x3 (0xe2e1d379) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2e1d379
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e2e1d379 from memory into f8
fcvt.w.d x7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xdcc06ad3 # load x3 with 32 MSBs 0x00000000dcc06ad3
sw x3, 0(x2) # store x3 (0xdcc06ad3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dcc06ad3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000dcc06ad3 from memory into f28
fcvt.w.d x8, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xebee0a9a # load x3 with 32 MSBs 0x00000000ebee0a9a
sw x3, 0(x2) # store x3 (0xebee0a9a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ebee0a9a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ebee0a9a from memory into f31
fcvt.w.d x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xde2a2881 # load x3 with 32 MSBs 0x00000000de2a2881
sw x3, 0(x2) # store x3 (0xde2a2881) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de2a2881
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000de2a2881 from memory into f14
fcvt.w.d x10, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xfed63533 # load x3 with 32 MSBs 0x00000000fed63533
sw x3, 0(x2) # store x3 (0xfed63533) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fed63533
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000fed63533 from memory into f1
fcvt.w.d x11, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x5cb06f98 # load x3 with 32 MSBs 0x000000005cb06f98
sw x3, 0(x2) # store x3 (0x5cb06f98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005cb06f98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000005cb06f98 from memory into f31
fcvt.w.d x12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x623f688c # load x3 with 32 MSBs 0x00000000623f688c
sw x3, 0(x2) # store x3 (0x623f688c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000623f688c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000623f688c from memory into f8
fcvt.w.d x13, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x15d04976 # load x3 with 32 MSBs 0x0000000015d04976
sw x3, 0(x2) # store x3 (0x15d04976) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000015d04976
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000015d04976 from memory into f5
fcvt.w.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x5c30c1cb # load x3 with 32 MSBs 0x000000005c30c1cb
sw x3, 0(x2) # store x3 (0x5c30c1cb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c30c1cb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000005c30c1cb from memory into f5
fcvt.w.d x15, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x46e13055 # load x3 with 32 MSBs 0x0000000046e13055
sw x3, 0(x2) # store x3 (0x46e13055) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046e13055
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000046e13055 from memory into f12
fcvt.w.d x16, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x6ff81c1d # load x3 with 32 MSBs 0x000000006ff81c1d
sw x3, 0(x2) # store x3 (0x6ff81c1d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ff81c1d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006ff81c1d from memory into f17
fcvt.w.d x17, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xe31e0c39 # load x3 with 32 MSBs 0x00000000e31e0c39
sw x3, 0(x2) # store x3 (0xe31e0c39) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e31e0c39
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e31e0c39 from memory into f20
fcvt.w.d x18, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x1299d48b # load x3 with 32 MSBs 0x000000001299d48b
sw x3, 0(x2) # store x3 (0x1299d48b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001299d48b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000001299d48b from memory into f18
fcvt.w.d x19, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x4d851eb7 # load x3 with 32 MSBs 0x000000004d851eb7
sw x3, 0(x2) # store x3 (0x4d851eb7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d851eb7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000004d851eb7 from memory into f22
fcvt.w.d x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x6eafa80a # load x3 with 32 MSBs 0x000000006eafa80a
sw x3, 0(x2) # store x3 (0x6eafa80a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006eafa80a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006eafa80a from memory into f5
fcvt.w.d x21, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x7e2f8a9c # load x3 with 32 MSBs 0x000000007e2f8a9c
sw x3, 0(x2) # store x3 (0x7e2f8a9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e2f8a9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000007e2f8a9c from memory into f10
fcvt.w.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xd54189d3 # load x3 with 32 MSBs 0x00000000d54189d3
sw x3, 0(x2) # store x3 (0xd54189d3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d54189d3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d54189d3 from memory into f29
fcvt.w.d x23, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x96419225 # load x3 with 32 MSBs 0x0000000096419225
sw x3, 0(x2) # store x3 (0x96419225) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096419225
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000096419225 from memory into f28
fcvt.w.d x24, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xe13a8f00 # load x3 with 32 MSBs 0x00000000e13a8f00
sw x3, 0(x2) # store x3 (0xe13a8f00) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e13a8f00
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e13a8f00 from memory into f28
fcvt.w.d x25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xf496e56e # load x3 with 32 MSBs 0x00000000f496e56e
sw x3, 0(x2) # store x3 (0xf496e56e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f496e56e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f496e56e from memory into f16
fcvt.w.d x26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xb31e751f # load x3 with 32 MSBs 0x00000000b31e751f
sw x3, 0(x2) # store x3 (0xb31e751f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b31e751f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b31e751f from memory into f3
fcvt.w.d x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xc60bc519 # load x3 with 32 MSBs 0x00000000c60bc519
sw x3, 0(x2) # store x3 (0xc60bc519) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c60bc519
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000c60bc519 from memory into f24
fcvt.w.d x28, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x4c98400d # load x3 with 32 MSBs 0x000000004c98400d
sw x3, 0(x2) # store x3 (0x4c98400d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c98400d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000004c98400d from memory into f17
fcvt.w.d x29, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xcecc6733 # load x3 with 32 MSBs 0x00000000cecc6733
sw x3, 0(x2) # store x3 (0xcecc6733) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cecc6733
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000cecc6733 from memory into f16
fcvt.w.d x30, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xcb899c67 # load x3 with 32 MSBs 0x00000000cb899c67
sw x3, 0(x2) # store x3 (0xcb899c67) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb899c67
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cb899c67 from memory into f18
fcvt.w.d x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x24, x6 # perform first operation
fcvt.w.d x25, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x15, x9 # perform first operation
fcvt.w.d x31, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x20, x13 # perform first operation
fcvt.w.d x9, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f30, f6, f5 # perform first operation
fcvt.w.d x8, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x1, x28 # perform first operation
fcvt.w.d x27, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x5, x29 # perform first operation
fcvt.w.d x29, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x21, x25 # perform first operation
fcvt.w.d x6, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x28, x30 # perform first operation
fcvt.w.d x31, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x8, x25 # perform first operation
fcvt.w.d x26, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x8, x24 # perform first operation
fcvt.w.d x16, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x11, x8 # perform first operation
fcvt.w.d x18, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x8, x21 # perform first operation
fcvt.w.d x18, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x12, x30 # perform first operation
fcvt.w.d x12, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x29, x20 # perform first operation
fcvt.w.d x20, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x21, x2 # perform first operation
fcvt.w.d x30, f8 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x6e5d7624 # load x3 with 32 MSBs 0x000000006e5d7624
sw x3, 0(x2) # store x3 (0x6e5d7624) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e5d7624
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000006e5d7624 from memory into f0
fcvt.w.d x14, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x69185466 # load x3 with 32 MSBs 0x0000000069185466
sw x3, 0(x2) # store x3 (0x69185466) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069185466
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000069185466 from memory into f1
fcvt.w.d x13, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x31d740e5 # load x3 with 32 MSBs 0x0000000031d740e5
sw x3, 0(x2) # store x3 (0x31d740e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031d740e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000031d740e5 from memory into f2
fcvt.w.d x20, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xd6dcabd8 # load x3 with 32 MSBs 0x00000000d6dcabd8
sw x3, 0(x2) # store x3 (0xd6dcabd8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d6dcabd8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d6dcabd8 from memory into f3
fcvt.w.d x28, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x49508e51 # load x3 with 32 MSBs 0x0000000049508e51
sw x3, 0(x2) # store x3 (0x49508e51) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000049508e51
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000049508e51 from memory into f4
fcvt.w.d x30, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe447f7c6 # load x3 with 32 MSBs 0x00000000e447f7c6
sw x3, 0(x2) # store x3 (0xe447f7c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e447f7c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e447f7c6 from memory into f5
fcvt.w.d x22, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf1f04f9c # load x3 with 32 MSBs 0x00000000f1f04f9c
sw x3, 0(x2) # store x3 (0xf1f04f9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1f04f9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000f1f04f9c from memory into f6
fcvt.w.d x19, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9e882ac5 # load x3 with 32 MSBs 0x000000009e882ac5
sw x3, 0(x2) # store x3 (0x9e882ac5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e882ac5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000009e882ac5 from memory into f7
fcvt.w.d x5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xce6fd9b6 # load x3 with 32 MSBs 0x00000000ce6fd9b6
sw x3, 0(x2) # store x3 (0xce6fd9b6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ce6fd9b6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ce6fd9b6 from memory into f8
fcvt.w.d x27, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x867ad3ab # load x3 with 32 MSBs 0x00000000867ad3ab
sw x3, 0(x2) # store x3 (0x867ad3ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000867ad3ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000867ad3ab from memory into f9
fcvt.w.d x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xa62f636a # load x3 with 32 MSBs 0x00000000a62f636a
sw x3, 0(x2) # store x3 (0xa62f636a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a62f636a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a62f636a from memory into f10
fcvt.w.d x9, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x5ecb85c9 # load x3 with 32 MSBs 0x000000005ecb85c9
sw x3, 0(x2) # store x3 (0x5ecb85c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005ecb85c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000005ecb85c9 from memory into f11
fcvt.w.d x31, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x92fe77a3 # load x3 with 32 MSBs 0x0000000092fe77a3
sw x3, 0(x2) # store x3 (0x92fe77a3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092fe77a3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000092fe77a3 from memory into f12
fcvt.w.d x13, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x97f41bf1 # load x3 with 32 MSBs 0x0000000097f41bf1
sw x3, 0(x2) # store x3 (0x97f41bf1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000097f41bf1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000097f41bf1 from memory into f13
fcvt.w.d x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xfaaa19d6 # load x3 with 32 MSBs 0x00000000faaa19d6
sw x3, 0(x2) # store x3 (0xfaaa19d6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000faaa19d6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000faaa19d6 from memory into f14
fcvt.w.d x5, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x54e5cf94 # load x3 with 32 MSBs 0x0000000054e5cf94
sw x3, 0(x2) # store x3 (0x54e5cf94) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000054e5cf94
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000054e5cf94 from memory into f15
fcvt.w.d x14, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x980e9a14 # load x3 with 32 MSBs 0x00000000980e9a14
sw x3, 0(x2) # store x3 (0x980e9a14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000980e9a14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000980e9a14 from memory into f16
fcvt.w.d x2, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xc779cee6 # load x3 with 32 MSBs 0x00000000c779cee6
sw x3, 0(x2) # store x3 (0xc779cee6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c779cee6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000c779cee6 from memory into f17
fcvt.w.d x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xa3d06b26 # load x3 with 32 MSBs 0x00000000a3d06b26
sw x3, 0(x2) # store x3 (0xa3d06b26) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3d06b26
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000a3d06b26 from memory into f18
fcvt.w.d x7, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x219354d4 # load x3 with 32 MSBs 0x00000000219354d4
sw x3, 0(x2) # store x3 (0x219354d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000219354d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000219354d4 from memory into f19
fcvt.w.d x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x65abca82 # load x3 with 32 MSBs 0x0000000065abca82
sw x3, 0(x2) # store x3 (0x65abca82) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065abca82
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000065abca82 from memory into f20
fcvt.w.d x2, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x9e46bc71 # load x3 with 32 MSBs 0x000000009e46bc71
sw x3, 0(x2) # store x3 (0x9e46bc71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009e46bc71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000009e46bc71 from memory into f21
fcvt.w.d x10, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xd8453b1d # load x3 with 32 MSBs 0x00000000d8453b1d
sw x3, 0(x2) # store x3 (0xd8453b1d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8453b1d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d8453b1d from memory into f22
fcvt.w.d x25, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x39095a46 # load x3 with 32 MSBs 0x0000000039095a46
sw x3, 0(x2) # store x3 (0x39095a46) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039095a46
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000039095a46 from memory into f23
fcvt.w.d x10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xa071e5f2 # load x3 with 32 MSBs 0x00000000a071e5f2
sw x3, 0(x2) # store x3 (0xa071e5f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a071e5f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a071e5f2 from memory into f24
fcvt.w.d x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x4fa3f033 # load x3 with 32 MSBs 0x000000004fa3f033
sw x3, 0(x2) # store x3 (0x4fa3f033) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004fa3f033
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004fa3f033 from memory into f25
fcvt.w.d x2, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x642f3e9f # load x3 with 32 MSBs 0x00000000642f3e9f
sw x3, 0(x2) # store x3 (0x642f3e9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000642f3e9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000642f3e9f from memory into f26
fcvt.w.d x20, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x4e999e7e # load x3 with 32 MSBs 0x000000004e999e7e
sw x3, 0(x2) # store x3 (0x4e999e7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e999e7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000004e999e7e from memory into f27
fcvt.w.d x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x89070062 # load x3 with 32 MSBs 0x0000000089070062
sw x3, 0(x2) # store x3 (0x89070062) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000089070062
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000089070062 from memory into f28
fcvt.w.d x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x91fa1e4d # load x3 with 32 MSBs 0x0000000091fa1e4d
sw x3, 0(x2) # store x3 (0x91fa1e4d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000091fa1e4d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000091fa1e4d from memory into f29
fcvt.w.d x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x7b844783 # load x3 with 32 MSBs 0x000000007b844783
sw x3, 0(x2) # store x3 (0x7b844783) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b844783
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000007b844783 from memory into f30
fcvt.w.d x14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xd20c4a0d # load x3 with 32 MSBs 0x00000000d20c4a0d
sw x3, 0(x2) # store x3 (0xd20c4a0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d20c4a0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000d20c4a0d from memory into f31
fcvt.w.d x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fcvt.w.d x23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fcvt.w.d x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fcvt.w.d x5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fcvt.w.d x25, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fcvt.w.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fcvt.w.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fcvt.w.d x13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fcvt.w.d x26, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fcvt.w.d x15, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fcvt.w.d x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fcvt.w.d x17, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fcvt.w.d x16, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fcvt.w.d x10, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fcvt.w.d x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fcvt.w.d x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fcvt.w.d x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fcvt.w.d x16, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fcvt.w.d x14, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fcvt.w.d x22, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fcvt.w.d x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fcvt.w.d x20, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fcvt.w.d x20, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
fcvt.w.d x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fcvt.w.d x25, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fcvt.w.d x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfff0000000000001 from memory into f9
fcvt.w.d x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fcvt.w.d x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fcvt.w.d x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 364)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fcvt.w.d x28, f20, dyn # perform operation
fcvt.w.d x28, f20, rdn # perform operation
fcvt.w.d x28, f20, rmm # perform operation
fcvt.w.d x28, f20, rne # perform operation
fcvt.w.d x28, f20, rtz # perform operation
fcvt.w.d x28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 372)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 380)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fcvt.w.d x3, f13, dyn # perform operation
fcvt.w.d x3, f13, rdn # perform operation
fcvt.w.d x3, f13, rmm # perform operation
fcvt.w.d x3, f13, rne # perform operation
fcvt.w.d x3, f13, rtz # perform operation
fcvt.w.d x3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 388)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 396)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 404)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fcvt.w.d x30, f1, dyn # perform operation
fcvt.w.d x30, f1, rdn # perform operation
fcvt.w.d x30, f1, rmm # perform operation
fcvt.w.d x30, f1, rne # perform operation
fcvt.w.d x30, f1, rtz # perform operation
fcvt.w.d x30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 412)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 420)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fcvt.w.d x26, f22, dyn # perform operation
fcvt.w.d x26, f22, rdn # perform operation
fcvt.w.d x26, f22, rmm # perform operation
fcvt.w.d x26, f22, rne # perform operation
fcvt.w.d x26, f22, rtz # perform operation
fcvt.w.d x26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 428)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 436)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 444)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fcvt.w.d x5, f2, dyn # perform operation
fcvt.w.d x5, f2, rdn # perform operation
fcvt.w.d x5, f2, rmm # perform operation
fcvt.w.d x5, f2, rne # perform operation
fcvt.w.d x5, f2, rtz # perform operation
fcvt.w.d x5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 452)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 460)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fcvt.w.d x7, f13, dyn # perform operation
fcvt.w.d x7, f13, rdn # perform operation
fcvt.w.d x7, f13, rmm # perform operation
fcvt.w.d x7, f13, rne # perform operation
fcvt.w.d x7, f13, rtz # perform operation
fcvt.w.d x7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 468)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 476)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 484)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fcvt.w.d x24, f8, dyn # perform operation
fcvt.w.d x24, f8, rdn # perform operation
fcvt.w.d x24, f8, rmm # perform operation
fcvt.w.d x24, f8, rne # perform operation
fcvt.w.d x24, f8, rtz # perform operation
fcvt.w.d x24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 492)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 500)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fcvt.w.d x15, f21, dyn # perform operation
fcvt.w.d x15, f21, rdn # perform operation
fcvt.w.d x15, f21, rmm # perform operation
fcvt.w.d x15, f21, rne # perform operation
fcvt.w.d x15, f21, rtz # perform operation
fcvt.w.d x15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 516)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x15, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 524)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fcvt.w.d x27, f10, dyn # perform operation
fcvt.w.d x27, f10, rdn # perform operation
fcvt.w.d x27, f10, rmm # perform operation
fcvt.w.d x27, f10, rne # perform operation
fcvt.w.d x27, f10, rtz # perform operation
fcvt.w.d x27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x27, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x27, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 532)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x27, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x27, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 540)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x27, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fcvt.w.d x18, f25, dyn # perform operation
fcvt.w.d x18, f25, rdn # perform operation
fcvt.w.d x18, f25, rmm # perform operation
fcvt.w.d x18, f25, rne # perform operation
fcvt.w.d x18, f25, rtz # perform operation
fcvt.w.d x18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 548)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 556)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 564)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fcvt.w.d x9, f12, dyn # perform operation
fcvt.w.d x9, f12, rdn # perform operation
fcvt.w.d x9, f12, rmm # perform operation
fcvt.w.d x9, f12, rne # perform operation
fcvt.w.d x9, f12, rtz # perform operation
fcvt.w.d x9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 572)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
fcvt.w.d x10, f26, dyn # perform operation
fcvt.w.d x10, f26, rdn # perform operation
fcvt.w.d x10, f26, rmm # perform operation
fcvt.w.d x10, f26, rne # perform operation
fcvt.w.d x10, f26, rtz # perform operation
fcvt.w.d x10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x10, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 604)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fcvt.w.d x29, f14, dyn # perform operation
fcvt.w.d x29, f14, rdn # perform operation
fcvt.w.d x29, f14, rmm # perform operation
fcvt.w.d x29, f14, rne # perform operation
fcvt.w.d x29, f14, rtz # perform operation
fcvt.w.d x29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 620)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x29, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fcvt.w.d x29, f3, dyn # perform operation
fcvt.w.d x29, f3, rdn # perform operation
fcvt.w.d x29, f3, rmm # perform operation
fcvt.w.d x29, f3, rne # perform operation
fcvt.w.d x29, f3, rtz # perform operation
fcvt.w.d x29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 636)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x29, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 644)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fcvt.w.d x14, f6, dyn # perform operation
fcvt.w.d x14, f6, rdn # perform operation
fcvt.w.d x14, f6, rmm # perform operation
fcvt.w.d x14, f6, rne # perform operation
fcvt.w.d x14, f6, rtz # perform operation
fcvt.w.d x14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fcvt.w.d x15, f8, dyn # perform operation
fcvt.w.d x15, f8, rdn # perform operation
fcvt.w.d x15, f8, rmm # perform operation
fcvt.w.d x15, f8, rne # perform operation
fcvt.w.d x15, f8, rtz # perform operation
fcvt.w.d x15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 668)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 676)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 684)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fcvt.w.d x8, f10, dyn # perform operation
fcvt.w.d x8, f10, rdn # perform operation
fcvt.w.d x8, f10, rmm # perform operation
fcvt.w.d x8, f10, rne # perform operation
fcvt.w.d x8, f10, rtz # perform operation
fcvt.w.d x8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 692)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 700)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fcvt.w.d x27, f15, dyn # perform operation
fcvt.w.d x27, f15, rdn # perform operation
fcvt.w.d x27, f15, rmm # perform operation
fcvt.w.d x27, f15, rne # perform operation
fcvt.w.d x27, f15, rtz # perform operation
fcvt.w.d x27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 708)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 716)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 724)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fcvt.w.d x15, f8, dyn # perform operation
fcvt.w.d x15, f8, rdn # perform operation
fcvt.w.d x15, f8, rmm # perform operation
fcvt.w.d x15, f8, rne # perform operation
fcvt.w.d x15, f8, rtz # perform operation
fcvt.w.d x15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 728)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 732)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 740)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 744)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fcvt.w.d x26, f2, dyn # perform operation
fcvt.w.d x26, f2, rdn # perform operation
fcvt.w.d x26, f2, rmm # perform operation
fcvt.w.d x26, f2, rne # perform operation
fcvt.w.d x26, f2, rtz # perform operation
fcvt.w.d x26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 748)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 752)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 756)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 764)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fcvt.w.d x17, f21, dyn # perform operation
fcvt.w.d x17, f21, rdn # perform operation
fcvt.w.d x17, f21, rmm # perform operation
fcvt.w.d x17, f21, rne # perform operation
fcvt.w.d x17, f21, rtz # perform operation
fcvt.w.d x17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 780)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x17, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
fcvt.w.d x17, f10, dyn # perform operation
fcvt.w.d x17, f10, rdn # perform operation
fcvt.w.d x17, f10, rmm # perform operation
fcvt.w.d x17, f10, rne # perform operation
fcvt.w.d x17, f10, rtz # perform operation
fcvt.w.d x17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 788)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 804)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff8000000000000 from memory into f20
fcvt.w.d x28, f20, dyn # perform operation
fcvt.w.d x28, f20, rdn # perform operation
fcvt.w.d x28, f20, rmm # perform operation
fcvt.w.d x28, f20, rne # perform operation
fcvt.w.d x28, f20, rtz # perform operation
fcvt.w.d x28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 812)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 820)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fcvt.w.d x5, f2, dyn # perform operation
fcvt.w.d x5, f2, rdn # perform operation
fcvt.w.d x5, f2, rmm # perform operation
fcvt.w.d x5, f2, rne # perform operation
fcvt.w.d x5, f2, rtz # perform operation
fcvt.w.d x5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 828)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 836)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 844)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fcvt.w.d x22, f11, dyn # perform operation
fcvt.w.d x22, f11, rdn # perform operation
fcvt.w.d x22, f11, rmm # perform operation
fcvt.w.d x22, f11, rne # perform operation
fcvt.w.d x22, f11, rtz # perform operation
fcvt.w.d x22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 852)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 860)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x22, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000001 from memory into f10
fcvt.w.d x20, f10, dyn # perform operation
fcvt.w.d x20, f10, rdn # perform operation
fcvt.w.d x20, f10, rmm # perform operation
fcvt.w.d x20, f10, rne # perform operation
fcvt.w.d x20, f10, rtz # perform operation
fcvt.w.d x20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 868)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 872)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 876)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 884)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fcvt.w.d x19, f17, dyn # perform operation
fcvt.w.d x19, f17, rdn # perform operation
fcvt.w.d x19, f17, rmm # perform operation
fcvt.w.d x19, f17, rne # perform operation
fcvt.w.d x19, f17, rtz # perform operation
fcvt.w.d x19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 892)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x19, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fcvt.w.d x7, f27, dyn # perform operation
fcvt.w.d x7, f27, rdn # perform operation
fcvt.w.d x7, f27, rmm # perform operation
fcvt.w.d x7, f27, rne # perform operation
fcvt.w.d x7, f27, rtz # perform operation
fcvt.w.d x7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 908)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 916)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x7, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 924)


# Testcase cp_frm
la x2, scratch
li x3, 0xf8f897be # load x3 with 32 MSBs 0x00000000f8f897be
sw x3, 0(x2) # store x3 (0xf8f897be) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8f897be
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f8f897be from memory into f28
fcvt.w.d x3, f28, dyn # perform operation
fcvt.w.d x3, f28, rdn # perform operation
fcvt.w.d x3, f28, rmm # perform operation
fcvt.w.d x3, f28, rne # perform operation
fcvt.w.d x3, f28, rtz # perform operation
fcvt.w.d x3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 932)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 940)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x3, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 944)


.EQU SIGSIZE,948


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
