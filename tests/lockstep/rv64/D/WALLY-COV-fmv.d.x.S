///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmv.d.x.S
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


# Testcase cp_rs1 (Test source rs1 = x0)
fsflagsi 0b00000 # clear all fflags
li x0, 0x00a43c15df25d232 # load immediate value into integer register
fmv.d.x f6, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0xe360cbc784a97467 # load immediate value into integer register
fmv.d.x f6, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xef404e75613bf8ed # load immediate value into integer register
fmv.d.x f8, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0xf18cfd20357ffd25 # load immediate value into integer register
fmv.d.x f30, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0x40917f546d60563b # load immediate value into integer register
fmv.d.x f9, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0x4031589eb9f24c52 # load immediate value into integer register
fmv.d.x f31, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0x17906e84f97adea1 # load immediate value into integer register
fmv.d.x f30, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0xa6aa8a37de982fc5 # load immediate value into integer register
fmv.d.x f22, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0xd4c562d0dfc0dba8 # load immediate value into integer register
fmv.d.x f17, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x114cca96453790d6 # load immediate value into integer register
fmv.d.x f29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x1a28f58d895ce28b # load immediate value into integer register
fmv.d.x f23, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x68ebc968f3cee2d8 # load immediate value into integer register
fmv.d.x f8, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0x5ff08436ddcfd2f4 # load immediate value into integer register
fmv.d.x f22, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0xf4fc2fb3ba69325f # load immediate value into integer register
fmv.d.x f29, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x36d8d1cc3bd49fee # load immediate value into integer register
fmv.d.x f25, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x011fd0aea2a89d8f # load immediate value into integer register
fmv.d.x f12, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xc3ee432d8aba31f5 # load immediate value into integer register
fmv.d.x f8, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0xf22e2eaf4b954849 # load immediate value into integer register
fmv.d.x f26, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0x9c0ab417a43d0e77 # load immediate value into integer register
fmv.d.x f24, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0x82c4bd99b9e25179 # load immediate value into integer register
fmv.d.x f9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0xe07d7b409b7a669c # load immediate value into integer register
fmv.d.x f14, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x68a32fadbe5d740d # load immediate value into integer register
fmv.d.x f20, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x87935e91242f160d # load immediate value into integer register
fmv.d.x f6, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x36eb5fea348d328f # load immediate value into integer register
fmv.d.x f25, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xb05e8ebbbce48bb3 # load immediate value into integer register
fmv.d.x f12, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x13b33391f09ecd91 # load immediate value into integer register
fmv.d.x f28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xafff661ff0d9ec05 # load immediate value into integer register
fmv.d.x f10, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0x802bfa8ff0aa2c2b # load immediate value into integer register
fmv.d.x f22, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xd809ca2190b4f852 # load immediate value into integer register
fmv.d.x f1, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x92a185bf001386c7 # load immediate value into integer register
fmv.d.x f18, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0x1b52139ee99a7042 # load immediate value into integer register
fmv.d.x f1, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0xe5da7d94b64b6226 # load immediate value into integer register
fmv.d.x f9, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x22, 0x0000000000000000 # load immediate value into integer register
fmv.d.x f1, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x24, 0x0000000000000001 # load immediate value into integer register
fmv.d.x f25, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x9, 0x0000000000000002 # load immediate value into integer register
fmv.d.x f11, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x31, 0x8000000000000000 # load immediate value into integer register
fmv.d.x f7, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x20, 0x8000000000000001 # load immediate value into integer register
fmv.d.x f23, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x13, 0x7fffffffffffffff # load immediate value into integer register
fmv.d.x f31, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x27, 0x7ffffffffffffffe # load immediate value into integer register
fmv.d.x f22, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x10, 0xffffffffffffffff # load immediate value into integer register
fmv.d.x f5, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x14, 0xfffffffffffffffe # load immediate value into integer register
fmv.d.x f8, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x24, 0x5bbc887763ae86f2 # load immediate value into integer register
fmv.d.x f21, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x11, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.d.x f8, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x9, 0x5555555555555555 # load immediate value into integer register
fmv.d.x f12, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x21, 0x00000000ffffffff # load immediate value into integer register
fmv.d.x f19, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x31, 0x00000000fffffffe # load immediate value into integer register
fmv.d.x f27, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x10, 0x0000000100000000 # load immediate value into integer register
fmv.d.x f29, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x17, 0x0000000100000001 # load immediate value into integer register
fmv.d.x f16, x17 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x16, x15 # perform first operation
fmv.d.x f3, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x3 # perform first operation
fmv.d.x f9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x30, x25 # perform first operation
fmv.d.x f15, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f14, f7 # perform first operation
fmv.d.x f5, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f5, f15, f28 # perform first operation
fmv.d.x f5, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f29, f24, f8 # perform first operation
fmv.d.x f29, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f23, f11, f16 # perform first operation
fmv.d.x f11, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f19, f1, f23 # perform first operation
fmv.d.x f23, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f22, f12 # perform first operation
fmv.d.x f5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x27, x22 # perform first operation
fmv.d.x f12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x5, x17 # perform first operation
fmv.d.x f28, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x1, x3 # perform first operation
fmv.d.x f25, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x1, x25 # perform first operation
fmv.d.x f1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x15, x14 # perform first operation
fmv.d.x f14, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x29, x14 # perform first operation
fmv.d.x f31, x8 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x19, 0x238e81bae60d6cdd # load immediate value into integer register
fmv.d.x f0, x19 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x23, 0x8411a69b4aca3b1e # load immediate value into integer register
fmv.d.x f1, x23 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x26, 0x157e4c2b8391ac57 # load immediate value into integer register
fmv.d.x f2, x26 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x15, 0xd55d9974af878393 # load immediate value into integer register
fmv.d.x f3, x15 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x11, 0xf9e1f8f42f7a5fdb # load immediate value into integer register
fmv.d.x f4, x11 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x29, 0xf7af6a6711f4f569 # load immediate value into integer register
fmv.d.x f5, x29 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x20, 0xb4150ca588939cd7 # load immediate value into integer register
fmv.d.x f6, x20 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x19, 0xecfdeda446bc6d77 # load immediate value into integer register
fmv.d.x f7, x19 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x12, 0x3c337305d3a165a5 # load immediate value into integer register
fmv.d.x f8, x12 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x11, 0xa787d15595f2fffc # load immediate value into integer register
fmv.d.x f9, x11 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x30, 0x2fe9582684dbe3f9 # load immediate value into integer register
fmv.d.x f10, x30 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x8, 0x4d4c6d3badd231b1 # load immediate value into integer register
fmv.d.x f11, x8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xf4aa6cedc83390eb # load immediate value into integer register
fmv.d.x f12, x12 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x23, 0x7a5d01e85c177df8 # load immediate value into integer register
fmv.d.x f13, x23 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x8, 0x31c4d006484682fb # load immediate value into integer register
fmv.d.x f14, x8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x16, 0xc802cb7bdd8247d8 # load immediate value into integer register
fmv.d.x f15, x16 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x15, 0x8b35e459b788eb90 # load immediate value into integer register
fmv.d.x f16, x15 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x15, 0x1812ef0e3020b612 # load immediate value into integer register
fmv.d.x f17, x15 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x30, 0x03235a472612523b # load immediate value into integer register
fmv.d.x f18, x30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x8, 0xc5052e94ad099c15 # load immediate value into integer register
fmv.d.x f19, x8 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x12, 0xe7f74636f028a30f # load immediate value into integer register
fmv.d.x f20, x12 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x29, 0xed3651419f8c84c0 # load immediate value into integer register
fmv.d.x f21, x29 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x10, 0xee389f8af4af0a41 # load immediate value into integer register
fmv.d.x f22, x10 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb1fe10f93f40d52e # load immediate value into integer register
fmv.d.x f23, x27 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x6, 0x3f42966809b74439 # load immediate value into integer register
fmv.d.x f24, x6 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x3, 0x60289b0737cd7d74 # load immediate value into integer register
fmv.d.x f25, x3 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x11, 0x9eed88631d4cd7bd # load immediate value into integer register
fmv.d.x f26, x11 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x29, 0x03d5daea0bf5ef7b # load immediate value into integer register
fmv.d.x f27, x29 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x14, 0x355d51ecd704d7c6 # load immediate value into integer register
fmv.d.x f28, x14 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x28, 0xd00e40f79ce1bcd4 # load immediate value into integer register
fmv.d.x f29, x28 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x11, 0xe7567422b0522203 # load immediate value into integer register
fmv.d.x f30, x11 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x10, 0x10d14808befee438 # load immediate value into integer register
fmv.d.x f31, x10 # perform operation

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
