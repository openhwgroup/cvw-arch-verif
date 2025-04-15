///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fclass.s.S
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
li x3, 0x0f50ccb4 # load x3 with value 0x0f50ccb4
sw x3, 0(x2) # store 0x0f50ccb4 in memory
flw f26, 0(x2) # load 0x0f50ccb4 from memory into f26
fclass.s x0, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x1e1a981a # load x3 with value 0x1e1a981a
sw x3, 0(x2) # store 0x1e1a981a in memory
flw f19, 0(x2) # load 0x1e1a981a from memory into f19
fclass.s x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x2a6b8b6b # load x3 with value 0x2a6b8b6b
sw x3, 0(x2) # store 0x2a6b8b6b in memory
flw f16, 0(x2) # load 0x2a6b8b6b from memory into f16
fclass.s x2, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x7f5581d4 # load x3 with value 0x7f5581d4
sw x3, 0(x2) # store 0x7f5581d4 in memory
flw f29, 0(x2) # load 0x7f5581d4 from memory into f29
fclass.s x3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x026180a8 # load x3 with value 0x026180a8
sw x3, 0(x2) # store 0x026180a8 in memory
flw f1, 0(x2) # load 0x026180a8 from memory into f1
fclass.s x4, f1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa5862c05 # load x3 with value 0xa5862c05
sw x3, 0(x2) # store 0xa5862c05 in memory
flw f20, 0(x2) # load 0xa5862c05 from memory into f20
fclass.s x5, f20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd78c7b00 # load x3 with value 0xd78c7b00
sw x3, 0(x2) # store 0xd78c7b00 in memory
flw f24, 0(x2) # load 0xd78c7b00 from memory into f24
fclass.s x6, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
la x2, scratch
li x3, 0x1ddaa819 # load x3 with value 0x1ddaa819
sw x3, 0(x2) # store 0x1ddaa819 in memory
flw f17, 0(x2) # load 0x1ddaa819 from memory into f17
fclass.s x7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0x5654483e # load x3 with value 0x5654483e
sw x3, 0(x2) # store 0x5654483e in memory
flw f23, 0(x2) # load 0x5654483e from memory into f23
fclass.s x8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xad2cc12d # load x3 with value 0xad2cc12d
sw x3, 0(x2) # store 0xad2cc12d in memory
flw f6, 0(x2) # load 0xad2cc12d from memory into f6
fclass.s x9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xa9c3e5bf # load x3 with value 0xa9c3e5bf
sw x3, 0(x2) # store 0xa9c3e5bf in memory
flw f9, 0(x2) # load 0xa9c3e5bf from memory into f9
fclass.s x10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x751570cd # load x3 with value 0x751570cd
sw x3, 0(x2) # store 0x751570cd in memory
flw f7, 0(x2) # load 0x751570cd from memory into f7
fclass.s x11, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xbaf4867f # load x3 with value 0xbaf4867f
sw x3, 0(x2) # store 0xbaf4867f in memory
flw f17, 0(x2) # load 0xbaf4867f from memory into f17
fclass.s x12, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xb4af1dc3 # load x3 with value 0xb4af1dc3
sw x3, 0(x2) # store 0xb4af1dc3 in memory
flw f27, 0(x2) # load 0xb4af1dc3 from memory into f27
fclass.s x13, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xc3464e14 # load x3 with value 0xc3464e14
sw x3, 0(x2) # store 0xc3464e14 in memory
flw f9, 0(x2) # load 0xc3464e14 from memory into f9
fclass.s x14, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x884eabc9 # load x3 with value 0x884eabc9
sw x3, 0(x2) # store 0x884eabc9 in memory
flw f14, 0(x2) # load 0x884eabc9 from memory into f14
fclass.s x15, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x4d928e03 # load x3 with value 0x4d928e03
sw x3, 0(x2) # store 0x4d928e03 in memory
flw f17, 0(x2) # load 0x4d928e03 from memory into f17
fclass.s x16, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x22ef147c # load x3 with value 0x22ef147c
sw x3, 0(x2) # store 0x22ef147c in memory
flw f22, 0(x2) # load 0x22ef147c from memory into f22
fclass.s x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x6cb9eb1f # load x3 with value 0x6cb9eb1f
sw x3, 0(x2) # store 0x6cb9eb1f in memory
flw f17, 0(x2) # load 0x6cb9eb1f from memory into f17
fclass.s x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x2f1ff248 # load x3 with value 0x2f1ff248
sw x3, 0(x2) # store 0x2f1ff248 in memory
flw f11, 0(x2) # load 0x2f1ff248 from memory into f11
fclass.s x19, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x92d59c89 # load x3 with value 0x92d59c89
sw x3, 0(x2) # store 0x92d59c89 in memory
flw f19, 0(x2) # load 0x92d59c89 from memory into f19
fclass.s x20, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xeb763b14 # load x3 with value 0xeb763b14
sw x3, 0(x2) # store 0xeb763b14 in memory
flw f1, 0(x2) # load 0xeb763b14 from memory into f1
fclass.s x21, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0xadfa4dbf # load x3 with value 0xadfa4dbf
sw x3, 0(x2) # store 0xadfa4dbf in memory
flw f22, 0(x2) # load 0xadfa4dbf from memory into f22
fclass.s x22, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x8cbe1ffd # load x3 with value 0x8cbe1ffd
sw x3, 0(x2) # store 0x8cbe1ffd in memory
flw f16, 0(x2) # load 0x8cbe1ffd from memory into f16
fclass.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x000f66ed # load x3 with value 0x000f66ed
sw x3, 0(x2) # store 0x000f66ed in memory
flw f15, 0(x2) # load 0x000f66ed from memory into f15
fclass.s x24, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x99cd948d # load x3 with value 0x99cd948d
sw x3, 0(x2) # store 0x99cd948d in memory
flw f2, 0(x2) # load 0x99cd948d from memory into f2
fclass.s x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xe935baaf # load x3 with value 0xe935baaf
sw x3, 0(x2) # store 0xe935baaf in memory
flw f1, 0(x2) # load 0xe935baaf from memory into f1
fclass.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xb39ebabb # load x3 with value 0xb39ebabb
sw x3, 0(x2) # store 0xb39ebabb in memory
flw f1, 0(x2) # load 0xb39ebabb from memory into f1
fclass.s x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x99049576 # load x3 with value 0x99049576
sw x3, 0(x2) # store 0x99049576 in memory
flw f14, 0(x2) # load 0x99049576 from memory into f14
fclass.s x28, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xff0bb35d # load x3 with value 0xff0bb35d
sw x3, 0(x2) # store 0xff0bb35d in memory
flw f21, 0(x2) # load 0xff0bb35d from memory into f21
fclass.s x29, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x6578036e # load x3 with value 0x6578036e
sw x3, 0(x2) # store 0x6578036e in memory
flw f28, 0(x2) # load 0x6578036e from memory into f28
fclass.s x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x7f10b369 # load x3 with value 0x7f10b369
sw x3, 0(x2) # store 0x7f10b369 in memory
flw f9, 0(x2) # load 0x7f10b369 from memory into f9
fclass.s x31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x2 # perform first operation
fclass.s x18, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x24, x2 # perform first operation
fclass.s x6, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x2, x29 # perform first operation
fclass.s x24, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f6, f3, f10 # perform first operation
fclass.s x3, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x24, x5 # perform first operation
fclass.s x21, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x23, x29 # perform first operation
fclass.s x23, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x26, x23 # perform first operation
fclass.s x18, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x26, x16 # perform first operation
fclass.s x5, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x20, x2 # perform first operation
fclass.s x6, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x22, x20 # perform first operation
fclass.s x27, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x10, x15 # perform first operation
fclass.s x21, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x5, x1 # perform first operation
fclass.s x17, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x14, x1 # perform first operation
fclass.s x14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x27, x8 # perform first operation
fclass.s x8, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x30, x12 # perform first operation
fclass.s x7, f26 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xdd54fc4c # load x3 with value 0xdd54fc4c
sw x3, 0(x2) # store 0xdd54fc4c in memory
flw f0, 0(x2) # load 0xdd54fc4c from memory into f0
fclass.s x25, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x48fa8940 # load x3 with value 0x48fa8940
sw x3, 0(x2) # store 0x48fa8940 in memory
flw f1, 0(x2) # load 0x48fa8940 from memory into f1
fclass.s x28, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x97d4e881 # load x3 with value 0x97d4e881
sw x3, 0(x2) # store 0x97d4e881 in memory
flw f2, 0(x2) # load 0x97d4e881 from memory into f2
fclass.s x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x542c98e0 # load x3 with value 0x542c98e0
sw x3, 0(x2) # store 0x542c98e0 in memory
flw f3, 0(x2) # load 0x542c98e0 from memory into f3
fclass.s x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xec448efe # load x3 with value 0xec448efe
sw x3, 0(x2) # store 0xec448efe in memory
flw f4, 0(x2) # load 0xec448efe from memory into f4
fclass.s x15, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0d4af8dd # load x3 with value 0x0d4af8dd
sw x3, 0(x2) # store 0x0d4af8dd in memory
flw f5, 0(x2) # load 0x0d4af8dd from memory into f5
fclass.s x4, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x650227c2 # load x3 with value 0x650227c2
sw x3, 0(x2) # store 0x650227c2 in memory
flw f6, 0(x2) # load 0x650227c2 from memory into f6
fclass.s x2, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xaa035384 # load x3 with value 0xaa035384
sw x3, 0(x2) # store 0xaa035384 in memory
flw f7, 0(x2) # load 0xaa035384 from memory into f7
fclass.s x19, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x5465ab2e # load x3 with value 0x5465ab2e
sw x3, 0(x2) # store 0x5465ab2e in memory
flw f8, 0(x2) # load 0x5465ab2e from memory into f8
fclass.s x11, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xd00e61d1 # load x3 with value 0xd00e61d1
sw x3, 0(x2) # store 0xd00e61d1 in memory
flw f9, 0(x2) # load 0xd00e61d1 from memory into f9
fclass.s x21, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x79949de4 # load x3 with value 0x79949de4
sw x3, 0(x2) # store 0x79949de4 in memory
flw f10, 0(x2) # load 0x79949de4 from memory into f10
fclass.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x23981383 # load x3 with value 0x23981383
sw x3, 0(x2) # store 0x23981383 in memory
flw f11, 0(x2) # load 0x23981383 from memory into f11
fclass.s x21, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x35ff07a5 # load x3 with value 0x35ff07a5
sw x3, 0(x2) # store 0x35ff07a5 in memory
flw f12, 0(x2) # load 0x35ff07a5 from memory into f12
fclass.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xea220e14 # load x3 with value 0xea220e14
sw x3, 0(x2) # store 0xea220e14 in memory
flw f13, 0(x2) # load 0xea220e14 from memory into f13
fclass.s x27, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x0f9c8601 # load x3 with value 0x0f9c8601
sw x3, 0(x2) # store 0x0f9c8601 in memory
flw f14, 0(x2) # load 0x0f9c8601 from memory into f14
fclass.s x14, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x98f4dbb4 # load x3 with value 0x98f4dbb4
sw x3, 0(x2) # store 0x98f4dbb4 in memory
flw f15, 0(x2) # load 0x98f4dbb4 from memory into f15
fclass.s x26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xc74844b8 # load x3 with value 0xc74844b8
sw x3, 0(x2) # store 0xc74844b8 in memory
flw f16, 0(x2) # load 0xc74844b8 from memory into f16
fclass.s x31, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x94c94cd8 # load x3 with value 0x94c94cd8
sw x3, 0(x2) # store 0x94c94cd8 in memory
flw f17, 0(x2) # load 0x94c94cd8 from memory into f17
fclass.s x25, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x672ee54a # load x3 with value 0x672ee54a
sw x3, 0(x2) # store 0x672ee54a in memory
flw f18, 0(x2) # load 0x672ee54a from memory into f18
fclass.s x12, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x3db9ba1b # load x3 with value 0x3db9ba1b
sw x3, 0(x2) # store 0x3db9ba1b in memory
flw f19, 0(x2) # load 0x3db9ba1b from memory into f19
fclass.s x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x93d8cdd1 # load x3 with value 0x93d8cdd1
sw x3, 0(x2) # store 0x93d8cdd1 in memory
flw f20, 0(x2) # load 0x93d8cdd1 from memory into f20
fclass.s x1, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xd9c45afe # load x3 with value 0xd9c45afe
sw x3, 0(x2) # store 0xd9c45afe in memory
flw f21, 0(x2) # load 0xd9c45afe from memory into f21
fclass.s x31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x20886c4e # load x3 with value 0x20886c4e
sw x3, 0(x2) # store 0x20886c4e in memory
flw f22, 0(x2) # load 0x20886c4e from memory into f22
fclass.s x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0xd2bf3179 # load x3 with value 0xd2bf3179
sw x3, 0(x2) # store 0xd2bf3179 in memory
flw f23, 0(x2) # load 0xd2bf3179 from memory into f23
fclass.s x21, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x931a18b4 # load x3 with value 0x931a18b4
sw x3, 0(x2) # store 0x931a18b4 in memory
flw f24, 0(x2) # load 0x931a18b4 from memory into f24
fclass.s x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x318f71db # load x3 with value 0x318f71db
sw x3, 0(x2) # store 0x318f71db in memory
flw f25, 0(x2) # load 0x318f71db from memory into f25
fclass.s x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xf8209266 # load x3 with value 0xf8209266
sw x3, 0(x2) # store 0xf8209266 in memory
flw f26, 0(x2) # load 0xf8209266 from memory into f26
fclass.s x5, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x8a688750 # load x3 with value 0x8a688750
sw x3, 0(x2) # store 0x8a688750 in memory
flw f27, 0(x2) # load 0x8a688750 from memory into f27
fclass.s x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xb7fe6dd7 # load x3 with value 0xb7fe6dd7
sw x3, 0(x2) # store 0xb7fe6dd7 in memory
flw f28, 0(x2) # load 0xb7fe6dd7 from memory into f28
fclass.s x16, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x3a0c9dd8 # load x3 with value 0x3a0c9dd8
sw x3, 0(x2) # store 0x3a0c9dd8 in memory
flw f29, 0(x2) # load 0x3a0c9dd8 from memory into f29
fclass.s x24, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xb6d1528b # load x3 with value 0xb6d1528b
sw x3, 0(x2) # store 0xb6d1528b in memory
flw f30, 0(x2) # load 0xb6d1528b from memory into f30
fclass.s x17, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x2f32d9d8 # load x3 with value 0x2f32d9d8
sw x3, 0(x2) # store 0x2f32d9d8 in memory
flw f31, 0(x2) # load 0x2f32d9d8 from memory into f31
fclass.s x19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fclass.s x10, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fclass.s x14, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fclass.s x8, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fclass.s x23, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fclass.s x10, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fclass.s x20, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fclass.s x21, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fclass.s x25, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fclass.s x30, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fclass.s x8, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fclass.s x21, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fclass.s x29, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fclass.s x28, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fclass.s x20, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fclass.s x14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fclass.s x6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fclass.s x16, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fclass.s x24, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fclass.s x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fclass.s x5, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fclass.s x31, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fclass.s x10, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fclass.s x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fclass.s x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fclass.s x23, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fclass.s x23, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fclass.s x5, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fclass.s x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 364)

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
