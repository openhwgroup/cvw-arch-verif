///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicsr/WALLY-COV-csrrci.S
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
li x22, 0x490f4c653a64fad8 # initialize rs1
csrrci x0, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0x8d7183804e5f4349 # initialize rs1
csrrci x1, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x020c15aabfb4b459 # initialize rs1
csrrci x2, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x091d8259240e27d0 # initialize rs1
csrrci x3, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x2c28c232e817b579 # initialize rs1
csrrci x4, mscratch, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
li x25, 0x2bef3471590f801d # initialize rs1
csrrci x5, mscratch, 15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x8fd8a330663c8c18 # initialize rs1
csrrci x6, mscratch, 4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xd6402f75b3784c4b # initialize rs1
csrrci x7, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x88b816648604b5e1 # initialize rs1
csrrci x8, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7d1ab3352219a3f6 # initialize rs1
csrrci x9, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x8b98b78c9f8f84d4 # initialize rs1
csrrci x10, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x599136d86a405abc # initialize rs1
csrrci x11, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0xb1fc2559f48b7a3c # initialize rs1
csrrci x12, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x43d61406165f1ec8 # initialize rs1
csrrci x13, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x47d32dd5ec9e2b07 # initialize rs1
csrrci x14, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xe1b47f8d488f9791 # initialize rs1
csrrci x15, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0xc523c9e8477fbd48 # initialize rs1
csrrci x16, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x4cbe414ad941dc0a # initialize rs1
csrrci x17, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x22d804ed5bb2d95d # initialize rs1
csrrci x18, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x7ca4a6734e9e6a7a # initialize rs1
csrrci x19, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x71cf009ece4437c5 # initialize rs1
csrrci x20, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x9a9fc0f66cdec391 # initialize rs1
csrrci x21, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x341d328989dcf733 # initialize rs1
csrrci x22, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0xd6047f193d9fae4c # initialize rs1
csrrci x23, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x0b20a37d9a77ac62 # initialize rs1
csrrci x24, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xae922cdd49f870e6 # initialize rs1
csrrci x25, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x2fba3293f3fadcff # initialize rs1
csrrci x26, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0xd184d6b38b25681d # initialize rs1
csrrci x27, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0x15789415115bbbe7 # initialize rs1
csrrci x28, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x3538f19088265be0 # initialize rs1
csrrci x29, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x8551ff5df25edbaa # initialize rs1
csrrci x30, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x818a59e3177dc33f # initialize rs1
csrrci x31, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_uimm_5 (Test bit = 0)
li x11, 0xc7088be55fe086b8 # initialize rs1
csrrci x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cp_uimm_5 (Test bit = 1)
li x13, 0xd1bd07b85f5433b1 # initialize rs1
csrrci x27, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cp_uimm_5 (Test bit = 2)
li x18, 0xed4b95109c9802d0 # initialize rs1
csrrci x11, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_uimm_5 (Test bit = 3)
li x16, 0xbb1069e8ae8ff70b # initialize rs1
csrrci x17, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cp_uimm_5 (Test bit = 4)
li x26, 0xbc1d6036aaf2c9b3 # initialize rs1
csrrci x15, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cp_uimm_5 (Test bit = 5)
li x24, 0x183761bd5d6778e2 # initialize rs1
csrrci x31, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cp_uimm_5 (Test bit = 6)
li x31, 0x494ef80ea02f6791 # initialize rs1
csrrci x16, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 304)

# Testcase cp_uimm_5 (Test bit = 7)
li x3, 0x653caee59b5633a2 # initialize rs1
csrrci x6, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_uimm_5 (Test bit = 8)
li x1, 0x2d942520321b70c3 # initialize rs1
csrrci x24, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_uimm_5 (Test bit = 9)
li x3, 0x878a8960dbf55d4e # initialize rs1
csrrci x13, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_uimm_5 (Test bit = 10)
li x29, 0x74ae4684462c45a8 # initialize rs1
csrrci x3, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cp_uimm_5 (Test bit = 11)
li x19, 0x72c8d9ddad35daee # initialize rs1
csrrci x2, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cp_uimm_5 (Test bit = 12)
li x2, 0x805e548547739702 # initialize rs1
csrrci x9, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cp_uimm_5 (Test bit = 13)
li x15, 0x560717d00548d22e # initialize rs1
csrrci x22, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_uimm_5 (Test bit = 14)
li x14, 0xeaaf5aab445e7e64 # initialize rs1
csrrci x30, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cp_uimm_5 (Test bit = 15)
li x30, 0x4a1b76769e0a3397 # initialize rs1
csrrci x9, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_uimm_5 (Test bit = 16)
li x11, 0x885263408e9d541f # initialize rs1
csrrci x22, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_uimm_5 (Test bit = 17)
li x28, 0xa0a9df6a8c45251c # initialize rs1
csrrci x30, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cp_uimm_5 (Test bit = 18)
li x26, 0x3569db925a774ff7 # initialize rs1
csrrci x2, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_uimm_5 (Test bit = 19)
li x22, 0x85debce10b069716 # initialize rs1
csrrci x21, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_uimm_5 (Test bit = 20)
li x12, 0xe676d6fc22ae6aa5 # initialize rs1
csrrci x8, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cp_uimm_5 (Test bit = 21)
li x26, 0x90800f03a95c7305 # initialize rs1
csrrci x21, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_uimm_5 (Test bit = 22)
li x7, 0x06ac2851741d6ceb # initialize rs1
csrrci x26, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_uimm_5 (Test bit = 23)
li x25, 0x4e35cfb84b9d0384 # initialize rs1
csrrci x7, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cp_uimm_5 (Test bit = 24)
li x11, 0xb3961e17c9bbdc06 # initialize rs1
csrrci x27, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cp_uimm_5 (Test bit = 25)
li x8, 0xf904de35e3f98e65 # initialize rs1
csrrci x18, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_uimm_5 (Test bit = 26)
li x5, 0x19664813067f3d43 # initialize rs1
csrrci x17, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_uimm_5 (Test bit = 27)
li x15, 0x1bf2d017a2688468 # initialize rs1
csrrci x27, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_uimm_5 (Test bit = 28)
li x1, 0x096dd53c5594c4d3 # initialize rs1
csrrci x19, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_uimm_5 (Test bit = 29)
li x26, 0x90d4706bc1ea9088 # initialize rs1
csrrci x14, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cp_uimm_5 (Test bit = 30)
li x8, 0xe70cf4a5f505274a # initialize rs1
csrrci x12, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_uimm_5 (Test bit = 31)
li x23, 0x7749183ff9d0ed6c # initialize rs1
csrrci x2, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x9, x26 # perform first operation
csrrci x25, mscratch, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x6, x26 # perform first operation
csrrci x21, mscratch, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x27, x14 # perform first operation
csrrci x23, mscratch, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x5, x27 # perform first operation
csrrci x10, mscratch, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x17, x9 # perform first operation
csrrci x5, mscratch, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x20, x26 # perform first operation
csrrci x24, mscratch, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x9, x31 # perform first operation
csrrci x9, mscratch, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x9, x14 # perform first operation
csrrci x14, mscratch, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x31, x9 # perform first operation
csrrci x8, mscratch, 10 # perform second (triggering) operation

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
