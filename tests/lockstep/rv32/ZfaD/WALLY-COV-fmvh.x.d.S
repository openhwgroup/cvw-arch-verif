///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-fmvh.x.d.S
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
li x3, 0xa967460a # load x3 with 32 MSBs 0x00000000a967460a
sw x3, 0(x2) # store x3 (0xa967460a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a967460a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a967460a from memory into f30
fmvh.x.d x0, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x6187fb2e # load x3 with 32 MSBs 0x000000006187fb2e
sw x3, 0(x2) # store x3 (0x6187fb2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006187fb2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000006187fb2e from memory into f31
fmvh.x.d x1, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x9bffc428 # load x3 with 32 MSBs 0x000000009bffc428
sw x3, 0(x2) # store x3 (0x9bffc428) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bffc428
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009bffc428 from memory into f31
fmvh.x.d x2, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xfcfa6f61 # load x3 with 32 MSBs 0x00000000fcfa6f61
sw x3, 0(x2) # store x3 (0xfcfa6f61) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fcfa6f61
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000fcfa6f61 from memory into f18
fmvh.x.d x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x44a7ed29 # load x3 with 32 MSBs 0x0000000044a7ed29
sw x3, 0(x2) # store x3 (0x44a7ed29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000044a7ed29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000044a7ed29 from memory into f26
fmvh.x.d x4, f26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd48126f6 # load x3 with 32 MSBs 0x00000000d48126f6
sw x3, 0(x2) # store x3 (0xd48126f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d48126f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000d48126f6 from memory into f9
fmvh.x.d x5, f9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf077b8e2 # load x3 with 32 MSBs 0x00000000f077b8e2
sw x3, 0(x2) # store x3 (0xf077b8e2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f077b8e2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f077b8e2 from memory into f25
fmvh.x.d x6, f25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x02fa9de5 # load x3 with 32 MSBs 0x0000000002fa9de5
sw x3, 0(x2) # store x3 (0x02fa9de5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002fa9de5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000002fa9de5 from memory into f2
fmvh.x.d x7, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xf1225876 # load x3 with 32 MSBs 0x00000000f1225876
sw x3, 0(x2) # store x3 (0xf1225876) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1225876
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f1225876 from memory into f26
fmvh.x.d x8, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0xb8918498 # load x3 with 32 MSBs 0x00000000b8918498
sw x3, 0(x2) # store x3 (0xb8918498) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8918498
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b8918498 from memory into f29
fmvh.x.d x9, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x22231b6e # load x3 with 32 MSBs 0x0000000022231b6e
sw x3, 0(x2) # store x3 (0x22231b6e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022231b6e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000022231b6e from memory into f8
fmvh.x.d x10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0xeef593ec # load x3 with 32 MSBs 0x00000000eef593ec
sw x3, 0(x2) # store x3 (0xeef593ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eef593ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000eef593ec from memory into f14
fmvh.x.d x11, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x4549e3fd # load x3 with 32 MSBs 0x000000004549e3fd
sw x3, 0(x2) # store x3 (0x4549e3fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004549e3fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000004549e3fd from memory into f8
fmvh.x.d x12, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x854a4a32 # load x3 with 32 MSBs 0x00000000854a4a32
sw x3, 0(x2) # store x3 (0x854a4a32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000854a4a32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000854a4a32 from memory into f9
fmvh.x.d x13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0x9c3a9215 # load x3 with 32 MSBs 0x000000009c3a9215
sw x3, 0(x2) # store x3 (0x9c3a9215) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c3a9215
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009c3a9215 from memory into f17
fmvh.x.d x14, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x9a1dd291 # load x3 with 32 MSBs 0x000000009a1dd291
sw x3, 0(x2) # store x3 (0x9a1dd291) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a1dd291
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009a1dd291 from memory into f13
fmvh.x.d x15, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0xa7b73870 # load x3 with 32 MSBs 0x00000000a7b73870
sw x3, 0(x2) # store x3 (0xa7b73870) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7b73870
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a7b73870 from memory into f10
fmvh.x.d x16, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xea36e822 # load x3 with 32 MSBs 0x00000000ea36e822
sw x3, 0(x2) # store x3 (0xea36e822) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea36e822
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ea36e822 from memory into f19
fmvh.x.d x17, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x4bc9923f # load x3 with 32 MSBs 0x000000004bc9923f
sw x3, 0(x2) # store x3 (0x4bc9923f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004bc9923f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000004bc9923f from memory into f21
fmvh.x.d x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x862481d7 # load x3 with 32 MSBs 0x00000000862481d7
sw x3, 0(x2) # store x3 (0x862481d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000862481d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000862481d7 from memory into f1
fmvh.x.d x19, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x47b9bd98 # load x3 with 32 MSBs 0x0000000047b9bd98
sw x3, 0(x2) # store x3 (0x47b9bd98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047b9bd98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000047b9bd98 from memory into f5
fmvh.x.d x20, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0xd49694bd # load x3 with 32 MSBs 0x00000000d49694bd
sw x3, 0(x2) # store x3 (0xd49694bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d49694bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d49694bd from memory into f23
fmvh.x.d x21, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x4274a401 # load x3 with 32 MSBs 0x000000004274a401
sw x3, 0(x2) # store x3 (0x4274a401) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004274a401
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004274a401 from memory into f29
fmvh.x.d x22, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x9ed78bad # load x3 with 32 MSBs 0x000000009ed78bad
sw x3, 0(x2) # store x3 (0x9ed78bad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ed78bad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000009ed78bad from memory into f21
fmvh.x.d x23, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0x6f0824ba # load x3 with 32 MSBs 0x000000006f0824ba
sw x3, 0(x2) # store x3 (0x6f0824ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f0824ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006f0824ba from memory into f17
fmvh.x.d x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x92700994 # load x3 with 32 MSBs 0x0000000092700994
sw x3, 0(x2) # store x3 (0x92700994) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092700994
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000092700994 from memory into f21
fmvh.x.d x25, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0xb6a16d75 # load x3 with 32 MSBs 0x00000000b6a16d75
sw x3, 0(x2) # store x3 (0xb6a16d75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6a16d75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b6a16d75 from memory into f1
fmvh.x.d x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xbe29dba6 # load x3 with 32 MSBs 0x00000000be29dba6
sw x3, 0(x2) # store x3 (0xbe29dba6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000be29dba6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000be29dba6 from memory into f30
fmvh.x.d x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xbbe0ff42 # load x3 with 32 MSBs 0x00000000bbe0ff42
sw x3, 0(x2) # store x3 (0xbbe0ff42) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bbe0ff42
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000bbe0ff42 from memory into f6
fmvh.x.d x28, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x4f7b668a # load x3 with 32 MSBs 0x000000004f7b668a
sw x3, 0(x2) # store x3 (0x4f7b668a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f7b668a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000004f7b668a from memory into f26
fmvh.x.d x29, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xb71452fb # load x3 with 32 MSBs 0x00000000b71452fb
sw x3, 0(x2) # store x3 (0xb71452fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b71452fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b71452fb from memory into f26
fmvh.x.d x30, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xa493b9f7 # load x3 with 32 MSBs 0x00000000a493b9f7
sw x3, 0(x2) # store x3 (0xa493b9f7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a493b9f7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a493b9f7 from memory into f30
fmvh.x.d x31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x28, x17 # perform first operation
fmvh.x.d x15, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x6, x3 # perform first operation
fmvh.x.d x14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x13, x2 # perform first operation
fmvh.x.d x19, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f3, f15, f2 # perform first operation
fmvh.x.d x3, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x3, x27 # perform first operation
fmvh.x.d x27, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x3, x17 # perform first operation
fmvh.x.d x17, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x12, x18 # perform first operation
fmvh.x.d x20, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x11, x5 # perform first operation
fmvh.x.d x21, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x16, x23 # perform first operation
fmvh.x.d x30, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x7, x23 # perform first operation
fmvh.x.d x1, f8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x19, x24 # perform first operation
fmvh.x.d x22, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x28, x11 # perform first operation
fmvh.x.d x15, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x3, x17 # perform first operation
fmvh.x.d x3, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x31, x7 # perform first operation
fmvh.x.d x7, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x24, x7 # perform first operation
fmvh.x.d x9, f27 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xce341c6b # load x3 with 32 MSBs 0x00000000ce341c6b
sw x3, 0(x2) # store x3 (0xce341c6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ce341c6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000ce341c6b from memory into f0
fmvh.x.d x24, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x1f9a5598 # load x3 with 32 MSBs 0x000000001f9a5598
sw x3, 0(x2) # store x3 (0x1f9a5598) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f9a5598
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000001f9a5598 from memory into f1
fmvh.x.d x27, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x73d1d80a # load x3 with 32 MSBs 0x0000000073d1d80a
sw x3, 0(x2) # store x3 (0x73d1d80a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000073d1d80a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000073d1d80a from memory into f2
fmvh.x.d x13, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x36cb0397 # load x3 with 32 MSBs 0x0000000036cb0397
sw x3, 0(x2) # store x3 (0x36cb0397) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000036cb0397
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000036cb0397 from memory into f3
fmvh.x.d x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x17758954 # load x3 with 32 MSBs 0x0000000017758954
sw x3, 0(x2) # store x3 (0x17758954) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017758954
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000017758954 from memory into f4
fmvh.x.d x11, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1c232ff6 # load x3 with 32 MSBs 0x000000001c232ff6
sw x3, 0(x2) # store x3 (0x1c232ff6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c232ff6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001c232ff6 from memory into f5
fmvh.x.d x18, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x05851d8b # load x3 with 32 MSBs 0x0000000005851d8b
sw x3, 0(x2) # store x3 (0x05851d8b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005851d8b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000005851d8b from memory into f6
fmvh.x.d x2, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x76e22594 # load x3 with 32 MSBs 0x0000000076e22594
sw x3, 0(x2) # store x3 (0x76e22594) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076e22594
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000076e22594 from memory into f7
fmvh.x.d x14, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xb6c0fd57 # load x3 with 32 MSBs 0x00000000b6c0fd57
sw x3, 0(x2) # store x3 (0xb6c0fd57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6c0fd57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b6c0fd57 from memory into f8
fmvh.x.d x10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x6840a2bd # load x3 with 32 MSBs 0x000000006840a2bd
sw x3, 0(x2) # store x3 (0x6840a2bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006840a2bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006840a2bd from memory into f9
fmvh.x.d x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x407d8413 # load x3 with 32 MSBs 0x00000000407d8413
sw x3, 0(x2) # store x3 (0x407d8413) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000407d8413
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000407d8413 from memory into f10
fmvh.x.d x3, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x35d95c1b # load x3 with 32 MSBs 0x0000000035d95c1b
sw x3, 0(x2) # store x3 (0x35d95c1b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000035d95c1b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000035d95c1b from memory into f11
fmvh.x.d x5, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x8f6d9f3f # load x3 with 32 MSBs 0x000000008f6d9f3f
sw x3, 0(x2) # store x3 (0x8f6d9f3f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008f6d9f3f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008f6d9f3f from memory into f12
fmvh.x.d x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x5b78e669 # load x3 with 32 MSBs 0x000000005b78e669
sw x3, 0(x2) # store x3 (0x5b78e669) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b78e669
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000005b78e669 from memory into f13
fmvh.x.d x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xd85d46a7 # load x3 with 32 MSBs 0x00000000d85d46a7
sw x3, 0(x2) # store x3 (0xd85d46a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d85d46a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d85d46a7 from memory into f14
fmvh.x.d x7, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x79c0af4c # load x3 with 32 MSBs 0x0000000079c0af4c
sw x3, 0(x2) # store x3 (0x79c0af4c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000079c0af4c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000079c0af4c from memory into f15
fmvh.x.d x20, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x8af0a20c # load x3 with 32 MSBs 0x000000008af0a20c
sw x3, 0(x2) # store x3 (0x8af0a20c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008af0a20c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008af0a20c from memory into f16
fmvh.x.d x16, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x0599c973 # load x3 with 32 MSBs 0x000000000599c973
sw x3, 0(x2) # store x3 (0x0599c973) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000599c973
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000000599c973 from memory into f17
fmvh.x.d x15, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xda7f25ba # load x3 with 32 MSBs 0x00000000da7f25ba
sw x3, 0(x2) # store x3 (0xda7f25ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da7f25ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000da7f25ba from memory into f18
fmvh.x.d x15, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x57797358 # load x3 with 32 MSBs 0x0000000057797358
sw x3, 0(x2) # store x3 (0x57797358) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000057797358
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000057797358 from memory into f19
fmvh.x.d x8, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x29213bb2 # load x3 with 32 MSBs 0x0000000029213bb2
sw x3, 0(x2) # store x3 (0x29213bb2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000029213bb2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000029213bb2 from memory into f20
fmvh.x.d x6, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xae5450d6 # load x3 with 32 MSBs 0x00000000ae5450d6
sw x3, 0(x2) # store x3 (0xae5450d6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ae5450d6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ae5450d6 from memory into f21
fmvh.x.d x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xb65968a6 # load x3 with 32 MSBs 0x00000000b65968a6
sw x3, 0(x2) # store x3 (0xb65968a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b65968a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000b65968a6 from memory into f22
fmvh.x.d x14, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x5d013af5 # load x3 with 32 MSBs 0x000000005d013af5
sw x3, 0(x2) # store x3 (0x5d013af5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d013af5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000005d013af5 from memory into f23
fmvh.x.d x1, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xcad5cfaf # load x3 with 32 MSBs 0x00000000cad5cfaf
sw x3, 0(x2) # store x3 (0xcad5cfaf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cad5cfaf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000cad5cfaf from memory into f24
fmvh.x.d x6, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x1f139804 # load x3 with 32 MSBs 0x000000001f139804
sw x3, 0(x2) # store x3 (0x1f139804) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f139804
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000001f139804 from memory into f25
fmvh.x.d x1, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x6c9b3858 # load x3 with 32 MSBs 0x000000006c9b3858
sw x3, 0(x2) # store x3 (0x6c9b3858) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c9b3858
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006c9b3858 from memory into f26
fmvh.x.d x1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x1218ff98 # load x3 with 32 MSBs 0x000000001218ff98
sw x3, 0(x2) # store x3 (0x1218ff98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001218ff98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000001218ff98 from memory into f27
fmvh.x.d x26, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x82990636 # load x3 with 32 MSBs 0x0000000082990636
sw x3, 0(x2) # store x3 (0x82990636) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082990636
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000082990636 from memory into f28
fmvh.x.d x14, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x94811018 # load x3 with 32 MSBs 0x0000000094811018
sw x3, 0(x2) # store x3 (0x94811018) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094811018
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000094811018 from memory into f29
fmvh.x.d x17, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x0716d19e # load x3 with 32 MSBs 0x000000000716d19e
sw x3, 0(x2) # store x3 (0x0716d19e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000716d19e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000716d19e from memory into f30
fmvh.x.d x31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x205a42a7 # load x3 with 32 MSBs 0x00000000205a42a7
sw x3, 0(x2) # store x3 (0x205a42a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000205a42a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000205a42a7 from memory into f31
fmvh.x.d x5, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fmvh.x.d x10, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmvh.x.d x19, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fmvh.x.d x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fmvh.x.d x25, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fmvh.x.d x27, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fmvh.x.d x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fmvh.x.d x25, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fmvh.x.d x1, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmvh.x.d x18, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fmvh.x.d x27, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fmvh.x.d x21, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fmvh.x.d x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fmvh.x.d x21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmvh.x.d x15, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fmvh.x.d x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fmvh.x.d x2, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fmvh.x.d x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fmvh.x.d x18, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fmvh.x.d x6, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmvh.x.d x28, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmvh.x.d x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fmvh.x.d x13, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff8000000000000 from memory into f5
fmvh.x.d x17, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fmvh.x.d x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fmvh.x.d x23, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000001 from memory into f19
fmvh.x.d x28, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fmvh.x.d x8, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fmvh.x.d x8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 364)

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
