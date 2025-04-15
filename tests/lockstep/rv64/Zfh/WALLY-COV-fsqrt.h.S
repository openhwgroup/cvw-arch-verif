///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fsqrt.h.S
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
add x11, x21, x6 # perform first operation
fsqrt.h f15, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x12, x8 # perform first operation
fsqrt.h f25, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x26, x11 # perform first operation
fsqrt.h f24, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f1, f31, f11 # perform first operation
fsqrt.h f11, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x15, x30 # perform first operation
fsqrt.h f31, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x5, x13 # perform first operation
fsqrt.h f22, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f21, f7 # perform first operation
fsqrt.h f5, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f23, f8 # perform first operation
fsqrt.h f2, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f19, f10, f25 # perform first operation
fsqrt.h f19, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f26, f1, f7 # perform first operation
fsqrt.h f1, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f12, f20, f7 # perform first operation
fsqrt.h f7, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f28, f17, f22 # perform first operation
fsqrt.h f23, f25 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7b348831b5f97eb5 # load x3 with value 0x7b348831b5f97eb5
sw x3, 0(x2) # store 0x7b348831b5f97eb5 in memory
flh f0, 0(x2) # load 0x7b348831b5f97eb5 from memory into f0
fsqrt.h f13, f0 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x20a9592cba24e6e5 # load x3 with value 0x20a9592cba24e6e5
sw x3, 0(x2) # store 0x20a9592cba24e6e5 in memory
flh f1, 0(x2) # load 0x20a9592cba24e6e5 from memory into f1
fsqrt.h f14, f1 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd3a6f82b858d96f7 # load x3 with value 0xd3a6f82b858d96f7
sw x3, 0(x2) # store 0xd3a6f82b858d96f7 in memory
flh f2, 0(x2) # load 0xd3a6f82b858d96f7 from memory into f2
fsqrt.h f16, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4708caa253c8f2a8 # load x3 with value 0x4708caa253c8f2a8
sw x3, 0(x2) # store 0x4708caa253c8f2a8 in memory
flh f3, 0(x2) # load 0x4708caa253c8f2a8 from memory into f3
fsqrt.h f8, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffbe3e04343eb87 # load x3 with value 0xfffbe3e04343eb87
sw x3, 0(x2) # store 0xfffbe3e04343eb87 in memory
flh f4, 0(x2) # load 0xfffbe3e04343eb87 from memory into f4
fsqrt.h f3, f4 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x18f5551c4d6aa179 # load x3 with value 0x18f5551c4d6aa179
sw x3, 0(x2) # store 0x18f5551c4d6aa179 in memory
flh f5, 0(x2) # load 0x18f5551c4d6aa179 from memory into f5
fsqrt.h f18, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6c7adf5f1972a6be # load x3 with value 0x6c7adf5f1972a6be
sw x3, 0(x2) # store 0x6c7adf5f1972a6be in memory
flh f6, 0(x2) # load 0x6c7adf5f1972a6be from memory into f6
fsqrt.h f11, f6 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa41c188ee5ece14e # load x3 with value 0xa41c188ee5ece14e
sw x3, 0(x2) # store 0xa41c188ee5ece14e in memory
flh f7, 0(x2) # load 0xa41c188ee5ece14e from memory into f7
fsqrt.h f15, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x37ae04a834d14728 # load x3 with value 0x37ae04a834d14728
sw x3, 0(x2) # store 0x37ae04a834d14728 in memory
flh f8, 0(x2) # load 0x37ae04a834d14728 from memory into f8
fsqrt.h f12, f8 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4347ac948e7f4d41 # load x3 with value 0x4347ac948e7f4d41
sw x3, 0(x2) # store 0x4347ac948e7f4d41 in memory
flh f9, 0(x2) # load 0x4347ac948e7f4d41 from memory into f9
fsqrt.h f24, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x61ddfd9819e3211b # load x3 with value 0x61ddfd9819e3211b
sw x3, 0(x2) # store 0x61ddfd9819e3211b in memory
flh f10, 0(x2) # load 0x61ddfd9819e3211b from memory into f10
fsqrt.h f19, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x816092b25da205b5 # load x3 with value 0x816092b25da205b5
sw x3, 0(x2) # store 0x816092b25da205b5 in memory
flh f11, 0(x2) # load 0x816092b25da205b5 from memory into f11
fsqrt.h f23, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe03b817c793e7bed # load x3 with value 0xe03b817c793e7bed
sw x3, 0(x2) # store 0xe03b817c793e7bed in memory
flh f12, 0(x2) # load 0xe03b817c793e7bed from memory into f12
fsqrt.h f1, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf3ad4b8ae9dd454e # load x3 with value 0xf3ad4b8ae9dd454e
sw x3, 0(x2) # store 0xf3ad4b8ae9dd454e in memory
flh f13, 0(x2) # load 0xf3ad4b8ae9dd454e from memory into f13
fsqrt.h f17, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5102ae7761becc99 # load x3 with value 0x5102ae7761becc99
sw x3, 0(x2) # store 0x5102ae7761becc99 in memory
flh f14, 0(x2) # load 0x5102ae7761becc99 from memory into f14
fsqrt.h f31, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x64ec209d71bc330b # load x3 with value 0x64ec209d71bc330b
sw x3, 0(x2) # store 0x64ec209d71bc330b in memory
flh f15, 0(x2) # load 0x64ec209d71bc330b from memory into f15
fsqrt.h f26, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbcd8bc1d74d2b4db # load x3 with value 0xbcd8bc1d74d2b4db
sw x3, 0(x2) # store 0xbcd8bc1d74d2b4db in memory
flh f16, 0(x2) # load 0xbcd8bc1d74d2b4db from memory into f16
fsqrt.h f23, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x53a3c9faa78883c9 # load x3 with value 0x53a3c9faa78883c9
sw x3, 0(x2) # store 0x53a3c9faa78883c9 in memory
flh f17, 0(x2) # load 0x53a3c9faa78883c9 from memory into f17
fsqrt.h f31, f17 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa98d101e65991df7 # load x3 with value 0xa98d101e65991df7
sw x3, 0(x2) # store 0xa98d101e65991df7 in memory
flh f18, 0(x2) # load 0xa98d101e65991df7 from memory into f18
fsqrt.h f29, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x84f8d924751c6d56 # load x3 with value 0x84f8d924751c6d56
sw x3, 0(x2) # store 0x84f8d924751c6d56 in memory
flh f19, 0(x2) # load 0x84f8d924751c6d56 from memory into f19
fsqrt.h f8, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x55b174e80bc8ad51 # load x3 with value 0x55b174e80bc8ad51
sw x3, 0(x2) # store 0x55b174e80bc8ad51 in memory
flh f20, 0(x2) # load 0x55b174e80bc8ad51 from memory into f20
fsqrt.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x83dd8ac97aabb857 # load x3 with value 0x83dd8ac97aabb857
sw x3, 0(x2) # store 0x83dd8ac97aabb857 in memory
flh f21, 0(x2) # load 0x83dd8ac97aabb857 from memory into f21
fsqrt.h f18, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x90ce3db057f6c2f0 # load x3 with value 0x90ce3db057f6c2f0
sw x3, 0(x2) # store 0x90ce3db057f6c2f0 in memory
flh f22, 0(x2) # load 0x90ce3db057f6c2f0 from memory into f22
fsqrt.h f26, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf5dc6440994b3572 # load x3 with value 0xf5dc6440994b3572
sw x3, 0(x2) # store 0xf5dc6440994b3572 in memory
flh f23, 0(x2) # load 0xf5dc6440994b3572 from memory into f23
fsqrt.h f18, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc7de703cdf55cd6d # load x3 with value 0xc7de703cdf55cd6d
sw x3, 0(x2) # store 0xc7de703cdf55cd6d in memory
flh f24, 0(x2) # load 0xc7de703cdf55cd6d from memory into f24
fsqrt.h f19, f24 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x12297e09b593795d # load x3 with value 0x12297e09b593795d
sw x3, 0(x2) # store 0x12297e09b593795d in memory
flh f25, 0(x2) # load 0x12297e09b593795d from memory into f25
fsqrt.h f31, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2bcfc866ea487570 # load x3 with value 0x2bcfc866ea487570
sw x3, 0(x2) # store 0x2bcfc866ea487570 in memory
flh f26, 0(x2) # load 0x2bcfc866ea487570 from memory into f26
fsqrt.h f7, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6aa11cd7ae592725 # load x3 with value 0x6aa11cd7ae592725
sw x3, 0(x2) # store 0x6aa11cd7ae592725 in memory
flh f27, 0(x2) # load 0x6aa11cd7ae592725 from memory into f27
fsqrt.h f12, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7804e87002bc48a4 # load x3 with value 0x7804e87002bc48a4
sw x3, 0(x2) # store 0x7804e87002bc48a4 in memory
flh f28, 0(x2) # load 0x7804e87002bc48a4 from memory into f28
fsqrt.h f8, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde708b530cd12f46 # load x3 with value 0xde708b530cd12f46
sw x3, 0(x2) # store 0xde708b530cd12f46 in memory
flh f29, 0(x2) # load 0xde708b530cd12f46 from memory into f29
fsqrt.h f31, f29 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8c71489b6e1c8c50 # load x3 with value 0x8c71489b6e1c8c50
sw x3, 0(x2) # store 0x8c71489b6e1c8c50 in memory
flh f30, 0(x2) # load 0x8c71489b6e1c8c50 from memory into f30
fsqrt.h f7, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1 (Test source fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf715e51694ea6211 # load x3 with value 0xf715e51694ea6211
sw x3, 0(x2) # store 0xf715e51694ea6211 in memory
flh f31, 0(x2) # load 0xf715e51694ea6211 from memory into f31
fsqrt.h f20, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x769a0b07277bbcbe # load x3 with value 0x769a0b07277bbcbe
sw x3, 0(x2) # store 0x769a0b07277bbcbe in memory
flh f19, 0(x2) # load 0x769a0b07277bbcbe from memory into f19
fsqrt.h f0, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe54433bf42ab213d # load x3 with value 0xe54433bf42ab213d
sw x3, 0(x2) # store 0xe54433bf42ab213d in memory
flh f16, 0(x2) # load 0xe54433bf42ab213d from memory into f16
fsqrt.h f1, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd97dfed4897546d9 # load x3 with value 0xd97dfed4897546d9
sw x3, 0(x2) # store 0xd97dfed4897546d9 in memory
flh f15, 0(x2) # load 0xd97dfed4897546d9 from memory into f15
fsqrt.h f2, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x14473cd455c32759 # load x3 with value 0x14473cd455c32759
sw x3, 0(x2) # store 0x14473cd455c32759 in memory
flh f28, 0(x2) # load 0x14473cd455c32759 from memory into f28
fsqrt.h f3, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf3f2a52ea6760477 # load x3 with value 0xf3f2a52ea6760477
sw x3, 0(x2) # store 0xf3f2a52ea6760477 in memory
flh f25, 0(x2) # load 0xf3f2a52ea6760477 from memory into f25
fsqrt.h f4, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4b63d3fb89bdeec6 # load x3 with value 0x4b63d3fb89bdeec6
sw x3, 0(x2) # store 0x4b63d3fb89bdeec6 in memory
flh f20, 0(x2) # load 0x4b63d3fb89bdeec6 from memory into f20
fsqrt.h f5, f20 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf67083a8d385df8a # load x3 with value 0xf67083a8d385df8a
sw x3, 0(x2) # store 0xf67083a8d385df8a in memory
flh f25, 0(x2) # load 0xf67083a8d385df8a from memory into f25
fsqrt.h f6, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xecc44ecf5be5e483 # load x3 with value 0xecc44ecf5be5e483
sw x3, 0(x2) # store 0xecc44ecf5be5e483 in memory
flh f16, 0(x2) # load 0xecc44ecf5be5e483 from memory into f16
fsqrt.h f7, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa5ea6cc230f60845 # load x3 with value 0xa5ea6cc230f60845
sw x3, 0(x2) # store 0xa5ea6cc230f60845 in memory
flh f23, 0(x2) # load 0xa5ea6cc230f60845 from memory into f23
fsqrt.h f8, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5ea4880133e92ade # load x3 with value 0x5ea4880133e92ade
sw x3, 0(x2) # store 0x5ea4880133e92ade in memory
flh f30, 0(x2) # load 0x5ea4880133e92ade from memory into f30
fsqrt.h f9, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa0820f68b8421d79 # load x3 with value 0xa0820f68b8421d79
sw x3, 0(x2) # store 0xa0820f68b8421d79 in memory
flh f28, 0(x2) # load 0xa0820f68b8421d79 from memory into f28
fsqrt.h f10, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x38c99835bd7fbe53 # load x3 with value 0x38c99835bd7fbe53
sw x3, 0(x2) # store 0x38c99835bd7fbe53 in memory
flh f10, 0(x2) # load 0x38c99835bd7fbe53 from memory into f10
fsqrt.h f11, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x21db7e9e3a033499 # load x3 with value 0x21db7e9e3a033499
sw x3, 0(x2) # store 0x21db7e9e3a033499 in memory
flh f9, 0(x2) # load 0x21db7e9e3a033499 from memory into f9
fsqrt.h f12, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd7130f08c0ce2ea5 # load x3 with value 0xd7130f08c0ce2ea5
sw x3, 0(x2) # store 0xd7130f08c0ce2ea5 in memory
flh f27, 0(x2) # load 0xd7130f08c0ce2ea5 from memory into f27
fsqrt.h f13, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47623154630c570 # load x3 with value 0x47623154630c570
sw x3, 0(x2) # store 0x47623154630c570 in memory
flh f18, 0(x2) # load 0x47623154630c570 from memory into f18
fsqrt.h f14, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8bd2738e08f0e707 # load x3 with value 0x8bd2738e08f0e707
sw x3, 0(x2) # store 0x8bd2738e08f0e707 in memory
flh f19, 0(x2) # load 0x8bd2738e08f0e707 from memory into f19
fsqrt.h f15, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x45531fd4db8aec51 # load x3 with value 0x45531fd4db8aec51
sw x3, 0(x2) # store 0x45531fd4db8aec51 in memory
flh f9, 0(x2) # load 0x45531fd4db8aec51 from memory into f9
fsqrt.h f16, f9 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9c25ad9a0184a157 # load x3 with value 0x9c25ad9a0184a157
sw x3, 0(x2) # store 0x9c25ad9a0184a157 in memory
flh f14, 0(x2) # load 0x9c25ad9a0184a157 from memory into f14
fsqrt.h f17, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ff54dfe2aa0258c # load x3 with value 0x6ff54dfe2aa0258c
sw x3, 0(x2) # store 0x6ff54dfe2aa0258c in memory
flh f11, 0(x2) # load 0x6ff54dfe2aa0258c from memory into f11
fsqrt.h f18, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfc9c17b86498245a # load x3 with value 0xfc9c17b86498245a
sw x3, 0(x2) # store 0xfc9c17b86498245a in memory
flh f22, 0(x2) # load 0xfc9c17b86498245a from memory into f22
fsqrt.h f19, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffe92330ed89f6b5 # load x3 with value 0xffe92330ed89f6b5
sw x3, 0(x2) # store 0xffe92330ed89f6b5 in memory
flh f27, 0(x2) # load 0xffe92330ed89f6b5 from memory into f27
fsqrt.h f20, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xec3a76f21e24699a # load x3 with value 0xec3a76f21e24699a
sw x3, 0(x2) # store 0xec3a76f21e24699a in memory
flh f31, 0(x2) # load 0xec3a76f21e24699a from memory into f31
fsqrt.h f21, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x51208f132230e3fe # load x3 with value 0x51208f132230e3fe
sw x3, 0(x2) # store 0x51208f132230e3fe in memory
flh f21, 0(x2) # load 0x51208f132230e3fe from memory into f21
fsqrt.h f22, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa38d9450ea08d555 # load x3 with value 0xa38d9450ea08d555
sw x3, 0(x2) # store 0xa38d9450ea08d555 in memory
flh f19, 0(x2) # load 0xa38d9450ea08d555 from memory into f19
fsqrt.h f23, f19 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xed35ce1e78fb0778 # load x3 with value 0xed35ce1e78fb0778
sw x3, 0(x2) # store 0xed35ce1e78fb0778 in memory
flh f26, 0(x2) # load 0xed35ce1e78fb0778 from memory into f26
fsqrt.h f24, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x2bab8906ccc4f04f # load x3 with value 0x2bab8906ccc4f04f
sw x3, 0(x2) # store 0x2bab8906ccc4f04f in memory
flh f27, 0(x2) # load 0x2bab8906ccc4f04f from memory into f27
fsqrt.h f25, f27 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe6ae65988639407e # load x3 with value 0xe6ae65988639407e
sw x3, 0(x2) # store 0xe6ae65988639407e in memory
flh f22, 0(x2) # load 0xe6ae65988639407e from memory into f22
fsqrt.h f26, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdb90a592f0069476 # load x3 with value 0xdb90a592f0069476
sw x3, 0(x2) # store 0xdb90a592f0069476 in memory
flh f31, 0(x2) # load 0xdb90a592f0069476 from memory into f31
fsqrt.h f27, f31 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x233419c59dd62cce # load x3 with value 0x233419c59dd62cce
sw x3, 0(x2) # store 0x233419c59dd62cce in memory
flh f12, 0(x2) # load 0x233419c59dd62cce from memory into f12
fsqrt.h f28, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1845c3ab2521e8e4 # load x3 with value 0x1845c3ab2521e8e4
sw x3, 0(x2) # store 0x1845c3ab2521e8e4 in memory
flh f11, 0(x2) # load 0x1845c3ab2521e8e4 from memory into f11
fsqrt.h f29, f11 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xde9000462ec0a867 # load x3 with value 0xde9000462ec0a867
sw x3, 0(x2) # store 0xde9000462ec0a867 in memory
flh f12, 0(x2) # load 0xde9000462ec0a867 from memory into f12
fsqrt.h f30, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x86d8eed69ae2b206 # load x3 with value 0x86d8eed69ae2b206
sw x3, 0(x2) # store 0x86d8eed69ae2b206 in memory
flh f7, 0(x2) # load 0x86d8eed69ae2b206 from memory into f7
fsqrt.h f31, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fsqrt.h f21, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fsqrt.h f19, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fsqrt.h f3, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsqrt.h f14, f5 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fsqrt.h f31, f28 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fsqrt.h f21, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fsqrt.h f22, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsqrt.h f6, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsqrt.h f15, f23 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fsqrt.h f30, f2 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fsqrt.h f13, f16 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsqrt.h f13, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fsqrt.h f24, f7 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsqrt.h f12, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsqrt.h f7, f3 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fsqrt.h f10, f18 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fsqrt.h f29, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsqrt.h f27, f26 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fsqrt.h f12, f21 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fsqrt.h f5, f13 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fsqrt.h f24, f10 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fsqrt.h f23, f12 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
fsqrt.h f14, f30 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsqrt.h f11, f25 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fsqrt.h f28, f22 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f14, 0(x2) # load 0x0000fc01 from memory into f14
fsqrt.h f22, f14 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fsqrt.h f27, f15 # perform operation second time to make sure flags don't change

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fsqrt.h f23, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7095f087a0e6a78 # load x3 with value 0xb7095f087a0e6a78
sw x3, 0(x2) # store 0xb7095f087a0e6a78 in memory
flh f0, 0(x2) # load 0xb7095f087a0e6a78 from memory into f0
fsqrt.h f0, f0 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8540a0d6e28cd49b # load x3 with value 0x8540a0d6e28cd49b
sw x3, 0(x2) # store 0x8540a0d6e28cd49b in memory
flh f1, 0(x2) # load 0x8540a0d6e28cd49b from memory into f1
fsqrt.h f1, f1 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5815898908cbbd01 # load x3 with value 0x5815898908cbbd01
sw x3, 0(x2) # store 0x5815898908cbbd01 in memory
flh f2, 0(x2) # load 0x5815898908cbbd01 from memory into f2
fsqrt.h f2, f2 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x1ee4557e96d99012 # load x3 with value 0x1ee4557e96d99012
sw x3, 0(x2) # store 0x1ee4557e96d99012 in memory
flh f3, 0(x2) # load 0x1ee4557e96d99012 from memory into f3
fsqrt.h f3, f3 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa61da3dc4052f698 # load x3 with value 0xa61da3dc4052f698
sw x3, 0(x2) # store 0xa61da3dc4052f698 in memory
flh f4, 0(x2) # load 0xa61da3dc4052f698 from memory into f4
fsqrt.h f4, f4 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x6ba77a3ec5abb88a # load x3 with value 0x6ba77a3ec5abb88a
sw x3, 0(x2) # store 0x6ba77a3ec5abb88a in memory
flh f5, 0(x2) # load 0x6ba77a3ec5abb88a from memory into f5
fsqrt.h f5, f5 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x8bb222ec4890071 # load x3 with value 0x8bb222ec4890071
sw x3, 0(x2) # store 0x8bb222ec4890071 in memory
flh f6, 0(x2) # load 0x8bb222ec4890071 from memory into f6
fsqrt.h f6, f6 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xea827ee8052ac9e4 # load x3 with value 0xea827ee8052ac9e4
sw x3, 0(x2) # store 0xea827ee8052ac9e4 in memory
flh f7, 0(x2) # load 0xea827ee8052ac9e4 from memory into f7
fsqrt.h f7, f7 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x47b78721b2c3be8e # load x3 with value 0x47b78721b2c3be8e
sw x3, 0(x2) # store 0x47b78721b2c3be8e in memory
flh f8, 0(x2) # load 0x47b78721b2c3be8e from memory into f8
fsqrt.h f8, f8 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5ef0d10558d5433 # load x3 with value 0x5ef0d10558d5433
sw x3, 0(x2) # store 0x5ef0d10558d5433 in memory
flh f9, 0(x2) # load 0x5ef0d10558d5433 from memory into f9
fsqrt.h f9, f9 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9538f2d2d78e8b # load x3 with value 0xd9538f2d2d78e8b
sw x3, 0(x2) # store 0xd9538f2d2d78e8b in memory
flh f10, 0(x2) # load 0xd9538f2d2d78e8b from memory into f10
fsqrt.h f10, f10 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xba784b90a2175bb3 # load x3 with value 0xba784b90a2175bb3
sw x3, 0(x2) # store 0xba784b90a2175bb3 in memory
flh f11, 0(x2) # load 0xba784b90a2175bb3 from memory into f11
fsqrt.h f11, f11 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf89d8ed1d5a87cc3 # load x3 with value 0xf89d8ed1d5a87cc3
sw x3, 0(x2) # store 0xf89d8ed1d5a87cc3 in memory
flh f12, 0(x2) # load 0xf89d8ed1d5a87cc3 from memory into f12
fsqrt.h f12, f12 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xf6bbc04c9fb067fc # load x3 with value 0xf6bbc04c9fb067fc
sw x3, 0(x2) # store 0xf6bbc04c9fb067fc in memory
flh f13, 0(x2) # load 0xf6bbc04c9fb067fc from memory into f13
fsqrt.h f13, f13 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb7e0cab73c2e93eb # load x3 with value 0xb7e0cab73c2e93eb
sw x3, 0(x2) # store 0xb7e0cab73c2e93eb in memory
flh f14, 0(x2) # load 0xb7e0cab73c2e93eb from memory into f14
fsqrt.h f14, f14 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x500fe56020f9590c # load x3 with value 0x500fe56020f9590c
sw x3, 0(x2) # store 0x500fe56020f9590c in memory
flh f15, 0(x2) # load 0x500fe56020f9590c from memory into f15
fsqrt.h f15, f15 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xee2b7d33c2280623 # load x3 with value 0xee2b7d33c2280623
sw x3, 0(x2) # store 0xee2b7d33c2280623 in memory
flh f16, 0(x2) # load 0xee2b7d33c2280623 from memory into f16
fsqrt.h f16, f16 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb07aa56b89502d8f # load x3 with value 0xb07aa56b89502d8f
sw x3, 0(x2) # store 0xb07aa56b89502d8f in memory
flh f17, 0(x2) # load 0xb07aa56b89502d8f from memory into f17
fsqrt.h f17, f17 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb1c77b988de5344e # load x3 with value 0xb1c77b988de5344e
sw x3, 0(x2) # store 0xb1c77b988de5344e in memory
flh f18, 0(x2) # load 0xb1c77b988de5344e from memory into f18
fsqrt.h f18, f18 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff5dd078788e793b # load x3 with value 0xff5dd078788e793b
sw x3, 0(x2) # store 0xff5dd078788e793b in memory
flh f19, 0(x2) # load 0xff5dd078788e793b from memory into f19
fsqrt.h f19, f19 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xb57a9d03739ff1f # load x3 with value 0xb57a9d03739ff1f
sw x3, 0(x2) # store 0xb57a9d03739ff1f in memory
flh f20, 0(x2) # load 0xb57a9d03739ff1f from memory into f20
fsqrt.h f20, f20 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbe7b92d673efffde # load x3 with value 0xbe7b92d673efffde
sw x3, 0(x2) # store 0xbe7b92d673efffde in memory
flh f21, 0(x2) # load 0xbe7b92d673efffde from memory into f21
fsqrt.h f21, f21 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x575732c5eefcb1a5 # load x3 with value 0x575732c5eefcb1a5
sw x3, 0(x2) # store 0x575732c5eefcb1a5 in memory
flh f22, 0(x2) # load 0x575732c5eefcb1a5 from memory into f22
fsqrt.h f22, f22 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7be403da6978ae48 # load x3 with value 0x7be403da6978ae48
sw x3, 0(x2) # store 0x7be403da6978ae48 in memory
flh f23, 0(x2) # load 0x7be403da6978ae48 from memory into f23
fsqrt.h f23, f23 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xd9c0d1313e070dc # load x3 with value 0xd9c0d1313e070dc
sw x3, 0(x2) # store 0xd9c0d1313e070dc in memory
flh f24, 0(x2) # load 0xd9c0d1313e070dc from memory into f24
fsqrt.h f24, f24 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9882af0bd520ba72 # load x3 with value 0x9882af0bd520ba72
sw x3, 0(x2) # store 0x9882af0bd520ba72 in memory
flh f25, 0(x2) # load 0x9882af0bd520ba72 from memory into f25
fsqrt.h f25, f25 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4e162fa70272a396 # load x3 with value 0x4e162fa70272a396
sw x3, 0(x2) # store 0x4e162fa70272a396 in memory
flh f26, 0(x2) # load 0x4e162fa70272a396 from memory into f26
fsqrt.h f26, f26 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x933160700fe9d # load x3 with value 0x933160700fe9d
sw x3, 0(x2) # store 0x933160700fe9d in memory
flh f27, 0(x2) # load 0x933160700fe9d from memory into f27
fsqrt.h f27, f27 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x69389e6c7fdb7a08 # load x3 with value 0x69389e6c7fdb7a08
sw x3, 0(x2) # store 0x69389e6c7fdb7a08 in memory
flh f28, 0(x2) # load 0x69389e6c7fdb7a08 from memory into f28
fsqrt.h f28, f28 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x58dc8cc13b2ef761 # load x3 with value 0x58dc8cc13b2ef761
sw x3, 0(x2) # store 0x58dc8cc13b2ef761 in memory
flh f29, 0(x2) # load 0x58dc8cc13b2ef761 from memory into f29
fsqrt.h f29, f29 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x42406322dc6038be # load x3 with value 0x42406322dc6038be
sw x3, 0(x2) # store 0x42406322dc6038be in memory
flh f30, 0(x2) # load 0x42406322dc6038be from memory into f30
fsqrt.h f30, f30 # perform operation second time to make sure flags don't change

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x5a4f3d2eabf2623c # load x3 with value 0x5a4f3d2eabf2623c
sw x3, 0(x2) # store 0x5a4f3d2eabf2623c in memory
flh f31, 0(x2) # load 0x5a4f3d2eabf2623c from memory into f31
fsqrt.h f31, f31 # perform operation second time to make sure flags don't change

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe30f1a6b3b109815 # load x3 with value 0xe30f1a6b3b109815
sw x3, 0(x2) # store 0xe30f1a6b3b109815 in memory
flh f3, 0(x2) # load 0xe30f1a6b3b109815 from memory into f3
fsqrt.h f24, f3, dyn # perform operation
fsqrt.h f24, f3, rdn # perform operation
fsqrt.h f24, f3, rmm # perform operation
fsqrt.h f24, f3, rne # perform operation
fsqrt.h f24, f3, rtz # perform operation
fsqrt.h f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.h f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.h f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.h f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.h f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.h f24, f3 # perform operation


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x9e36bcb1b3c91ce0 # load x3 with value 0x9e36bcb1b3c91ce0
sw x3, 0(x2) # store 0x9e36bcb1b3c91ce0 in memory
flh f16, 0(x2) # load 0x9e36bcb1b3c91ce0 from memory into f16
fsqrt.h f13, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fsqrt.h f28, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f19, 0(x2) # load 0xfffe8000 from memory into f19
fsqrt.h f29, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f12, 0(x2) # load 0x7fff3c00 from memory into f12
fsqrt.h f11, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f15)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f15, 0(x2) # load 0xbeefbc00 from memory into f15
fsqrt.h f25, f15 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f16, 0(x2) # load 0xfeff0400 from memory into f16
fsqrt.h f26, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f22, 0(x2) # load 0x0fff8400 from memory into f22
fsqrt.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f16)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f16, 0(x2) # load 0xefff7bff from memory into f16
fsqrt.h f20, f16 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f11, 0(x2) # load 0xc0defbff from memory into f11
fsqrt.h f17, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f29, 0(x2) # load 0x4f1a7c00 from memory into f29
fsqrt.h f31, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f11, 0(x2) # load 0x0ffffc00 from memory into f11
fsqrt.h f6, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f22, 0(x2) # load 0xffef7e00 from memory into f22
fsqrt.h f25, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f10, 0(x2) # load 0xfeef7fff from memory into f10
fsqrt.h f15, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f28, 0(x2) # load 0xa1b27c01 from memory into f28
fsqrt.h f5, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f30)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f30, 0(x2) # load 0x4fd77dff from memory into f30
fsqrt.h f15, f30 # perform operation second time to make sure flags don't change

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
