///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fclass.d.S
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
li x3, 0x179cc5de # load x3 with 32 MSBs 0x00000000179cc5de
sw x3, 0(x2) # store x3 (0x179cc5de) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000179cc5de
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000179cc5de from memory into f3
fclass.d x0, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x2061beed # load x3 with 32 MSBs 0x000000002061beed
sw x3, 0(x2) # store x3 (0x2061beed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002061beed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002061beed from memory into f19
fclass.d x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x59d47227 # load x3 with 32 MSBs 0x0000000059d47227
sw x3, 0(x2) # store x3 (0x59d47227) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000059d47227
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000059d47227 from memory into f10
fclass.d x2, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x963a5177 # load x3 with 32 MSBs 0x00000000963a5177
sw x3, 0(x2) # store x3 (0x963a5177) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000963a5177
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000963a5177 from memory into f5
fclass.d x3, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x56074521 # load x3 with 32 MSBs 0x0000000056074521
sw x3, 0(x2) # store x3 (0x56074521) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000056074521
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000056074521 from memory into f15
fclass.d x4, f15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8cc709c9 # load x3 with 32 MSBs 0x000000008cc709c9
sw x3, 0(x2) # store x3 (0x8cc709c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008cc709c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000008cc709c9 from memory into f15
fclass.d x5, f15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8b770a24 # load x3 with 32 MSBs 0x000000008b770a24
sw x3, 0(x2) # store x3 (0x8b770a24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008b770a24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008b770a24 from memory into f20
fclass.d x6, f20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa269b54c # load x3 with 32 MSBs 0x00000000a269b54c
sw x3, 0(x2) # store x3 (0xa269b54c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a269b54c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000a269b54c from memory into f23
fclass.d x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x4bd5ff24 # load x3 with 32 MSBs 0x000000004bd5ff24
sw x3, 0(x2) # store x3 (0x4bd5ff24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004bd5ff24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004bd5ff24 from memory into f29
fclass.d x8, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x246ab96c # load x3 with 32 MSBs 0x00000000246ab96c
sw x3, 0(x2) # store x3 (0x246ab96c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000246ab96c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000246ab96c from memory into f6
fclass.d x9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x7c59cd52 # load x3 with 32 MSBs 0x000000007c59cd52
sw x3, 0(x2) # store x3 (0x7c59cd52) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007c59cd52
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007c59cd52 from memory into f19
fclass.d x10, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x6bd0024a # load x3 with 32 MSBs 0x000000006bd0024a
sw x3, 0(x2) # store x3 (0x6bd0024a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006bd0024a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000006bd0024a from memory into f22
fclass.d x11, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x5f2fd100 # load x3 with 32 MSBs 0x000000005f2fd100
sw x3, 0(x2) # store x3 (0x5f2fd100) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005f2fd100
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000005f2fd100 from memory into f16
fclass.d x12, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xd0195521 # load x3 with 32 MSBs 0x00000000d0195521
sw x3, 0(x2) # store x3 (0xd0195521) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d0195521
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d0195521 from memory into f11
fclass.d x13, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x8f6d5c0d # load x3 with 32 MSBs 0x000000008f6d5c0d
sw x3, 0(x2) # store x3 (0x8f6d5c0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008f6d5c0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000008f6d5c0d from memory into f11
fclass.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x27d63d8f # load x3 with 32 MSBs 0x0000000027d63d8f
sw x3, 0(x2) # store x3 (0x27d63d8f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027d63d8f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000027d63d8f from memory into f7
fclass.d x15, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xcb66b2a4 # load x3 with 32 MSBs 0x00000000cb66b2a4
sw x3, 0(x2) # store x3 (0xcb66b2a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb66b2a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000cb66b2a4 from memory into f17
fclass.d x16, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xfb233875 # load x3 with 32 MSBs 0x00000000fb233875
sw x3, 0(x2) # store x3 (0xfb233875) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb233875
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000fb233875 from memory into f27
fclass.d x17, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x2679caa3 # load x3 with 32 MSBs 0x000000002679caa3
sw x3, 0(x2) # store x3 (0x2679caa3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002679caa3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000002679caa3 from memory into f17
fclass.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x7542de24 # load x3 with 32 MSBs 0x000000007542de24
sw x3, 0(x2) # store x3 (0x7542de24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007542de24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000007542de24 from memory into f9
fclass.d x19, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x521cc405 # load x3 with 32 MSBs 0x00000000521cc405
sw x3, 0(x2) # store x3 (0x521cc405) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000521cc405
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000521cc405 from memory into f29
fclass.d x20, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x1e166d95 # load x3 with 32 MSBs 0x000000001e166d95
sw x3, 0(x2) # store x3 (0x1e166d95) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e166d95
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001e166d95 from memory into f22
fclass.d x21, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x879b5d50 # load x3 with 32 MSBs 0x00000000879b5d50
sw x3, 0(x2) # store x3 (0x879b5d50) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000879b5d50
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000879b5d50 from memory into f6
fclass.d x22, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x39ae3cce # load x3 with 32 MSBs 0x0000000039ae3cce
sw x3, 0(x2) # store x3 (0x39ae3cce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039ae3cce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000039ae3cce from memory into f19
fclass.d x23, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xcd3afb98 # load x3 with 32 MSBs 0x00000000cd3afb98
sw x3, 0(x2) # store x3 (0xcd3afb98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd3afb98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000cd3afb98 from memory into f17
fclass.d x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xe9bbe1ad # load x3 with 32 MSBs 0x00000000e9bbe1ad
sw x3, 0(x2) # store x3 (0xe9bbe1ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9bbe1ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e9bbe1ad from memory into f1
fclass.d x25, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xaa075b76 # load x3 with 32 MSBs 0x00000000aa075b76
sw x3, 0(x2) # store x3 (0xaa075b76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa075b76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000aa075b76 from memory into f2
fclass.d x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x8749c0ed # load x3 with 32 MSBs 0x000000008749c0ed
sw x3, 0(x2) # store x3 (0x8749c0ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008749c0ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000008749c0ed from memory into f11
fclass.d x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xdf9fd66d # load x3 with 32 MSBs 0x00000000df9fd66d
sw x3, 0(x2) # store x3 (0xdf9fd66d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000df9fd66d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000df9fd66d from memory into f25
fclass.d x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xcb45c5f6 # load x3 with 32 MSBs 0x00000000cb45c5f6
sw x3, 0(x2) # store x3 (0xcb45c5f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb45c5f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000cb45c5f6 from memory into f24
fclass.d x29, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x47f7f72b # load x3 with 32 MSBs 0x0000000047f7f72b
sw x3, 0(x2) # store x3 (0x47f7f72b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047f7f72b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000047f7f72b from memory into f16
fclass.d x30, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x995c5c86 # load x3 with 32 MSBs 0x00000000995c5c86
sw x3, 0(x2) # store x3 (0x995c5c86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000995c5c86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000995c5c86 from memory into f19
fclass.d x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x28, x25 # perform first operation
fclass.d x8, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x5, x24 # perform first operation
fclass.d x28, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x20, x14 # perform first operation
fclass.d x24, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f16, f3, f19 # perform first operation
fclass.d x9, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x11, x9 # perform first operation
fclass.d x9, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x5, x28 # perform first operation
fclass.d x28, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x27, x9 # perform first operation
fclass.d x21, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x31, x18 # perform first operation
fclass.d x30, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x18, x13 # perform first operation
fclass.d x30, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x24, x3 # perform first operation
fclass.d x2, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x10, x6 # perform first operation
fclass.d x8, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x6 # perform first operation
fclass.d x3, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x27, x14 # perform first operation
fclass.d x27, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x6, x18 # perform first operation
fclass.d x18, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x23, x18 # perform first operation
fclass.d x5, f12 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xa4e70b14 # load x3 with 32 MSBs 0x00000000a4e70b14
sw x3, 0(x2) # store x3 (0xa4e70b14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a4e70b14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000a4e70b14 from memory into f0
fclass.d x18, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xe80185f9 # load x3 with 32 MSBs 0x00000000e80185f9
sw x3, 0(x2) # store x3 (0xe80185f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e80185f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e80185f9 from memory into f1
fclass.d x7, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xc853e7f9 # load x3 with 32 MSBs 0x00000000c853e7f9
sw x3, 0(x2) # store x3 (0xc853e7f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c853e7f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c853e7f9 from memory into f2
fclass.d x1, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xe84ad76e # load x3 with 32 MSBs 0x00000000e84ad76e
sw x3, 0(x2) # store x3 (0xe84ad76e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e84ad76e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000e84ad76e from memory into f3
fclass.d x22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8ec3af0e # load x3 with 32 MSBs 0x000000008ec3af0e
sw x3, 0(x2) # store x3 (0x8ec3af0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ec3af0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000008ec3af0e from memory into f4
fclass.d x24, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5ca9a6c2 # load x3 with 32 MSBs 0x000000005ca9a6c2
sw x3, 0(x2) # store x3 (0x5ca9a6c2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005ca9a6c2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000005ca9a6c2 from memory into f5
fclass.d x8, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdacdbf2e # load x3 with 32 MSBs 0x00000000dacdbf2e
sw x3, 0(x2) # store x3 (0xdacdbf2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dacdbf2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000dacdbf2e from memory into f6
fclass.d x18, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x050861c6 # load x3 with 32 MSBs 0x00000000050861c6
sw x3, 0(x2) # store x3 (0x050861c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000050861c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000050861c6 from memory into f7
fclass.d x19, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x2faaa5ac # load x3 with 32 MSBs 0x000000002faaa5ac
sw x3, 0(x2) # store x3 (0x2faaa5ac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002faaa5ac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000002faaa5ac from memory into f8
fclass.d x29, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x429e119b # load x3 with 32 MSBs 0x00000000429e119b
sw x3, 0(x2) # store x3 (0x429e119b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000429e119b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000429e119b from memory into f9
fclass.d x7, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x3cf88c79 # load x3 with 32 MSBs 0x000000003cf88c79
sw x3, 0(x2) # store x3 (0x3cf88c79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003cf88c79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000003cf88c79 from memory into f10
fclass.d x28, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x011ca971 # load x3 with 32 MSBs 0x00000000011ca971
sw x3, 0(x2) # store x3 (0x011ca971) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000011ca971
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000011ca971 from memory into f11
fclass.d x23, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x4fcc531e # load x3 with 32 MSBs 0x000000004fcc531e
sw x3, 0(x2) # store x3 (0x4fcc531e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004fcc531e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004fcc531e from memory into f12
fclass.d x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x18e59446 # load x3 with 32 MSBs 0x0000000018e59446
sw x3, 0(x2) # store x3 (0x18e59446) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018e59446
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000018e59446 from memory into f13
fclass.d x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xdf21a944 # load x3 with 32 MSBs 0x00000000df21a944
sw x3, 0(x2) # store x3 (0xdf21a944) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000df21a944
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000df21a944 from memory into f14
fclass.d x17, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x8a40a5cd # load x3 with 32 MSBs 0x000000008a40a5cd
sw x3, 0(x2) # store x3 (0x8a40a5cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008a40a5cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000008a40a5cd from memory into f15
fclass.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x5e2c032c # load x3 with 32 MSBs 0x000000005e2c032c
sw x3, 0(x2) # store x3 (0x5e2c032c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e2c032c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000005e2c032c from memory into f16
fclass.d x29, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x431c774f # load x3 with 32 MSBs 0x00000000431c774f
sw x3, 0(x2) # store x3 (0x431c774f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000431c774f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000431c774f from memory into f17
fclass.d x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xe40dc72a # load x3 with 32 MSBs 0x00000000e40dc72a
sw x3, 0(x2) # store x3 (0xe40dc72a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e40dc72a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e40dc72a from memory into f18
fclass.d x18, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x59930ecf # load x3 with 32 MSBs 0x0000000059930ecf
sw x3, 0(x2) # store x3 (0x59930ecf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000059930ecf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000059930ecf from memory into f19
fclass.d x17, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xe4c41567 # load x3 with 32 MSBs 0x00000000e4c41567
sw x3, 0(x2) # store x3 (0xe4c41567) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4c41567
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e4c41567 from memory into f20
fclass.d x8, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xd8eb808a # load x3 with 32 MSBs 0x00000000d8eb808a
sw x3, 0(x2) # store x3 (0xd8eb808a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d8eb808a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d8eb808a from memory into f21
fclass.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x3ca60b6c # load x3 with 32 MSBs 0x000000003ca60b6c
sw x3, 0(x2) # store x3 (0x3ca60b6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ca60b6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003ca60b6c from memory into f22
fclass.d x16, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x417e952a # load x3 with 32 MSBs 0x00000000417e952a
sw x3, 0(x2) # store x3 (0x417e952a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000417e952a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000417e952a from memory into f23
fclass.d x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xc948af12 # load x3 with 32 MSBs 0x00000000c948af12
sw x3, 0(x2) # store x3 (0xc948af12) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c948af12
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000c948af12 from memory into f24
fclass.d x5, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x3dc186b8 # load x3 with 32 MSBs 0x000000003dc186b8
sw x3, 0(x2) # store x3 (0x3dc186b8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003dc186b8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003dc186b8 from memory into f25
fclass.d x24, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x438805d9 # load x3 with 32 MSBs 0x00000000438805d9
sw x3, 0(x2) # store x3 (0x438805d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000438805d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000438805d9 from memory into f26
fclass.d x21, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x79c2ed33 # load x3 with 32 MSBs 0x0000000079c2ed33
sw x3, 0(x2) # store x3 (0x79c2ed33) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000079c2ed33
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000079c2ed33 from memory into f27
fclass.d x22, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xf9b90499 # load x3 with 32 MSBs 0x00000000f9b90499
sw x3, 0(x2) # store x3 (0xf9b90499) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9b90499
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f9b90499 from memory into f28
fclass.d x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x6c835793 # load x3 with 32 MSBs 0x000000006c835793
sw x3, 0(x2) # store x3 (0x6c835793) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c835793
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006c835793 from memory into f29
fclass.d x25, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xd35855ad # load x3 with 32 MSBs 0x00000000d35855ad
sw x3, 0(x2) # store x3 (0xd35855ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d35855ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000d35855ad from memory into f30
fclass.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xcda83816 # load x3 with 32 MSBs 0x00000000cda83816
sw x3, 0(x2) # store x3 (0xcda83816) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cda83816
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000cda83816 from memory into f31
fclass.d x27, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fclass.d x16, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fclass.d x7, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fclass.d x1, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fclass.d x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fclass.d x6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fclass.d x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fclass.d x29, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fclass.d x19, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fclass.d x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fclass.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fclass.d x6, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fclass.d x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fclass.d x25, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fclass.d x18, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fclass.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fclass.d x17, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fclass.d x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fclass.d x17, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fclass.d x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fclass.d x24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fclass.d x17, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fclass.d x23, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff8000000000000 from memory into f10
fclass.d x30, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fclass.d x9, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
fclass.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000001 from memory into f2
fclass.d x5, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fclass.d x24, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
fclass.d x7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 364)

.EQU SIGSIZE,368


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
