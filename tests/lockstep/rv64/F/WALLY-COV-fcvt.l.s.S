///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fcvt.l.s.S
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
li x3, 0xdd118c14f02392e # load x3 with value 0xdd118c14f02392e
sw x3, 0(x2) # store 0xdd118c14f02392e in memory
flw f5, 0(x2) # load 0xdd118c14f02392e from memory into f5
fcvt.l.s x0, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0xe421f5acd562eff2 # load x3 with value 0xe421f5acd562eff2
sw x3, 0(x2) # store 0xe421f5acd562eff2 in memory
flw f12, 0(x2) # load 0xe421f5acd562eff2 from memory into f12
fcvt.l.s x1, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0x5dd690d53dd23ab5 # load x3 with value 0x5dd690d53dd23ab5
sw x3, 0(x2) # store 0x5dd690d53dd23ab5 in memory
flw f26, 0(x2) # load 0x5dd690d53dd23ab5 from memory into f26
fcvt.l.s x2, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0x9f61f4781e412d77 # load x3 with value 0x9f61f4781e412d77
sw x3, 0(x2) # store 0x9f61f4781e412d77 in memory
flw f17, 0(x2) # load 0x9f61f4781e412d77 from memory into f17
fcvt.l.s x3, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa3fd922969569acf # load x3 with value 0xa3fd922969569acf
sw x3, 0(x2) # store 0xa3fd922969569acf in memory
flw f16, 0(x2) # load 0xa3fd922969569acf from memory into f16
fcvt.l.s x4, f16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x56e10ba0694faa1 # load x3 with value 0x56e10ba0694faa1
sw x3, 0(x2) # store 0x56e10ba0694faa1 in memory
flw f14, 0(x2) # load 0x56e10ba0694faa1 from memory into f14
fcvt.l.s x5, f14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3a0cc7be528dfcab # load x3 with value 0x3a0cc7be528dfcab
sw x3, 0(x2) # store 0x3a0cc7be528dfcab in memory
flw f17, 0(x2) # load 0x3a0cc7be528dfcab from memory into f17
fcvt.l.s x6, f17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6f4426f595e1b042 # load x3 with value 0x6f4426f595e1b042
sw x3, 0(x2) # store 0x6f4426f595e1b042 in memory
flw f14, 0(x2) # load 0x6f4426f595e1b042 from memory into f14
fcvt.l.s x7, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xbd1c80036f8a07fd # load x3 with value 0xbd1c80036f8a07fd
sw x3, 0(x2) # store 0xbd1c80036f8a07fd in memory
flw f20, 0(x2) # load 0xbd1c80036f8a07fd from memory into f20
fcvt.l.s x8, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x1aceeb163ba3a601 # load x3 with value 0x1aceeb163ba3a601
sw x3, 0(x2) # store 0x1aceeb163ba3a601 in memory
flw f18, 0(x2) # load 0x1aceeb163ba3a601 from memory into f18
fcvt.l.s x9, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0x3858ea55bb00c436 # load x3 with value 0x3858ea55bb00c436
sw x3, 0(x2) # store 0x3858ea55bb00c436 in memory
flw f10, 0(x2) # load 0x3858ea55bb00c436 from memory into f10
fcvt.l.s x10, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x9c732b32ef38e94d # load x3 with value 0x9c732b32ef38e94d
sw x3, 0(x2) # store 0x9c732b32ef38e94d in memory
flw f10, 0(x2) # load 0x9c732b32ef38e94d from memory into f10
fcvt.l.s x11, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x999a2aa80c53f2b2 # load x3 with value 0x999a2aa80c53f2b2
sw x3, 0(x2) # store 0x999a2aa80c53f2b2 in memory
flw f30, 0(x2) # load 0x999a2aa80c53f2b2 from memory into f30
fcvt.l.s x12, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0xcd8dc6dad7219999 # load x3 with value 0xcd8dc6dad7219999
sw x3, 0(x2) # store 0xcd8dc6dad7219999 in memory
flw f30, 0(x2) # load 0xcd8dc6dad7219999 from memory into f30
fcvt.l.s x13, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xdaa5e54ea0d69217 # load x3 with value 0xdaa5e54ea0d69217
sw x3, 0(x2) # store 0xdaa5e54ea0d69217 in memory
flw f12, 0(x2) # load 0xdaa5e54ea0d69217 from memory into f12
fcvt.l.s x14, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xa1a69cfaa393857f # load x3 with value 0xa1a69cfaa393857f
sw x3, 0(x2) # store 0xa1a69cfaa393857f in memory
flw f26, 0(x2) # load 0xa1a69cfaa393857f from memory into f26
fcvt.l.s x15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x977d6b7ac23b80ac # load x3 with value 0x977d6b7ac23b80ac
sw x3, 0(x2) # store 0x977d6b7ac23b80ac in memory
flw f1, 0(x2) # load 0x977d6b7ac23b80ac from memory into f1
fcvt.l.s x16, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0xa1b08202146a3028 # load x3 with value 0xa1b08202146a3028
sw x3, 0(x2) # store 0xa1b08202146a3028 in memory
flw f23, 0(x2) # load 0xa1b08202146a3028 from memory into f23
fcvt.l.s x17, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0x68e49903443b17d5 # load x3 with value 0x68e49903443b17d5
sw x3, 0(x2) # store 0x68e49903443b17d5 in memory
flw f19, 0(x2) # load 0x68e49903443b17d5 from memory into f19
fcvt.l.s x18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0xf5b434aa985b041 # load x3 with value 0xf5b434aa985b041
sw x3, 0(x2) # store 0xf5b434aa985b041 in memory
flw f26, 0(x2) # load 0xf5b434aa985b041 from memory into f26
fcvt.l.s x19, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0x11e064c995ab933f # load x3 with value 0x11e064c995ab933f
sw x3, 0(x2) # store 0x11e064c995ab933f in memory
flw f13, 0(x2) # load 0x11e064c995ab933f from memory into f13
fcvt.l.s x20, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x3edeffcee3c9030 # load x3 with value 0x3edeffcee3c9030
sw x3, 0(x2) # store 0x3edeffcee3c9030 in memory
flw f3, 0(x2) # load 0x3edeffcee3c9030 from memory into f3
fcvt.l.s x21, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x2f126814220f0915 # load x3 with value 0x2f126814220f0915
sw x3, 0(x2) # store 0x2f126814220f0915 in memory
flw f10, 0(x2) # load 0x2f126814220f0915 from memory into f10
fcvt.l.s x22, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0x282240f973f584b9 # load x3 with value 0x282240f973f584b9
sw x3, 0(x2) # store 0x282240f973f584b9 in memory
flw f26, 0(x2) # load 0x282240f973f584b9 from memory into f26
fcvt.l.s x23, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xfa31944f051b5d52 # load x3 with value 0xfa31944f051b5d52
sw x3, 0(x2) # store 0xfa31944f051b5d52 in memory
flw f9, 0(x2) # load 0xfa31944f051b5d52 from memory into f9
fcvt.l.s x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x89dca0ee7a44ed80 # load x3 with value 0x89dca0ee7a44ed80
sw x3, 0(x2) # store 0x89dca0ee7a44ed80 in memory
flw f2, 0(x2) # load 0x89dca0ee7a44ed80 from memory into f2
fcvt.l.s x25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x1ae49a4a08946991 # load x3 with value 0x1ae49a4a08946991
sw x3, 0(x2) # store 0x1ae49a4a08946991 in memory
flw f11, 0(x2) # load 0x1ae49a4a08946991 from memory into f11
fcvt.l.s x26, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0xd48cf7cf45b7a0b1 # load x3 with value 0xd48cf7cf45b7a0b1
sw x3, 0(x2) # store 0xd48cf7cf45b7a0b1 in memory
flw f16, 0(x2) # load 0xd48cf7cf45b7a0b1 from memory into f16
fcvt.l.s x27, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x9b07cf7a58dd1cf2 # load x3 with value 0x9b07cf7a58dd1cf2
sw x3, 0(x2) # store 0x9b07cf7a58dd1cf2 in memory
flw f30, 0(x2) # load 0x9b07cf7a58dd1cf2 from memory into f30
fcvt.l.s x28, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0x87c22feae2f34fdf # load x3 with value 0x87c22feae2f34fdf
sw x3, 0(x2) # store 0x87c22feae2f34fdf in memory
flw f30, 0(x2) # load 0x87c22feae2f34fdf from memory into f30
fcvt.l.s x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0xb67f2507c5f84011 # load x3 with value 0xb67f2507c5f84011
sw x3, 0(x2) # store 0xb67f2507c5f84011 in memory
flw f8, 0(x2) # load 0xb67f2507c5f84011 from memory into f8
fcvt.l.s x30, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xcbe4714744af4683 # load x3 with value 0xcbe4714744af4683
sw x3, 0(x2) # store 0xcbe4714744af4683 in memory
flw f28, 0(x2) # load 0xcbe4714744af4683 from memory into f28
fcvt.l.s x31, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x1, x28 # perform first operation
fcvt.l.s x23, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x16, x26 # perform first operation
fcvt.l.s x17, f22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x25, x9 # perform first operation
fcvt.l.s x31, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f11, f28, f24 # perform first operation
fcvt.l.s x24, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x8, x17 # perform first operation
fcvt.l.s x17, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x7, x14 # perform first operation
fcvt.l.s x23, f15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x7, x31 # perform first operation
fcvt.l.s x17, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x31, x30 # perform first operation
fcvt.l.s x5, f18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x17, x1 # perform first operation
fcvt.l.s x18, f31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x14, x2 # perform first operation
fcvt.l.s x17, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x29, x3 # perform first operation
fcvt.l.s x18, f7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x9, x6 # perform first operation
fcvt.l.s x30, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x22, x27 # perform first operation
fcvt.l.s x22, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x3, x2 # perform first operation
fcvt.l.s x2, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x7, x19 # perform first operation
fcvt.l.s x6, f1 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xb790529cdf1e3aee # load x3 with value 0xb790529cdf1e3aee
sw x3, 0(x2) # store 0xb790529cdf1e3aee in memory
flw f0, 0(x2) # load 0xb790529cdf1e3aee from memory into f0
fcvt.l.s x17, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 256)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xb2e2b545a2a4dc21 # load x3 with value 0xb2e2b545a2a4dc21
sw x3, 0(x2) # store 0xb2e2b545a2a4dc21 in memory
flw f1, 0(x2) # load 0xb2e2b545a2a4dc21 from memory into f1
fcvt.l.s x11, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0xb65caffcdc259da9 # load x3 with value 0xb65caffcdc259da9
sw x3, 0(x2) # store 0xb65caffcdc259da9 in memory
flw f2, 0(x2) # load 0xb65caffcdc259da9 from memory into f2
fcvt.l.s x24, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x5eb43753e29935e1 # load x3 with value 0x5eb43753e29935e1
sw x3, 0(x2) # store 0x5eb43753e29935e1 in memory
flw f3, 0(x2) # load 0x5eb43753e29935e1 from memory into f3
fcvt.l.s x3, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe51fc05169f09b5 # load x3 with value 0xe51fc05169f09b5
sw x3, 0(x2) # store 0xe51fc05169f09b5 in memory
flw f4, 0(x2) # load 0xe51fc05169f09b5 from memory into f4
fcvt.l.s x14, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 288)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb15f75a4a1a97851 # load x3 with value 0xb15f75a4a1a97851
sw x3, 0(x2) # store 0xb15f75a4a1a97851 in memory
flw f5, 0(x2) # load 0xb15f75a4a1a97851 from memory into f5
fcvt.l.s x31, f5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x577cb55b4d8a66fd # load x3 with value 0x577cb55b4d8a66fd
sw x3, 0(x2) # store 0x577cb55b4d8a66fd in memory
flw f6, 0(x2) # load 0x577cb55b4d8a66fd from memory into f6
fcvt.l.s x8, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 304)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8ca136bf4bf4e3d4 # load x3 with value 0x8ca136bf4bf4e3d4
sw x3, 0(x2) # store 0x8ca136bf4bf4e3d4 in memory
flw f7, 0(x2) # load 0x8ca136bf4bf4e3d4 from memory into f7
fcvt.l.s x15, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xb8f96d8bce2683e8 # load x3 with value 0xb8f96d8bce2683e8
sw x3, 0(x2) # store 0xb8f96d8bce2683e8 in memory
flw f8, 0(x2) # load 0xb8f96d8bce2683e8 from memory into f8
fcvt.l.s x7, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xf6a78c43469cd513 # load x3 with value 0xf6a78c43469cd513
sw x3, 0(x2) # store 0xf6a78c43469cd513 in memory
flw f9, 0(x2) # load 0xf6a78c43469cd513 from memory into f9
fcvt.l.s x13, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x46b8883d0fa77158 # load x3 with value 0x46b8883d0fa77158
sw x3, 0(x2) # store 0x46b8883d0fa77158 in memory
flw f10, 0(x2) # load 0x46b8883d0fa77158 from memory into f10
fcvt.l.s x20, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0xc2f14aaf44d041dc # load x3 with value 0xc2f14aaf44d041dc
sw x3, 0(x2) # store 0xc2f14aaf44d041dc in memory
flw f11, 0(x2) # load 0xc2f14aaf44d041dc from memory into f11
fcvt.l.s x15, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0xb0ec3c6a2a79d2b4 # load x3 with value 0xb0ec3c6a2a79d2b4
sw x3, 0(x2) # store 0xb0ec3c6a2a79d2b4 in memory
flw f12, 0(x2) # load 0xb0ec3c6a2a79d2b4 from memory into f12
fcvt.l.s x15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0xa1d71f406da3fa7d # load x3 with value 0xa1d71f406da3fa7d
sw x3, 0(x2) # store 0xa1d71f406da3fa7d in memory
flw f13, 0(x2) # load 0xa1d71f406da3fa7d from memory into f13
fcvt.l.s x10, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xc0c86018488cb73f # load x3 with value 0xc0c86018488cb73f
sw x3, 0(x2) # store 0xc0c86018488cb73f in memory
flw f14, 0(x2) # load 0xc0c86018488cb73f from memory into f14
fcvt.l.s x12, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xe9fd519ced095c00 # load x3 with value 0xe9fd519ced095c00
sw x3, 0(x2) # store 0xe9fd519ced095c00 in memory
flw f15, 0(x2) # load 0xe9fd519ced095c00 from memory into f15
fcvt.l.s x15, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x29b81244471333fb # load x3 with value 0x29b81244471333fb
sw x3, 0(x2) # store 0x29b81244471333fb in memory
flw f16, 0(x2) # load 0x29b81244471333fb from memory into f16
fcvt.l.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x4e7c4c397324fd29 # load x3 with value 0x4e7c4c397324fd29
sw x3, 0(x2) # store 0x4e7c4c397324fd29 in memory
flw f17, 0(x2) # load 0x4e7c4c397324fd29 from memory into f17
fcvt.l.s x17, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x47a900cf1bd8fbd8 # load x3 with value 0x47a900cf1bd8fbd8
sw x3, 0(x2) # store 0x47a900cf1bd8fbd8 in memory
flw f18, 0(x2) # load 0x47a900cf1bd8fbd8 from memory into f18
fcvt.l.s x17, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xca3a9158806d752b # load x3 with value 0xca3a9158806d752b
sw x3, 0(x2) # store 0xca3a9158806d752b in memory
flw f19, 0(x2) # load 0xca3a9158806d752b from memory into f19
fcvt.l.s x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xb5b4ef8b3d7b66af # load x3 with value 0xb5b4ef8b3d7b66af
sw x3, 0(x2) # store 0xb5b4ef8b3d7b66af in memory
flw f20, 0(x2) # load 0xb5b4ef8b3d7b66af from memory into f20
fcvt.l.s x15, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xa60d35222edd93dc # load x3 with value 0xa60d35222edd93dc
sw x3, 0(x2) # store 0xa60d35222edd93dc in memory
flw f21, 0(x2) # load 0xa60d35222edd93dc from memory into f21
fcvt.l.s x3, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x47478e91e233ac88 # load x3 with value 0x47478e91e233ac88
sw x3, 0(x2) # store 0x47478e91e233ac88 in memory
flw f22, 0(x2) # load 0x47478e91e233ac88 from memory into f22
fcvt.l.s x22, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x58c49022d20e3507 # load x3 with value 0x58c49022d20e3507
sw x3, 0(x2) # store 0x58c49022d20e3507 in memory
flw f23, 0(x2) # load 0x58c49022d20e3507 from memory into f23
fcvt.l.s x11, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x9853637c2f446e3e # load x3 with value 0x9853637c2f446e3e
sw x3, 0(x2) # store 0x9853637c2f446e3e in memory
flw f24, 0(x2) # load 0x9853637c2f446e3e from memory into f24
fcvt.l.s x14, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x28aafb1cc0c86b00 # load x3 with value 0x28aafb1cc0c86b00
sw x3, 0(x2) # store 0x28aafb1cc0c86b00 in memory
flw f25, 0(x2) # load 0x28aafb1cc0c86b00 from memory into f25
fcvt.l.s x14, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x88817877a57883d2 # load x3 with value 0x88817877a57883d2
sw x3, 0(x2) # store 0x88817877a57883d2 in memory
flw f26, 0(x2) # load 0x88817877a57883d2 from memory into f26
fcvt.l.s x22, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xe9c1d84483737224 # load x3 with value 0xe9c1d84483737224
sw x3, 0(x2) # store 0xe9c1d84483737224 in memory
flw f27, 0(x2) # load 0xe9c1d84483737224 from memory into f27
fcvt.l.s x10, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x220e5762cb6da9a5 # load x3 with value 0x220e5762cb6da9a5
sw x3, 0(x2) # store 0x220e5762cb6da9a5 in memory
flw f28, 0(x2) # load 0x220e5762cb6da9a5 from memory into f28
fcvt.l.s x30, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x2bd377002b46d4d5 # load x3 with value 0x2bd377002b46d4d5
sw x3, 0(x2) # store 0x2bd377002b46d4d5 in memory
flw f29, 0(x2) # load 0x2bd377002b46d4d5 from memory into f29
fcvt.l.s x15, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xd665d732008a793 # load x3 with value 0xd665d732008a793
sw x3, 0(x2) # store 0xd665d732008a793 in memory
flw f30, 0(x2) # load 0xd665d732008a793 from memory into f30
fcvt.l.s x29, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xd03e1f8dc16cab7a # load x3 with value 0xd03e1f8dc16cab7a
sw x3, 0(x2) # store 0xd03e1f8dc16cab7a in memory
flw f31, 0(x2) # load 0xd03e1f8dc16cab7a from memory into f31
fcvt.l.s x12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fcvt.l.s x21, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fcvt.l.s x12, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fcvt.l.s x7, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fcvt.l.s x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fcvt.l.s x30, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fcvt.l.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fcvt.l.s x8, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fcvt.l.s x20, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fcvt.l.s x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fcvt.l.s x31, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fcvt.l.s x1, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fcvt.l.s x22, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fcvt.l.s x11, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fcvt.l.s x6, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fcvt.l.s x11, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fcvt.l.s x24, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fcvt.l.s x26, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 648)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fcvt.l.s x14, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fcvt.l.s x21, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fcvt.l.s x15, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fcvt.l.s x24, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fcvt.l.s x12, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 688)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fcvt.l.s x7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fcvt.l.s x3, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
fcvt.l.s x9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fcvt.l.s x24, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fcvt.l.s x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 728)

# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fcvt.l.s x17, f16, dyn # perform operation
fcvt.l.s x17, f16, rdn # perform operation
fcvt.l.s x17, f16, rmm # perform operation
fcvt.l.s x17, f16, rne # perform operation
fcvt.l.s x17, f16, rtz # perform operation
fcvt.l.s x17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x17, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fcvt.l.s x24, f14, dyn # perform operation
fcvt.l.s x24, f14, rdn # perform operation
fcvt.l.s x24, f14, rmm # perform operation
fcvt.l.s x24, f14, rne # perform operation
fcvt.l.s x24, f14, rtz # perform operation
fcvt.l.s x24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 800)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x24, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fcvt.l.s x7, f10, dyn # perform operation
fcvt.l.s x7, f10, rdn # perform operation
fcvt.l.s x7, f10, rmm # perform operation
fcvt.l.s x7, f10, rne # perform operation
fcvt.l.s x7, f10, rtz # perform operation
fcvt.l.s x7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 816)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x7, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 848)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fcvt.l.s x8, f15, dyn # perform operation
fcvt.l.s x8, f15, rdn # perform operation
fcvt.l.s x8, f15, rmm # perform operation
fcvt.l.s x8, f15, rne # perform operation
fcvt.l.s x8, f15, rtz # perform operation
fcvt.l.s x8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fcvt.l.s x17, f6, dyn # perform operation
fcvt.l.s x17, f6, rdn # perform operation
fcvt.l.s x17, f6, rmm # perform operation
fcvt.l.s x17, f6, rne # perform operation
fcvt.l.s x17, f6, rtz # perform operation
fcvt.l.s x17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x17, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fcvt.l.s x26, f20, dyn # perform operation
fcvt.l.s x26, f20, rdn # perform operation
fcvt.l.s x26, f20, rmm # perform operation
fcvt.l.s x26, f20, rne # perform operation
fcvt.l.s x26, f20, rtz # perform operation
fcvt.l.s x26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x26, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fcvt.l.s x5, f28, dyn # perform operation
fcvt.l.s x5, f28, rdn # perform operation
fcvt.l.s x5, f28, rmm # perform operation
fcvt.l.s x5, f28, rne # perform operation
fcvt.l.s x5, f28, rtz # perform operation
fcvt.l.s x5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1008)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fcvt.l.s x18, f10, dyn # perform operation
fcvt.l.s x18, f10, rdn # perform operation
fcvt.l.s x18, f10, rmm # perform operation
fcvt.l.s x18, f10, rne # perform operation
fcvt.l.s x18, f10, rtz # perform operation
fcvt.l.s x18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x18, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fcvt.l.s x19, f6, dyn # perform operation
fcvt.l.s x19, f6, rdn # perform operation
fcvt.l.s x19, f6, rmm # perform operation
fcvt.l.s x19, f6, rne # perform operation
fcvt.l.s x19, f6, rtz # perform operation
fcvt.l.s x19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x19, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fcvt.l.s x5, f18, dyn # perform operation
fcvt.l.s x5, f18, rdn # perform operation
fcvt.l.s x5, f18, rmm # perform operation
fcvt.l.s x5, f18, rne # perform operation
fcvt.l.s x5, f18, rtz # perform operation
fcvt.l.s x5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x5, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x5, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x5, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x5, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1120)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x5, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1128)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fcvt.l.s x6, f19, dyn # perform operation
fcvt.l.s x6, f19, rdn # perform operation
fcvt.l.s x6, f19, rmm # perform operation
fcvt.l.s x6, f19, rne # perform operation
fcvt.l.s x6, f19, rtz # perform operation
fcvt.l.s x6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fcvt.l.s x1, f13, dyn # perform operation
fcvt.l.s x1, f13, rdn # perform operation
fcvt.l.s x1, f13, rmm # perform operation
fcvt.l.s x1, f13, rne # perform operation
fcvt.l.s x1, f13, rtz # perform operation
fcvt.l.s x1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x1, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fcvt.l.s x18, f21, dyn # perform operation
fcvt.l.s x18, f21, rdn # perform operation
fcvt.l.s x18, f21, rmm # perform operation
fcvt.l.s x18, f21, rne # perform operation
fcvt.l.s x18, f21, rtz # perform operation
fcvt.l.s x18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1232)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fcvt.l.s x3, f15, dyn # perform operation
fcvt.l.s x3, f15, rdn # perform operation
fcvt.l.s x3, f15, rmm # perform operation
fcvt.l.s x3, f15, rne # perform operation
fcvt.l.s x3, f15, rtz # perform operation
fcvt.l.s x3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1256)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1280)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x3, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fcvt.l.s x6, f12, dyn # perform operation
fcvt.l.s x6, f12, rdn # perform operation
fcvt.l.s x6, f12, rmm # perform operation
fcvt.l.s x6, f12, rne # perform operation
fcvt.l.s x6, f12, rtz # perform operation
fcvt.l.s x6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1312)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1320)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x6, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fcvt.l.s x5, f10, dyn # perform operation
fcvt.l.s x5, f10, rdn # perform operation
fcvt.l.s x5, f10, rmm # perform operation
fcvt.l.s x5, f10, rne # perform operation
fcvt.l.s x5, f10, rtz # perform operation
fcvt.l.s x5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1344)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x5, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1368)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fcvt.l.s x20, f1, dyn # perform operation
fcvt.l.s x20, f1, rdn # perform operation
fcvt.l.s x20, f1, rmm # perform operation
fcvt.l.s x20, f1, rne # perform operation
fcvt.l.s x20, f1, rtz # perform operation
fcvt.l.s x20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1400)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x20, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1408)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fcvt.l.s x16, f18, dyn # perform operation
fcvt.l.s x16, f18, rdn # perform operation
fcvt.l.s x16, f18, rmm # perform operation
fcvt.l.s x16, f18, rne # perform operation
fcvt.l.s x16, f18, rtz # perform operation
fcvt.l.s x16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x16, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1416)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x16, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x16, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1432)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x16, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1440)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x16, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1448)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fcvt.l.s x17, f8, dyn # perform operation
fcvt.l.s x17, f8, rdn # perform operation
fcvt.l.s x17, f8, rmm # perform operation
fcvt.l.s x17, f8, rne # perform operation
fcvt.l.s x17, f8, rtz # perform operation
fcvt.l.s x17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1488)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fcvt.l.s x13, f26, dyn # perform operation
fcvt.l.s x13, f26, rdn # perform operation
fcvt.l.s x13, f26, rmm # perform operation
fcvt.l.s x13, f26, rne # perform operation
fcvt.l.s x13, f26, rtz # perform operation
fcvt.l.s x13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fcvt.l.s x9, f22, dyn # perform operation
fcvt.l.s x9, f22, rdn # perform operation
fcvt.l.s x9, f22, rmm # perform operation
fcvt.l.s x9, f22, rne # perform operation
fcvt.l.s x9, f22, rtz # perform operation
fcvt.l.s x9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1536)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1552)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1560)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x9, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fcvt.l.s x23, f16, dyn # perform operation
fcvt.l.s x23, f16, rdn # perform operation
fcvt.l.s x23, f16, rmm # perform operation
fcvt.l.s x23, f16, rne # perform operation
fcvt.l.s x23, f16, rtz # perform operation
fcvt.l.s x23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1576)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1600)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x23, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fcvt.l.s x8, f2, dyn # perform operation
fcvt.l.s x8, f2, rdn # perform operation
fcvt.l.s x8, f2, rmm # perform operation
fcvt.l.s x8, f2, rne # perform operation
fcvt.l.s x8, f2, rtz # perform operation
fcvt.l.s x8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1616)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1624)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1632)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1640)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x8, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fcvt.l.s x7, f21, dyn # perform operation
fcvt.l.s x7, f21, rdn # perform operation
fcvt.l.s x7, f21, rmm # perform operation
fcvt.l.s x7, f21, rne # perform operation
fcvt.l.s x7, f21, rtz # perform operation
fcvt.l.s x7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1656)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1664)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1672)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1680)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x7, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1688)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fcvt.l.s x29, f1, dyn # perform operation
fcvt.l.s x29, f1, rdn # perform operation
fcvt.l.s x29, f1, rmm # perform operation
fcvt.l.s x29, f1, rne # perform operation
fcvt.l.s x29, f1, rtz # perform operation
fcvt.l.s x29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1696)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1712)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1720)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fcvt.l.s x19, f8, dyn # perform operation
fcvt.l.s x19, f8, rdn # perform operation
fcvt.l.s x19, f8, rmm # perform operation
fcvt.l.s x19, f8, rne # perform operation
fcvt.l.s x19, f8, rtz # perform operation
fcvt.l.s x19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1736)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1744)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1752)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1760)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1768)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fcvt.l.s x11, f30, dyn # perform operation
fcvt.l.s x11, f30, rdn # perform operation
fcvt.l.s x11, f30, rmm # perform operation
fcvt.l.s x11, f30, rne # perform operation
fcvt.l.s x11, f30, rtz # perform operation
fcvt.l.s x11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1776)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1784)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x11, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)


# Testcase cr_fs1_corners_frm (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fcvt.l.s x8, f10, dyn # perform operation
fcvt.l.s x8, f10, rdn # perform operation
fcvt.l.s x8, f10, rmm # perform operation
fcvt.l.s x8, f10, rne # perform operation
fcvt.l.s x8, f10, rtz # perform operation
fcvt.l.s x8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x8, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)


# Testcase cp_frm
la x2, scratch
li x3, 0x931c3a83faec65e2 # load x3 with value 0x931c3a83faec65e2
sw x3, 0(x2) # store 0x931c3a83faec65e2 in memory
flw f10, 0(x2) # load 0x931c3a83faec65e2 from memory into f10
fcvt.l.s x31, f10, dyn # perform operation
fcvt.l.s x31, f10, rdn # perform operation
fcvt.l.s x31, f10, rmm # perform operation
fcvt.l.s x31, f10, rne # perform operation
fcvt.l.s x31, f10, rtz # perform operation
fcvt.l.s x31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x31, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x31, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x31, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x31, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x31, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)


.EQU SIGSIZE,1896


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
