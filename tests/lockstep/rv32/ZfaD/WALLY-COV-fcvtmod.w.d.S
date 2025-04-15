///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fcvtmod.w.d.S
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
li x3, 0xa91c2ab1 # load x3 with 32 MSBs 0x00000000a91c2ab1
sw x3, 0(x2) # store x3 (0xa91c2ab1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a91c2ab1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000a91c2ab1 from memory into f16
fcvtmod.w.d x0, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xee1cd6ae # load x3 with 32 MSBs 0x00000000ee1cd6ae
sw x3, 0(x2) # store x3 (0xee1cd6ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ee1cd6ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ee1cd6ae from memory into f26
fcvtmod.w.d x1, f26, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xa1cdb8ae # load x3 with 32 MSBs 0x00000000a1cdb8ae
sw x3, 0(x2) # store x3 (0xa1cdb8ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a1cdb8ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000a1cdb8ae from memory into f27
fcvtmod.w.d x2, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x791bc20d # load x3 with 32 MSBs 0x00000000791bc20d
sw x3, 0(x2) # store x3 (0x791bc20d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000791bc20d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000791bc20d from memory into f29
fcvtmod.w.d x3, f29, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc3df32be # load x3 with 32 MSBs 0x00000000c3df32be
sw x3, 0(x2) # store x3 (0xc3df32be) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c3df32be
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000c3df32be from memory into f14
fcvtmod.w.d x4, f14, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5c7c1c6e # load x3 with 32 MSBs 0x000000005c7c1c6e
sw x3, 0(x2) # store x3 (0x5c7c1c6e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c7c1c6e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000005c7c1c6e from memory into f21
fcvtmod.w.d x5, f21, rtz # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa90eaa02 # load x3 with 32 MSBs 0x00000000a90eaa02
sw x3, 0(x2) # store x3 (0xa90eaa02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a90eaa02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a90eaa02 from memory into f11
fcvtmod.w.d x6, f11, rtz # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x894e03c8 # load x3 with 32 MSBs 0x00000000894e03c8
sw x3, 0(x2) # store x3 (0x894e03c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000894e03c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000894e03c8 from memory into f21
fcvtmod.w.d x7, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x8b10183f # load x3 with 32 MSBs 0x000000008b10183f
sw x3, 0(x2) # store x3 (0x8b10183f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008b10183f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000008b10183f from memory into f31
fcvtmod.w.d x8, f31, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x530df550 # load x3 with 32 MSBs 0x00000000530df550
sw x3, 0(x2) # store x3 (0x530df550) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000530df550
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000530df550 from memory into f5
fcvtmod.w.d x9, f5, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xccefe4ac # load x3 with 32 MSBs 0x00000000ccefe4ac
sw x3, 0(x2) # store x3 (0xccefe4ac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ccefe4ac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ccefe4ac from memory into f16
fcvtmod.w.d x10, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xa882500f # load x3 with 32 MSBs 0x00000000a882500f
sw x3, 0(x2) # store x3 (0xa882500f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a882500f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a882500f from memory into f28
fcvtmod.w.d x11, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x1e7053cb # load x3 with 32 MSBs 0x000000001e7053cb
sw x3, 0(x2) # store x3 (0x1e7053cb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e7053cb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000001e7053cb from memory into f17
fcvtmod.w.d x12, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xe08e4d09 # load x3 with 32 MSBs 0x00000000e08e4d09
sw x3, 0(x2) # store x3 (0xe08e4d09) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e08e4d09
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e08e4d09 from memory into f1
fcvtmod.w.d x13, f1, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xaf06cf23 # load x3 with 32 MSBs 0x00000000af06cf23
sw x3, 0(x2) # store x3 (0xaf06cf23) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af06cf23
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000af06cf23 from memory into f12
fcvtmod.w.d x14, f12, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xf9e0f85f # load x3 with 32 MSBs 0x00000000f9e0f85f
sw x3, 0(x2) # store x3 (0xf9e0f85f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9e0f85f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f9e0f85f from memory into f17
fcvtmod.w.d x15, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x32cb9e94 # load x3 with 32 MSBs 0x0000000032cb9e94
sw x3, 0(x2) # store x3 (0x32cb9e94) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000032cb9e94
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000032cb9e94 from memory into f26
fcvtmod.w.d x16, f26, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xe305854f # load x3 with 32 MSBs 0x00000000e305854f
sw x3, 0(x2) # store x3 (0xe305854f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e305854f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e305854f from memory into f18
fcvtmod.w.d x17, f18, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x7c9bee51 # load x3 with 32 MSBs 0x000000007c9bee51
sw x3, 0(x2) # store x3 (0x7c9bee51) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007c9bee51
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000007c9bee51 from memory into f21
fcvtmod.w.d x18, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xb53c2dd5 # load x3 with 32 MSBs 0x00000000b53c2dd5
sw x3, 0(x2) # store x3 (0xb53c2dd5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b53c2dd5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000b53c2dd5 from memory into f20
fcvtmod.w.d x19, f20, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x23cb8a7e # load x3 with 32 MSBs 0x0000000023cb8a7e
sw x3, 0(x2) # store x3 (0x23cb8a7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000023cb8a7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000023cb8a7e from memory into f19
fcvtmod.w.d x20, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x2071e371 # load x3 with 32 MSBs 0x000000002071e371
sw x3, 0(x2) # store x3 (0x2071e371) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002071e371
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002071e371 from memory into f5
fcvtmod.w.d x21, f5, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xfd8ef4c3 # load x3 with 32 MSBs 0x00000000fd8ef4c3
sw x3, 0(x2) # store x3 (0xfd8ef4c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd8ef4c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000fd8ef4c3 from memory into f21
fcvtmod.w.d x22, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x9ea9559c # load x3 with 32 MSBs 0x000000009ea9559c
sw x3, 0(x2) # store x3 (0x9ea9559c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ea9559c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000009ea9559c from memory into f28
fcvtmod.w.d x23, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xea114815 # load x3 with 32 MSBs 0x00000000ea114815
sw x3, 0(x2) # store x3 (0xea114815) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea114815
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ea114815 from memory into f11
fcvtmod.w.d x24, f11, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x57296f19 # load x3 with 32 MSBs 0x0000000057296f19
sw x3, 0(x2) # store x3 (0x57296f19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000057296f19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000057296f19 from memory into f19
fcvtmod.w.d x25, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xaa3d408f # load x3 with 32 MSBs 0x00000000aa3d408f
sw x3, 0(x2) # store x3 (0xaa3d408f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa3d408f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000aa3d408f from memory into f25
fcvtmod.w.d x26, f25, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xdbd2bc74 # load x3 with 32 MSBs 0x00000000dbd2bc74
sw x3, 0(x2) # store x3 (0xdbd2bc74) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbd2bc74
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000dbd2bc74 from memory into f17
fcvtmod.w.d x27, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xa42d97b0 # load x3 with 32 MSBs 0x00000000a42d97b0
sw x3, 0(x2) # store x3 (0xa42d97b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a42d97b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a42d97b0 from memory into f28
fcvtmod.w.d x28, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xad4b1081 # load x3 with 32 MSBs 0x00000000ad4b1081
sw x3, 0(x2) # store x3 (0xad4b1081) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad4b1081
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ad4b1081 from memory into f5
fcvtmod.w.d x29, f5, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x691a7933 # load x3 with 32 MSBs 0x00000000691a7933
sw x3, 0(x2) # store x3 (0x691a7933) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000691a7933
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000691a7933 from memory into f27
fcvtmod.w.d x30, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x8bd96e72 # load x3 with 32 MSBs 0x000000008bd96e72
sw x3, 0(x2) # store x3 (0x8bd96e72) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008bd96e72
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000008bd96e72 from memory into f7
fcvtmod.w.d x31, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x22, x29 # perform first operation
fcvtmod.w.d x21, f12, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x3, x21 # perform first operation
fcvtmod.w.d x7, f26, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x18 # perform first operation
fcvtmod.w.d x24, f23, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f7, f1, f22 # perform first operation
fcvtmod.w.d x1, f7, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x6, x26 # perform first operation
fcvtmod.w.d x18, f3, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x5, x8 # perform first operation
fcvtmod.w.d x8, f17, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x27, x12 # perform first operation
fcvtmod.w.d x9, f10, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x3, x30 # perform first operation
fcvtmod.w.d x17, f16, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x22, x3 # perform first operation
fcvtmod.w.d x14, f23, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x28, x14 # perform first operation
fcvtmod.w.d x24, f6, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x8, x30 # perform first operation
fcvtmod.w.d x28, f21, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x7, x24 # perform first operation
fcvtmod.w.d x5, f10, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x30, x26 # perform first operation
fcvtmod.w.d x30, f31, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x12, x7 # perform first operation
fcvtmod.w.d x7, f24, rtz # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x16, x28 # perform first operation
fcvtmod.w.d x8, f1, rtz # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x86694463 # load x3 with 32 MSBs 0x0000000086694463
sw x3, 0(x2) # store x3 (0x86694463) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086694463
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000086694463 from memory into f0
fcvtmod.w.d x27, f0, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x078a19d7 # load x3 with 32 MSBs 0x00000000078a19d7
sw x3, 0(x2) # store x3 (0x078a19d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000078a19d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000078a19d7 from memory into f1
fcvtmod.w.d x6, f1, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x6, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xadda7e0e # load x3 with 32 MSBs 0x00000000adda7e0e
sw x3, 0(x2) # store x3 (0xadda7e0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adda7e0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000adda7e0e from memory into f2
fcvtmod.w.d x14, f2, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x4f8f0cc3 # load x3 with 32 MSBs 0x000000004f8f0cc3
sw x3, 0(x2) # store x3 (0x4f8f0cc3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f8f0cc3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000004f8f0cc3 from memory into f3
fcvtmod.w.d x13, f3, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x31b0b90e # load x3 with 32 MSBs 0x0000000031b0b90e
sw x3, 0(x2) # store x3 (0x31b0b90e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031b0b90e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000031b0b90e from memory into f4
fcvtmod.w.d x29, f4, rtz # perform operation
RVTEST_SIGUPD(x5, x0, x29, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3ed5b6f2 # load x3 with 32 MSBs 0x000000003ed5b6f2
sw x3, 0(x2) # store x3 (0x3ed5b6f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ed5b6f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000003ed5b6f2 from memory into f5
fcvtmod.w.d x9, f5, rtz # perform operation
RVTEST_SIGUPD(x6, x0, x9, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x19486112 # load x3 with 32 MSBs 0x0000000019486112
sw x3, 0(x2) # store x3 (0x19486112) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000019486112
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000019486112 from memory into f6
fcvtmod.w.d x18, f6, rtz # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7ad504f4 # load x3 with 32 MSBs 0x000000007ad504f4
sw x3, 0(x2) # store x3 (0x7ad504f4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ad504f4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000007ad504f4 from memory into f7
fcvtmod.w.d x9, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x6b1a2f80 # load x3 with 32 MSBs 0x000000006b1a2f80
sw x3, 0(x2) # store x3 (0x6b1a2f80) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b1a2f80
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000006b1a2f80 from memory into f8
fcvtmod.w.d x12, f8, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xe22447cc # load x3 with 32 MSBs 0x00000000e22447cc
sw x3, 0(x2) # store x3 (0xe22447cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e22447cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e22447cc from memory into f9
fcvtmod.w.d x24, f9, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x24, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x348cc33f # load x3 with 32 MSBs 0x00000000348cc33f
sw x3, 0(x2) # store x3 (0x348cc33f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000348cc33f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000348cc33f from memory into f10
fcvtmod.w.d x15, f10, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x37ca386e # load x3 with 32 MSBs 0x0000000037ca386e
sw x3, 0(x2) # store x3 (0x37ca386e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037ca386e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000037ca386e from memory into f11
fcvtmod.w.d x1, f11, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x4ccab5b4 # load x3 with 32 MSBs 0x000000004ccab5b4
sw x3, 0(x2) # store x3 (0x4ccab5b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ccab5b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004ccab5b4 from memory into f12
fcvtmod.w.d x13, f12, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x63bddbb9 # load x3 with 32 MSBs 0x0000000063bddbb9
sw x3, 0(x2) # store x3 (0x63bddbb9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063bddbb9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000063bddbb9 from memory into f13
fcvtmod.w.d x7, f13, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x7, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xbfcede9a # load x3 with 32 MSBs 0x00000000bfcede9a
sw x3, 0(x2) # store x3 (0xbfcede9a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bfcede9a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000bfcede9a from memory into f14
fcvtmod.w.d x3, f14, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x53970cf7 # load x3 with 32 MSBs 0x0000000053970cf7
sw x3, 0(x2) # store x3 (0x53970cf7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053970cf7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000053970cf7 from memory into f15
fcvtmod.w.d x17, f15, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xeb8a9ec3 # load x3 with 32 MSBs 0x00000000eb8a9ec3
sw x3, 0(x2) # store x3 (0xeb8a9ec3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb8a9ec3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000eb8a9ec3 from memory into f16
fcvtmod.w.d x7, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x24be0aee # load x3 with 32 MSBs 0x0000000024be0aee
sw x3, 0(x2) # store x3 (0x24be0aee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000024be0aee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000024be0aee from memory into f17
fcvtmod.w.d x8, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x8, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x22e6c451 # load x3 with 32 MSBs 0x0000000022e6c451
sw x3, 0(x2) # store x3 (0x22e6c451) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022e6c451
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000022e6c451 from memory into f18
fcvtmod.w.d x13, f18, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xa32d44ba # load x3 with 32 MSBs 0x00000000a32d44ba
sw x3, 0(x2) # store x3 (0xa32d44ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a32d44ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a32d44ba from memory into f19
fcvtmod.w.d x22, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x22, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xf849f89a # load x3 with 32 MSBs 0x00000000f849f89a
sw x3, 0(x2) # store x3 (0xf849f89a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f849f89a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000f849f89a from memory into f20
fcvtmod.w.d x10, f20, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa00159bc # load x3 with 32 MSBs 0x00000000a00159bc
sw x3, 0(x2) # store x3 (0xa00159bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a00159bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a00159bc from memory into f21
fcvtmod.w.d x3, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x55e6b1e3 # load x3 with 32 MSBs 0x0000000055e6b1e3
sw x3, 0(x2) # store x3 (0x55e6b1e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055e6b1e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000055e6b1e3 from memory into f22
fcvtmod.w.d x29, f22, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x2175b863 # load x3 with 32 MSBs 0x000000002175b863
sw x3, 0(x2) # store x3 (0x2175b863) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002175b863
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002175b863 from memory into f23
fcvtmod.w.d x29, f23, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x29, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x831d6203 # load x3 with 32 MSBs 0x00000000831d6203
sw x3, 0(x2) # store x3 (0x831d6203) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000831d6203
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000831d6203 from memory into f24
fcvtmod.w.d x1, f24, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xda9d2449 # load x3 with 32 MSBs 0x00000000da9d2449
sw x3, 0(x2) # store x3 (0xda9d2449) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da9d2449
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000da9d2449 from memory into f25
fcvtmod.w.d x18, f25, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x18, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xf6ce7816 # load x3 with 32 MSBs 0x00000000f6ce7816
sw x3, 0(x2) # store x3 (0xf6ce7816) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f6ce7816
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f6ce7816 from memory into f26
fcvtmod.w.d x19, f26, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x2e9fd901 # load x3 with 32 MSBs 0x000000002e9fd901
sw x3, 0(x2) # store x3 (0x2e9fd901) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e9fd901
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000002e9fd901 from memory into f27
fcvtmod.w.d x5, f27, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x5, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xe7d16937 # load x3 with 32 MSBs 0x00000000e7d16937
sw x3, 0(x2) # store x3 (0xe7d16937) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e7d16937
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e7d16937 from memory into f28
fcvtmod.w.d x2, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x14675dc0 # load x3 with 32 MSBs 0x0000000014675dc0
sw x3, 0(x2) # store x3 (0x14675dc0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014675dc0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000014675dc0 from memory into f29
fcvtmod.w.d x17, f29, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xe47a2378 # load x3 with 32 MSBs 0x00000000e47a2378
sw x3, 0(x2) # store x3 (0xe47a2378) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e47a2378
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000e47a2378 from memory into f30
fcvtmod.w.d x15, f30, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x9a62a1df # load x3 with 32 MSBs 0x000000009a62a1df
sw x3, 0(x2) # store x3 (0x9a62a1df) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a62a1df
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009a62a1df from memory into f31
fcvtmod.w.d x7, f31, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x7, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvtmod.w.d x6, f13, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
fcvtmod.w.d x1, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fcvtmod.w.d x31, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fcvtmod.w.d x11, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x11, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fcvtmod.w.d x27, f29, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fcvtmod.w.d x17, f12, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fcvtmod.w.d x18, f23, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fcvtmod.w.d x27, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x27, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fcvtmod.w.d x31, f25, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fcvtmod.w.d x31, f28, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x31, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
fcvtmod.w.d x29, f10, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x29, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fcvtmod.w.d x1, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x1, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fcvtmod.w.d x3, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fcvtmod.w.d x20, f21, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x20, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fcvtmod.w.d x3, f22, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fcvtmod.w.d x16, f9, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x16, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
fcvtmod.w.d x17, f16, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fcvtmod.w.d x28, f24, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x28, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fcvtmod.w.d x30, f1, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x30, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fcvtmod.w.d x16, f10, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x16, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fcvtmod.w.d x5, f19, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fcvtmod.w.d x22, f30, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x22, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff8000000000000 from memory into f1
fcvtmod.w.d x21, f1, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fcvtmod.w.d x16, f31, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x16, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fcvtmod.w.d x27, f17, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x27, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff0000000000001 from memory into f7
fcvtmod.w.d x29, f7, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x29, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fcvtmod.w.d x20, f9, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fcvtmod.w.d x17, f11, rtz # perform operation
RVTEST_SIGUPD(x4, x0, x17, 364)

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
