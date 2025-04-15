///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zicsr/WALLY-COV-csrrwi.S
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

    
# Testcase cp_rd (Test destination rd = x0)
li x8, 0x716572d2 # initialize rs1
csrrwi x0, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x1b4b39fe # initialize rs1
csrrwi x1, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
li x1, 0xf7ee0ad2 # initialize rs1
csrrwi x2, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0x930d2fe1 # initialize rs1
csrrwi x3, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x609ed1c4 # initialize rs1
csrrwi x4, mscratch, 9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x124f760b # initialize rs1
csrrwi x5, mscratch, 25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x3517e6ec # initialize rs1
csrrwi x6, mscratch, 8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xf368f4c2 # initialize rs1
csrrwi x7, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x2a2d751a # initialize rs1
csrrwi x8, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xf809fd6e # initialize rs1
csrrwi x9, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x5247ae3f # initialize rs1
csrrwi x10, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0xc6770df7 # initialize rs1
csrrwi x11, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x65a81140 # initialize rs1
csrrwi x12, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0xbd1e9aad # initialize rs1
csrrwi x13, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0x9322e57c # initialize rs1
csrrwi x14, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x8106f9f5 # initialize rs1
csrrwi x15, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xf2a2eaae # initialize rs1
csrrwi x16, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfd15fed4 # initialize rs1
csrrwi x17, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xb09ba707 # initialize rs1
csrrwi x18, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0x1b598b54 # initialize rs1
csrrwi x19, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x7d7b8c04 # initialize rs1
csrrwi x20, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x6808a4db # initialize rs1
csrrwi x21, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0x935f12f5 # initialize rs1
csrrwi x22, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x606a2f54 # initialize rs1
csrrwi x23, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
li x10, 0x408ab3f6 # initialize rs1
csrrwi x24, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xd2ae2f41 # initialize rs1
csrrwi x25, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x87a40b8a # initialize rs1
csrrwi x26, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0xf6ccbfae # initialize rs1
csrrwi x27, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xd4b9057e # initialize rs1
csrrwi x28, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x66bf34af # initialize rs1
csrrwi x29, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0x037b2729 # initialize rs1
csrrwi x30, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x58b51081 # initialize rs1
csrrwi x31, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_uimm_5 (Test bit = 0)
li x16, 0xf4369069 # initialize rs1
csrrwi x20, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_uimm_5 (Test bit = 1)
li x29, 0xb865b1fb # initialize rs1
csrrwi x9, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_uimm_5 (Test bit = 2)
li x16, 0x7e6ed134 # initialize rs1
csrrwi x25, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_uimm_5 (Test bit = 3)
li x7, 0x29afe670 # initialize rs1
csrrwi x22, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 140)

# Testcase cp_uimm_5 (Test bit = 4)
li x24, 0x9ac7225c # initialize rs1
csrrwi x21, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_uimm_5 (Test bit = 5)
li x26, 0xa39532a7 # initialize rs1
csrrwi x29, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 148)

# Testcase cp_uimm_5 (Test bit = 6)
li x20, 0x27084a70 # initialize rs1
csrrwi x23, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_uimm_5 (Test bit = 7)
li x30, 0x0ec59200 # initialize rs1
csrrwi x31, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 156)

# Testcase cp_uimm_5 (Test bit = 8)
li x15, 0x0c1d7d85 # initialize rs1
csrrwi x8, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_uimm_5 (Test bit = 9)
li x23, 0xeb4f1d92 # initialize rs1
csrrwi x16, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 164)

# Testcase cp_uimm_5 (Test bit = 10)
li x10, 0x327ce778 # initialize rs1
csrrwi x14, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_uimm_5 (Test bit = 11)
li x15, 0x90cdcb2e # initialize rs1
csrrwi x25, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 172)

# Testcase cp_uimm_5 (Test bit = 12)
li x29, 0x0310a3f3 # initialize rs1
csrrwi x16, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_uimm_5 (Test bit = 13)
li x22, 0x363bdc6d # initialize rs1
csrrwi x15, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_uimm_5 (Test bit = 14)
li x22, 0x18072d54 # initialize rs1
csrrwi x8, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_uimm_5 (Test bit = 15)
li x24, 0x11c27c82 # initialize rs1
csrrwi x12, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_uimm_5 (Test bit = 16)
li x9, 0xc4c364ff # initialize rs1
csrrwi x13, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_uimm_5 (Test bit = 17)
li x28, 0xc97d1259 # initialize rs1
csrrwi x30, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 196)

# Testcase cp_uimm_5 (Test bit = 18)
li x8, 0x0ca1e90c # initialize rs1
csrrwi x14, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_uimm_5 (Test bit = 19)
li x12, 0x3f1a4e82 # initialize rs1
csrrwi x30, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_uimm_5 (Test bit = 20)
li x16, 0xd8bfec93 # initialize rs1
csrrwi x8, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_uimm_5 (Test bit = 21)
li x6, 0x9d40ca36 # initialize rs1
csrrwi x5, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 212)

# Testcase cp_uimm_5 (Test bit = 22)
li x7, 0x045792f5 # initialize rs1
csrrwi x18, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_uimm_5 (Test bit = 23)
li x24, 0x2bdeebe7 # initialize rs1
csrrwi x30, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 220)

# Testcase cp_uimm_5 (Test bit = 24)
li x25, 0x4856be7b # initialize rs1
csrrwi x17, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_uimm_5 (Test bit = 25)
li x7, 0x1936c229 # initialize rs1
csrrwi x14, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 228)

# Testcase cp_uimm_5 (Test bit = 26)
li x11, 0x07b328c8 # initialize rs1
csrrwi x12, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_uimm_5 (Test bit = 27)
li x7, 0x8a5aedf5 # initialize rs1
csrrwi x13, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_uimm_5 (Test bit = 28)
li x9, 0x074c8c12 # initialize rs1
csrrwi x6, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_uimm_5 (Test bit = 29)
li x3, 0xaa2cbacf # initialize rs1
csrrwi x7, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_uimm_5 (Test bit = 30)
li x18, 0x7c04e70d # initialize rs1
csrrwi x17, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_uimm_5 (Test bit = 31)
li x10, 0x173e8b8d # initialize rs1
csrrwi x22, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 252)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x28, x22 # perform first operation
csrrwi x10, mscratch, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x14, x25 # perform first operation
csrrwi x8, mscratch, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x2, x25 # perform first operation
csrrwi x13, mscratch, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x1, x17 # perform first operation
csrrwi x24, mscratch, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x6, x2 # perform first operation
csrrwi x29, mscratch, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x15, x23 # perform first operation
csrrwi x27, mscratch, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x12, x20 # perform first operation
csrrwi x12, mscratch, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x26, x14 # perform first operation
csrrwi x14, mscratch, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x1, x7 # perform first operation
csrrwi x29, mscratch, 30 # perform second (triggering) operation

.EQU SIGSIZE,256


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
