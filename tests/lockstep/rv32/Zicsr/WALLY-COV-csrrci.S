///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zicsr/WALLY-COV-csrrci.S
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
li x22, 0xc3a5fbc3 # initialize rs1
csrrci x0, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x7f61242d # initialize rs1
csrrci x1, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xe6ec5511 # initialize rs1
csrrci x2, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa68d612c # initialize rs1
csrrci x3, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xc86ae0e9 # initialize rs1
csrrci x4, mscratch, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x34ccb5c2 # initialize rs1
csrrci x5, mscratch, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x1ae6b123 # initialize rs1
csrrci x6, mscratch, 22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xeaf03eff # initialize rs1
csrrci x7, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x59561fcf # initialize rs1
csrrci x8, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xdc56b2f8 # initialize rs1
csrrci x9, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x330cd5d9 # initialize rs1
csrrci x10, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x982321ad # initialize rs1
csrrci x11, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0xeadc2ab5 # initialize rs1
csrrci x12, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x5f4acc8a # initialize rs1
csrrci x13, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x75f34060 # initialize rs1
csrrci x14, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x8b98b78c # initialize rs1
csrrci x15, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
li x20, 0xb3643f67 # initialize rs1
csrrci x16, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x13bac282 # initialize rs1
csrrci x17, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0xa372a3b1 # initialize rs1
csrrci x18, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0x8e930d23 # initialize rs1
csrrci x19, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
li x19, 0x43d61406 # initialize rs1
csrrci x20, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0xdfab69db # initialize rs1
csrrci x21, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1d8fa053 # initialize rs1
csrrci x22, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x905c673e # initialize rs1
csrrci x23, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xed6a12cd # initialize rs1
csrrci x24, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x263c9b42 # initialize rs1
csrrci x25, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x7f473795 # initialize rs1
csrrci x26, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x0d23f075 # initialize rs1
csrrci x27, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x4e9e6a7a # initialize rs1
csrrci x28, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
li x14, 0xce4437c5 # initialize rs1
csrrci x29, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x02824286 # initialize rs1
csrrci x30, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x9a9fc0f6 # initialize rs1
csrrci x31, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_uimm_5 (Test bit = 0)
li x11, 0xd17836ab # initialize rs1
csrrci x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_uimm_5 (Test bit = 1)
li x14, 0x78ae15e0 # initialize rs1
csrrci x12, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_uimm_5 (Test bit = 2)
li x9, 0xda3dc783 # initialize rs1
csrrci x31, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_uimm_5 (Test bit = 3)
li x18, 0x3a8481df # initialize rs1
csrrci x11, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_uimm_5 (Test bit = 4)
li x27, 0x1827ea04 # initialize rs1
csrrci x29, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_uimm_5 (Test bit = 5)
li x24, 0xe6abf9fb # initialize rs1
csrrci x21, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 148)

# Testcase cp_uimm_5 (Test bit = 6)
li x31, 0x23229178 # initialize rs1
csrrci x3, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_uimm_5 (Test bit = 7)
li x31, 0x4233a438 # initialize rs1
csrrci x24, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 156)

# Testcase cp_uimm_5 (Test bit = 8)
li x13, 0xdaca37ac # initialize rs1
csrrci x16, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cp_uimm_5 (Test bit = 9)
li x7, 0x4d33f06f # initialize rs1
csrrci x19, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 164)

# Testcase cp_uimm_5 (Test bit = 10)
li x25, 0x653caee5 # initialize rs1
csrrci x20, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_uimm_5 (Test bit = 11)
li x10, 0x796e7064 # initialize rs1
csrrci x25, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 172)

# Testcase cp_uimm_5 (Test bit = 12)
li x13, 0x116234bc # initialize rs1
csrrci x26, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_uimm_5 (Test bit = 13)
li x18, 0x1219b0cb # initialize rs1
csrrci x27, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_uimm_5 (Test bit = 14)
li x3, 0x406ec979 # initialize rs1
csrrci x13, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_uimm_5 (Test bit = 15)
li x8, 0x6947ceb1 # initialize rs1
csrrci x10, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_uimm_5 (Test bit = 16)
li x25, 0xe4f81fc9 # initialize rs1
csrrci x27, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_uimm_5 (Test bit = 17)
li x7, 0x24912871 # initialize rs1
csrrci x21, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 196)

# Testcase cp_uimm_5 (Test bit = 18)
li x24, 0x8971fc81 # initialize rs1
csrrci x23, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_uimm_5 (Test bit = 19)
li x11, 0x19a32a8d # initialize rs1
csrrci x10, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cp_uimm_5 (Test bit = 20)
li x8, 0x03dfa39e # initialize rs1
csrrci x16, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_uimm_5 (Test bit = 21)
li x17, 0xf2424112 # initialize rs1
csrrci x7, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 212)

# Testcase cp_uimm_5 (Test bit = 22)
li x11, 0x05ab5350 # initialize rs1
csrrci x17, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_uimm_5 (Test bit = 23)
li x16, 0xc69d477c # initialize rs1
csrrci x27, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 220)

# Testcase cp_uimm_5 (Test bit = 24)
li x22, 0x8aca56ed # initialize rs1
csrrci x18, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_uimm_5 (Test bit = 25)
li x7, 0x9e0a3397 # initialize rs1
csrrci x22, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 228)

# Testcase cp_uimm_5 (Test bit = 26)
li x19, 0x9704915d # initialize rs1
csrrci x1, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cp_uimm_5 (Test bit = 27)
li x28, 0xa5d17843 # initialize rs1
csrrci x30, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 236)

# Testcase cp_uimm_5 (Test bit = 28)
li x2, 0xc12d521c # initialize rs1
csrrci x5, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cp_uimm_5 (Test bit = 29)
li x8, 0xf811965a # initialize rs1
csrrci x20, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 244)

# Testcase cp_uimm_5 (Test bit = 30)
li x17, 0x7cf697de # initialize rs1
csrrci x19, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_uimm_5 (Test bit = 31)
li x24, 0x0310e73e # initialize rs1
csrrci x18, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 252)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x26 # perform first operation
csrrci x16, mscratch, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x31, x18 # perform first operation
csrrci x10, mscratch, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x11 # perform first operation
csrrci x9, mscratch, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x6, x5 # perform first operation
csrrci x14, mscratch, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x2, x22 # perform first operation
csrrci x5, mscratch, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x6, x18 # perform first operation
csrrci x7, mscratch, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x25, x10 # perform first operation
csrrci x25, mscratch, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x24, x5 # perform first operation
csrrci x5, mscratch, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x14, x9 # perform first operation
csrrci x17, mscratch, 6 # perform second (triggering) operation

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
