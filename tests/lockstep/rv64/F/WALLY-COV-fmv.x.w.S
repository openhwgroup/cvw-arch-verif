///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fmv.x.w.S
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
li x3, 0xb16c099a98c109ed # load x3 with value 0xb16c099a98c109ed
sw x3, 0(x2) # store 0xb16c099a98c109ed in memory
flw f11, 0(x2) # load 0xb16c099a98c109ed from memory into f11
fmv.x.w x0, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x29f715681441ca49 # load x3 with value 0x29f715681441ca49
sw x3, 0(x2) # store 0x29f715681441ca49 in memory
flw f23, 0(x2) # load 0x29f715681441ca49 from memory into f23
fmv.x.w x1, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xf9557f9f26ec2db7 # load x3 with value 0xf9557f9f26ec2db7
sw x3, 0(x2) # store 0xf9557f9f26ec2db7 in memory
flw f11, 0(x2) # load 0xf9557f9f26ec2db7 from memory into f11
fmv.x.w x2, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x914209a8813581d9 # load x3 with value 0x914209a8813581d9
sw x3, 0(x2) # store 0x914209a8813581d9 in memory
flw f30, 0(x2) # load 0x914209a8813581d9 from memory into f30
fmv.x.w x3, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5b324a00c559b865 # load x3 with value 0x5b324a00c559b865
sw x3, 0(x2) # store 0x5b324a00c559b865 in memory
flw f20, 0(x2) # load 0x5b324a00c559b865 from memory into f20
fmv.x.w x4, f20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7749509365bffd3f # load x3 with value 0x7749509365bffd3f
sw x3, 0(x2) # store 0x7749509365bffd3f in memory
flw f12, 0(x2) # load 0x7749509365bffd3f from memory into f12
fmv.x.w x5, f12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x814930f00d2cbc26 # load x3 with value 0x814930f00d2cbc26
sw x3, 0(x2) # store 0x814930f00d2cbc26 in memory
flw f16, 0(x2) # load 0x814930f00d2cbc26 from memory into f16
fmv.x.w x6, f16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2892b7f2b740dc75 # load x3 with value 0x2892b7f2b740dc75
sw x3, 0(x2) # store 0x2892b7f2b740dc75 in memory
flw f14, 0(x2) # load 0x2892b7f2b740dc75 from memory into f14
fmv.x.w x7, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xb62399a121d22011 # load x3 with value 0xb62399a121d22011
sw x3, 0(x2) # store 0xb62399a121d22011 in memory
flw f31, 0(x2) # load 0xb62399a121d22011 from memory into f31
fmv.x.w x8, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x82306d5df37af30d # load x3 with value 0x82306d5df37af30d
sw x3, 0(x2) # store 0x82306d5df37af30d in memory
flw f24, 0(x2) # load 0x82306d5df37af30d from memory into f24
fmv.x.w x9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x747608c9afe5342c # load x3 with value 0x747608c9afe5342c
sw x3, 0(x2) # store 0x747608c9afe5342c in memory
flw f29, 0(x2) # load 0x747608c9afe5342c from memory into f29
fmv.x.w x10, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x6fb5d4fd223e8bc8 # load x3 with value 0x6fb5d4fd223e8bc8
sw x3, 0(x2) # store 0x6fb5d4fd223e8bc8 in memory
flw f17, 0(x2) # load 0x6fb5d4fd223e8bc8 from memory into f17
fmv.x.w x11, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x8b7f21cb6069ea32 # load x3 with value 0x8b7f21cb6069ea32
sw x3, 0(x2) # store 0x8b7f21cb6069ea32 in memory
flw f9, 0(x2) # load 0x8b7f21cb6069ea32 from memory into f9
fmv.x.w x12, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xa4b1659d1a7982d5 # load x3 with value 0xa4b1659d1a7982d5
sw x3, 0(x2) # store 0xa4b1659d1a7982d5 in memory
flw f20, 0(x2) # load 0xa4b1659d1a7982d5 from memory into f20
fmv.x.w x13, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xd22d602357df77c1 # load x3 with value 0xd22d602357df77c1
sw x3, 0(x2) # store 0xd22d602357df77c1 in memory
flw f22, 0(x2) # load 0xd22d602357df77c1 from memory into f22
fmv.x.w x14, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0x674a8ddf4e5c1532 # load x3 with value 0x674a8ddf4e5c1532
sw x3, 0(x2) # store 0x674a8ddf4e5c1532 in memory
flw f12, 0(x2) # load 0x674a8ddf4e5c1532 from memory into f12
fmv.x.w x15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x2ab4836770eac35f # load x3 with value 0x2ab4836770eac35f
sw x3, 0(x2) # store 0x2ab4836770eac35f in memory
flw f30, 0(x2) # load 0x2ab4836770eac35f from memory into f30
fmv.x.w x16, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x2617feb597a90c6b # load x3 with value 0x2617feb597a90c6b
sw x3, 0(x2) # store 0x2617feb597a90c6b in memory
flw f18, 0(x2) # load 0x2617feb597a90c6b from memory into f18
fmv.x.w x17, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x995296c29c5728b8 # load x3 with value 0x995296c29c5728b8
sw x3, 0(x2) # store 0x995296c29c5728b8 in memory
flw f25, 0(x2) # load 0x995296c29c5728b8 from memory into f25
fmv.x.w x18, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x84f8d87bd18704a # load x3 with value 0x84f8d87bd18704a
sw x3, 0(x2) # store 0x84f8d87bd18704a in memory
flw f16, 0(x2) # load 0x84f8d87bd18704a from memory into f16
fmv.x.w x19, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x9f61a61cc2cc2207 # load x3 with value 0x9f61a61cc2cc2207
sw x3, 0(x2) # store 0x9f61a61cc2cc2207 in memory
flw f23, 0(x2) # load 0x9f61a61cc2cc2207 from memory into f23
fmv.x.w x20, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x7854cfc784a2a411 # load x3 with value 0x7854cfc784a2a411
sw x3, 0(x2) # store 0x7854cfc784a2a411 in memory
flw f16, 0(x2) # load 0x7854cfc784a2a411 from memory into f16
fmv.x.w x21, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x8f8af0f8e8b07faa # load x3 with value 0x8f8af0f8e8b07faa
sw x3, 0(x2) # store 0x8f8af0f8e8b07faa in memory
flw f10, 0(x2) # load 0x8f8af0f8e8b07faa from memory into f10
fmv.x.w x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x201aeabb2a63739e # load x3 with value 0x201aeabb2a63739e
sw x3, 0(x2) # store 0x201aeabb2a63739e in memory
flw f2, 0(x2) # load 0x201aeabb2a63739e from memory into f2
fmv.x.w x23, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xc698a9aeef2f7e8c # load x3 with value 0xc698a9aeef2f7e8c
sw x3, 0(x2) # store 0xc698a9aeef2f7e8c in memory
flw f12, 0(x2) # load 0xc698a9aeef2f7e8c from memory into f12
fmv.x.w x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0xec7ca7fef1a97ecb # load x3 with value 0xec7ca7fef1a97ecb
sw x3, 0(x2) # store 0xec7ca7fef1a97ecb in memory
flw f17, 0(x2) # load 0xec7ca7fef1a97ecb from memory into f17
fmv.x.w x25, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x115706e74e5bcefe # load x3 with value 0x115706e74e5bcefe
sw x3, 0(x2) # store 0x115706e74e5bcefe in memory
flw f29, 0(x2) # load 0x115706e74e5bcefe from memory into f29
fmv.x.w x26, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x7d801a249f5ccf70 # load x3 with value 0x7d801a249f5ccf70
sw x3, 0(x2) # store 0x7d801a249f5ccf70 in memory
flw f26, 0(x2) # load 0x7d801a249f5ccf70 from memory into f26
fmv.x.w x27, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0xead17bb6dc0fa056 # load x3 with value 0xead17bb6dc0fa056
sw x3, 0(x2) # store 0xead17bb6dc0fa056 in memory
flw f30, 0(x2) # load 0xead17bb6dc0fa056 from memory into f30
fmv.x.w x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x77e618bd55130766 # load x3 with value 0x77e618bd55130766
sw x3, 0(x2) # store 0x77e618bd55130766 in memory
flw f30, 0(x2) # load 0x77e618bd55130766 from memory into f30
fmv.x.w x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x1628262be94b84c # load x3 with value 0x1628262be94b84c
sw x3, 0(x2) # store 0x1628262be94b84c in memory
flw f27, 0(x2) # load 0x1628262be94b84c from memory into f27
fmv.x.w x30, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0x8bfe7f0e36ebb7e0 # load x3 with value 0x8bfe7f0e36ebb7e0
sw x3, 0(x2) # store 0x8bfe7f0e36ebb7e0 in memory
flw f7, 0(x2) # load 0x8bfe7f0e36ebb7e0 from memory into f7
fmv.x.w x31, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x31, x2 # perform first operation
fmv.x.w x12, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x24, x11 # perform first operation
fmv.x.w x5, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x31, x20 # perform first operation
fmv.x.w x12, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f22, f29, f25 # perform first operation
fmv.x.w x22, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x10, x8 # perform first operation
fmv.x.w x8, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x23, x11 # perform first operation
fmv.x.w x29, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x16, x26 # perform first operation
fmv.x.w x21, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x5, x22 # perform first operation
fmv.x.w x13, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x28, x24 # perform first operation
fmv.x.w x2, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x15, x17 # perform first operation
fmv.x.w x25, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x7, x10 # perform first operation
fmv.x.w x26, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x24, x6 # perform first operation
fmv.x.w x12, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x6, x7 # perform first operation
fmv.x.w x6, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x23, x27 # perform first operation
fmv.x.w x27, f12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x2, x8 # perform first operation
fmv.x.w x10, f9 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xdbf651133d79e197 # load x3 with value 0xdbf651133d79e197
sw x3, 0(x2) # store 0xdbf651133d79e197 in memory
flw f0, 0(x2) # load 0xdbf651133d79e197 from memory into f0
fmv.x.w x10, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xfdf3e44cd1523c57 # load x3 with value 0xfdf3e44cd1523c57
sw x3, 0(x2) # store 0xfdf3e44cd1523c57 in memory
flw f1, 0(x2) # load 0xfdf3e44cd1523c57 from memory into f1
fmv.x.w x13, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x26d7f4ab612f16e0 # load x3 with value 0x26d7f4ab612f16e0
sw x3, 0(x2) # store 0x26d7f4ab612f16e0 in memory
flw f2, 0(x2) # load 0x26d7f4ab612f16e0 from memory into f2
fmv.x.w x26, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x273e2c302a82faeb # load x3 with value 0x273e2c302a82faeb
sw x3, 0(x2) # store 0x273e2c302a82faeb in memory
flw f3, 0(x2) # load 0x273e2c302a82faeb from memory into f3
fmv.x.w x27, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7968ce33257a0bc2 # load x3 with value 0x7968ce33257a0bc2
sw x3, 0(x2) # store 0x7968ce33257a0bc2 in memory
flw f4, 0(x2) # load 0x7968ce33257a0bc2 from memory into f4
fmv.x.w x14, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7fce824fbc56bdd8 # load x3 with value 0x7fce824fbc56bdd8
sw x3, 0(x2) # store 0x7fce824fbc56bdd8 in memory
flw f5, 0(x2) # load 0x7fce824fbc56bdd8 from memory into f5
fmv.x.w x10, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x411d555cafda0552 # load x3 with value 0x411d555cafda0552
sw x3, 0(x2) # store 0x411d555cafda0552 in memory
flw f6, 0(x2) # load 0x411d555cafda0552 from memory into f6
fmv.x.w x2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
la x2, scratch
li x3, 0x3c00495a004e2b74 # load x3 with value 0x3c00495a004e2b74
sw x3, 0(x2) # store 0x3c00495a004e2b74 in memory
flw f7, 0(x2) # load 0x3c00495a004e2b74 from memory into f7
fmv.x.w x15, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x36e84e5c0d1678e9 # load x3 with value 0x36e84e5c0d1678e9
sw x3, 0(x2) # store 0x36e84e5c0d1678e9 in memory
flw f8, 0(x2) # load 0x36e84e5c0d1678e9 from memory into f8
fmv.x.w x2, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xbb9fc021c5fc3349 # load x3 with value 0xbb9fc021c5fc3349
sw x3, 0(x2) # store 0xbb9fc021c5fc3349 in memory
flw f9, 0(x2) # load 0xbb9fc021c5fc3349 from memory into f9
fmv.x.w x11, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xf75a51160198d511 # load x3 with value 0xf75a51160198d511
sw x3, 0(x2) # store 0xf75a51160198d511 in memory
flw f10, 0(x2) # load 0xf75a51160198d511 from memory into f10
fmv.x.w x17, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xda348a7e1417361b # load x3 with value 0xda348a7e1417361b
sw x3, 0(x2) # store 0xda348a7e1417361b in memory
flw f11, 0(x2) # load 0xda348a7e1417361b from memory into f11
fmv.x.w x27, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xeb4c78d6caca9567 # load x3 with value 0xeb4c78d6caca9567
sw x3, 0(x2) # store 0xeb4c78d6caca9567 in memory
flw f12, 0(x2) # load 0xeb4c78d6caca9567 from memory into f12
fmv.x.w x12, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xda2f8ac5c933888b # load x3 with value 0xda2f8ac5c933888b
sw x3, 0(x2) # store 0xda2f8ac5c933888b in memory
flw f13, 0(x2) # load 0xda2f8ac5c933888b from memory into f13
fmv.x.w x30, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x3d52c9e2dcfcf662 # load x3 with value 0x3d52c9e2dcfcf662
sw x3, 0(x2) # store 0x3d52c9e2dcfcf662 in memory
flw f14, 0(x2) # load 0x3d52c9e2dcfcf662 from memory into f14
fmv.x.w x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x241032238d15a600 # load x3 with value 0x241032238d15a600
sw x3, 0(x2) # store 0x241032238d15a600 in memory
flw f15, 0(x2) # load 0x241032238d15a600 from memory into f15
fmv.x.w x30, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xb90a9680c7387b2a # load x3 with value 0xb90a9680c7387b2a
sw x3, 0(x2) # store 0xb90a9680c7387b2a in memory
flw f16, 0(x2) # load 0xb90a9680c7387b2a from memory into f16
fmv.x.w x30, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x18a65e38127ee52e # load x3 with value 0x18a65e38127ee52e
sw x3, 0(x2) # store 0x18a65e38127ee52e in memory
flw f17, 0(x2) # load 0x18a65e38127ee52e from memory into f17
fmv.x.w x5, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x52a3678f6ba8225d # load x3 with value 0x52a3678f6ba8225d
sw x3, 0(x2) # store 0x52a3678f6ba8225d in memory
flw f18, 0(x2) # load 0x52a3678f6ba8225d from memory into f18
fmv.x.w x27, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x75f4e877e222a3da # load x3 with value 0x75f4e877e222a3da
sw x3, 0(x2) # store 0x75f4e877e222a3da in memory
flw f19, 0(x2) # load 0x75f4e877e222a3da from memory into f19
fmv.x.w x7, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xdb72dc21ff0c0751 # load x3 with value 0xdb72dc21ff0c0751
sw x3, 0(x2) # store 0xdb72dc21ff0c0751 in memory
flw f20, 0(x2) # load 0xdb72dc21ff0c0751 from memory into f20
fmv.x.w x17, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xe5df13bad3da2713 # load x3 with value 0xe5df13bad3da2713
sw x3, 0(x2) # store 0xe5df13bad3da2713 in memory
flw f21, 0(x2) # load 0xe5df13bad3da2713 from memory into f21
fmv.x.w x22, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x6aa8cb4bad3c66cd # load x3 with value 0x6aa8cb4bad3c66cd
sw x3, 0(x2) # store 0x6aa8cb4bad3c66cd in memory
flw f22, 0(x2) # load 0x6aa8cb4bad3c66cd from memory into f22
fmv.x.w x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x627feb156d173188 # load x3 with value 0x627feb156d173188
sw x3, 0(x2) # store 0x627feb156d173188 in memory
flw f23, 0(x2) # load 0x627feb156d173188 from memory into f23
fmv.x.w x2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x82cdb82f7bd25a01 # load x3 with value 0x82cdb82f7bd25a01
sw x3, 0(x2) # store 0x82cdb82f7bd25a01 in memory
flw f24, 0(x2) # load 0x82cdb82f7bd25a01 from memory into f24
fmv.x.w x21, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xdc5b2feaceaa303b # load x3 with value 0xdc5b2feaceaa303b
sw x3, 0(x2) # store 0xdc5b2feaceaa303b in memory
flw f25, 0(x2) # load 0xdc5b2feaceaa303b from memory into f25
fmv.x.w x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x7dfe4ead97215f6e # load x3 with value 0x7dfe4ead97215f6e
sw x3, 0(x2) # store 0x7dfe4ead97215f6e in memory
flw f26, 0(x2) # load 0x7dfe4ead97215f6e from memory into f26
fmv.x.w x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xbe4ea5c7989a89c6 # load x3 with value 0xbe4ea5c7989a89c6
sw x3, 0(x2) # store 0xbe4ea5c7989a89c6 in memory
flw f27, 0(x2) # load 0xbe4ea5c7989a89c6 from memory into f27
fmv.x.w x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0xca1bcb87b5c67b08 # load x3 with value 0xca1bcb87b5c67b08
sw x3, 0(x2) # store 0xca1bcb87b5c67b08 in memory
flw f28, 0(x2) # load 0xca1bcb87b5c67b08 from memory into f28
fmv.x.w x19, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xf3b7ead515f70bda # load x3 with value 0xf3b7ead515f70bda
sw x3, 0(x2) # store 0xf3b7ead515f70bda in memory
flw f29, 0(x2) # load 0xf3b7ead515f70bda from memory into f29
fmv.x.w x11, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x34fa6ed611ba0e04 # load x3 with value 0x34fa6ed611ba0e04
sw x3, 0(x2) # store 0x34fa6ed611ba0e04 in memory
flw f30, 0(x2) # load 0x34fa6ed611ba0e04 from memory into f30
fmv.x.w x22, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xaa383624469b6b45 # load x3 with value 0xaa383624469b6b45
sw x3, 0(x2) # store 0xaa383624469b6b45 in memory
flw f31, 0(x2) # load 0xaa383624469b6b45 from memory into f31
fmv.x.w x22, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fmv.x.w x25, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fmv.x.w x27, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fmv.x.w x28, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fmv.x.w x3, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fmv.x.w x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fmv.x.w x12, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fmv.x.w x29, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fmv.x.w x17, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fmv.x.w x23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fmv.x.w x6, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fmv.x.w x6, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fmv.x.w x27, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fmv.x.w x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fmv.x.w x19, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fmv.x.w x11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fmv.x.w x31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmv.x.w x23, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fmv.x.w x21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fmv.x.w x25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fmv.x.w x3, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fmv.x.w x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fmv.x.w x12, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f3, 0(x2) # load 0xffffffff from memory into f3
fmv.x.w x16, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmv.x.w x24, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fmv.x.w x10, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
fmv.x.w x11, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fmv.x.w x19, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmv.x.w x2, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

.EQU SIGSIZE,736


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
