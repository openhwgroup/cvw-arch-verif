///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fcvt.wu.d.S
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
li x3, 0x0b17c2ce # load x3 with 32 MSBs 0x000000000b17c2ce
sw x3, 0(x2) # store x3 (0x0b17c2ce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b17c2ce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000000b17c2ce from memory into f9
fcvt.wu.d x0, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x2e44ca9b # load x3 with 32 MSBs 0x000000002e44ca9b
sw x3, 0(x2) # store x3 (0x2e44ca9b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e44ca9b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002e44ca9b from memory into f23
fcvt.wu.d x1, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x1cec40c7 # load x3 with 32 MSBs 0x000000001cec40c7
sw x3, 0(x2) # store x3 (0x1cec40c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001cec40c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001cec40c7 from memory into f22
fcvt.wu.d x2, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xb0bc9732 # load x3 with 32 MSBs 0x00000000b0bc9732
sw x3, 0(x2) # store x3 (0xb0bc9732) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0bc9732
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b0bc9732 from memory into f10
fcvt.wu.d x3, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb48cf162 # load x3 with 32 MSBs 0x00000000b48cf162
sw x3, 0(x2) # store x3 (0xb48cf162) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b48cf162
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b48cf162 from memory into f19
fcvt.wu.d x4, f19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0aa5b04d # load x3 with 32 MSBs 0x000000000aa5b04d
sw x3, 0(x2) # store x3 (0x0aa5b04d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000aa5b04d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000000aa5b04d from memory into f6
fcvt.wu.d x5, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
la x2, scratch
li x3, 0xabd0c19c # load x3 with 32 MSBs 0x00000000abd0c19c
sw x3, 0(x2) # store x3 (0xabd0c19c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000abd0c19c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000abd0c19c from memory into f18
fcvt.wu.d x6, f18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9d0d49b2 # load x3 with 32 MSBs 0x000000009d0d49b2
sw x3, 0(x2) # store x3 (0x9d0d49b2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d0d49b2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000009d0d49b2 from memory into f16
fcvt.wu.d x7, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xa63d548a # load x3 with 32 MSBs 0x00000000a63d548a
sw x3, 0(x2) # store x3 (0xa63d548a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a63d548a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000a63d548a from memory into f5
fcvt.wu.d x8, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x40de8145 # load x3 with 32 MSBs 0x0000000040de8145
sw x3, 0(x2) # store x3 (0x40de8145) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040de8145
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000040de8145 from memory into f1
fcvt.wu.d x9, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x278229f5 # load x3 with 32 MSBs 0x00000000278229f5
sw x3, 0(x2) # store x3 (0x278229f5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000278229f5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000278229f5 from memory into f28
fcvt.wu.d x10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xf247cfa9 # load x3 with 32 MSBs 0x00000000f247cfa9
sw x3, 0(x2) # store x3 (0xf247cfa9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f247cfa9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f247cfa9 from memory into f17
fcvt.wu.d x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0xf91395cd # load x3 with 32 MSBs 0x00000000f91395cd
sw x3, 0(x2) # store x3 (0xf91395cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f91395cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f91395cd from memory into f12
fcvt.wu.d x12, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xbcdc8973 # load x3 with 32 MSBs 0x00000000bcdc8973
sw x3, 0(x2) # store x3 (0xbcdc8973) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bcdc8973
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000bcdc8973 from memory into f17
fcvt.wu.d x13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x5d83f3cd # load x3 with 32 MSBs 0x000000005d83f3cd
sw x3, 0(x2) # store x3 (0x5d83f3cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d83f3cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000005d83f3cd from memory into f5
fcvt.wu.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x466ce41b # load x3 with 32 MSBs 0x00000000466ce41b
sw x3, 0(x2) # store x3 (0x466ce41b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000466ce41b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000466ce41b from memory into f26
fcvt.wu.d x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xde54fcc7 # load x3 with 32 MSBs 0x00000000de54fcc7
sw x3, 0(x2) # store x3 (0xde54fcc7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de54fcc7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000de54fcc7 from memory into f15
fcvt.wu.d x16, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x821abf8e # load x3 with 32 MSBs 0x00000000821abf8e
sw x3, 0(x2) # store x3 (0x821abf8e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000821abf8e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000821abf8e from memory into f16
fcvt.wu.d x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x0b8aa764 # load x3 with 32 MSBs 0x000000000b8aa764
sw x3, 0(x2) # store x3 (0x0b8aa764) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b8aa764
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000b8aa764 from memory into f30
fcvt.wu.d x18, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x86dcf298 # load x3 with 32 MSBs 0x0000000086dcf298
sw x3, 0(x2) # store x3 (0x86dcf298) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000086dcf298
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000086dcf298 from memory into f18
fcvt.wu.d x19, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x360259e5 # load x3 with 32 MSBs 0x00000000360259e5
sw x3, 0(x2) # store x3 (0x360259e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000360259e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000360259e5 from memory into f5
fcvt.wu.d x20, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x83a1cbd5 # load x3 with 32 MSBs 0x0000000083a1cbd5
sw x3, 0(x2) # store x3 (0x83a1cbd5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000083a1cbd5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000083a1cbd5 from memory into f23
fcvt.wu.d x21, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x69b25029 # load x3 with 32 MSBs 0x0000000069b25029
sw x3, 0(x2) # store x3 (0x69b25029) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069b25029
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000069b25029 from memory into f13
fcvt.wu.d x22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xe363cd92 # load x3 with 32 MSBs 0x00000000e363cd92
sw x3, 0(x2) # store x3 (0xe363cd92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e363cd92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000e363cd92 from memory into f16
fcvt.wu.d x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x6bb0e0a4 # load x3 with 32 MSBs 0x000000006bb0e0a4
sw x3, 0(x2) # store x3 (0x6bb0e0a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006bb0e0a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000006bb0e0a4 from memory into f6
fcvt.wu.d x24, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xd43f8bea # load x3 with 32 MSBs 0x00000000d43f8bea
sw x3, 0(x2) # store x3 (0xd43f8bea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d43f8bea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000d43f8bea from memory into f5
fcvt.wu.d x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x6392d5ec # load x3 with 32 MSBs 0x000000006392d5ec
sw x3, 0(x2) # store x3 (0x6392d5ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006392d5ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006392d5ec from memory into f15
fcvt.wu.d x26, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x143cb5bf # load x3 with 32 MSBs 0x00000000143cb5bf
sw x3, 0(x2) # store x3 (0x143cb5bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000143cb5bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000143cb5bf from memory into f28
fcvt.wu.d x27, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x11c4f80c # load x3 with 32 MSBs 0x0000000011c4f80c
sw x3, 0(x2) # store x3 (0x11c4f80c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011c4f80c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000011c4f80c from memory into f19
fcvt.wu.d x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x92d415c4 # load x3 with 32 MSBs 0x0000000092d415c4
sw x3, 0(x2) # store x3 (0x92d415c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092d415c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000092d415c4 from memory into f30
fcvt.wu.d x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xc8e14c5f # load x3 with 32 MSBs 0x00000000c8e14c5f
sw x3, 0(x2) # store x3 (0xc8e14c5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c8e14c5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000c8e14c5f from memory into f22
fcvt.wu.d x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x4ac0ec55 # load x3 with 32 MSBs 0x000000004ac0ec55
sw x3, 0(x2) # store x3 (0x4ac0ec55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ac0ec55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004ac0ec55 from memory into f12
fcvt.wu.d x31, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x20, x7 # perform first operation
fcvt.wu.d x6, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x2, x29 # perform first operation
fcvt.wu.d x27, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x16, x31 # perform first operation
fcvt.wu.d x27, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f8, f3, f23 # perform first operation
fcvt.wu.d x23, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x27, x29 # perform first operation
fcvt.wu.d x29, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x21, x11 # perform first operation
fcvt.wu.d x21, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x13, x25 # perform first operation
fcvt.wu.d x9, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x3, x25 # perform first operation
fcvt.wu.d x22, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x8, x23 # perform first operation
fcvt.wu.d x28, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x5, x2 # perform first operation
fcvt.wu.d x11, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x15, x26 # perform first operation
fcvt.wu.d x24, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x14, x2 # perform first operation
fcvt.wu.d x20, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x23, x9 # perform first operation
fcvt.wu.d x23, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x15, x17 # perform first operation
fcvt.wu.d x17, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x10, x17 # perform first operation
fcvt.wu.d x6, f24 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x1f93f5f5 # load x3 with 32 MSBs 0x000000001f93f5f5
sw x3, 0(x2) # store x3 (0x1f93f5f5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f93f5f5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000001f93f5f5 from memory into f0
fcvt.wu.d x21, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xa741714f # load x3 with 32 MSBs 0x00000000a741714f
sw x3, 0(x2) # store x3 (0xa741714f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a741714f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a741714f from memory into f1
fcvt.wu.d x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x6ad76a6b # load x3 with 32 MSBs 0x000000006ad76a6b
sw x3, 0(x2) # store x3 (0x6ad76a6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ad76a6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006ad76a6b from memory into f2
fcvt.wu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x8219b674 # load x3 with 32 MSBs 0x000000008219b674
sw x3, 0(x2) # store x3 (0x8219b674) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008219b674
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000008219b674 from memory into f3
fcvt.wu.d x31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb4fceaf8 # load x3 with 32 MSBs 0x00000000b4fceaf8
sw x3, 0(x2) # store x3 (0xb4fceaf8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b4fceaf8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000b4fceaf8 from memory into f4
fcvt.wu.d x23, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf2f7bf3f # load x3 with 32 MSBs 0x00000000f2f7bf3f
sw x3, 0(x2) # store x3 (0xf2f7bf3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2f7bf3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f2f7bf3f from memory into f5
fcvt.wu.d x21, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x196db3d2 # load x3 with 32 MSBs 0x00000000196db3d2
sw x3, 0(x2) # store x3 (0x196db3d2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000196db3d2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000196db3d2 from memory into f6
fcvt.wu.d x22, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x684026fa # load x3 with 32 MSBs 0x00000000684026fa
sw x3, 0(x2) # store x3 (0x684026fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000684026fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000684026fa from memory into f7
fcvt.wu.d x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x4bf264a0 # load x3 with 32 MSBs 0x000000004bf264a0
sw x3, 0(x2) # store x3 (0x4bf264a0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004bf264a0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000004bf264a0 from memory into f8
fcvt.wu.d x17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xf5e2d284 # load x3 with 32 MSBs 0x00000000f5e2d284
sw x3, 0(x2) # store x3 (0xf5e2d284) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5e2d284
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f5e2d284 from memory into f9
fcvt.wu.d x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x935cfdab # load x3 with 32 MSBs 0x00000000935cfdab
sw x3, 0(x2) # store x3 (0x935cfdab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000935cfdab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000935cfdab from memory into f10
fcvt.wu.d x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x3a312692 # load x3 with 32 MSBs 0x000000003a312692
sw x3, 0(x2) # store x3 (0x3a312692) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a312692
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003a312692 from memory into f11
fcvt.wu.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xfdd47685 # load x3 with 32 MSBs 0x00000000fdd47685
sw x3, 0(x2) # store x3 (0xfdd47685) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fdd47685
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000fdd47685 from memory into f12
fcvt.wu.d x19, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x65ea4d36 # load x3 with 32 MSBs 0x0000000065ea4d36
sw x3, 0(x2) # store x3 (0x65ea4d36) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065ea4d36
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000065ea4d36 from memory into f13
fcvt.wu.d x25, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x9d384930 # load x3 with 32 MSBs 0x000000009d384930
sw x3, 0(x2) # store x3 (0x9d384930) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d384930
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009d384930 from memory into f14
fcvt.wu.d x25, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x442c6efc # load x3 with 32 MSBs 0x00000000442c6efc
sw x3, 0(x2) # store x3 (0x442c6efc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000442c6efc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000442c6efc from memory into f15
fcvt.wu.d x28, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x74869c7e # load x3 with 32 MSBs 0x0000000074869c7e
sw x3, 0(x2) # store x3 (0x74869c7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074869c7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000074869c7e from memory into f16
fcvt.wu.d x11, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x07420a6f # load x3 with 32 MSBs 0x0000000007420a6f
sw x3, 0(x2) # store x3 (0x07420a6f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007420a6f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000007420a6f from memory into f17
fcvt.wu.d x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xb299cf79 # load x3 with 32 MSBs 0x00000000b299cf79
sw x3, 0(x2) # store x3 (0xb299cf79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b299cf79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000b299cf79 from memory into f18
fcvt.wu.d x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x1ab96a5f # load x3 with 32 MSBs 0x000000001ab96a5f
sw x3, 0(x2) # store x3 (0x1ab96a5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ab96a5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001ab96a5f from memory into f19
fcvt.wu.d x30, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x3ab30319 # load x3 with 32 MSBs 0x000000003ab30319
sw x3, 0(x2) # store x3 (0x3ab30319) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ab30319
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003ab30319 from memory into f20
fcvt.wu.d x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x7b99cdfd # load x3 with 32 MSBs 0x000000007b99cdfd
sw x3, 0(x2) # store x3 (0x7b99cdfd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b99cdfd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000007b99cdfd from memory into f21
fcvt.wu.d x1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xd64077c6 # load x3 with 32 MSBs 0x00000000d64077c6
sw x3, 0(x2) # store x3 (0xd64077c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d64077c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d64077c6 from memory into f22
fcvt.wu.d x8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x4275a940 # load x3 with 32 MSBs 0x000000004275a940
sw x3, 0(x2) # store x3 (0x4275a940) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004275a940
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000004275a940 from memory into f23
fcvt.wu.d x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x8c4309dd # load x3 with 32 MSBs 0x000000008c4309dd
sw x3, 0(x2) # store x3 (0x8c4309dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008c4309dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000008c4309dd from memory into f24
fcvt.wu.d x26, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xdba42b94 # load x3 with 32 MSBs 0x00000000dba42b94
sw x3, 0(x2) # store x3 (0xdba42b94) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dba42b94
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000dba42b94 from memory into f25
fcvt.wu.d x29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xe2aad3e3 # load x3 with 32 MSBs 0x00000000e2aad3e3
sw x3, 0(x2) # store x3 (0xe2aad3e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2aad3e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e2aad3e3 from memory into f26
fcvt.wu.d x8, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x2f47dc45 # load x3 with 32 MSBs 0x000000002f47dc45
sw x3, 0(x2) # store x3 (0x2f47dc45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002f47dc45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000002f47dc45 from memory into f27
fcvt.wu.d x9, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x61a0679f # load x3 with 32 MSBs 0x0000000061a0679f
sw x3, 0(x2) # store x3 (0x61a0679f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000061a0679f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000061a0679f from memory into f28
fcvt.wu.d x10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xdb535b83 # load x3 with 32 MSBs 0x00000000db535b83
sw x3, 0(x2) # store x3 (0xdb535b83) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db535b83
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000db535b83 from memory into f29
fcvt.wu.d x11, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x7e6af657 # load x3 with 32 MSBs 0x000000007e6af657
sw x3, 0(x2) # store x3 (0x7e6af657) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e6af657
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000007e6af657 from memory into f30
fcvt.wu.d x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x85ac55e8 # load x3 with 32 MSBs 0x0000000085ac55e8
sw x3, 0(x2) # store x3 (0x85ac55e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085ac55e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000085ac55e8 from memory into f31
fcvt.wu.d x23, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fcvt.wu.d x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fcvt.wu.d x7, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
fcvt.wu.d x9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fcvt.wu.d x22, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fcvt.wu.d x28, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fcvt.wu.d x10, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fcvt.wu.d x27, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fcvt.wu.d x23, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fcvt.wu.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fcvt.wu.d x27, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fcvt.wu.d x6, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fcvt.wu.d x13, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fcvt.wu.d x14, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fcvt.wu.d x19, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fcvt.wu.d x8, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fcvt.wu.d x17, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fcvt.wu.d x28, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fcvt.wu.d x18, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fcvt.wu.d x30, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fcvt.wu.d x7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fcvt.wu.d x25, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fcvt.wu.d x5, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff8000000000000 from memory into f17
fcvt.wu.d x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fcvt.wu.d x7, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fcvt.wu.d x14, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000001 from memory into f19
fcvt.wu.d x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fcvt.wu.d x24, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fcvt.wu.d x10, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 364)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fcvt.wu.d x10, f16, dyn # perform operation
fcvt.wu.d x10, f16, rdn # perform operation
fcvt.wu.d x10, f16, rmm # perform operation
fcvt.wu.d x10, f16, rne # perform operation
fcvt.wu.d x10, f16, rtz # perform operation
fcvt.wu.d x10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 368)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 372)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 380)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fcvt.wu.d x9, f2, dyn # perform operation
fcvt.wu.d x9, f2, rdn # perform operation
fcvt.wu.d x9, f2, rmm # perform operation
fcvt.wu.d x9, f2, rne # perform operation
fcvt.wu.d x9, f2, rtz # perform operation
fcvt.wu.d x9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 388)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 396)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 404)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fcvt.wu.d x12, f21, dyn # perform operation
fcvt.wu.d x12, f21, rdn # perform operation
fcvt.wu.d x12, f21, rmm # perform operation
fcvt.wu.d x12, f21, rne # perform operation
fcvt.wu.d x12, f21, rtz # perform operation
fcvt.wu.d x12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 412)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 420)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x12, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 424)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
fcvt.wu.d x13, f5, dyn # perform operation
fcvt.wu.d x13, f5, rdn # perform operation
fcvt.wu.d x13, f5, rmm # perform operation
fcvt.wu.d x13, f5, rne # perform operation
fcvt.wu.d x13, f5, rtz # perform operation
fcvt.wu.d x13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 428)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 444)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fcvt.wu.d x1, f30, dyn # perform operation
fcvt.wu.d x1, f30, rdn # perform operation
fcvt.wu.d x1, f30, rmm # perform operation
fcvt.wu.d x1, f30, rne # perform operation
fcvt.wu.d x1, f30, rtz # perform operation
fcvt.wu.d x1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 452)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 460)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x1, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fcvt.wu.d x31, f14, dyn # perform operation
fcvt.wu.d x31, f14, rdn # perform operation
fcvt.wu.d x31, f14, rmm # perform operation
fcvt.wu.d x31, f14, rne # perform operation
fcvt.wu.d x31, f14, rtz # perform operation
fcvt.wu.d x31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 476)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x31, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 484)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fcvt.wu.d x7, f30, dyn # perform operation
fcvt.wu.d x7, f30, rdn # perform operation
fcvt.wu.d x7, f30, rmm # perform operation
fcvt.wu.d x7, f30, rne # perform operation
fcvt.wu.d x7, f30, rtz # perform operation
fcvt.wu.d x7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 492)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x7, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fcvt.wu.d x18, f17, dyn # perform operation
fcvt.wu.d x18, f17, rdn # perform operation
fcvt.wu.d x18, f17, rmm # perform operation
fcvt.wu.d x18, f17, rne # perform operation
fcvt.wu.d x18, f17, rtz # perform operation
fcvt.wu.d x18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 508)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 516)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fcvt.wu.d x9, f11, dyn # perform operation
fcvt.wu.d x9, f11, rdn # perform operation
fcvt.wu.d x9, f11, rmm # perform operation
fcvt.wu.d x9, f11, rne # perform operation
fcvt.wu.d x9, f11, rtz # perform operation
fcvt.wu.d x9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 532)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 540)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fcvt.wu.d x14, f11, dyn # perform operation
fcvt.wu.d x14, f11, rdn # perform operation
fcvt.wu.d x14, f11, rmm # perform operation
fcvt.wu.d x14, f11, rne # perform operation
fcvt.wu.d x14, f11, rtz # perform operation
fcvt.wu.d x14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 548)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 556)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x14, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 564)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fcvt.wu.d x25, f2, dyn # perform operation
fcvt.wu.d x25, f2, rdn # perform operation
fcvt.wu.d x25, f2, rmm # perform operation
fcvt.wu.d x25, f2, rne # perform operation
fcvt.wu.d x25, f2, rtz # perform operation
fcvt.wu.d x25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 580)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fcvt.wu.d x21, f7, dyn # perform operation
fcvt.wu.d x21, f7, rdn # perform operation
fcvt.wu.d x21, f7, rmm # perform operation
fcvt.wu.d x21, f7, rne # perform operation
fcvt.wu.d x21, f7, rtz # perform operation
fcvt.wu.d x21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 588)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 592)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 596)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x21, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 604)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fcvt.wu.d x22, f19, dyn # perform operation
fcvt.wu.d x22, f19, rdn # perform operation
fcvt.wu.d x22, f19, rmm # perform operation
fcvt.wu.d x22, f19, rne # perform operation
fcvt.wu.d x22, f19, rtz # perform operation
fcvt.wu.d x22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 612)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 616)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 620)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x22, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fcvt.wu.d x18, f9, dyn # perform operation
fcvt.wu.d x18, f9, rdn # perform operation
fcvt.wu.d x18, f9, rmm # perform operation
fcvt.wu.d x18, f9, rne # perform operation
fcvt.wu.d x18, f9, rtz # perform operation
fcvt.wu.d x18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 628)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 636)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x18, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 644)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
fcvt.wu.d x14, f13, dyn # perform operation
fcvt.wu.d x14, f13, rdn # perform operation
fcvt.wu.d x14, f13, rmm # perform operation
fcvt.wu.d x14, f13, rne # perform operation
fcvt.wu.d x14, f13, rtz # perform operation
fcvt.wu.d x14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
fcvt.wu.d x27, f21, dyn # perform operation
fcvt.wu.d x27, f21, rdn # perform operation
fcvt.wu.d x27, f21, rmm # perform operation
fcvt.wu.d x27, f21, rne # perform operation
fcvt.wu.d x27, f21, rtz # perform operation
fcvt.wu.d x27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
fcvt.wu.d x2, f3, dyn # perform operation
fcvt.wu.d x2, f3, rdn # perform operation
fcvt.wu.d x2, f3, rmm # perform operation
fcvt.wu.d x2, f3, rne # perform operation
fcvt.wu.d x2, f3, rtz # perform operation
fcvt.wu.d x2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 688)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 692)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 696)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 700)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
fcvt.wu.d x19, f21, dyn # perform operation
fcvt.wu.d x19, f21, rdn # perform operation
fcvt.wu.d x19, f21, rmm # perform operation
fcvt.wu.d x19, f21, rne # perform operation
fcvt.wu.d x19, f21, rtz # perform operation
fcvt.wu.d x19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 708)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 716)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x19, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 724)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fcvt.wu.d x8, f11, dyn # perform operation
fcvt.wu.d x8, f11, rdn # perform operation
fcvt.wu.d x8, f11, rmm # perform operation
fcvt.wu.d x8, f11, rne # perform operation
fcvt.wu.d x8, f11, rtz # perform operation
fcvt.wu.d x8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 732)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 740)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x8, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 744)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fcvt.wu.d x2, f11, dyn # perform operation
fcvt.wu.d x2, f11, rdn # perform operation
fcvt.wu.d x2, f11, rmm # perform operation
fcvt.wu.d x2, f11, rne # perform operation
fcvt.wu.d x2, f11, rtz # perform operation
fcvt.wu.d x2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 756)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fcvt.wu.d x9, f12, dyn # perform operation
fcvt.wu.d x9, f12, rdn # perform operation
fcvt.wu.d x9, f12, rmm # perform operation
fcvt.wu.d x9, f12, rne # perform operation
fcvt.wu.d x9, f12, rtz # perform operation
fcvt.wu.d x9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 772)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 780)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fcvt.wu.d x2, f1, dyn # perform operation
fcvt.wu.d x2, f1, rdn # perform operation
fcvt.wu.d x2, f1, rmm # perform operation
fcvt.wu.d x2, f1, rne # perform operation
fcvt.wu.d x2, f1, rtz # perform operation
fcvt.wu.d x2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 788)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 796)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x2, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 804)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff8000000000000 from memory into f22
fcvt.wu.d x26, f22, dyn # perform operation
fcvt.wu.d x26, f22, rdn # perform operation
fcvt.wu.d x26, f22, rmm # perform operation
fcvt.wu.d x26, f22, rne # perform operation
fcvt.wu.d x26, f22, rtz # perform operation
fcvt.wu.d x26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 812)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 820)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x26, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fcvt.wu.d x30, f3, dyn # perform operation
fcvt.wu.d x30, f3, rdn # perform operation
fcvt.wu.d x30, f3, rmm # perform operation
fcvt.wu.d x30, f3, rne # perform operation
fcvt.wu.d x30, f3, rtz # perform operation
fcvt.wu.d x30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 828)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 836)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x30, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fcvt.wu.d x28, f20, dyn # perform operation
fcvt.wu.d x28, f20, rdn # perform operation
fcvt.wu.d x28, f20, rmm # perform operation
fcvt.wu.d x28, f20, rne # perform operation
fcvt.wu.d x28, f20, rtz # perform operation
fcvt.wu.d x28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 852)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 860)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x28, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff0000000000001 from memory into f3
fcvt.wu.d x16, f3, dyn # perform operation
fcvt.wu.d x16, f3, rdn # perform operation
fcvt.wu.d x16, f3, rmm # perform operation
fcvt.wu.d x16, f3, rne # perform operation
fcvt.wu.d x16, f3, rtz # perform operation
fcvt.wu.d x16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 876)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 884)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fcvt.wu.d x16, f13, dyn # perform operation
fcvt.wu.d x16, f13, rdn # perform operation
fcvt.wu.d x16, f13, rmm # perform operation
fcvt.wu.d x16, f13, rne # perform operation
fcvt.wu.d x16, f13, rtz # perform operation
fcvt.wu.d x16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 888)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 892)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 900)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fcvt.wu.d x29, f1, dyn # perform operation
fcvt.wu.d x29, f1, rdn # perform operation
fcvt.wu.d x29, f1, rmm # perform operation
fcvt.wu.d x29, f1, rne # perform operation
fcvt.wu.d x29, f1, rtz # perform operation
fcvt.wu.d x29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 908)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 916)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 924)


# Testcase cp_frm
la x2, scratch
li x3, 0x7806a7ab # load x3 with 32 MSBs 0x000000007806a7ab
sw x3, 0(x2) # store x3 (0x7806a7ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007806a7ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000007806a7ab from memory into f5
fcvt.wu.d x14, f5, dyn # perform operation
fcvt.wu.d x14, f5, rdn # perform operation
fcvt.wu.d x14, f5, rmm # perform operation
fcvt.wu.d x14, f5, rne # perform operation
fcvt.wu.d x14, f5, rtz # perform operation
fcvt.wu.d x14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 928)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 932)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 940)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)


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
