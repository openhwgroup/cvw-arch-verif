///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fmin.d.S
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
add x3, x11, x12 # perform first operation
fmin.d f2, f9, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x23, x7 # perform first operation
fmin.d f13, f21, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x27, x2 # perform first operation
fmin.d f10, f29, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f28, f1, f24 # perform first operation
fmin.d f24, f28, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f14, f19, f2 # perform first operation
fmin.d f2, f10, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x2, x12 # perform first operation
fmin.d f2, f22, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f6, f13, f12 # perform first operation
fmin.d f6, f19, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f8, f6, f30 # perform first operation
fmin.d f8, f3, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f20, f12 # perform first operation
fmin.d f1, f30, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f18, f17 # perform first operation
fmin.d f18, f25, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f5, f9 # perform first operation
fmin.d f9, f30, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f1, f15, f16 # perform first operation
fmin.d f9, f18, f10 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xa0d2f6cb # load x3 with 32 MSBs 0x00000000a0d2f6cb
sw x3, 0(x2) # store x3 (0xa0d2f6cb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0d2f6cb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000a0d2f6cb from memory into f0
la x2, scratch
li x3, 0x78d1be28 # load x3 with 32 MSBs 0x0000000078d1be28
sw x3, 0(x2) # store x3 (0x78d1be28) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078d1be28
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000078d1be28 from memory into f19
fmin.d f11, f0, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x83d11fd4 # load x3 with 32 MSBs 0x0000000083d11fd4
sw x3, 0(x2) # store x3 (0x83d11fd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000083d11fd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000083d11fd4 from memory into f1
la x2, scratch
li x3, 0xceb82f91 # load x3 with 32 MSBs 0x00000000ceb82f91
sw x3, 0(x2) # store x3 (0xceb82f91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ceb82f91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ceb82f91 from memory into f31
fmin.d f24, f1, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xee39c52f # load x3 with 32 MSBs 0x00000000ee39c52f
sw x3, 0(x2) # store x3 (0xee39c52f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ee39c52f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ee39c52f from memory into f2
la x2, scratch
li x3, 0xca043610 # load x3 with 32 MSBs 0x00000000ca043610
sw x3, 0(x2) # store x3 (0xca043610) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca043610
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ca043610 from memory into f3
fmin.d f7, f2, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0xfd5259ae # load x3 with 32 MSBs 0x00000000fd5259ae
sw x3, 0(x2) # store x3 (0xfd5259ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd5259ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000fd5259ae from memory into f3
la x2, scratch
li x3, 0x5d306550 # load x3 with 32 MSBs 0x000000005d306550
sw x3, 0(x2) # store x3 (0x5d306550) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d306550
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000005d306550 from memory into f24
fmin.d f20, f3, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7c51a3a0 # load x3 with 32 MSBs 0x000000007c51a3a0
sw x3, 0(x2) # store x3 (0x7c51a3a0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007c51a3a0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000007c51a3a0 from memory into f4
la x2, scratch
li x3, 0xed666ad8 # load x3 with 32 MSBs 0x00000000ed666ad8
sw x3, 0(x2) # store x3 (0xed666ad8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed666ad8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ed666ad8 from memory into f7
fmin.d f22, f4, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xfe288563 # load x3 with 32 MSBs 0x00000000fe288563
sw x3, 0(x2) # store x3 (0xfe288563) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe288563
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000fe288563 from memory into f5
la x2, scratch
li x3, 0xddc2157a # load x3 with 32 MSBs 0x00000000ddc2157a
sw x3, 0(x2) # store x3 (0xddc2157a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ddc2157a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ddc2157a from memory into f19
fmin.d f11, f5, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3820d389 # load x3 with 32 MSBs 0x000000003820d389
sw x3, 0(x2) # store x3 (0x3820d389) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003820d389
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003820d389 from memory into f6
la x2, scratch
li x3, 0xe5848998 # load x3 with 32 MSBs 0x00000000e5848998
sw x3, 0(x2) # store x3 (0xe5848998) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5848998
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e5848998 from memory into f11
fmin.d f18, f6, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xef5ab0cd # load x3 with 32 MSBs 0x00000000ef5ab0cd
sw x3, 0(x2) # store x3 (0xef5ab0cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef5ab0cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ef5ab0cd from memory into f7
la x2, scratch
li x3, 0xf57fe5b7 # load x3 with 32 MSBs 0x00000000f57fe5b7
sw x3, 0(x2) # store x3 (0xf57fe5b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f57fe5b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f57fe5b7 from memory into f30
fmin.d f14, f7, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xd835e2ab # load x3 with 32 MSBs 0x00000000d835e2ab
sw x3, 0(x2) # store x3 (0xd835e2ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d835e2ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d835e2ab from memory into f8
la x2, scratch
li x3, 0xa91d4f45 # load x3 with 32 MSBs 0x00000000a91d4f45
sw x3, 0(x2) # store x3 (0xa91d4f45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a91d4f45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a91d4f45 from memory into f2
fmin.d f7, f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xccc10d69 # load x3 with 32 MSBs 0x00000000ccc10d69
sw x3, 0(x2) # store x3 (0xccc10d69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ccc10d69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ccc10d69 from memory into f9
la x2, scratch
li x3, 0x5f1a542e # load x3 with 32 MSBs 0x000000005f1a542e
sw x3, 0(x2) # store x3 (0x5f1a542e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005f1a542e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005f1a542e from memory into f19
fmin.d f8, f9, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xdbb506d2 # load x3 with 32 MSBs 0x00000000dbb506d2
sw x3, 0(x2) # store x3 (0xdbb506d2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbb506d2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000dbb506d2 from memory into f10
la x2, scratch
li x3, 0x8124f8bd # load x3 with 32 MSBs 0x000000008124f8bd
sw x3, 0(x2) # store x3 (0x8124f8bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008124f8bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008124f8bd from memory into f16
fmin.d f19, f10, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xea9045f8 # load x3 with 32 MSBs 0x00000000ea9045f8
sw x3, 0(x2) # store x3 (0xea9045f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea9045f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ea9045f8 from memory into f11
la x2, scratch
li x3, 0xa6dd8b6b # load x3 with 32 MSBs 0x00000000a6dd8b6b
sw x3, 0(x2) # store x3 (0xa6dd8b6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a6dd8b6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000a6dd8b6b from memory into f5
fmin.d f29, f11, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x332d9b5a # load x3 with 32 MSBs 0x00000000332d9b5a
sw x3, 0(x2) # store x3 (0x332d9b5a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000332d9b5a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000332d9b5a from memory into f12
la x2, scratch
li x3, 0x63edd2ee # load x3 with 32 MSBs 0x0000000063edd2ee
sw x3, 0(x2) # store x3 (0x63edd2ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063edd2ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000063edd2ee from memory into f13
fmin.d f1, f12, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xf1a2fa7e # load x3 with 32 MSBs 0x00000000f1a2fa7e
sw x3, 0(x2) # store x3 (0xf1a2fa7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1a2fa7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000f1a2fa7e from memory into f13
la x2, scratch
li x3, 0x7cefb8f3 # load x3 with 32 MSBs 0x000000007cefb8f3
sw x3, 0(x2) # store x3 (0x7cefb8f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007cefb8f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000007cefb8f3 from memory into f23
fmin.d f29, f13, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xaacdcb34 # load x3 with 32 MSBs 0x00000000aacdcb34
sw x3, 0(x2) # store x3 (0xaacdcb34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aacdcb34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000aacdcb34 from memory into f14
la x2, scratch
li x3, 0xe0385182 # load x3 with 32 MSBs 0x00000000e0385182
sw x3, 0(x2) # store x3 (0xe0385182) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0385182
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000e0385182 from memory into f12
fmin.d f8, f14, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x6eec2aae # load x3 with 32 MSBs 0x000000006eec2aae
sw x3, 0(x2) # store x3 (0x6eec2aae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006eec2aae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006eec2aae from memory into f15
la x2, scratch
li x3, 0x2854b942 # load x3 with 32 MSBs 0x000000002854b942
sw x3, 0(x2) # store x3 (0x2854b942) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002854b942
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000002854b942 from memory into f17
fmin.d f10, f15, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x755db459 # load x3 with 32 MSBs 0x00000000755db459
sw x3, 0(x2) # store x3 (0x755db459) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000755db459
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000755db459 from memory into f16
la x2, scratch
li x3, 0x3bc7065c # load x3 with 32 MSBs 0x000000003bc7065c
sw x3, 0(x2) # store x3 (0x3bc7065c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003bc7065c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003bc7065c from memory into f1
fmin.d f11, f16, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0xeff25109 # load x3 with 32 MSBs 0x00000000eff25109
sw x3, 0(x2) # store x3 (0xeff25109) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eff25109
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000eff25109 from memory into f17
la x2, scratch
li x3, 0x812c00ad # load x3 with 32 MSBs 0x00000000812c00ad
sw x3, 0(x2) # store x3 (0x812c00ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000812c00ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000812c00ad from memory into f14
fmin.d f1, f17, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x3bb063e3 # load x3 with 32 MSBs 0x000000003bb063e3
sw x3, 0(x2) # store x3 (0x3bb063e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003bb063e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003bb063e3 from memory into f18
la x2, scratch
li x3, 0xb6d7c49b # load x3 with 32 MSBs 0x00000000b6d7c49b
sw x3, 0(x2) # store x3 (0xb6d7c49b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b6d7c49b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b6d7c49b from memory into f2
fmin.d f10, f18, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xf0a505e8 # load x3 with 32 MSBs 0x00000000f0a505e8
sw x3, 0(x2) # store x3 (0xf0a505e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f0a505e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000f0a505e8 from memory into f19
la x2, scratch
li x3, 0x8bdb5d42 # load x3 with 32 MSBs 0x000000008bdb5d42
sw x3, 0(x2) # store x3 (0x8bdb5d42) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008bdb5d42
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000008bdb5d42 from memory into f7
fmin.d f9, f19, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x7a470048 # load x3 with 32 MSBs 0x000000007a470048
sw x3, 0(x2) # store x3 (0x7a470048) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a470048
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007a470048 from memory into f20
la x2, scratch
li x3, 0x656cfc79 # load x3 with 32 MSBs 0x00000000656cfc79
sw x3, 0(x2) # store x3 (0x656cfc79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000656cfc79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000656cfc79 from memory into f12
fmin.d f6, f20, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa02a840c # load x3 with 32 MSBs 0x00000000a02a840c
sw x3, 0(x2) # store x3 (0xa02a840c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a02a840c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000a02a840c from memory into f21
la x2, scratch
li x3, 0x01fecc4a # load x3 with 32 MSBs 0x0000000001fecc4a
sw x3, 0(x2) # store x3 (0x01fecc4a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000001fecc4a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000001fecc4a from memory into f11
fmin.d f13, f21, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xab10ddae # load x3 with 32 MSBs 0x00000000ab10ddae
sw x3, 0(x2) # store x3 (0xab10ddae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab10ddae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ab10ddae from memory into f22
la x2, scratch
li x3, 0x00dd24a0 # load x3 with 32 MSBs 0x0000000000dd24a0
sw x3, 0(x2) # store x3 (0x00dd24a0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000dd24a0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000dd24a0 from memory into f29
fmin.d f8, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x53fa2e2e # load x3 with 32 MSBs 0x0000000053fa2e2e
sw x3, 0(x2) # store x3 (0x53fa2e2e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053fa2e2e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000053fa2e2e from memory into f23
la x2, scratch
li x3, 0x897efa96 # load x3 with 32 MSBs 0x00000000897efa96
sw x3, 0(x2) # store x3 (0x897efa96) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000897efa96
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000897efa96 from memory into f9
fmin.d f22, f23, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xe290faa8 # load x3 with 32 MSBs 0x00000000e290faa8
sw x3, 0(x2) # store x3 (0xe290faa8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e290faa8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e290faa8 from memory into f24
la x2, scratch
li x3, 0x55913bc7 # load x3 with 32 MSBs 0x0000000055913bc7
sw x3, 0(x2) # store x3 (0x55913bc7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055913bc7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000055913bc7 from memory into f16
fmin.d f3, f24, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x1d9f42f6 # load x3 with 32 MSBs 0x000000001d9f42f6
sw x3, 0(x2) # store x3 (0x1d9f42f6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d9f42f6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000001d9f42f6 from memory into f25
la x2, scratch
li x3, 0x316bf9f3 # load x3 with 32 MSBs 0x00000000316bf9f3
sw x3, 0(x2) # store x3 (0x316bf9f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000316bf9f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000316bf9f3 from memory into f9
fmin.d f17, f25, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xb59ef6bb # load x3 with 32 MSBs 0x00000000b59ef6bb
sw x3, 0(x2) # store x3 (0xb59ef6bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b59ef6bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b59ef6bb from memory into f26
la x2, scratch
li x3, 0x9df183a3 # load x3 with 32 MSBs 0x000000009df183a3
sw x3, 0(x2) # store x3 (0x9df183a3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009df183a3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009df183a3 from memory into f17
fmin.d f26, f26, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x203e3745 # load x3 with 32 MSBs 0x00000000203e3745
sw x3, 0(x2) # store x3 (0x203e3745) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000203e3745
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000203e3745 from memory into f27
la x2, scratch
li x3, 0xba9e25b5 # load x3 with 32 MSBs 0x00000000ba9e25b5
sw x3, 0(x2) # store x3 (0xba9e25b5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ba9e25b5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ba9e25b5 from memory into f18
fmin.d f26, f27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xc7fc715c # load x3 with 32 MSBs 0x00000000c7fc715c
sw x3, 0(x2) # store x3 (0xc7fc715c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c7fc715c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000c7fc715c from memory into f28
la x2, scratch
li x3, 0xef608ac4 # load x3 with 32 MSBs 0x00000000ef608ac4
sw x3, 0(x2) # store x3 (0xef608ac4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef608ac4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ef608ac4 from memory into f3
fmin.d f31, f28, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x34b27e60 # load x3 with 32 MSBs 0x0000000034b27e60
sw x3, 0(x2) # store x3 (0x34b27e60) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034b27e60
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000034b27e60 from memory into f29
la x2, scratch
li x3, 0x9a1875b8 # load x3 with 32 MSBs 0x000000009a1875b8
sw x3, 0(x2) # store x3 (0x9a1875b8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a1875b8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009a1875b8 from memory into f13
fmin.d f7, f29, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xd1cb4ee9 # load x3 with 32 MSBs 0x00000000d1cb4ee9
sw x3, 0(x2) # store x3 (0xd1cb4ee9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d1cb4ee9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000d1cb4ee9 from memory into f30
la x2, scratch
li x3, 0x6954dd6f # load x3 with 32 MSBs 0x000000006954dd6f
sw x3, 0(x2) # store x3 (0x6954dd6f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006954dd6f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006954dd6f from memory into f15
fmin.d f17, f30, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x28bd8f52 # load x3 with 32 MSBs 0x0000000028bd8f52
sw x3, 0(x2) # store x3 (0x28bd8f52) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028bd8f52
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000028bd8f52 from memory into f31
la x2, scratch
li x3, 0xa12eb3a5 # load x3 with 32 MSBs 0x00000000a12eb3a5
sw x3, 0(x2) # store x3 (0xa12eb3a5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a12eb3a5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a12eb3a5 from memory into f19
fmin.d f29, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x33fd5fdb # load x3 with 32 MSBs 0x0000000033fd5fdb
sw x3, 0(x2) # store x3 (0x33fd5fdb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000033fd5fdb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000033fd5fdb from memory into f23
la x2, scratch
li x3, 0x02ba0e78 # load x3 with 32 MSBs 0x0000000002ba0e78
sw x3, 0(x2) # store x3 (0x02ba0e78) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002ba0e78
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000002ba0e78 from memory into f0
fmin.d f13, f23, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xf924aedc # load x3 with 32 MSBs 0x00000000f924aedc
sw x3, 0(x2) # store x3 (0xf924aedc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f924aedc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f924aedc from memory into f18
la x2, scratch
li x3, 0xb5773ed7 # load x3 with 32 MSBs 0x00000000b5773ed7
sw x3, 0(x2) # store x3 (0xb5773ed7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5773ed7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b5773ed7 from memory into f1
fmin.d f27, f18, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x8eb18832 # load x3 with 32 MSBs 0x000000008eb18832
sw x3, 0(x2) # store x3 (0x8eb18832) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008eb18832
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008eb18832 from memory into f26
la x2, scratch
li x3, 0xb173b9e3 # load x3 with 32 MSBs 0x00000000b173b9e3
sw x3, 0(x2) # store x3 (0xb173b9e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b173b9e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b173b9e3 from memory into f2
fmin.d f7, f26, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xd370de17 # load x3 with 32 MSBs 0x00000000d370de17
sw x3, 0(x2) # store x3 (0xd370de17) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d370de17
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d370de17 from memory into f19
la x2, scratch
li x3, 0xb1e88823 # load x3 with 32 MSBs 0x00000000b1e88823
sw x3, 0(x2) # store x3 (0xb1e88823) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b1e88823
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b1e88823 from memory into f3
fmin.d f6, f19, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf910df91 # load x3 with 32 MSBs 0x00000000f910df91
sw x3, 0(x2) # store x3 (0xf910df91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f910df91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f910df91 from memory into f16
la x2, scratch
li x3, 0x8e56955e # load x3 with 32 MSBs 0x000000008e56955e
sw x3, 0(x2) # store x3 (0x8e56955e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e56955e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000008e56955e from memory into f4
fmin.d f3, f16, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x454760af # load x3 with 32 MSBs 0x00000000454760af
sw x3, 0(x2) # store x3 (0x454760af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000454760af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000454760af from memory into f12
la x2, scratch
li x3, 0x663bbf62 # load x3 with 32 MSBs 0x00000000663bbf62
sw x3, 0(x2) # store x3 (0x663bbf62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000663bbf62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000663bbf62 from memory into f5
fmin.d f20, f12, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf2d12373 # load x3 with 32 MSBs 0x00000000f2d12373
sw x3, 0(x2) # store x3 (0xf2d12373) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2d12373
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f2d12373 from memory into f31
la x2, scratch
li x3, 0x3f62823c # load x3 with 32 MSBs 0x000000003f62823c
sw x3, 0(x2) # store x3 (0x3f62823c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f62823c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003f62823c from memory into f6
fmin.d f4, f31, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc8255798 # load x3 with 32 MSBs 0x00000000c8255798
sw x3, 0(x2) # store x3 (0xc8255798) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c8255798
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000c8255798 from memory into f3
la x2, scratch
li x3, 0x0e26a8d2 # load x3 with 32 MSBs 0x000000000e26a8d2
sw x3, 0(x2) # store x3 (0x0e26a8d2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e26a8d2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000000e26a8d2 from memory into f7
fmin.d f2, f3, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x37d7021f # load x3 with 32 MSBs 0x0000000037d7021f
sw x3, 0(x2) # store x3 (0x37d7021f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037d7021f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000037d7021f from memory into f5
la x2, scratch
li x3, 0x37e1e71c # load x3 with 32 MSBs 0x0000000037e1e71c
sw x3, 0(x2) # store x3 (0x37e1e71c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000037e1e71c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000037e1e71c from memory into f8
fmin.d f9, f5, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x1d96ccf4 # load x3 with 32 MSBs 0x000000001d96ccf4
sw x3, 0(x2) # store x3 (0x1d96ccf4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d96ccf4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000001d96ccf4 from memory into f7
la x2, scratch
li x3, 0xa1c45624 # load x3 with 32 MSBs 0x00000000a1c45624
sw x3, 0(x2) # store x3 (0xa1c45624) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a1c45624
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a1c45624 from memory into f9
fmin.d f26, f7, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x897e0576 # load x3 with 32 MSBs 0x00000000897e0576
sw x3, 0(x2) # store x3 (0x897e0576) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000897e0576
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000897e0576 from memory into f13
la x2, scratch
li x3, 0xe27fbb76 # load x3 with 32 MSBs 0x00000000e27fbb76
sw x3, 0(x2) # store x3 (0xe27fbb76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e27fbb76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000e27fbb76 from memory into f10
fmin.d f17, f13, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x3ad12693 # load x3 with 32 MSBs 0x000000003ad12693
sw x3, 0(x2) # store x3 (0x3ad12693) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ad12693
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003ad12693 from memory into f2
la x2, scratch
li x3, 0xb9385f06 # load x3 with 32 MSBs 0x00000000b9385f06
sw x3, 0(x2) # store x3 (0xb9385f06) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9385f06
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000b9385f06 from memory into f11
fmin.d f11, f2, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x6db28e70 # load x3 with 32 MSBs 0x000000006db28e70
sw x3, 0(x2) # store x3 (0x6db28e70) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006db28e70
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006db28e70 from memory into f9
la x2, scratch
li x3, 0x5638629d # load x3 with 32 MSBs 0x000000005638629d
sw x3, 0(x2) # store x3 (0x5638629d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005638629d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005638629d from memory into f12
fmin.d f19, f9, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xd3726a7c # load x3 with 32 MSBs 0x00000000d3726a7c
sw x3, 0(x2) # store x3 (0xd3726a7c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3726a7c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d3726a7c from memory into f19
la x2, scratch
li x3, 0x27923534 # load x3 with 32 MSBs 0x0000000027923534
sw x3, 0(x2) # store x3 (0x27923534) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027923534
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000027923534 from memory into f13
fmin.d f8, f19, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x2ddf7eba # load x3 with 32 MSBs 0x000000002ddf7eba
sw x3, 0(x2) # store x3 (0x2ddf7eba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002ddf7eba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002ddf7eba from memory into f9
la x2, scratch
li x3, 0x220db0ec # load x3 with 32 MSBs 0x00000000220db0ec
sw x3, 0(x2) # store x3 (0x220db0ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000220db0ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000220db0ec from memory into f14
fmin.d f2, f9, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xafa9fb95 # load x3 with 32 MSBs 0x00000000afa9fb95
sw x3, 0(x2) # store x3 (0xafa9fb95) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000afa9fb95
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000afa9fb95 from memory into f31
la x2, scratch
li x3, 0x9ca1b21d # load x3 with 32 MSBs 0x000000009ca1b21d
sw x3, 0(x2) # store x3 (0x9ca1b21d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ca1b21d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000009ca1b21d from memory into f15
fmin.d f6, f31, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xe1cec242 # load x3 with 32 MSBs 0x00000000e1cec242
sw x3, 0(x2) # store x3 (0xe1cec242) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1cec242
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000e1cec242 from memory into f10
la x2, scratch
li x3, 0x6bf9a453 # load x3 with 32 MSBs 0x000000006bf9a453
sw x3, 0(x2) # store x3 (0x6bf9a453) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006bf9a453
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006bf9a453 from memory into f16
fmin.d f13, f10, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xb35c3303 # load x3 with 32 MSBs 0x00000000b35c3303
sw x3, 0(x2) # store x3 (0xb35c3303) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b35c3303
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b35c3303 from memory into f23
la x2, scratch
li x3, 0x0c18afed # load x3 with 32 MSBs 0x000000000c18afed
sw x3, 0(x2) # store x3 (0x0c18afed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000c18afed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000000c18afed from memory into f17
fmin.d f17, f23, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x8dbe300b # load x3 with 32 MSBs 0x000000008dbe300b
sw x3, 0(x2) # store x3 (0x8dbe300b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008dbe300b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000008dbe300b from memory into f3
la x2, scratch
li x3, 0x0f703ee2 # load x3 with 32 MSBs 0x000000000f703ee2
sw x3, 0(x2) # store x3 (0x0f703ee2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000f703ee2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000000f703ee2 from memory into f18
fmin.d f11, f3, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xd6bf4747 # load x3 with 32 MSBs 0x00000000d6bf4747
sw x3, 0(x2) # store x3 (0xd6bf4747) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d6bf4747
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000d6bf4747 from memory into f24
la x2, scratch
li x3, 0x813399b4 # load x3 with 32 MSBs 0x00000000813399b4
sw x3, 0(x2) # store x3 (0x813399b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000813399b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000813399b4 from memory into f19
fmin.d f13, f24, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xe50fbcb7 # load x3 with 32 MSBs 0x00000000e50fbcb7
sw x3, 0(x2) # store x3 (0xe50fbcb7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e50fbcb7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e50fbcb7 from memory into f8
la x2, scratch
li x3, 0xd4d00d66 # load x3 with 32 MSBs 0x00000000d4d00d66
sw x3, 0(x2) # store x3 (0xd4d00d66) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4d00d66
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000d4d00d66 from memory into f20
fmin.d f1, f8, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xeb24be98 # load x3 with 32 MSBs 0x00000000eb24be98
sw x3, 0(x2) # store x3 (0xeb24be98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb24be98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000eb24be98 from memory into f6
la x2, scratch
li x3, 0x67b74577 # load x3 with 32 MSBs 0x0000000067b74577
sw x3, 0(x2) # store x3 (0x67b74577) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067b74577
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000067b74577 from memory into f21
fmin.d f20, f6, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x6a9befdb # load x3 with 32 MSBs 0x000000006a9befdb
sw x3, 0(x2) # store x3 (0x6a9befdb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a9befdb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006a9befdb from memory into f5
la x2, scratch
li x3, 0x8e25df24 # load x3 with 32 MSBs 0x000000008e25df24
sw x3, 0(x2) # store x3 (0x8e25df24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e25df24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000008e25df24 from memory into f22
fmin.d f18, f5, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x278dc528 # load x3 with 32 MSBs 0x00000000278dc528
sw x3, 0(x2) # store x3 (0x278dc528) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000278dc528
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000278dc528 from memory into f24
la x2, scratch
li x3, 0x600f0542 # load x3 with 32 MSBs 0x00000000600f0542
sw x3, 0(x2) # store x3 (0x600f0542) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000600f0542
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000600f0542 from memory into f23
fmin.d f26, f24, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xd593e7cf # load x3 with 32 MSBs 0x00000000d593e7cf
sw x3, 0(x2) # store x3 (0xd593e7cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d593e7cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d593e7cf from memory into f8
la x2, scratch
li x3, 0x3b43df77 # load x3 with 32 MSBs 0x000000003b43df77
sw x3, 0(x2) # store x3 (0x3b43df77) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b43df77
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000003b43df77 from memory into f24
fmin.d f14, f8, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x09e33c16 # load x3 with 32 MSBs 0x0000000009e33c16
sw x3, 0(x2) # store x3 (0x09e33c16) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009e33c16
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000009e33c16 from memory into f20
la x2, scratch
li x3, 0xf3cea1dc # load x3 with 32 MSBs 0x00000000f3cea1dc
sw x3, 0(x2) # store x3 (0xf3cea1dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3cea1dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f3cea1dc from memory into f25
fmin.d f14, f20, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x00f60e52 # load x3 with 32 MSBs 0x0000000000f60e52
sw x3, 0(x2) # store x3 (0x00f60e52) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000f60e52
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000f60e52 from memory into f6
la x2, scratch
li x3, 0x34245985 # load x3 with 32 MSBs 0x0000000034245985
sw x3, 0(x2) # store x3 (0x34245985) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034245985
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000034245985 from memory into f26
fmin.d f19, f6, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x39bcb850 # load x3 with 32 MSBs 0x0000000039bcb850
sw x3, 0(x2) # store x3 (0x39bcb850) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039bcb850
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000039bcb850 from memory into f6
la x2, scratch
li x3, 0xc7051be7 # load x3 with 32 MSBs 0x00000000c7051be7
sw x3, 0(x2) # store x3 (0xc7051be7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c7051be7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c7051be7 from memory into f27
fmin.d f18, f6, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xc78f6621 # load x3 with 32 MSBs 0x00000000c78f6621
sw x3, 0(x2) # store x3 (0xc78f6621) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c78f6621
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c78f6621 from memory into f21
la x2, scratch
li x3, 0x3daa87bd # load x3 with 32 MSBs 0x000000003daa87bd
sw x3, 0(x2) # store x3 (0x3daa87bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003daa87bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003daa87bd from memory into f28
fmin.d f17, f21, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x1c8be253 # load x3 with 32 MSBs 0x000000001c8be253
sw x3, 0(x2) # store x3 (0x1c8be253) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c8be253
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000001c8be253 from memory into f13
la x2, scratch
li x3, 0x1b20950b # load x3 with 32 MSBs 0x000000001b20950b
sw x3, 0(x2) # store x3 (0x1b20950b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001b20950b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000001b20950b from memory into f29
fmin.d f7, f13, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x7569c5e8 # load x3 with 32 MSBs 0x000000007569c5e8
sw x3, 0(x2) # store x3 (0x7569c5e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007569c5e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007569c5e8 from memory into f19
la x2, scratch
li x3, 0xb1ccc73e # load x3 with 32 MSBs 0x00000000b1ccc73e
sw x3, 0(x2) # store x3 (0xb1ccc73e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b1ccc73e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000b1ccc73e from memory into f30
fmin.d f6, f19, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x6b728249 # load x3 with 32 MSBs 0x000000006b728249
sw x3, 0(x2) # store x3 (0x6b728249) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b728249
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006b728249 from memory into f29
la x2, scratch
li x3, 0x2775c640 # load x3 with 32 MSBs 0x000000002775c640
sw x3, 0(x2) # store x3 (0x2775c640) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002775c640
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000002775c640 from memory into f31
fmin.d f16, f29, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0x224944e1 # load x3 with 32 MSBs 0x00000000224944e1
sw x3, 0(x2) # store x3 (0x224944e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000224944e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000224944e1 from memory into f8
la x2, scratch
li x3, 0x64d7a9ad # load x3 with 32 MSBs 0x0000000064d7a9ad
sw x3, 0(x2) # store x3 (0x64d7a9ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064d7a9ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000064d7a9ad from memory into f22
fmin.d f0, f8, f22 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x1fdecd39 # load x3 with 32 MSBs 0x000000001fdecd39
sw x3, 0(x2) # store x3 (0x1fdecd39) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001fdecd39
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001fdecd39 from memory into f19
la x2, scratch
li x3, 0x043b1aaf # load x3 with 32 MSBs 0x00000000043b1aaf
sw x3, 0(x2) # store x3 (0x043b1aaf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000043b1aaf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000043b1aaf from memory into f14
fmin.d f1, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x0d510419 # load x3 with 32 MSBs 0x000000000d510419
sw x3, 0(x2) # store x3 (0x0d510419) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d510419
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000000d510419 from memory into f28
la x2, scratch
li x3, 0x179b3189 # load x3 with 32 MSBs 0x00000000179b3189
sw x3, 0(x2) # store x3 (0x179b3189) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000179b3189
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000179b3189 from memory into f5
fmin.d f2, f28, f5 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x70c436ad # load x3 with 32 MSBs 0x0000000070c436ad
sw x3, 0(x2) # store x3 (0x70c436ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000070c436ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000070c436ad from memory into f27
la x2, scratch
li x3, 0x9199afcc # load x3 with 32 MSBs 0x000000009199afcc
sw x3, 0(x2) # store x3 (0x9199afcc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009199afcc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000009199afcc from memory into f20
fmin.d f3, f27, f20 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xede921e5 # load x3 with 32 MSBs 0x00000000ede921e5
sw x3, 0(x2) # store x3 (0xede921e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ede921e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ede921e5 from memory into f27
la x2, scratch
li x3, 0x6148cba2 # load x3 with 32 MSBs 0x000000006148cba2
sw x3, 0(x2) # store x3 (0x6148cba2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006148cba2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000006148cba2 from memory into f24
fmin.d f4, f27, f24 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd94224aa # load x3 with 32 MSBs 0x00000000d94224aa
sw x3, 0(x2) # store x3 (0xd94224aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d94224aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d94224aa from memory into f3
la x2, scratch
li x3, 0xe62282f1 # load x3 with 32 MSBs 0x00000000e62282f1
sw x3, 0(x2) # store x3 (0xe62282f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e62282f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e62282f1 from memory into f28
fmin.d f5, f3, f28 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe1a0b0cb # load x3 with 32 MSBs 0x00000000e1a0b0cb
sw x3, 0(x2) # store x3 (0xe1a0b0cb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1a0b0cb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000e1a0b0cb from memory into f15
la x2, scratch
li x3, 0x13ddf632 # load x3 with 32 MSBs 0x0000000013ddf632
sw x3, 0(x2) # store x3 (0x13ddf632) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013ddf632
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000013ddf632 from memory into f27
fmin.d f6, f15, f27 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x916720e9 # load x3 with 32 MSBs 0x00000000916720e9
sw x3, 0(x2) # store x3 (0x916720e9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000916720e9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000916720e9 from memory into f24
la x2, scratch
li x3, 0x58362d99 # load x3 with 32 MSBs 0x0000000058362d99
sw x3, 0(x2) # store x3 (0x58362d99) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000058362d99
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000058362d99 from memory into f20
fmin.d f7, f24, f20 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x399a650c # load x3 with 32 MSBs 0x00000000399a650c
sw x3, 0(x2) # store x3 (0x399a650c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000399a650c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000399a650c from memory into f3
la x2, scratch
li x3, 0x48effa2d # load x3 with 32 MSBs 0x0000000048effa2d
sw x3, 0(x2) # store x3 (0x48effa2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000048effa2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000048effa2d from memory into f24
fmin.d f8, f3, f24 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0xa573124b # load x3 with 32 MSBs 0x00000000a573124b
sw x3, 0(x2) # store x3 (0xa573124b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a573124b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000a573124b from memory into f5
la x2, scratch
li x3, 0x27de9866 # load x3 with 32 MSBs 0x0000000027de9866
sw x3, 0(x2) # store x3 (0x27de9866) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027de9866
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000027de9866 from memory into f26
fmin.d f9, f5, f26 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x94d90c13 # load x3 with 32 MSBs 0x0000000094d90c13
sw x3, 0(x2) # store x3 (0x94d90c13) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094d90c13
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000094d90c13 from memory into f15
la x2, scratch
li x3, 0xbd5a9dae # load x3 with 32 MSBs 0x00000000bd5a9dae
sw x3, 0(x2) # store x3 (0xbd5a9dae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd5a9dae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000bd5a9dae from memory into f9
fmin.d f10, f15, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x4458dd1e # load x3 with 32 MSBs 0x000000004458dd1e
sw x3, 0(x2) # store x3 (0x4458dd1e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004458dd1e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004458dd1e from memory into f29
la x2, scratch
li x3, 0x5e523f21 # load x3 with 32 MSBs 0x000000005e523f21
sw x3, 0(x2) # store x3 (0x5e523f21) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e523f21
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000005e523f21 from memory into f31
fmin.d f11, f29, f31 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xe9dccce8 # load x3 with 32 MSBs 0x00000000e9dccce8
sw x3, 0(x2) # store x3 (0xe9dccce8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9dccce8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000e9dccce8 from memory into f31
la x2, scratch
li x3, 0x1880ca02 # load x3 with 32 MSBs 0x000000001880ca02
sw x3, 0(x2) # store x3 (0x1880ca02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001880ca02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001880ca02 from memory into f3
fmin.d f12, f31, f3 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x24beccea # load x3 with 32 MSBs 0x0000000024beccea
sw x3, 0(x2) # store x3 (0x24beccea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000024beccea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000024beccea from memory into f15
la x2, scratch
li x3, 0x9c2f5b83 # load x3 with 32 MSBs 0x000000009c2f5b83
sw x3, 0(x2) # store x3 (0x9c2f5b83) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c2f5b83
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009c2f5b83 from memory into f19
fmin.d f13, f15, f19 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x84f576a6 # load x3 with 32 MSBs 0x0000000084f576a6
sw x3, 0(x2) # store x3 (0x84f576a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084f576a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000084f576a6 from memory into f1
la x2, scratch
li x3, 0xecae0243 # load x3 with 32 MSBs 0x00000000ecae0243
sw x3, 0(x2) # store x3 (0xecae0243) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ecae0243
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ecae0243 from memory into f11
fmin.d f14, f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x07fc6479 # load x3 with 32 MSBs 0x0000000007fc6479
sw x3, 0(x2) # store x3 (0x07fc6479) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007fc6479
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000007fc6479 from memory into f3
la x2, scratch
li x3, 0x611c5acb # load x3 with 32 MSBs 0x00000000611c5acb
sw x3, 0(x2) # store x3 (0x611c5acb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000611c5acb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000611c5acb from memory into f6
fmin.d f15, f3, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0x728cfc13 # load x3 with 32 MSBs 0x00000000728cfc13
sw x3, 0(x2) # store x3 (0x728cfc13) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000728cfc13
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000728cfc13 from memory into f15
la x2, scratch
li x3, 0x6876b418 # load x3 with 32 MSBs 0x000000006876b418
sw x3, 0(x2) # store x3 (0x6876b418) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006876b418
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006876b418 from memory into f1
fmin.d f16, f15, f1 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xb1ea4da2 # load x3 with 32 MSBs 0x00000000b1ea4da2
sw x3, 0(x2) # store x3 (0xb1ea4da2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b1ea4da2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000b1ea4da2 from memory into f27
la x2, scratch
li x3, 0xb43d1814 # load x3 with 32 MSBs 0x00000000b43d1814
sw x3, 0(x2) # store x3 (0xb43d1814) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b43d1814
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000b43d1814 from memory into f11
fmin.d f17, f27, f11 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0xb28ed9ed # load x3 with 32 MSBs 0x00000000b28ed9ed
sw x3, 0(x2) # store x3 (0xb28ed9ed) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b28ed9ed
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b28ed9ed from memory into f31
la x2, scratch
li x3, 0x4ce8dc02 # load x3 with 32 MSBs 0x000000004ce8dc02
sw x3, 0(x2) # store x3 (0x4ce8dc02) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ce8dc02
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000004ce8dc02 from memory into f14
fmin.d f18, f31, f14 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x47cba412 # load x3 with 32 MSBs 0x0000000047cba412
sw x3, 0(x2) # store x3 (0x47cba412) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047cba412
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000047cba412 from memory into f23
la x2, scratch
li x3, 0xe5cb6ae5 # load x3 with 32 MSBs 0x00000000e5cb6ae5
sw x3, 0(x2) # store x3 (0xe5cb6ae5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5cb6ae5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000e5cb6ae5 from memory into f29
fmin.d f19, f23, f29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0x90d07f21 # load x3 with 32 MSBs 0x0000000090d07f21
sw x3, 0(x2) # store x3 (0x90d07f21) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000090d07f21
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000090d07f21 from memory into f27
la x2, scratch
li x3, 0x4a2b9d57 # load x3 with 32 MSBs 0x000000004a2b9d57
sw x3, 0(x2) # store x3 (0x4a2b9d57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004a2b9d57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000004a2b9d57 from memory into f24
fmin.d f20, f27, f24 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0xea43db05 # load x3 with 32 MSBs 0x00000000ea43db05
sw x3, 0(x2) # store x3 (0xea43db05) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea43db05
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ea43db05 from memory into f16
la x2, scratch
li x3, 0x029d23e8 # load x3 with 32 MSBs 0x00000000029d23e8
sw x3, 0(x2) # store x3 (0x029d23e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000029d23e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000029d23e8 from memory into f28
fmin.d f21, f16, f28 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0x42f37780 # load x3 with 32 MSBs 0x0000000042f37780
sw x3, 0(x2) # store x3 (0x42f37780) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042f37780
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000042f37780 from memory into f9
la x2, scratch
li x3, 0xda3e4e47 # load x3 with 32 MSBs 0x00000000da3e4e47
sw x3, 0(x2) # store x3 (0xda3e4e47) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da3e4e47
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000da3e4e47 from memory into f12
fmin.d f22, f9, f12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x4be925a9 # load x3 with 32 MSBs 0x000000004be925a9
sw x3, 0(x2) # store x3 (0x4be925a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004be925a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000004be925a9 from memory into f9
la x2, scratch
li x3, 0x4834d57e # load x3 with 32 MSBs 0x000000004834d57e
sw x3, 0(x2) # store x3 (0x4834d57e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004834d57e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000004834d57e from memory into f7
fmin.d f23, f9, f7 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0xf90a4618 # load x3 with 32 MSBs 0x00000000f90a4618
sw x3, 0(x2) # store x3 (0xf90a4618) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f90a4618
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f90a4618 from memory into f18
la x2, scratch
li x3, 0xffd663dd # load x3 with 32 MSBs 0x00000000ffd663dd
sw x3, 0(x2) # store x3 (0xffd663dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffd663dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ffd663dd from memory into f13
fmin.d f24, f18, f13 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x1d10c190 # load x3 with 32 MSBs 0x000000001d10c190
sw x3, 0(x2) # store x3 (0x1d10c190) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d10c190
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001d10c190 from memory into f30
la x2, scratch
li x3, 0xf081baac # load x3 with 32 MSBs 0x00000000f081baac
sw x3, 0(x2) # store x3 (0xf081baac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f081baac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000f081baac from memory into f8
fmin.d f25, f30, f8 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0xeb493aad # load x3 with 32 MSBs 0x00000000eb493aad
sw x3, 0(x2) # store x3 (0xeb493aad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb493aad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000eb493aad from memory into f13
la x2, scratch
li x3, 0x49813fb6 # load x3 with 32 MSBs 0x0000000049813fb6
sw x3, 0(x2) # store x3 (0x49813fb6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000049813fb6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000049813fb6 from memory into f22
fmin.d f26, f13, f22 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x5599c101 # load x3 with 32 MSBs 0x000000005599c101
sw x3, 0(x2) # store x3 (0x5599c101) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005599c101
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000005599c101 from memory into f6
la x2, scratch
li x3, 0xd9ae71ad # load x3 with 32 MSBs 0x00000000d9ae71ad
sw x3, 0(x2) # store x3 (0xd9ae71ad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9ae71ad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d9ae71ad from memory into f13
fmin.d f27, f6, f13 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0xf53da664 # load x3 with 32 MSBs 0x00000000f53da664
sw x3, 0(x2) # store x3 (0xf53da664) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f53da664
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000f53da664 from memory into f8
la x2, scratch
li x3, 0xf8b4112b # load x3 with 32 MSBs 0x00000000f8b4112b
sw x3, 0(x2) # store x3 (0xf8b4112b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8b4112b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f8b4112b from memory into f10
fmin.d f28, f8, f10 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xe00cfeb9 # load x3 with 32 MSBs 0x00000000e00cfeb9
sw x3, 0(x2) # store x3 (0xe00cfeb9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e00cfeb9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e00cfeb9 from memory into f25
la x2, scratch
li x3, 0x42a22680 # load x3 with 32 MSBs 0x0000000042a22680
sw x3, 0(x2) # store x3 (0x42a22680) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042a22680
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000042a22680 from memory into f15
fmin.d f29, f25, f15 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0xe269e658 # load x3 with 32 MSBs 0x00000000e269e658
sw x3, 0(x2) # store x3 (0xe269e658) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e269e658
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e269e658 from memory into f7
la x2, scratch
li x3, 0xfe90d9bf # load x3 with 32 MSBs 0x00000000fe90d9bf
sw x3, 0(x2) # store x3 (0xfe90d9bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe90d9bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000fe90d9bf from memory into f10
fmin.d f30, f7, f10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x022e7fc9 # load x3 with 32 MSBs 0x00000000022e7fc9
sw x3, 0(x2) # store x3 (0x022e7fc9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000022e7fc9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000022e7fc9 from memory into f18
la x2, scratch
li x3, 0x0df139ea # load x3 with 32 MSBs 0x000000000df139ea
sw x3, 0(x2) # store x3 (0x0df139ea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000df139ea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000000df139ea from memory into f25
fmin.d f31, f18, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
la x2, scratch
li x3, 0x986b754d # load x3 with 32 MSBs 0x00000000986b754d
sw x3, 0(x2) # store x3 (0x986b754d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000986b754d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000986b754d from memory into f8
fmin.d f2, f17, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
la x2, scratch
li x3, 0xa2292f76 # load x3 with 32 MSBs 0x00000000a2292f76
sw x3, 0(x2) # store x3 (0xa2292f76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2292f76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000a2292f76 from memory into f31
fmin.d f27, f11, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
la x2, scratch
li x3, 0x53c81309 # load x3 with 32 MSBs 0x0000000053c81309
sw x3, 0(x2) # store x3 (0x53c81309) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053c81309
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000053c81309 from memory into f19
fmin.d f17, f3, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
la x2, scratch
li x3, 0x91ef0260 # load x3 with 32 MSBs 0x0000000091ef0260
sw x3, 0(x2) # store x3 (0x91ef0260) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000091ef0260
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000091ef0260 from memory into f13
fmin.d f9, f10, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
la x2, scratch
li x3, 0xd4da9404 # load x3 with 32 MSBs 0x00000000d4da9404
sw x3, 0(x2) # store x3 (0xd4da9404) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4da9404
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d4da9404 from memory into f12
fmin.d f30, f15, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
la x2, scratch
li x3, 0x4bb91aa5 # load x3 with 32 MSBs 0x000000004bb91aa5
sw x3, 0(x2) # store x3 (0x4bb91aa5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004bb91aa5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000004bb91aa5 from memory into f20
fmin.d f11, f27, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
la x2, scratch
li x3, 0x7d4501cd # load x3 with 32 MSBs 0x000000007d4501cd
sw x3, 0(x2) # store x3 (0x7d4501cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007d4501cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007d4501cd from memory into f12
fmin.d f2, f31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
la x2, scratch
li x3, 0x568a4655 # load x3 with 32 MSBs 0x00000000568a4655
sw x3, 0(x2) # store x3 (0x568a4655) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000568a4655
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000568a4655 from memory into f30
fmin.d f18, f20, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
la x2, scratch
li x3, 0x4d50afb0 # load x3 with 32 MSBs 0x000000004d50afb0
sw x3, 0(x2) # store x3 (0x4d50afb0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d50afb0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000004d50afb0 from memory into f21
fmin.d f20, f17, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
la x2, scratch
li x3, 0xdd53c230 # load x3 with 32 MSBs 0x00000000dd53c230
sw x3, 0(x2) # store x3 (0xdd53c230) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd53c230
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000dd53c230 from memory into f17
fmin.d f20, f30, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
la x2, scratch
li x3, 0x5387a184 # load x3 with 32 MSBs 0x000000005387a184
sw x3, 0(x2) # store x3 (0x5387a184) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005387a184
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000005387a184 from memory into f17
fmin.d f14, f6, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
la x2, scratch
li x3, 0xed128f99 # load x3 with 32 MSBs 0x00000000ed128f99
sw x3, 0(x2) # store x3 (0xed128f99) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed128f99
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ed128f99 from memory into f11
fmin.d f3, f20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
la x2, scratch
li x3, 0x20a55a78 # load x3 with 32 MSBs 0x0000000020a55a78
sw x3, 0(x2) # store x3 (0x20a55a78) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000020a55a78
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000020a55a78 from memory into f27
fmin.d f9, f19, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
la x2, scratch
li x3, 0xd3decc4a # load x3 with 32 MSBs 0x00000000d3decc4a
sw x3, 0(x2) # store x3 (0xd3decc4a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3decc4a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d3decc4a from memory into f6
fmin.d f3, f12, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
la x2, scratch
li x3, 0x003f6490 # load x3 with 32 MSBs 0x00000000003f6490
sw x3, 0(x2) # store x3 (0x003f6490) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000003f6490
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000003f6490 from memory into f13
fmin.d f26, f30, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
la x2, scratch
li x3, 0x3ad0aaa6 # load x3 with 32 MSBs 0x000000003ad0aaa6
sw x3, 0(x2) # store x3 (0x3ad0aaa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ad0aaa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003ad0aaa6 from memory into f9
fmin.d f2, f5, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
la x2, scratch
li x3, 0xb9279f52 # load x3 with 32 MSBs 0x00000000b9279f52
sw x3, 0(x2) # store x3 (0xb9279f52) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b9279f52
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b9279f52 from memory into f10
fmin.d f29, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
la x2, scratch
li x3, 0x1d2dd178 # load x3 with 32 MSBs 0x000000001d2dd178
sw x3, 0(x2) # store x3 (0x1d2dd178) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d2dd178
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001d2dd178 from memory into f11
fmin.d f27, f20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
la x2, scratch
li x3, 0x47847f96 # load x3 with 32 MSBs 0x0000000047847f96
sw x3, 0(x2) # store x3 (0x47847f96) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047847f96
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000047847f96 from memory into f21
fmin.d f28, f5, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
la x2, scratch
li x3, 0x8dbedf3e # load x3 with 32 MSBs 0x000000008dbedf3e
sw x3, 0(x2) # store x3 (0x8dbedf3e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008dbedf3e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000008dbedf3e from memory into f15
fmin.d f19, f17, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
la x2, scratch
li x3, 0x1ccfe7ce # load x3 with 32 MSBs 0x000000001ccfe7ce
sw x3, 0(x2) # store x3 (0x1ccfe7ce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ccfe7ce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000001ccfe7ce from memory into f24
fmin.d f10, f5, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
la x2, scratch
li x3, 0x0ac2f5c6 # load x3 with 32 MSBs 0x000000000ac2f5c6
sw x3, 0(x2) # store x3 (0x0ac2f5c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000ac2f5c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000ac2f5c6 from memory into f14
fmin.d f28, f27, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
la x2, scratch
li x3, 0x92676f9e # load x3 with 32 MSBs 0x0000000092676f9e
sw x3, 0(x2) # store x3 (0x92676f9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000092676f9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000092676f9e from memory into f11
fmin.d f14, f13, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
la x2, scratch
li x3, 0xaf29c4a3 # load x3 with 32 MSBs 0x00000000af29c4a3
sw x3, 0(x2) # store x3 (0xaf29c4a3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af29c4a3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000af29c4a3 from memory into f19
fmin.d f18, f2, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
la x2, scratch
li x3, 0x87ba9b31 # load x3 with 32 MSBs 0x0000000087ba9b31
sw x3, 0(x2) # store x3 (0x87ba9b31) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087ba9b31
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000087ba9b31 from memory into f7
fmin.d f27, f25, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000001 from memory into f5
la x2, scratch
li x3, 0x98246477 # load x3 with 32 MSBs 0x0000000098246477
sw x3, 0(x2) # store x3 (0x98246477) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098246477
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000098246477 from memory into f1
fmin.d f20, f5, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
la x2, scratch
li x3, 0x2c51e473 # load x3 with 32 MSBs 0x000000002c51e473
sw x3, 0(x2) # store x3 (0x2c51e473) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002c51e473
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002c51e473 from memory into f29
fmin.d f6, f24, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
la x2, scratch
li x3, 0xfc7f1a67 # load x3 with 32 MSBs 0x00000000fc7f1a67
sw x3, 0(x2) # store x3 (0xfc7f1a67) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc7f1a67
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000fc7f1a67 from memory into f10
fmin.d f16, f21, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x74b1662e # load x3 with 32 MSBs 0x0000000074b1662e
sw x3, 0(x2) # store x3 (0x74b1662e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074b1662e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000074b1662e from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmin.d f15, f12, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
la x2, scratch
li x3, 0xcd5521be # load x3 with 32 MSBs 0x00000000cd5521be
sw x3, 0(x2) # store x3 (0xcd5521be) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd5521be
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000cd5521be from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fmin.d f16, f17, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
la x2, scratch
li x3, 0x9c9948ca # load x3 with 32 MSBs 0x000000009c9948ca
sw x3, 0(x2) # store x3 (0x9c9948ca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c9948ca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000009c9948ca from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fmin.d f2, f7, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
la x2, scratch
li x3, 0x949cbd89 # load x3 with 32 MSBs 0x00000000949cbd89
sw x3, 0(x2) # store x3 (0x949cbd89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000949cbd89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000949cbd89 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fmin.d f13, f3, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
la x2, scratch
li x3, 0xfa1a3e2f # load x3 with 32 MSBs 0x00000000fa1a3e2f
sw x3, 0(x2) # store x3 (0xfa1a3e2f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa1a3e2f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000fa1a3e2f from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmin.d f19, f11, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
la x2, scratch
li x3, 0x26474a5e # load x3 with 32 MSBs 0x0000000026474a5e
sw x3, 0(x2) # store x3 (0x26474a5e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000026474a5e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000026474a5e from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fmin.d f15, f16, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
la x2, scratch
li x3, 0x4a6b77fb # load x3 with 32 MSBs 0x000000004a6b77fb
sw x3, 0(x2) # store x3 (0x4a6b77fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004a6b77fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004a6b77fb from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fmin.d f30, f25, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
la x2, scratch
li x3, 0x3985ea64 # load x3 with 32 MSBs 0x000000003985ea64
sw x3, 0(x2) # store x3 (0x3985ea64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003985ea64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003985ea64 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fmin.d f26, f20, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
la x2, scratch
li x3, 0xf435b360 # load x3 with 32 MSBs 0x00000000f435b360
sw x3, 0(x2) # store x3 (0xf435b360) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f435b360
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f435b360 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fmin.d f26, f31, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
la x2, scratch
li x3, 0xacecdb73 # load x3 with 32 MSBs 0x00000000acecdb73
sw x3, 0(x2) # store x3 (0xacecdb73) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000acecdb73
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000acecdb73 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fmin.d f3, f21, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
la x2, scratch
li x3, 0xb0415096 # load x3 with 32 MSBs 0x00000000b0415096
sw x3, 0(x2) # store x3 (0xb0415096) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0415096
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b0415096 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fmin.d f23, f3, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
la x2, scratch
li x3, 0xe5fae628 # load x3 with 32 MSBs 0x00000000e5fae628
sw x3, 0(x2) # store x3 (0xe5fae628) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5fae628
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e5fae628 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fmin.d f30, f22, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
la x2, scratch
li x3, 0xbe5ce259 # load x3 with 32 MSBs 0x00000000be5ce259
sw x3, 0(x2) # store x3 (0xbe5ce259) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000be5ce259
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000be5ce259 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fmin.d f8, f22, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
la x2, scratch
li x3, 0x7a5dfa6b # load x3 with 32 MSBs 0x000000007a5dfa6b
sw x3, 0(x2) # store x3 (0x7a5dfa6b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a5dfa6b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007a5dfa6b from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmin.d f27, f19, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
la x2, scratch
li x3, 0xde288712 # load x3 with 32 MSBs 0x00000000de288712
sw x3, 0(x2) # store x3 (0xde288712) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de288712
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000de288712 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fmin.d f3, f8, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
la x2, scratch
li x3, 0x62b97716 # load x3 with 32 MSBs 0x0000000062b97716
sw x3, 0(x2) # store x3 (0x62b97716) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000062b97716
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000062b97716 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fmin.d f6, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0xc2c2558d # load x3 with 32 MSBs 0x00000000c2c2558d
sw x3, 0(x2) # store x3 (0xc2c2558d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c2c2558d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c2c2558d from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fmin.d f15, f21, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
la x2, scratch
li x3, 0x03f72885 # load x3 with 32 MSBs 0x0000000003f72885
sw x3, 0(x2) # store x3 (0x03f72885) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000003f72885
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000003f72885 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fmin.d f28, f12, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
la x2, scratch
li x3, 0x98651e57 # load x3 with 32 MSBs 0x0000000098651e57
sw x3, 0(x2) # store x3 (0x98651e57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098651e57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000098651e57 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fmin.d f8, f2, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
la x2, scratch
li x3, 0xe4894fca # load x3 with 32 MSBs 0x00000000e4894fca
sw x3, 0(x2) # store x3 (0xe4894fca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4894fca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e4894fca from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fmin.d f24, f8, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
la x2, scratch
li x3, 0x95317259 # load x3 with 32 MSBs 0x0000000095317259
sw x3, 0(x2) # store x3 (0x95317259) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095317259
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000095317259 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fmin.d f14, f22, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
la x2, scratch
li x3, 0x8621002a # load x3 with 32 MSBs 0x000000008621002a
sw x3, 0(x2) # store x3 (0x8621002a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008621002a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000008621002a from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fmin.d f15, f19, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8000000000000)
la x2, scratch
li x3, 0x06fe23f9 # load x3 with 32 MSBs 0x0000000006fe23f9
sw x3, 0(x2) # store x3 (0x06fe23f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006fe23f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000006fe23f9 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fmin.d f3, f10, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
la x2, scratch
li x3, 0x762bcab7 # load x3 with 32 MSBs 0x00000000762bcab7
sw x3, 0(x2) # store x3 (0x762bcab7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000762bcab7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000762bcab7 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fmin.d f28, f26, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
la x2, scratch
li x3, 0x552da2f7 # load x3 with 32 MSBs 0x00000000552da2f7
sw x3, 0(x2) # store x3 (0x552da2f7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000552da2f7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000552da2f7 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmin.d f30, f8, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000001)
la x2, scratch
li x3, 0xaa4690ab # load x3 with 32 MSBs 0x00000000aa4690ab
sw x3, 0(x2) # store x3 (0xaa4690ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa4690ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000aa4690ab from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff0000000000001 from memory into f6
fmin.d f9, f15, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
la x2, scratch
li x3, 0xd3f85ea6 # load x3 with 32 MSBs 0x00000000d3f85ea6
sw x3, 0(x2) # store x3 (0xd3f85ea6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3f85ea6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d3f85ea6 from memory into f6
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fmin.d f12, f6, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
la x2, scratch
li x3, 0x12d7bf1a # load x3 with 32 MSBs 0x0000000012d7bf1a
sw x3, 0(x2) # store x3 (0x12d7bf1a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012d7bf1a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000012d7bf1a from memory into f2
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fmin.d f31, f2, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x685fce2b # load x3 with 32 MSBs 0x00000000685fce2b
sw x3, 0(x2) # store x3 (0x685fce2b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000685fce2b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000685fce2b from memory into f0
la x2, scratch
li x3, 0x4c7dd490 # load x3 with 32 MSBs 0x000000004c7dd490
sw x3, 0(x2) # store x3 (0x4c7dd490) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c7dd490
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000004c7dd490 from memory into f6
fmin.d f0, f0, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x95b8f154 # load x3 with 32 MSBs 0x0000000095b8f154
sw x3, 0(x2) # store x3 (0x95b8f154) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095b8f154
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000095b8f154 from memory into f1
la x2, scratch
li x3, 0xad4ddb75 # load x3 with 32 MSBs 0x00000000ad4ddb75
sw x3, 0(x2) # store x3 (0xad4ddb75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad4ddb75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ad4ddb75 from memory into f11
fmin.d f1, f1, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0x4d590f21 # load x3 with 32 MSBs 0x000000004d590f21
sw x3, 0(x2) # store x3 (0x4d590f21) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d590f21
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000004d590f21 from memory into f2
la x2, scratch
li x3, 0x74aa45e1 # load x3 with 32 MSBs 0x0000000074aa45e1
sw x3, 0(x2) # store x3 (0x74aa45e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074aa45e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000074aa45e1 from memory into f12
fmin.d f2, f2, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x423dfab2 # load x3 with 32 MSBs 0x00000000423dfab2
sw x3, 0(x2) # store x3 (0x423dfab2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000423dfab2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000423dfab2 from memory into f3
la x2, scratch
li x3, 0xa8506134 # load x3 with 32 MSBs 0x00000000a8506134
sw x3, 0(x2) # store x3 (0xa8506134) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8506134
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a8506134 from memory into f28
fmin.d f3, f3, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcb6cfe95 # load x3 with 32 MSBs 0x00000000cb6cfe95
sw x3, 0(x2) # store x3 (0xcb6cfe95) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb6cfe95
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000cb6cfe95 from memory into f4
la x2, scratch
li x3, 0x8ed65158 # load x3 with 32 MSBs 0x000000008ed65158
sw x3, 0(x2) # store x3 (0x8ed65158) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ed65158
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000008ed65158 from memory into f17
fmin.d f4, f4, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbcf56fcd # load x3 with 32 MSBs 0x00000000bcf56fcd
sw x3, 0(x2) # store x3 (0xbcf56fcd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bcf56fcd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000bcf56fcd from memory into f5
la x2, scratch
li x3, 0xaaf300e0 # load x3 with 32 MSBs 0x00000000aaf300e0
sw x3, 0(x2) # store x3 (0xaaf300e0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aaf300e0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000aaf300e0 from memory into f8
fmin.d f5, f5, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc55cb31a # load x3 with 32 MSBs 0x00000000c55cb31a
sw x3, 0(x2) # store x3 (0xc55cb31a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c55cb31a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000c55cb31a from memory into f6
la x2, scratch
li x3, 0x6d7825d4 # load x3 with 32 MSBs 0x000000006d7825d4
sw x3, 0(x2) # store x3 (0x6d7825d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d7825d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000006d7825d4 from memory into f18
fmin.d f6, f6, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf330e282 # load x3 with 32 MSBs 0x00000000f330e282
sw x3, 0(x2) # store x3 (0xf330e282) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f330e282
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f330e282 from memory into f7
la x2, scratch
li x3, 0x67927591 # load x3 with 32 MSBs 0x0000000067927591
sw x3, 0(x2) # store x3 (0x67927591) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067927591
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000067927591 from memory into f8
fmin.d f7, f7, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xef11bfbc # load x3 with 32 MSBs 0x00000000ef11bfbc
sw x3, 0(x2) # store x3 (0xef11bfbc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef11bfbc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ef11bfbc from memory into f8
la x2, scratch
li x3, 0x05bfaf62 # load x3 with 32 MSBs 0x0000000005bfaf62
sw x3, 0(x2) # store x3 (0x05bfaf62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005bfaf62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000005bfaf62 from memory into f19
fmin.d f8, f8, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x3efa0371 # load x3 with 32 MSBs 0x000000003efa0371
sw x3, 0(x2) # store x3 (0x3efa0371) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003efa0371
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003efa0371 from memory into f9
la x2, scratch
li x3, 0xcf5b9976 # load x3 with 32 MSBs 0x00000000cf5b9976
sw x3, 0(x2) # store x3 (0xcf5b9976) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cf5b9976
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000cf5b9976 from memory into f8
fmin.d f9, f9, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xd6724913 # load x3 with 32 MSBs 0x00000000d6724913
sw x3, 0(x2) # store x3 (0xd6724913) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d6724913
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000d6724913 from memory into f10
la x2, scratch
li x3, 0x6910bda8 # load x3 with 32 MSBs 0x000000006910bda8
sw x3, 0(x2) # store x3 (0x6910bda8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006910bda8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000006910bda8 from memory into f23
fmin.d f10, f10, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xc4d3ff30 # load x3 with 32 MSBs 0x00000000c4d3ff30
sw x3, 0(x2) # store x3 (0xc4d3ff30) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c4d3ff30
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000c4d3ff30 from memory into f11
la x2, scratch
li x3, 0x7961db0f # load x3 with 32 MSBs 0x000000007961db0f
sw x3, 0(x2) # store x3 (0x7961db0f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007961db0f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000007961db0f from memory into f25
fmin.d f11, f11, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0xb42584f3 # load x3 with 32 MSBs 0x00000000b42584f3
sw x3, 0(x2) # store x3 (0xb42584f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b42584f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b42584f3 from memory into f12
la x2, scratch
li x3, 0xcb7faf1e # load x3 with 32 MSBs 0x00000000cb7faf1e
sw x3, 0(x2) # store x3 (0xcb7faf1e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb7faf1e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cb7faf1e from memory into f18
fmin.d f12, f12, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0x6acd0ed0 # load x3 with 32 MSBs 0x000000006acd0ed0
sw x3, 0(x2) # store x3 (0x6acd0ed0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006acd0ed0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000006acd0ed0 from memory into f13
la x2, scratch
li x3, 0xf5a44f64 # load x3 with 32 MSBs 0x00000000f5a44f64
sw x3, 0(x2) # store x3 (0xf5a44f64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5a44f64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f5a44f64 from memory into f11
fmin.d f13, f13, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0xeceddd54 # load x3 with 32 MSBs 0x00000000eceddd54
sw x3, 0(x2) # store x3 (0xeceddd54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eceddd54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000eceddd54 from memory into f14
la x2, scratch
li x3, 0xb5fd4aa8 # load x3 with 32 MSBs 0x00000000b5fd4aa8
sw x3, 0(x2) # store x3 (0xb5fd4aa8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5fd4aa8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b5fd4aa8 from memory into f1
fmin.d f14, f14, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x552ceb27 # load x3 with 32 MSBs 0x00000000552ceb27
sw x3, 0(x2) # store x3 (0x552ceb27) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000552ceb27
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000552ceb27 from memory into f15
la x2, scratch
li x3, 0xde18c88b # load x3 with 32 MSBs 0x00000000de18c88b
sw x3, 0(x2) # store x3 (0xde18c88b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de18c88b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000de18c88b from memory into f25
fmin.d f15, f15, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0xb849ac5b # load x3 with 32 MSBs 0x00000000b849ac5b
sw x3, 0(x2) # store x3 (0xb849ac5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b849ac5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b849ac5b from memory into f16
la x2, scratch
li x3, 0x122599a2 # load x3 with 32 MSBs 0x00000000122599a2
sw x3, 0(x2) # store x3 (0x122599a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000122599a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000122599a2 from memory into f26
fmin.d f16, f16, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x06b1e479 # load x3 with 32 MSBs 0x0000000006b1e479
sw x3, 0(x2) # store x3 (0x06b1e479) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006b1e479
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000006b1e479 from memory into f17
la x2, scratch
li x3, 0x27a060a6 # load x3 with 32 MSBs 0x0000000027a060a6
sw x3, 0(x2) # store x3 (0x27a060a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027a060a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000027a060a6 from memory into f10
fmin.d f17, f17, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x78baf960 # load x3 with 32 MSBs 0x0000000078baf960
sw x3, 0(x2) # store x3 (0x78baf960) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000078baf960
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000078baf960 from memory into f18
la x2, scratch
li x3, 0x1c8916d1 # load x3 with 32 MSBs 0x000000001c8916d1
sw x3, 0(x2) # store x3 (0x1c8916d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c8916d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001c8916d1 from memory into f9
fmin.d f18, f18, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0x0aabda98 # load x3 with 32 MSBs 0x000000000aabda98
sw x3, 0(x2) # store x3 (0x0aabda98) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000aabda98
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000000aabda98 from memory into f19
la x2, scratch
li x3, 0x5d0d3298 # load x3 with 32 MSBs 0x000000005d0d3298
sw x3, 0(x2) # store x3 (0x5d0d3298) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d0d3298
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000005d0d3298 from memory into f18
fmin.d f19, f19, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x6a296d2d # load x3 with 32 MSBs 0x000000006a296d2d
sw x3, 0(x2) # store x3 (0x6a296d2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a296d2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000006a296d2d from memory into f20
la x2, scratch
li x3, 0x62c5d6a1 # load x3 with 32 MSBs 0x0000000062c5d6a1
sw x3, 0(x2) # store x3 (0x62c5d6a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000062c5d6a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000062c5d6a1 from memory into f27
fmin.d f20, f20, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0xcef0daa6 # load x3 with 32 MSBs 0x00000000cef0daa6
sw x3, 0(x2) # store x3 (0xcef0daa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cef0daa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000cef0daa6 from memory into f21
la x2, scratch
li x3, 0x32a070d3 # load x3 with 32 MSBs 0x0000000032a070d3
sw x3, 0(x2) # store x3 (0x32a070d3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000032a070d3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000032a070d3 from memory into f18
fmin.d f21, f21, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x60ff13eb # load x3 with 32 MSBs 0x0000000060ff13eb
sw x3, 0(x2) # store x3 (0x60ff13eb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060ff13eb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000060ff13eb from memory into f22
la x2, scratch
li x3, 0x66c0e7e5 # load x3 with 32 MSBs 0x0000000066c0e7e5
sw x3, 0(x2) # store x3 (0x66c0e7e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000066c0e7e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000066c0e7e5 from memory into f29
fmin.d f22, f22, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0x6ce1d1d8 # load x3 with 32 MSBs 0x000000006ce1d1d8
sw x3, 0(x2) # store x3 (0x6ce1d1d8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ce1d1d8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000006ce1d1d8 from memory into f23
la x2, scratch
li x3, 0x072fc156 # load x3 with 32 MSBs 0x00000000072fc156
sw x3, 0(x2) # store x3 (0x072fc156) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000072fc156
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000072fc156 from memory into f21
fmin.d f23, f23, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xa47649e6 # load x3 with 32 MSBs 0x00000000a47649e6
sw x3, 0(x2) # store x3 (0xa47649e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a47649e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a47649e6 from memory into f24
la x2, scratch
li x3, 0xef50e98d # load x3 with 32 MSBs 0x00000000ef50e98d
sw x3, 0(x2) # store x3 (0xef50e98d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef50e98d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ef50e98d from memory into f7
fmin.d f24, f24, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x2e5b28a7 # load x3 with 32 MSBs 0x000000002e5b28a7
sw x3, 0(x2) # store x3 (0x2e5b28a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e5b28a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000002e5b28a7 from memory into f25
la x2, scratch
li x3, 0xa37c9157 # load x3 with 32 MSBs 0x00000000a37c9157
sw x3, 0(x2) # store x3 (0xa37c9157) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a37c9157
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000a37c9157 from memory into f18
fmin.d f25, f25, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x6b07f381 # load x3 with 32 MSBs 0x000000006b07f381
sw x3, 0(x2) # store x3 (0x6b07f381) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b07f381
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006b07f381 from memory into f26
la x2, scratch
li x3, 0x4d638688 # load x3 with 32 MSBs 0x000000004d638688
sw x3, 0(x2) # store x3 (0x4d638688) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d638688
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000004d638688 from memory into f27
fmin.d f26, f26, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0xf3f93fc3 # load x3 with 32 MSBs 0x00000000f3f93fc3
sw x3, 0(x2) # store x3 (0xf3f93fc3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3f93fc3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f3f93fc3 from memory into f27
la x2, scratch
li x3, 0x56c2103a # load x3 with 32 MSBs 0x0000000056c2103a
sw x3, 0(x2) # store x3 (0x56c2103a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000056c2103a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000056c2103a from memory into f19
fmin.d f27, f27, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0xafce495a # load x3 with 32 MSBs 0x00000000afce495a
sw x3, 0(x2) # store x3 (0xafce495a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000afce495a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000afce495a from memory into f28
la x2, scratch
li x3, 0xf9d07358 # load x3 with 32 MSBs 0x00000000f9d07358
sw x3, 0(x2) # store x3 (0xf9d07358) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f9d07358
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000f9d07358 from memory into f14
fmin.d f28, f28, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0x93d6974e # load x3 with 32 MSBs 0x0000000093d6974e
sw x3, 0(x2) # store x3 (0x93d6974e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000093d6974e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000093d6974e from memory into f29
la x2, scratch
li x3, 0x7ab689b5 # load x3 with 32 MSBs 0x000000007ab689b5
sw x3, 0(x2) # store x3 (0x7ab689b5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ab689b5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000007ab689b5 from memory into f18
fmin.d f29, f29, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0x5a5f1534 # load x3 with 32 MSBs 0x000000005a5f1534
sw x3, 0(x2) # store x3 (0x5a5f1534) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005a5f1534
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000005a5f1534 from memory into f30
la x2, scratch
li x3, 0x83c2bd7f # load x3 with 32 MSBs 0x0000000083c2bd7f
sw x3, 0(x2) # store x3 (0x83c2bd7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000083c2bd7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000083c2bd7f from memory into f28
fmin.d f30, f30, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0xf6d571e3 # load x3 with 32 MSBs 0x00000000f6d571e3
sw x3, 0(x2) # store x3 (0xf6d571e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f6d571e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f6d571e3 from memory into f31
la x2, scratch
li x3, 0x7409b7d8 # load x3 with 32 MSBs 0x000000007409b7d8
sw x3, 0(x2) # store x3 (0x7409b7d8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007409b7d8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007409b7d8 from memory into f1
fmin.d f31, f31, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0xc2ce6193 # load x3 with 32 MSBs 0x00000000c2ce6193
sw x3, 0(x2) # store x3 (0xc2ce6193) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c2ce6193
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c2ce6193 from memory into f7
la x2, scratch
li x3, 0xd588c14c # load x3 with 32 MSBs 0x00000000d588c14c
sw x3, 0(x2) # store x3 (0xd588c14c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d588c14c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000d588c14c from memory into f0
fmin.d f0, f7, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xda52b649 # load x3 with 32 MSBs 0x00000000da52b649
sw x3, 0(x2) # store x3 (0xda52b649) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da52b649
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000da52b649 from memory into f21
la x2, scratch
li x3, 0x80073e30 # load x3 with 32 MSBs 0x0000000080073e30
sw x3, 0(x2) # store x3 (0x80073e30) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080073e30
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000080073e30 from memory into f1
fmin.d f1, f21, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x9379c9bf # load x3 with 32 MSBs 0x000000009379c9bf
sw x3, 0(x2) # store x3 (0x9379c9bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009379c9bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000009379c9bf from memory into f26
la x2, scratch
li x3, 0x5d6be164 # load x3 with 32 MSBs 0x000000005d6be164
sw x3, 0(x2) # store x3 (0x5d6be164) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005d6be164
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005d6be164 from memory into f2
fmin.d f2, f26, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x89a9a9c3 # load x3 with 32 MSBs 0x0000000089a9a9c3
sw x3, 0(x2) # store x3 (0x89a9a9c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000089a9a9c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000089a9a9c3 from memory into f24
la x2, scratch
li x3, 0xfb6e1238 # load x3 with 32 MSBs 0x00000000fb6e1238
sw x3, 0(x2) # store x3 (0xfb6e1238) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb6e1238
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000fb6e1238 from memory into f3
fmin.d f3, f24, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf51e5106 # load x3 with 32 MSBs 0x00000000f51e5106
sw x3, 0(x2) # store x3 (0xf51e5106) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f51e5106
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000f51e5106 from memory into f20
la x2, scratch
li x3, 0x6c4c5824 # load x3 with 32 MSBs 0x000000006c4c5824
sw x3, 0(x2) # store x3 (0x6c4c5824) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c4c5824
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000006c4c5824 from memory into f4
fmin.d f4, f20, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x808bcd19 # load x3 with 32 MSBs 0x00000000808bcd19
sw x3, 0(x2) # store x3 (0x808bcd19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000808bcd19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000808bcd19 from memory into f26
la x2, scratch
li x3, 0x42eba7e4 # load x3 with 32 MSBs 0x0000000042eba7e4
sw x3, 0(x2) # store x3 (0x42eba7e4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042eba7e4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000042eba7e4 from memory into f5
fmin.d f5, f26, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe85398af # load x3 with 32 MSBs 0x00000000e85398af
sw x3, 0(x2) # store x3 (0xe85398af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e85398af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000e85398af from memory into f29
la x2, scratch
li x3, 0xb8392a01 # load x3 with 32 MSBs 0x00000000b8392a01
sw x3, 0(x2) # store x3 (0xb8392a01) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8392a01
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000b8392a01 from memory into f6
fmin.d f6, f29, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x606d4d5e # load x3 with 32 MSBs 0x00000000606d4d5e
sw x3, 0(x2) # store x3 (0x606d4d5e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000606d4d5e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000606d4d5e from memory into f16
la x2, scratch
li x3, 0x6b62e698 # load x3 with 32 MSBs 0x000000006b62e698
sw x3, 0(x2) # store x3 (0x6b62e698) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b62e698
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000006b62e698 from memory into f7
fmin.d f7, f16, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x9557fff7 # load x3 with 32 MSBs 0x000000009557fff7
sw x3, 0(x2) # store x3 (0x9557fff7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009557fff7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000009557fff7 from memory into f9
la x2, scratch
li x3, 0xa2fa330d # load x3 with 32 MSBs 0x00000000a2fa330d
sw x3, 0(x2) # store x3 (0xa2fa330d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2fa330d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a2fa330d from memory into f8
fmin.d f8, f9, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xce349299 # load x3 with 32 MSBs 0x00000000ce349299
sw x3, 0(x2) # store x3 (0xce349299) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ce349299
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ce349299 from memory into f13
la x2, scratch
li x3, 0xec68c380 # load x3 with 32 MSBs 0x00000000ec68c380
sw x3, 0(x2) # store x3 (0xec68c380) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec68c380
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ec68c380 from memory into f9
fmin.d f9, f13, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0xb483d21f # load x3 with 32 MSBs 0x00000000b483d21f
sw x3, 0(x2) # store x3 (0xb483d21f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b483d21f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b483d21f from memory into f29
la x2, scratch
li x3, 0xd97c148c # load x3 with 32 MSBs 0x00000000d97c148c
sw x3, 0(x2) # store x3 (0xd97c148c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d97c148c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000d97c148c from memory into f10
fmin.d f10, f29, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xb346f8f9 # load x3 with 32 MSBs 0x00000000b346f8f9
sw x3, 0(x2) # store x3 (0xb346f8f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b346f8f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000b346f8f9 from memory into f6
la x2, scratch
li x3, 0x46b41b43 # load x3 with 32 MSBs 0x0000000046b41b43
sw x3, 0(x2) # store x3 (0x46b41b43) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046b41b43
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000046b41b43 from memory into f11
fmin.d f11, f6, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0x211473d7 # load x3 with 32 MSBs 0x00000000211473d7
sw x3, 0(x2) # store x3 (0x211473d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000211473d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000211473d7 from memory into f24
la x2, scratch
li x3, 0x11254d7c # load x3 with 32 MSBs 0x0000000011254d7c
sw x3, 0(x2) # store x3 (0x11254d7c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011254d7c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000011254d7c from memory into f12
fmin.d f12, f24, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0xf34ac4d8 # load x3 with 32 MSBs 0x00000000f34ac4d8
sw x3, 0(x2) # store x3 (0xf34ac4d8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f34ac4d8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000f34ac4d8 from memory into f20
la x2, scratch
li x3, 0xe4308555 # load x3 with 32 MSBs 0x00000000e4308555
sw x3, 0(x2) # store x3 (0xe4308555) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4308555
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000e4308555 from memory into f13
fmin.d f13, f20, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xac6a25aa # load x3 with 32 MSBs 0x00000000ac6a25aa
sw x3, 0(x2) # store x3 (0xac6a25aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac6a25aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ac6a25aa from memory into f6
la x2, scratch
li x3, 0xa2627f22 # load x3 with 32 MSBs 0x00000000a2627f22
sw x3, 0(x2) # store x3 (0xa2627f22) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2627f22
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a2627f22 from memory into f14
fmin.d f14, f6, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0xde7f7c07 # load x3 with 32 MSBs 0x00000000de7f7c07
sw x3, 0(x2) # store x3 (0xde7f7c07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de7f7c07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000de7f7c07 from memory into f18
la x2, scratch
li x3, 0x60184e6c # load x3 with 32 MSBs 0x0000000060184e6c
sw x3, 0(x2) # store x3 (0x60184e6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000060184e6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000060184e6c from memory into f15
fmin.d f15, f18, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0xb09b3cd4 # load x3 with 32 MSBs 0x00000000b09b3cd4
sw x3, 0(x2) # store x3 (0xb09b3cd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b09b3cd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b09b3cd4 from memory into f25
la x2, scratch
li x3, 0x066b114a # load x3 with 32 MSBs 0x00000000066b114a
sw x3, 0(x2) # store x3 (0x066b114a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000066b114a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000066b114a from memory into f16
fmin.d f16, f25, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x1d323d6a # load x3 with 32 MSBs 0x000000001d323d6a
sw x3, 0(x2) # store x3 (0x1d323d6a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d323d6a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001d323d6a from memory into f15
la x2, scratch
li x3, 0xfc581385 # load x3 with 32 MSBs 0x00000000fc581385
sw x3, 0(x2) # store x3 (0xfc581385) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc581385
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000fc581385 from memory into f17
fmin.d f17, f15, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x0841c6f8 # load x3 with 32 MSBs 0x000000000841c6f8
sw x3, 0(x2) # store x3 (0x0841c6f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000841c6f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000000841c6f8 from memory into f8
la x2, scratch
li x3, 0x96765605 # load x3 with 32 MSBs 0x0000000096765605
sw x3, 0(x2) # store x3 (0x96765605) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096765605
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000096765605 from memory into f18
fmin.d f18, f8, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0xd5f4d572 # load x3 with 32 MSBs 0x00000000d5f4d572
sw x3, 0(x2) # store x3 (0xd5f4d572) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d5f4d572
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d5f4d572 from memory into f29
la x2, scratch
li x3, 0x0e893d5f # load x3 with 32 MSBs 0x000000000e893d5f
sw x3, 0(x2) # store x3 (0x0e893d5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000e893d5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000000e893d5f from memory into f19
fmin.d f19, f29, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0x50271d64 # load x3 with 32 MSBs 0x0000000050271d64
sw x3, 0(x2) # store x3 (0x50271d64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050271d64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000050271d64 from memory into f6
la x2, scratch
li x3, 0xf2063f2a # load x3 with 32 MSBs 0x00000000f2063f2a
sw x3, 0(x2) # store x3 (0xf2063f2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f2063f2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000f2063f2a from memory into f20
fmin.d f20, f6, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xd2a0eab1 # load x3 with 32 MSBs 0x00000000d2a0eab1
sw x3, 0(x2) # store x3 (0xd2a0eab1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d2a0eab1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d2a0eab1 from memory into f23
la x2, scratch
li x3, 0x3734a310 # load x3 with 32 MSBs 0x000000003734a310
sw x3, 0(x2) # store x3 (0x3734a310) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003734a310
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000003734a310 from memory into f21
fmin.d f21, f23, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0xe4b337aa # load x3 with 32 MSBs 0x00000000e4b337aa
sw x3, 0(x2) # store x3 (0xe4b337aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e4b337aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000e4b337aa from memory into f19
la x2, scratch
li x3, 0xfedb93c3 # load x3 with 32 MSBs 0x00000000fedb93c3
sw x3, 0(x2) # store x3 (0xfedb93c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fedb93c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000fedb93c3 from memory into f22
fmin.d f22, f19, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x3ddb258e # load x3 with 32 MSBs 0x000000003ddb258e
sw x3, 0(x2) # store x3 (0x3ddb258e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ddb258e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000003ddb258e from memory into f5
la x2, scratch
li x3, 0xe2c3784d # load x3 with 32 MSBs 0x00000000e2c3784d
sw x3, 0(x2) # store x3 (0xe2c3784d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2c3784d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e2c3784d from memory into f23
fmin.d f23, f5, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x659315c0 # load x3 with 32 MSBs 0x00000000659315c0
sw x3, 0(x2) # store x3 (0x659315c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000659315c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000659315c0 from memory into f5
la x2, scratch
li x3, 0xb0e751f8 # load x3 with 32 MSBs 0x00000000b0e751f8
sw x3, 0(x2) # store x3 (0xb0e751f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0e751f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000b0e751f8 from memory into f24
fmin.d f24, f5, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x1ff9546a # load x3 with 32 MSBs 0x000000001ff9546a
sw x3, 0(x2) # store x3 (0x1ff9546a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001ff9546a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001ff9546a from memory into f5
la x2, scratch
li x3, 0xca6f8f9c # load x3 with 32 MSBs 0x00000000ca6f8f9c
sw x3, 0(x2) # store x3 (0xca6f8f9c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca6f8f9c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ca6f8f9c from memory into f25
fmin.d f25, f5, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0xc632b1a6 # load x3 with 32 MSBs 0x00000000c632b1a6
sw x3, 0(x2) # store x3 (0xc632b1a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c632b1a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c632b1a6 from memory into f8
la x2, scratch
li x3, 0xdc639c01 # load x3 with 32 MSBs 0x00000000dc639c01
sw x3, 0(x2) # store x3 (0xdc639c01) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc639c01
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000dc639c01 from memory into f26
fmin.d f26, f8, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0x53cad532 # load x3 with 32 MSBs 0x0000000053cad532
sw x3, 0(x2) # store x3 (0x53cad532) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053cad532
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000053cad532 from memory into f17
la x2, scratch
li x3, 0x227e6d87 # load x3 with 32 MSBs 0x00000000227e6d87
sw x3, 0(x2) # store x3 (0x227e6d87) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000227e6d87
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000227e6d87 from memory into f27
fmin.d f27, f17, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x90e1e587 # load x3 with 32 MSBs 0x0000000090e1e587
sw x3, 0(x2) # store x3 (0x90e1e587) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000090e1e587
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000090e1e587 from memory into f12
la x2, scratch
li x3, 0x42272a07 # load x3 with 32 MSBs 0x0000000042272a07
sw x3, 0(x2) # store x3 (0x42272a07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042272a07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000042272a07 from memory into f28
fmin.d f28, f12, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0xb0ffd03c # load x3 with 32 MSBs 0x00000000b0ffd03c
sw x3, 0(x2) # store x3 (0xb0ffd03c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0ffd03c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000b0ffd03c from memory into f5
la x2, scratch
li x3, 0xf893056f # load x3 with 32 MSBs 0x00000000f893056f
sw x3, 0(x2) # store x3 (0xf893056f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f893056f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000f893056f from memory into f29
fmin.d f29, f5, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0xfeeffa4f # load x3 with 32 MSBs 0x00000000feeffa4f
sw x3, 0(x2) # store x3 (0xfeeffa4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000feeffa4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000feeffa4f from memory into f8
la x2, scratch
li x3, 0x0311a4c0 # load x3 with 32 MSBs 0x000000000311a4c0
sw x3, 0(x2) # store x3 (0x0311a4c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000311a4c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000311a4c0 from memory into f30
fmin.d f30, f8, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x36df9351 # load x3 with 32 MSBs 0x0000000036df9351
sw x3, 0(x2) # store x3 (0x36df9351) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000036df9351
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000036df9351 from memory into f25
la x2, scratch
li x3, 0xa0c404fb # load x3 with 32 MSBs 0x00000000a0c404fb
sw x3, 0(x2) # store x3 (0xa0c404fb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0c404fb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000a0c404fb from memory into f31
fmin.d f31, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fmin.d f29, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmin.d f24, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fmin.d f18, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fmin.d f29, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fmin.d f17, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fmin.d f6, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fmin.d f25, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fmin.d f18, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmin.d f13, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fmin.d f16, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fmin.d f30, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmin.d f22, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmin.d f27, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
fmin.d f6, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fmin.d f2, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fmin.d f2, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fmin.d f14, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fmin.d f20, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmin.d f17, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fmin.d f30, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmin.d f19, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
fmin.d f2, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff8000000000000 from memory into f2
fmin.d f1, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fmin.d f23, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fmin.d f7, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000001 from memory into f10
fmin.d f24, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmin.d f28, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fmin.d f5, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmin.d f9, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fmin.d f2, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fmin.d f26, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fmin.d f15, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fmin.d f1, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
fmin.d f1, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fmin.d f21, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fmin.d f3, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fmin.d f11, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fmin.d f26, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
fmin.d f28, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fmin.d f25, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fmin.d f19, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fmin.d f22, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fmin.d f26, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fmin.d f6, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmin.d f27, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fmin.d f16, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmin.d f28, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmin.d f30, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fmin.d f13, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fmin.d f8, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff8000000000000 from memory into f23
fmin.d f31, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fmin.d f6, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmin.d f14, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000001 from memory into f2
fmin.d f26, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmin.d f9, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fmin.d f8, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fmin.d f29, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmin.d f7, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fmin.d f21, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fmin.d f21, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fmin.d f14, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fmin.d f22, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
fmin.d f9, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fmin.d f13, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
fmin.d f29, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fmin.d f17, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fmin.d f9, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fmin.d f3, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fmin.d f10, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fmin.d f17, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fmin.d f28, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fmin.d f22, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fmin.d f31, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fmin.d f20, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fmin.d f6, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fmin.d f21, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fmin.d f24, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fmin.d f7, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff8000000000000 from memory into f23
fmin.d f7, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fmin.d f29, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmin.d f14, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff0000000000001 from memory into f18
fmin.d f8, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
fmin.d f28, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fmin.d f30, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fmin.d f9, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fmin.d f1, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fmin.d f14, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fmin.d f24, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fmin.d f2, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fmin.d f28, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
fmin.d f31, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fmin.d f23, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fmin.d f18, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fmin.d f28, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fmin.d f7, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fmin.d f9, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fmin.d f22, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fmin.d f5, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmin.d f10, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fmin.d f5, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fmin.d f17, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmin.d f10, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fmin.d f17, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fmin.d f7, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmin.d f26, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fmin.d f29, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff8000000000000 from memory into f27
fmin.d f9, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fmin.d f28, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fmin.d f10, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000001 from memory into f12
fmin.d f29, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fmin.d f16, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fmin.d f16, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmin.d f8, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fmin.d f16, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fmin.d f21, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
fmin.d f18, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fmin.d f9, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fmin.d f11, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fmin.d f26, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fmin.d f8, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
fmin.d f31, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fmin.d f2, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fmin.d f5, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fmin.d f9, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fmin.d f7, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmin.d f10, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmin.d f18, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fmin.d f11, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmin.d f25, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fmin.d f30, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fmin.d f10, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmin.d f11, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
fmin.d f8, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fmin.d f16, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff8000000000000 from memory into f1
fmin.d f3, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fmin.d f30, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmin.d f19, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff0000000000001 from memory into f6
fmin.d f23, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fmin.d f3, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fmin.d f18, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fmin.d f8, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmin.d f1, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fmin.d f14, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fmin.d f19, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fmin.d f2, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fmin.d f2, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fmin.d f6, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fmin.d f10, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fmin.d f15, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fmin.d f9, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fmin.d f13, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fmin.d f31, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fmin.d f2, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
fmin.d f15, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fmin.d f25, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fmin.d f1, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmin.d f6, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmin.d f13, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmin.d f30, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
fmin.d f5, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fmin.d f26, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmin.d f17, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfff8000000000000 from memory into f9
fmin.d f12, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fmin.d f27, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fmin.d f14, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff0000000000001 from memory into f11
fmin.d f26, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fmin.d f1, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fmin.d f20, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fmin.d f30, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fmin.d f1, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fmin.d f26, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fmin.d f12, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fmin.d f3, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmin.d f17, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fmin.d f6, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fmin.d f25, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fmin.d f7, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmin.d f1, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fmin.d f12, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmin.d f8, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fmin.d f6, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
fmin.d f8, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fmin.d f7, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fmin.d f3, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fmin.d f12, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fmin.d f22, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmin.d f23, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmin.d f29, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmin.d f11, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fmin.d f12, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfff8000000000000 from memory into f21
fmin.d f24, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fmin.d f28, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fmin.d f29, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000001 from memory into f5
fmin.d f26, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fmin.d f18, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fmin.d f19, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fmin.d f1, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmin.d f23, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fmin.d f8, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fmin.d f30, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fmin.d f29, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fmin.d f28, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fmin.d f26, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fmin.d f11, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fmin.d f23, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fmin.d f28, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmin.d f14, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fmin.d f31, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fmin.d f24, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fmin.d f5, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmin.d f3, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fmin.d f11, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fmin.d f25, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fmin.d f31, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmin.d f30, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fmin.d f15, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fmin.d f16, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fmin.d f2, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff8000000000000 from memory into f23
fmin.d f10, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fmin.d f28, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fmin.d f30, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff0000000000001 from memory into f8
fmin.d f22, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fmin.d f25, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fmin.d f25, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fmin.d f1, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fmin.d f19, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
fmin.d f26, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fmin.d f28, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
fmin.d f11, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmin.d f2, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fmin.d f26, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fmin.d f2, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmin.d f15, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fmin.d f17, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fmin.d f12, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
fmin.d f3, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fmin.d f25, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fmin.d f13, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fmin.d f14, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fmin.d f10, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmin.d f17, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fmin.d f3, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmin.d f30, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmin.d f17, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fmin.d f27, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fmin.d f10, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff8000000000000 from memory into f25
fmin.d f5, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fmin.d f24, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fmin.d f17, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff0000000000001 from memory into f8
fmin.d f31, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fmin.d f31, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fmin.d f9, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fmin.d f28, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fmin.d f18, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
fmin.d f17, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmin.d f29, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fmin.d f29, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fmin.d f31, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fmin.d f31, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fmin.d f12, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fmin.d f25, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fmin.d f12, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fmin.d f13, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fmin.d f9, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fmin.d f28, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fmin.d f9, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fmin.d f19, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fmin.d f19, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmin.d f3, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fmin.d f10, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fmin.d f19, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fmin.d f15, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
fmin.d f8, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fmin.d f24, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
fmin.d f18, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fmin.d f6, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmin.d f13, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff0000000000001 from memory into f11
fmin.d f2, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmin.d f8, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fmin.d f18, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fmin.d f6, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fmin.d f29, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fmin.d f15, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
fmin.d f24, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fmin.d f20, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fmin.d f15, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fmin.d f17, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fmin.d f26, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fmin.d f15, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fmin.d f2, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fmin.d f5, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fmin.d f12, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fmin.d f31, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fmin.d f9, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fmin.d f26, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fmin.d f27, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
fmin.d f25, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
fmin.d f17, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmin.d f12, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmin.d f28, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fmin.d f23, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fmin.d f18, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fmin.d f26, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fmin.d f23, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmin.d f28, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000001 from memory into f13
fmin.d f2, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fmin.d f1, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fmin.d f31, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fmin.d f5, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmin.d f31, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmin.d f20, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fmin.d f1, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fmin.d f5, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fmin.d f31, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fmin.d f6, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fmin.d f24, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fmin.d f20, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8010000000000000 from memory into f14
fmin.d f5, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
fmin.d f26, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmin.d f7, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fmin.d f19, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fmin.d f16, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fmin.d f24, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fmin.d f30, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
fmin.d f21, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fmin.d f19, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
fmin.d f24, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmin.d f6, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fmin.d f13, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fmin.d f18, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fmin.d f28, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
fmin.d f28, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fmin.d f14, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000001 from memory into f25
fmin.d f5, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fmin.d f12, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fmin.d f27, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fmin.d f19, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmin.d f1, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fmin.d f7, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fmin.d f29, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fmin.d f30, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fmin.d f24, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fmin.d f27, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fmin.d f20, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fmin.d f13, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmin.d f28, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fmin.d f14, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmin.d f6, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fmin.d f21, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fmin.d f26, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmin.d f27, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fmin.d f13, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmin.d f11, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmin.d f6, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmin.d f7, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fmin.d f26, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fmin.d f10, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fmin.d f25, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff8000000000000 from memory into f27
fmin.d f9, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fmin.d f12, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmin.d f20, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000001 from memory into f5
fmin.d f28, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fmin.d f1, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fmin.d f11, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fmin.d f19, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fmin.d f19, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fmin.d f5, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmin.d f29, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fmin.d f15, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fmin.d f27, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fmin.d f30, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fmin.d f6, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fmin.d f9, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fmin.d f20, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fmin.d f2, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fmin.d f7, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fmin.d f15, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
fmin.d f12, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
fmin.d f16, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fmin.d f23, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fmin.d f10, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmin.d f5, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fmin.d f10, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmin.d f6, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmin.d f15, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fmin.d f28, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff8000000000000 from memory into f27
fmin.d f29, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmin.d f5, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fmin.d f29, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff0000000000001 from memory into f8
fmin.d f5, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmin.d f12, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fmin.d f2, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fmin.d f27, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fmin.d f16, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmin.d f17, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fmin.d f9, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fmin.d f12, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fmin.d f9, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fmin.d f1, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fmin.d f22, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmin.d f2, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fmin.d f30, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fmin.d f5, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fmin.d f5, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fmin.d f20, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmin.d f11, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fmin.d f18, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fmin.d f7, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmin.d f11, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fmin.d f28, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fmin.d f2, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fmin.d f6, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmin.d f21, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fmin.d f5, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfff8000000000000 from memory into f28
fmin.d f26, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmin.d f25, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmin.d f30, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff0000000000001 from memory into f7
fmin.d f17, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fmin.d f10, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fmin.d f25, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
fmin.d f23, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmin.d f17, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fmin.d f8, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fmin.d f11, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
fmin.d f30, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmin.d f26, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
fmin.d f29, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fmin.d f13, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fmin.d f14, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fmin.d f25, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fmin.d f28, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fmin.d f29, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fmin.d f5, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fmin.d f20, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fmin.d f25, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fmin.d f25, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fmin.d f28, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fmin.d f18, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fmin.d f10, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
fmin.d f9, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fmin.d f14, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fmin.d f5, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff8000000000000 from memory into f11
fmin.d f17, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmin.d f2, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fmin.d f24, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000001 from memory into f12
fmin.d f2, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fmin.d f23, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fmin.d f9, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fmin.d f20, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmin.d f11, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmin.d f31, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fmin.d f27, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fmin.d f27, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fmin.d f5, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fmin.d f29, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fmin.d f7, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fmin.d f2, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fmin.d f7, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fmin.d f12, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fmin.d f7, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fmin.d f5, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fmin.d f24, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fmin.d f29, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fmin.d f21, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fmin.d f11, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fmin.d f7, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fmin.d f28, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmin.d f21, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fmin.d f30, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fmin.d f1, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff8000000000000 from memory into f13
fmin.d f27, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fmin.d f19, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmin.d f13, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000001 from memory into f10
fmin.d f31, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fmin.d f14, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fmin.d f22, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fmin.d f31, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fmin.d f23, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fmin.d f30, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fmin.d f25, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fmin.d f28, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fmin.d f2, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fmin.d f21, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fmin.d f11, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fmin.d f3, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fmin.d f16, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fmin.d f29, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
fmin.d f18, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fmin.d f31, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fmin.d f24, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
fmin.d f8, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fmin.d f30, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fmin.d f8, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fmin.d f27, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fmin.d f31, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmin.d f31, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
fmin.d f7, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fmin.d f31, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff8000000000000 from memory into f10
fmin.d f24, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fmin.d f12, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
fmin.d f30, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff0000000000001 from memory into f3
fmin.d f17, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fmin.d f13, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fmin.d f29, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fmin.d f10, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fmin.d f31, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fmin.d f10, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fmin.d f31, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmin.d f19, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fmin.d f22, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fmin.d f2, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fmin.d f7, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fmin.d f9, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmin.d f17, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmin.d f29, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fmin.d f26, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
fmin.d f11, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmin.d f14, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fmin.d f27, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fmin.d f5, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmin.d f2, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fmin.d f15, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fmin.d f12, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
fmin.d f26, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
fmin.d f28, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fmin.d f28, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff8000000000000 from memory into f8
fmin.d f12, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fmin.d f7, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fmin.d f21, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000001 from memory into f29
fmin.d f21, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fmin.d f10, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
fmin.d f18, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fmin.d f30, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fmin.d f22, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fmin.d f14, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fmin.d f16, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fmin.d f21, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fmin.d f22, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
fmin.d f21, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
fmin.d f20, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fmin.d f27, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fmin.d f17, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fmin.d f10, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fmin.d f6, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fmin.d f2, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fmin.d f31, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fmin.d f11, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fmin.d f19, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
fmin.d f23, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fmin.d f5, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fmin.d f9, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
fmin.d f16, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fmin.d f28, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fmin.d f19, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
fmin.d f7, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fmin.d f29, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fmin.d f28, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff0000000000001 from memory into f22
fmin.d f3, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fmin.d f30, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fmin.d f18, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmin.d f15, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fmin.d f14, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
fmin.d f22, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fmin.d f31, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fmin.d f30, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
fmin.d f20, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmin.d f29, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fmin.d f25, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fmin.d f3, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fmin.d f21, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fmin.d f14, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmin.d f30, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fmin.d f25, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fmin.d f28, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fmin.d f10, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
fmin.d f13, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fmin.d f26, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fmin.d f29, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fmin.d f29, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fmin.d f21, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fmin.d f23, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fmin.d f9, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfff8000000000000 from memory into f21
fmin.d f18, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fmin.d f27, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmin.d f3, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000001 from memory into f10
fmin.d f1, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fmin.d f13, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fmin.d f28, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fmin.d f28, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fmin.d f5, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fmin.d f18, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmin.d f12, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fmin.d f24, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmin.d f14, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fmin.d f2, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmin.d f13, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fmin.d f11, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fmin.d f10, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fmin.d f22, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fmin.d f29, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fmin.d f11, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fmin.d f15, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fmin.d f2, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fmin.d f21, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmin.d f6, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmin.d f18, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fmin.d f15, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmin.d f17, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fmin.d f26, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fmin.d f1, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff8000000000000 from memory into f15
fmin.d f27, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fmin.d f28, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fmin.d f30, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff0000000000001 from memory into f18
fmin.d f10, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fmin.d f16, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fmin.d f12, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fmin.d f15, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fmin.d f9, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff8000000000000 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fmin.d f31, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff8000000000000 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fmin.d f7, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff8000000000000 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fmin.d f7, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfff8000000000000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fmin.d f18, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmin.d f11, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff8000000000000 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fmin.d f22, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fmin.d f16, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff8000000000000 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fmin.d f1, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff8000000000000 from memory into f23
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fmin.d f18, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff8000000000000 from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fmin.d f13, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff8000000000000 from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fmin.d f14, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff8000000000000 from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fmin.d f11, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff8000000000000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fmin.d f15, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfff8000000000000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmin.d f31, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff8000000000000 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmin.d f15, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff8000000000000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fmin.d f29, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmin.d f12, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff8000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fmin.d f31, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff8000000000000 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmin.d f20, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff8000000000000 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fmin.d f31, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfff8000000000000 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff8000000000000 from memory into f18
fmin.d f10, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff8000000000000 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fmin.d f14, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff8000000000000 from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmin.d f7, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff8000000000000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000001 from memory into f5
fmin.d f30, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff8000000000000 from memory into f29
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fmin.d f8, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff8000000000000 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff8000000000000 from memory into f22
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fmin.d f13, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fmin.d f10, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fmin.d f6, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fmin.d f20, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmin.d f10, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
fmin.d f14, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
fmin.d f10, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fmin.d f2, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fmin.d f11, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fmin.d f29, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fmin.d f5, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmin.d f7, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmin.d f1, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fmin.d f7, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fmin.d f10, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fmin.d f3, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fmin.d f25, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fmin.d f25, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fmin.d f25, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fmin.d f2, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmin.d f7, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fmin.d f19, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fmin.d f22, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff8000000000000 from memory into f6
fmin.d f28, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fmin.d f23, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fmin.d f17, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff0000000000001 from memory into f18
fmin.d f10, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fmin.d f20, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fmin.d f17, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fmin.d f22, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fmin.d f6, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fmin.d f19, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmin.d f31, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fmin.d f2, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fmin.d f3, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmin.d f15, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fmin.d f23, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fmin.d f12, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fmin.d f9, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fmin.d f14, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fmin.d f3, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fmin.d f28, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fmin.d f13, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fmin.d f10, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
fmin.d f8, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmin.d f16, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fmin.d f22, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fmin.d f23, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fmin.d f1, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fmin.d f7, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fmin.d f13, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff8000000000000 from memory into f15
fmin.d f16, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmin.d f31, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fmin.d f23, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000001 from memory into f19
fmin.d f25, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fmin.d f19, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fmin.d f28, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000001 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fmin.d f6, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmin.d f30, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fmin.d f2, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000001 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmin.d f14, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fmin.d f7, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000001 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
fmin.d f24, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000001 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmin.d f28, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfff0000000000001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fmin.d f31, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfff0000000000001 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
fmin.d f3, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000001 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmin.d f5, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff0000000000001 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fmin.d f21, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000001 from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmin.d f12, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000001 from memory into f19
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
fmin.d f5, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000001 from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fmin.d f11, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff0000000000001 from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fmin.d f15, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000001 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fmin.d f29, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfff0000000000001 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmin.d f30, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff0000000000001 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmin.d f20, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000001 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fmin.d f28, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fmin.d f3, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfff0000000000001 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fmin.d f30, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000001 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fmin.d f21, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000001 from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff8000000000000 from memory into f3
fmin.d f9, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000001 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fmin.d f29, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000001 from memory into f13
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fmin.d f16, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff0000000000001 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000001 from memory into f5
fmin.d f7, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000001 from memory into f12
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fmin.d f25, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000001 fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff0000000000001 from memory into f18
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fmin.d f24, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fmin.d f20, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fmin.d f27, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fmin.d f8, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fmin.d f19, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fmin.d f26, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fmin.d f28, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fmin.d f29, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fmin.d f22, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fmin.d f23, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fmin.d f12, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fmin.d f25, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fmin.d f5, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fmin.d f14, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmin.d f1, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
fmin.d f9, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fmin.d f18, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmin.d f13, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fmin.d f8, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmin.d f14, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmin.d f24, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmin.d f19, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fmin.d f23, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff8000000000000 from memory into f5
fmin.d f15, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fmin.d f5, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fmin.d f12, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfff0000000000001 from memory into f28
fmin.d f20, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fmin.d f25, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fmin.d f1, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fmin.d f24, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000000
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fmin.d f10, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff00000 # load x2 with 32 LSBs of 0x3ff0000000000000
sw x3, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
fmin.d f3, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff00000 # load x2 with 32 LSBs of 0xbff0000000000000
sw x3, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fmin.d f20, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x3ff80000 # load x2 with 32 LSBs of 0x3ff8000000000000
sw x3, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fmin.d f6, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xbff80000 # load x2 with 32 LSBs of 0xbff8000000000000
sw x3, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fmin.d f23, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x40000000 # load x2 with 32 LSBs of 0x4000000000000000
sw x3, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
fmin.d f11, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xc0000000 # load x2 with 32 LSBs of 0xc000000000000000
sw x3, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fmin.d f23, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00100000 # load x2 with 32 LSBs of 0x0010000000000000
sw x3, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fmin.d f8, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80100000 # load x2 with 32 LSBs of 0x8010000000000000
sw x3, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fmin.d f17, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fefffff # load x2 with 32 LSBs of 0x7fefffffffffffff
sw x3, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fmin.d f3, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0xffefffff # load x2 with 32 LSBs of 0xffefffffffffffff
sw x3, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fmin.d f13, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x000fffff # load x2 with 32 LSBs of 0x000fffffffffffff
sw x3, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fmin.d f16, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x800fffff # load x2 with 32 LSBs of 0x800fffffffffffff
sw x3, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fmin.d f15, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00080000 # load x2 with 32 LSBs of 0x0008000000000000
sw x3, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0008000000000000 from memory into f8
fmin.d f22, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x80080000 # load x2 with 32 LSBs of 0x8008000000000000
sw x3, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fmin.d f7, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fmin.d f10, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x80000000 # load x2 with 32 LSBs of 0x8000000000000001
sw x3, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fmin.d f8, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000000
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmin.d f27, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000000
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fmin.d f29, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x7ff80000 # load x2 with 32 LSBs of 0x7ff8000000000000
sw x3, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
fmin.d f23, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffffffff
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fmin.d f26, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff8000000000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xfff80000 # load x2 with 32 LSBs of 0xfff8000000000000
sw x3, 4(x2) # store x4 (0xfff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff8000000000000 from memory into f7
fmin.d f15, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x7ff00000 # load x2 with 32 LSBs of 0x7ff0000000000001
sw x3, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fmin.d f28, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x7ff7ffff # load x2 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fmin.d f16, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0xfff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0xfff00000 # load x2 with 32 LSBs of 0xfff0000000000001
sw x3, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000001 from memory into f20
fmin.d f18, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
li x3, 0x5a392534 # load x2 with 32 LSBs of 0x5a392534a57711ad
sw x3, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fmin.d f20, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
li x3, 0xa6e89599 # load x2 with 32 LSBs of 0xa6e895993737426c
sw x3, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fmin.d f31, f17, f30 # perform operation

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
