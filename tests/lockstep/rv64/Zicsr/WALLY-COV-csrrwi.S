///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicsr/WALLY-COV-csrrwi.S
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
li x8, 0xaebe03419518555f # initialize rs1
csrrwi x0, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0x95c09471693336f5 # initialize rs1
csrrwi x1, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
li x1, 0x4423de1eae66d27c # initialize rs1
csrrwi x2, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4b859908b4ede354 # initialize rs1
csrrwi x3, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x2cc74c3efa799fbc # initialize rs1
csrrwi x4, mscratch, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x4a496daf0473e08f # initialize rs1
csrrwi x5, mscratch, 18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xaeaef161e2f07c1e # initialize rs1
csrrwi x6, mscratch, 30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xef700d8f5d24f7eb # initialize rs1
csrrwi x7, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0xc6770df788567a59 # initialize rs1
csrrwi x8, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x5153e42b65a81140 # initialize rs1
csrrwi x9, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x899510d87fce3649 # initialize rs1
csrrwi x10, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0xdad274cdc5c60ee1 # initialize rs1
csrrwi x11, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
li x19, 0xff337da5d54790a9 # initialize rs1
csrrwi x12, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x3d03e281a4c29854 # initialize rs1
csrrwi x13, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0x17bb39121b598b54 # initialize rs1
csrrwi x14, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0xb80fda7cc9aef6a2 # initialize rs1
csrrwi x15, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x976f51635bb7fde8 # initialize rs1
csrrwi x16, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xcc206a5434ed7a18 # initialize rs1
csrrwi x17, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x408ab3f616cd797a # initialize rs1
csrrwi x18, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0xbe2cf4c2e9769691 # initialize rs1
csrrwi x19, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0xc9ba8301d81373a1 # initialize rs1
csrrwi x20, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xeae350722c50fdcb # initialize rs1
csrrwi x21, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0xf0063af4d68473bf # initialize rs1
csrrwi x22, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xa11a42396e6c2983 # initialize rs1
csrrwi x23, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x1e8a39d14a0228ee # initialize rs1
csrrwi x24, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x50f7948132aee512 # initialize rs1
csrrwi x25, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x6b984e9cbe510cd2 # initialize rs1
csrrwi x26, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x8a862eeced278ea5 # initialize rs1
csrrwi x27, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0xc6b80d67dac45236 # initialize rs1
csrrwi x28, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x584115afd4b9ead9 # initialize rs1
csrrwi x29, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
li x15, 0xdbd709ea8c87aa70 # initialize rs1
csrrwi x30, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x19cd8566b64bccad # initialize rs1
csrrwi x31, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_uimm_5 (Test bit = 0)
li x16, 0xf4369069e464fd7d # initialize rs1
csrrwi x20, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_uimm_5 (Test bit = 1)
li x25, 0xc372b6741c655a48 # initialize rs1
csrrwi x18, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_uimm_5 (Test bit = 2)
li x22, 0xc85f80ea9c5adb2f # initialize rs1
csrrwi x8, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_uimm_5 (Test bit = 3)
li x31, 0xcd6d80282ee43b39 # initialize rs1
csrrwi x9, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_uimm_5 (Test bit = 4)
li x5, 0x4cebb8e6dc3e6154 # initialize rs1
csrrwi x31, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cp_uimm_5 (Test bit = 5)
li x7, 0xdc9ad19474ea3c11 # initialize rs1
csrrwi x10, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_uimm_5 (Test bit = 6)
li x16, 0x4d06c7fee3891330 # initialize rs1
csrrwi x7, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_uimm_5 (Test bit = 7)
li x8, 0x775a67608765bd2d # initialize rs1
csrrwi x5, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_uimm_5 (Test bit = 8)
li x11, 0xf17eba3f2fc70003 # initialize rs1
csrrwi x17, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_uimm_5 (Test bit = 9)
li x8, 0x18072d54d44c96c3 # initialize rs1
csrrwi x22, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_uimm_5 (Test bit = 10)
li x6, 0x276e5665010a57ca # initialize rs1
csrrwi x19, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 336)

# Testcase cp_uimm_5 (Test bit = 11)
li x29, 0x2e44c88d6937c27d # initialize rs1
csrrwi x28, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 344)

# Testcase cp_uimm_5 (Test bit = 12)
li x30, 0x97c857bb7a5acaea # initialize rs1
csrrwi x18, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cp_uimm_5 (Test bit = 13)
li x9, 0x4e4004c6e071cb0d # initialize rs1
csrrwi x19, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 360)

# Testcase cp_uimm_5 (Test bit = 14)
li x3, 0x413b6a852883e2de # initialize rs1
csrrwi x8, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cp_uimm_5 (Test bit = 15)
li x6, 0x045792f58eeb6202 # initialize rs1
csrrwi x3, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_uimm_5 (Test bit = 16)
li x9, 0x9d8676ef88a76653 # initialize rs1
csrrwi x2, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_uimm_5 (Test bit = 17)
li x10, 0xecfd745b35d205ba # initialize rs1
csrrwi x14, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_uimm_5 (Test bit = 18)
li x24, 0x7e2d479b80fde1e9 # initialize rs1
csrrwi x1, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 400)

# Testcase cp_uimm_5 (Test bit = 19)
li x25, 0xd80489d3f57b3f3e # initialize rs1
csrrwi x26, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_uimm_5 (Test bit = 20)
li x7, 0x9f58420d7a97cb8a # initialize rs1
csrrwi x21, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_uimm_5 (Test bit = 21)
li x11, 0x173e8b8daa6c41b5 # initialize rs1
csrrwi x21, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_uimm_5 (Test bit = 22)
li x29, 0xb71e3abda4e80db4 # initialize rs1
csrrwi x2, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_uimm_5 (Test bit = 23)
li x15, 0xdf91fcbc7c1a8117 # initialize rs1
csrrwi x16, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_uimm_5 (Test bit = 24)
li x2, 0x266765635b90233e # initialize rs1
csrrwi x5, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_uimm_5 (Test bit = 25)
li x31, 0x1c38188c3a4854e7 # initialize rs1
csrrwi x5, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_uimm_5 (Test bit = 26)
li x20, 0x721cecfe6a51ef6b # initialize rs1
csrrwi x28, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_uimm_5 (Test bit = 27)
li x25, 0x30dc021e3962031e # initialize rs1
csrrwi x7, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cp_uimm_5 (Test bit = 28)
li x12, 0x3e62d6387833cf9d # initialize rs1
csrrwi x1, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cp_uimm_5 (Test bit = 29)
li x25, 0x64189bcf6d1de088 # initialize rs1
csrrwi x18, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cp_uimm_5 (Test bit = 30)
li x8, 0xb4dd9636131f4689 # initialize rs1
csrrwi x9, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_uimm_5 (Test bit = 31)
li x22, 0x44833c3933f48987 # initialize rs1
csrrwi x19, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x28, x22 # perform first operation
csrrwi x29, mscratch, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x26, x1 # perform first operation
csrrwi x12, mscratch, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x6, x2 # perform first operation
csrrwi x22, mscratch, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x25, x23 # perform first operation
csrrwi x26, mscratch, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x8 # perform first operation
csrrwi x3, mscratch, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x7, x29 # perform first operation
csrrwi x27, mscratch, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x5, x16 # perform first operation
csrrwi x5, mscratch, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x31, x14 # perform first operation
csrrwi x14, mscratch, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x9, x1 # perform first operation
csrrwi x2, mscratch, 16 # perform second (triggering) operation

.EQU SIGSIZE,512


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
