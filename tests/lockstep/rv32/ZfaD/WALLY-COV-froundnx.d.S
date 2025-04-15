///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaD/WALLY-COV-froundnx.d.S
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
add x22, x29, x24 # perform first operation
froundnx.d f17, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x20, x23 # perform first operation
froundnx.d f12, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x19, x18 # perform first operation
froundnx.d f30, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f20, f21, f16 # perform first operation
froundnx.d f17, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x16, x27 # perform first operation
froundnx.d f16, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x11, x14 # perform first operation
froundnx.d f14, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f26, f23, f30 # perform first operation
froundnx.d f26, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f3, f12, f15 # perform first operation
froundnx.d f3, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f5, f14 # perform first operation
froundnx.d f8, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f14, f23, f8 # perform first operation
froundnx.d f23, f3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f31, f7 # perform first operation
froundnx.d f7, f5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f24, f1 # perform first operation
froundnx.d f14, f3 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x39185b34 # load x3 with 32 MSBs 0x0000000039185b34
sw x3, 0(x2) # store x3 (0x39185b34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039185b34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000039185b34 from memory into f0
froundnx.d f7, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x92aafa6b # load x3 with 32 MSBs 0x0000000092aafa6b
sw x3, 0(x2) # store x3 (0x92aafa6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092aafa6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000092aafa6b from memory into f1
froundnx.d f28, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x11eec8fd # load x3 with 32 MSBs 0x0000000011eec8fd
sw x3, 0(x2) # store x3 (0x11eec8fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011eec8fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000011eec8fd from memory into f2
froundnx.d f20, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdefe2df3 # load x3 with 32 MSBs 0x00000000defe2df3
sw x3, 0(x2) # store x3 (0xdefe2df3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000defe2df3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000defe2df3 from memory into f3
froundnx.d f19, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc7975291 # load x3 with 32 MSBs 0x00000000c7975291
sw x3, 0(x2) # store x3 (0xc7975291) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c7975291
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000c7975291 from memory into f4
froundnx.d f30, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe70c67b0 # load x3 with 32 MSBs 0x00000000e70c67b0
sw x3, 0(x2) # store x3 (0xe70c67b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e70c67b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e70c67b0 from memory into f5
froundnx.d f11, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb0ac89f2 # load x3 with 32 MSBs 0x00000000b0ac89f2
sw x3, 0(x2) # store x3 (0xb0ac89f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0ac89f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000b0ac89f2 from memory into f6
froundnx.d f8, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x789d362d # load x3 with 32 MSBs 0x00000000789d362d
sw x3, 0(x2) # store x3 (0x789d362d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000789d362d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000789d362d from memory into f7
froundnx.d f5, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x69f4ca84 # load x3 with 32 MSBs 0x0000000069f4ca84
sw x3, 0(x2) # store x3 (0x69f4ca84) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069f4ca84
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000069f4ca84 from memory into f8
froundnx.d f10, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcb16cc75 # load x3 with 32 MSBs 0x00000000cb16cc75
sw x3, 0(x2) # store x3 (0xcb16cc75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb16cc75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000cb16cc75 from memory into f9
froundnx.d f1, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23843c7c # load x3 with 32 MSBs 0x0000000023843c7c
sw x3, 0(x2) # store x3 (0x23843c7c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000023843c7c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000023843c7c from memory into f10
froundnx.d f13, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa63cf3af # load x3 with 32 MSBs 0x00000000a63cf3af
sw x3, 0(x2) # store x3 (0xa63cf3af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a63cf3af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a63cf3af from memory into f11
froundnx.d f13, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x15c6906b # load x3 with 32 MSBs 0x0000000015c6906b
sw x3, 0(x2) # store x3 (0x15c6906b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000015c6906b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000015c6906b from memory into f12
froundnx.d f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5dba36f8 # load x3 with 32 MSBs 0x000000005dba36f8
sw x3, 0(x2) # store x3 (0x5dba36f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005dba36f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000005dba36f8 from memory into f13
froundnx.d f24, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc03fbc06 # load x3 with 32 MSBs 0x00000000c03fbc06
sw x3, 0(x2) # store x3 (0xc03fbc06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c03fbc06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000c03fbc06 from memory into f14
froundnx.d f7, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf7167490 # load x3 with 32 MSBs 0x00000000f7167490
sw x3, 0(x2) # store x3 (0xf7167490) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f7167490
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000f7167490 from memory into f15
froundnx.d f7, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ab08cdd # load x3 with 32 MSBs 0x000000008ab08cdd
sw x3, 0(x2) # store x3 (0x8ab08cdd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ab08cdd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008ab08cdd from memory into f16
froundnx.d f8, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x65d9ad31 # load x3 with 32 MSBs 0x0000000065d9ad31
sw x3, 0(x2) # store x3 (0x65d9ad31) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000065d9ad31
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000065d9ad31 from memory into f17
froundnx.d f25, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a554656 # load x3 with 32 MSBs 0x000000007a554656
sw x3, 0(x2) # store x3 (0x7a554656) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a554656
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000007a554656 from memory into f18
froundnx.d f29, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9fe86856 # load x3 with 32 MSBs 0x000000009fe86856
sw x3, 0(x2) # store x3 (0x9fe86856) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009fe86856
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009fe86856 from memory into f19
froundnx.d f1, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x24064793 # load x3 with 32 MSBs 0x0000000024064793
sw x3, 0(x2) # store x3 (0x24064793) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000024064793
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000024064793 from memory into f20
froundnx.d f13, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa890869c # load x3 with 32 MSBs 0x00000000a890869c
sw x3, 0(x2) # store x3 (0xa890869c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a890869c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a890869c from memory into f21
froundnx.d f17, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf995086f # load x3 with 32 MSBs 0x00000000f995086f
sw x3, 0(x2) # store x3 (0xf995086f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f995086f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f995086f from memory into f22
froundnx.d f13, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a15528a # load x3 with 32 MSBs 0x000000005a15528a
sw x3, 0(x2) # store x3 (0x5a15528a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005a15528a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000005a15528a from memory into f23
froundnx.d f24, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9d558497 # load x3 with 32 MSBs 0x000000009d558497
sw x3, 0(x2) # store x3 (0x9d558497) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d558497
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000009d558497 from memory into f24
froundnx.d f12, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c8e59e2 # load x3 with 32 MSBs 0x000000006c8e59e2
sw x3, 0(x2) # store x3 (0x6c8e59e2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c8e59e2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000006c8e59e2 from memory into f25
froundnx.d f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcb00e9a5 # load x3 with 32 MSBs 0x00000000cb00e9a5
sw x3, 0(x2) # store x3 (0xcb00e9a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb00e9a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000cb00e9a5 from memory into f26
froundnx.d f6, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd165ac85 # load x3 with 32 MSBs 0x00000000d165ac85
sw x3, 0(x2) # store x3 (0xd165ac85) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d165ac85
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000d165ac85 from memory into f27
froundnx.d f7, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd5d31496 # load x3 with 32 MSBs 0x00000000d5d31496
sw x3, 0(x2) # store x3 (0xd5d31496) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d5d31496
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000d5d31496 from memory into f28
froundnx.d f25, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8ffc3c89 # load x3 with 32 MSBs 0x000000008ffc3c89
sw x3, 0(x2) # store x3 (0x8ffc3c89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ffc3c89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000008ffc3c89 from memory into f29
froundnx.d f25, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd56bfeaa # load x3 with 32 MSBs 0x00000000d56bfeaa
sw x3, 0(x2) # store x3 (0xd56bfeaa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d56bfeaa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000d56bfeaa from memory into f30
froundnx.d f5, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3acd94fd # load x3 with 32 MSBs 0x000000003acd94fd
sw x3, 0(x2) # store x3 (0x3acd94fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003acd94fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003acd94fd from memory into f31
froundnx.d f7, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x94ffd27d # load x3 with 32 MSBs 0x0000000094ffd27d
sw x3, 0(x2) # store x3 (0x94ffd27d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094ffd27d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000094ffd27d from memory into f27
froundnx.d f0, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00fdca2b # load x3 with 32 MSBs 0x0000000000fdca2b
sw x3, 0(x2) # store x3 (0x00fdca2b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000fdca2b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000fdca2b from memory into f13
froundnx.d f1, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x30ceb56a # load x3 with 32 MSBs 0x0000000030ceb56a
sw x3, 0(x2) # store x3 (0x30ceb56a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000030ceb56a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000030ceb56a from memory into f16
froundnx.d f2, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23157c0e # load x3 with 32 MSBs 0x0000000023157c0e
sw x3, 0(x2) # store x3 (0x23157c0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000023157c0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000023157c0e from memory into f24
froundnx.d f3, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0903a12c # load x3 with 32 MSBs 0x000000000903a12c
sw x3, 0(x2) # store x3 (0x0903a12c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000903a12c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000000903a12c from memory into f25
froundnx.d f4, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a3f4a40 # load x3 with 32 MSBs 0x000000002a3f4a40
sw x3, 0(x2) # store x3 (0x2a3f4a40) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a3f4a40
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000002a3f4a40 from memory into f13
froundnx.d f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa36b6051 # load x3 with 32 MSBs 0x00000000a36b6051
sw x3, 0(x2) # store x3 (0xa36b6051) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a36b6051
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000a36b6051 from memory into f20
froundnx.d f6, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf8a96b90 # load x3 with 32 MSBs 0x00000000f8a96b90
sw x3, 0(x2) # store x3 (0xf8a96b90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8a96b90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000f8a96b90 from memory into f13
froundnx.d f7, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5dd4b62 # load x3 with 32 MSBs 0x00000000e5dd4b62
sw x3, 0(x2) # store x3 (0xe5dd4b62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5dd4b62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000e5dd4b62 from memory into f12
froundnx.d f8, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x69c4cb8c # load x3 with 32 MSBs 0x0000000069c4cb8c
sw x3, 0(x2) # store x3 (0x69c4cb8c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069c4cb8c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000069c4cb8c from memory into f25
froundnx.d f9, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x37e4c3f5 # load x3 with 32 MSBs 0x0000000037e4c3f5
sw x3, 0(x2) # store x3 (0x37e4c3f5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037e4c3f5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000037e4c3f5 from memory into f18
froundnx.d f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1448e4bb # load x3 with 32 MSBs 0x000000001448e4bb
sw x3, 0(x2) # store x3 (0x1448e4bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001448e4bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001448e4bb from memory into f22
froundnx.d f11, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee779461 # load x3 with 32 MSBs 0x00000000ee779461
sw x3, 0(x2) # store x3 (0xee779461) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ee779461
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ee779461 from memory into f9
froundnx.d f12, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12e957d1 # load x3 with 32 MSBs 0x0000000012e957d1
sw x3, 0(x2) # store x3 (0x12e957d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012e957d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000012e957d1 from memory into f23
froundnx.d f13, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7a8895b1 # load x3 with 32 MSBs 0x000000007a8895b1
sw x3, 0(x2) # store x3 (0x7a8895b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a8895b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007a8895b1 from memory into f1
froundnx.d f14, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xcba7ac4c # load x3 with 32 MSBs 0x00000000cba7ac4c
sw x3, 0(x2) # store x3 (0xcba7ac4c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cba7ac4c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000cba7ac4c from memory into f25
froundnx.d f15, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa6dfd824 # load x3 with 32 MSBs 0x00000000a6dfd824
sw x3, 0(x2) # store x3 (0xa6dfd824) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6dfd824
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a6dfd824 from memory into f1
froundnx.d f16, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x78d34d6c # load x3 with 32 MSBs 0x0000000078d34d6c
sw x3, 0(x2) # store x3 (0x78d34d6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078d34d6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000078d34d6c from memory into f11
froundnx.d f17, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3432081f # load x3 with 32 MSBs 0x000000003432081f
sw x3, 0(x2) # store x3 (0x3432081f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003432081f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003432081f from memory into f7
froundnx.d f18, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd829346e # load x3 with 32 MSBs 0x00000000d829346e
sw x3, 0(x2) # store x3 (0xd829346e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d829346e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000d829346e from memory into f16
froundnx.d f19, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd26c485f # load x3 with 32 MSBs 0x00000000d26c485f
sw x3, 0(x2) # store x3 (0xd26c485f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d26c485f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000d26c485f from memory into f2
froundnx.d f20, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x23a10851 # load x3 with 32 MSBs 0x0000000023a10851
sw x3, 0(x2) # store x3 (0x23a10851) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000023a10851
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000023a10851 from memory into f5
froundnx.d f21, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfd8efaa6 # load x3 with 32 MSBs 0x00000000fd8efaa6
sw x3, 0(x2) # store x3 (0xfd8efaa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd8efaa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000fd8efaa6 from memory into f27
froundnx.d f22, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14d67f6c # load x3 with 32 MSBs 0x0000000014d67f6c
sw x3, 0(x2) # store x3 (0x14d67f6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014d67f6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000014d67f6c from memory into f3
froundnx.d f23, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdbae0963 # load x3 with 32 MSBs 0x00000000dbae0963
sw x3, 0(x2) # store x3 (0xdbae0963) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbae0963
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000dbae0963 from memory into f21
froundnx.d f24, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x625d78cb # load x3 with 32 MSBs 0x00000000625d78cb
sw x3, 0(x2) # store x3 (0x625d78cb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000625d78cb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000625d78cb from memory into f27
froundnx.d f25, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0d252b8d # load x3 with 32 MSBs 0x000000000d252b8d
sw x3, 0(x2) # store x3 (0x0d252b8d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d252b8d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000000d252b8d from memory into f20
froundnx.d f26, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x723f6d54 # load x3 with 32 MSBs 0x00000000723f6d54
sw x3, 0(x2) # store x3 (0x723f6d54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000723f6d54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000723f6d54 from memory into f25
froundnx.d f27, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84e2c679 # load x3 with 32 MSBs 0x0000000084e2c679
sw x3, 0(x2) # store x3 (0x84e2c679) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084e2c679
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000084e2c679 from memory into f15
froundnx.d f28, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x01a473a2 # load x3 with 32 MSBs 0x0000000001a473a2
sw x3, 0(x2) # store x3 (0x01a473a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000001a473a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000001a473a2 from memory into f27
froundnx.d f29, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2094da16 # load x3 with 32 MSBs 0x000000002094da16
sw x3, 0(x2) # store x3 (0x2094da16) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002094da16
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002094da16 from memory into f23
froundnx.d f30, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7c29d7ce # load x3 with 32 MSBs 0x000000007c29d7ce
sw x3, 0(x2) # store x3 (0x7c29d7ce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007c29d7ce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007c29d7ce from memory into f29
froundnx.d f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
froundnx.d f13, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
froundnx.d f29, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
froundnx.d f29, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
froundnx.d f6, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
froundnx.d f5, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
froundnx.d f23, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
froundnx.d f24, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
froundnx.d f12, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
froundnx.d f30, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
froundnx.d f21, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
froundnx.d f3, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
froundnx.d f24, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
froundnx.d f3, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
froundnx.d f3, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
froundnx.d f22, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
froundnx.d f18, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
froundnx.d f28, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
froundnx.d f10, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
froundnx.d f16, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
froundnx.d f29, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
froundnx.d f1, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
froundnx.d f30, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff8000000000000 from memory into f25
froundnx.d f29, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
froundnx.d f13, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
froundnx.d f28, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000001 from memory into f12
froundnx.d f8, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
froundnx.d f16, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
froundnx.d f7, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x087e7a23 # load x3 with 32 MSBs 0x00000000087e7a23
sw x3, 0(x2) # store x3 (0x087e7a23) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000087e7a23
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000087e7a23 from memory into f0
froundnx.d f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaddf6eec # load x3 with 32 MSBs 0x00000000addf6eec
sw x3, 0(x2) # store x3 (0xaddf6eec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000addf6eec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000addf6eec from memory into f1
froundnx.d f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8545908c # load x3 with 32 MSBs 0x000000008545908c
sw x3, 0(x2) # store x3 (0x8545908c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008545908c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008545908c from memory into f2
froundnx.d f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x54047e6c # load x3 with 32 MSBs 0x0000000054047e6c
sw x3, 0(x2) # store x3 (0x54047e6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000054047e6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000054047e6c from memory into f3
froundnx.d f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x74fcc6ae # load x3 with 32 MSBs 0x0000000074fcc6ae
sw x3, 0(x2) # store x3 (0x74fcc6ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074fcc6ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000074fcc6ae from memory into f4
froundnx.d f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xccccac47 # load x3 with 32 MSBs 0x00000000ccccac47
sw x3, 0(x2) # store x3 (0xccccac47) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ccccac47
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ccccac47 from memory into f5
froundnx.d f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x72918e90 # load x3 with 32 MSBs 0x0000000072918e90
sw x3, 0(x2) # store x3 (0x72918e90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072918e90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000072918e90 from memory into f6
froundnx.d f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3aaf2450 # load x3 with 32 MSBs 0x000000003aaf2450
sw x3, 0(x2) # store x3 (0x3aaf2450) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003aaf2450
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003aaf2450 from memory into f7
froundnx.d f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5165f187 # load x3 with 32 MSBs 0x000000005165f187
sw x3, 0(x2) # store x3 (0x5165f187) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005165f187
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000005165f187 from memory into f8
froundnx.d f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2a8de4b1 # load x3 with 32 MSBs 0x000000002a8de4b1
sw x3, 0(x2) # store x3 (0x2a8de4b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a8de4b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002a8de4b1 from memory into f9
froundnx.d f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7f5b695 # load x3 with 32 MSBs 0x00000000b7f5b695
sw x3, 0(x2) # store x3 (0xb7f5b695) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7f5b695
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b7f5b695 from memory into f10
froundnx.d f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0bfb6ef2 # load x3 with 32 MSBs 0x000000000bfb6ef2
sw x3, 0(x2) # store x3 (0x0bfb6ef2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000bfb6ef2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000bfb6ef2 from memory into f11
froundnx.d f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x49b50a56 # load x3 with 32 MSBs 0x0000000049b50a56
sw x3, 0(x2) # store x3 (0x49b50a56) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000049b50a56
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000049b50a56 from memory into f12
froundnx.d f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7867fb41 # load x3 with 32 MSBs 0x000000007867fb41
sw x3, 0(x2) # store x3 (0x7867fb41) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007867fb41
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000007867fb41 from memory into f13
froundnx.d f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x22a63884 # load x3 with 32 MSBs 0x0000000022a63884
sw x3, 0(x2) # store x3 (0x22a63884) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022a63884
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000022a63884 from memory into f14
froundnx.d f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3e463d0 # load x3 with 32 MSBs 0x00000000d3e463d0
sw x3, 0(x2) # store x3 (0xd3e463d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3e463d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000d3e463d0 from memory into f15
froundnx.d f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xacf84fad # load x3 with 32 MSBs 0x00000000acf84fad
sw x3, 0(x2) # store x3 (0xacf84fad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000acf84fad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000acf84fad from memory into f16
froundnx.d f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec54a4b7 # load x3 with 32 MSBs 0x00000000ec54a4b7
sw x3, 0(x2) # store x3 (0xec54a4b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec54a4b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ec54a4b7 from memory into f17
froundnx.d f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x04efbace # load x3 with 32 MSBs 0x0000000004efbace
sw x3, 0(x2) # store x3 (0x04efbace) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000004efbace
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000004efbace from memory into f18
froundnx.d f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x671987ef # load x3 with 32 MSBs 0x00000000671987ef
sw x3, 0(x2) # store x3 (0x671987ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000671987ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000671987ef from memory into f19
froundnx.d f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6a0cb642 # load x3 with 32 MSBs 0x000000006a0cb642
sw x3, 0(x2) # store x3 (0x6a0cb642) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a0cb642
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000006a0cb642 from memory into f20
froundnx.d f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1d52347f # load x3 with 32 MSBs 0x000000001d52347f
sw x3, 0(x2) # store x3 (0x1d52347f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d52347f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000001d52347f from memory into f21
froundnx.d f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc56cccdc # load x3 with 32 MSBs 0x00000000c56cccdc
sw x3, 0(x2) # store x3 (0xc56cccdc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c56cccdc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000c56cccdc from memory into f22
froundnx.d f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x736f59c7 # load x3 with 32 MSBs 0x00000000736f59c7
sw x3, 0(x2) # store x3 (0x736f59c7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000736f59c7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000736f59c7 from memory into f23
froundnx.d f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2e20ab22 # load x3 with 32 MSBs 0x000000002e20ab22
sw x3, 0(x2) # store x3 (0x2e20ab22) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e20ab22
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000002e20ab22 from memory into f24
froundnx.d f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9b8f93ef # load x3 with 32 MSBs 0x000000009b8f93ef
sw x3, 0(x2) # store x3 (0x9b8f93ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009b8f93ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000009b8f93ef from memory into f25
froundnx.d f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x22dc43a4 # load x3 with 32 MSBs 0x0000000022dc43a4
sw x3, 0(x2) # store x3 (0x22dc43a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022dc43a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000022dc43a4 from memory into f26
froundnx.d f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf6ce981 # load x3 with 32 MSBs 0x00000000bf6ce981
sw x3, 0(x2) # store x3 (0xbf6ce981) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf6ce981
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000bf6ce981 from memory into f27
froundnx.d f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x98ddfd06 # load x3 with 32 MSBs 0x0000000098ddfd06
sw x3, 0(x2) # store x3 (0x98ddfd06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098ddfd06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000098ddfd06 from memory into f28
froundnx.d f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd99c4f2b # load x3 with 32 MSBs 0x00000000d99c4f2b
sw x3, 0(x2) # store x3 (0xd99c4f2b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d99c4f2b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d99c4f2b from memory into f29
froundnx.d f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x05fb7ee5 # load x3 with 32 MSBs 0x0000000005fb7ee5
sw x3, 0(x2) # store x3 (0x05fb7ee5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005fb7ee5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000005fb7ee5 from memory into f30
froundnx.d f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6b0ba483 # load x3 with 32 MSBs 0x000000006b0ba483
sw x3, 0(x2) # store x3 (0x6b0ba483) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b0ba483
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000006b0ba483 from memory into f31
froundnx.d f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x19429779 # load x3 with 32 MSBs 0x0000000019429779
sw x3, 0(x2) # store x3 (0x19429779) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000019429779
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000019429779 from memory into f21
froundnx.d f23, f21, dyn # perform operation
froundnx.d f23, f21, rdn # perform operation
froundnx.d f23, f21, rmm # perform operation
froundnx.d f23, f21, rne # perform operation
froundnx.d f23, f21, rtz # perform operation
froundnx.d f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.d f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.d f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.d f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.d f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.d f23, f21 # perform operation


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
