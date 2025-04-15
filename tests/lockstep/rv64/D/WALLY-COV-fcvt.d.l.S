///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fcvt.d.l.S
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
li x0, 0xa285f1713ed2fd7e # load immediate value into integer register
fcvt.d.l f28, x0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
fsflagsi 0b00000 # clear all fflags
li x1, 0x7b30b471c030bbdd # load immediate value into integer register
fcvt.d.l f25, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
fsflagsi 0b00000 # clear all fflags
li x2, 0xc06903c72b40d83a # load immediate value into integer register
fcvt.d.l f16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x50e6d274ccae2ce6 # load immediate value into integer register
fcvt.d.l f6, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x4, 0xadcc53b35653e328 # load immediate value into integer register
fcvt.d.l f22, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x5, 0xbf4fdcdeb1a9babd # load immediate value into integer register
fcvt.d.l f18, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x6, 0xd203e5209d2ed878 # load immediate value into integer register
fcvt.d.l f26, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x7, 0x43c0675482731fff # load immediate value into integer register
fcvt.d.l f12, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
fsflagsi 0b00000 # clear all fflags
li x8, 0x68e07f2ddbb819cf # load immediate value into integer register
fcvt.d.l f13, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
fsflagsi 0b00000 # clear all fflags
li x9, 0x485a6777a4c14aa9 # load immediate value into integer register
fcvt.d.l f19, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
fsflagsi 0b00000 # clear all fflags
li x10, 0x012a2a4cb6878e62 # load immediate value into integer register
fcvt.d.l f3, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
fsflagsi 0b00000 # clear all fflags
li x11, 0x130f5a47004eeabf # load immediate value into integer register
fcvt.d.l f13, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
fsflagsi 0b00000 # clear all fflags
li x12, 0xe12f02dbbc6f0afa # load immediate value into integer register
fcvt.d.l f20, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
fsflagsi 0b00000 # clear all fflags
li x13, 0x25769dd2440cd627 # load immediate value into integer register
fcvt.d.l f9, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
fsflagsi 0b00000 # clear all fflags
li x14, 0x4e5aa43f27557e07 # load immediate value into integer register
fcvt.d.l f19, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
fsflagsi 0b00000 # clear all fflags
li x15, 0x6a33514d290515da # load immediate value into integer register
fcvt.d.l f19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
fsflagsi 0b00000 # clear all fflags
li x16, 0xa5c2ea69b5694ae1 # load immediate value into integer register
fcvt.d.l f25, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
fsflagsi 0b00000 # clear all fflags
li x17, 0x394c1eb2aef5db37 # load immediate value into integer register
fcvt.d.l f23, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xb81414b0024c9859 # load immediate value into integer register
fcvt.d.l f29, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
fsflagsi 0b00000 # clear all fflags
li x19, 0xb125ef7f09318ec9 # load immediate value into integer register
fcvt.d.l f1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
fsflagsi 0b00000 # clear all fflags
li x20, 0x1742e4455915159e # load immediate value into integer register
fcvt.d.l f8, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
fsflagsi 0b00000 # clear all fflags
li x21, 0x082fb6eb9cdc6ff6 # load immediate value into integer register
fcvt.d.l f15, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
fsflagsi 0b00000 # clear all fflags
li x22, 0x63c67a74e26306b7 # load immediate value into integer register
fcvt.d.l f23, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
fsflagsi 0b00000 # clear all fflags
li x23, 0x277df9f65d924345 # load immediate value into integer register
fcvt.d.l f27, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
fsflagsi 0b00000 # clear all fflags
li x24, 0xfa408489a0a1ccea # load immediate value into integer register
fcvt.d.l f22, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
fsflagsi 0b00000 # clear all fflags
li x25, 0x61604344e1546178 # load immediate value into integer register
fcvt.d.l f22, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
fsflagsi 0b00000 # clear all fflags
li x26, 0xcdf0114009d2931f # load immediate value into integer register
fcvt.d.l f27, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
fsflagsi 0b00000 # clear all fflags
li x27, 0xb431c125995ba01c # load immediate value into integer register
fcvt.d.l f9, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
fsflagsi 0b00000 # clear all fflags
li x28, 0xc33df5987c482216 # load immediate value into integer register
fcvt.d.l f20, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
fsflagsi 0b00000 # clear all fflags
li x29, 0x8cdbab455a677acb # load immediate value into integer register
fcvt.d.l f16, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
fsflagsi 0b00000 # clear all fflags
li x30, 0xefe86768af19b820 # load immediate value into integer register
fcvt.d.l f20, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
fsflagsi 0b00000 # clear all fflags
li x31, 0x5d095076655d230f # load immediate value into integer register
fcvt.d.l f2, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
li x2, 0x0000000000000000 # load immediate value into integer register
fcvt.d.l f18, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
li x14, 0x0000000000000001 # load immediate value into integer register
fcvt.d.l f18, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
fsflagsi 0b00000 # clear all fflags
li x1, 0x0000000000000002 # load immediate value into integer register
fcvt.d.l f13, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
fsflagsi 0b00000 # clear all fflags
li x23, 0x8000000000000000 # load immediate value into integer register
fcvt.d.l f1, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
fsflagsi 0b00000 # clear all fflags
li x14, 0x8000000000000001 # load immediate value into integer register
fcvt.d.l f26, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x16, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.l f22, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x24, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.l f1, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
fsflagsi 0b00000 # clear all fflags
li x12, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.l f21, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
fsflagsi 0b00000 # clear all fflags
li x1, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.l f31, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
fsflagsi 0b00000 # clear all fflags
li x13, 0x5bbc887763ae86f2 # load immediate value into integer register
fcvt.d.l f31, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
fsflagsi 0b00000 # clear all fflags
li x2, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.l f27, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
fsflagsi 0b00000 # clear all fflags
li x27, 0x5555555555555555 # load immediate value into integer register
fcvt.d.l f10, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
li x23, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.l f16, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
fsflagsi 0b00000 # clear all fflags
li x11, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.l f20, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
fsflagsi 0b00000 # clear all fflags
li x17, 0x0000000100000000 # load immediate value into integer register
fcvt.d.l f22, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
fsflagsi 0b00000 # clear all fflags
li x16, 0x0000000100000001 # load immediate value into integer register
fcvt.d.l f19, x16 # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x20, x26 # perform first operation
fcvt.d.l f18, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x29, x21 # perform first operation
fcvt.d.l f15, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x25, x5 # perform first operation
fcvt.d.l f11, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f13, f5, f3 # perform first operation
fcvt.d.l f13, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f11, f17, f26 # perform first operation
fcvt.d.l f11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f1, f12, f29 # perform first operation
fcvt.d.l f1, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f31, f11, f8 # perform first operation
fcvt.d.l f11, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f27, f3, f20 # perform first operation
fcvt.d.l f20, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f25, f18, f17 # perform first operation
fcvt.d.l f22, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x29, x19 # perform first operation
fcvt.d.l f20, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x28, x21 # perform first operation
fcvt.d.l f11, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x18, x10 # perform first operation
fcvt.d.l f14, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x29, x16 # perform first operation
fcvt.d.l f14, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x13, x30 # perform first operation
fcvt.d.l f20, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x14, x12 # perform first operation
fcvt.d.l f12, x5 # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
fsflagsi 0b00000 # clear all fflags
li x9, 0xe44aadf56e826e90 # load immediate value into integer register
fcvt.d.l f0, x9 # perform operation

# Testcase cp_fd (Test destination fd = x1)
fsflagsi 0b00000 # clear all fflags
li x8, 0x8a4f24a28c9be9af # load immediate value into integer register
fcvt.d.l f1, x8 # perform operation

# Testcase cp_fd (Test destination fd = x2)
fsflagsi 0b00000 # clear all fflags
li x23, 0xd1cc337c79800d59 # load immediate value into integer register
fcvt.d.l f2, x23 # perform operation

# Testcase cp_fd (Test destination fd = x3)
fsflagsi 0b00000 # clear all fflags
li x3, 0x636be198e41c2f34 # load immediate value into integer register
fcvt.d.l f3, x3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x3, 0x3d3833089f12735d # load immediate value into integer register
fcvt.d.l f4, x3 # perform operation

# Testcase cp_fd (Test destination fd = x5)
fsflagsi 0b00000 # clear all fflags
li x10, 0x5e4419bb20c3a462 # load immediate value into integer register
fcvt.d.l f5, x10 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x1, 0x95e18fbbe1ca5359 # load immediate value into integer register
fcvt.d.l f6, x1 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
fsflagsi 0b00000 # clear all fflags
li x22, 0x994bc3d82801a008 # load immediate value into integer register
fcvt.d.l f7, x22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
fsflagsi 0b00000 # clear all fflags
li x9, 0xf5b62c94796aea27 # load immediate value into integer register
fcvt.d.l f8, x9 # perform operation

# Testcase cp_fd (Test destination fd = x9)
fsflagsi 0b00000 # clear all fflags
li x7, 0x2587188211be5ae9 # load immediate value into integer register
fcvt.d.l f9, x7 # perform operation

# Testcase cp_fd (Test destination fd = x10)
fsflagsi 0b00000 # clear all fflags
li x31, 0x0cccc10c6f592f6c # load immediate value into integer register
fcvt.d.l f10, x31 # perform operation

# Testcase cp_fd (Test destination fd = x11)
fsflagsi 0b00000 # clear all fflags
li x18, 0x8387bfd1ab220756 # load immediate value into integer register
fcvt.d.l f11, x18 # perform operation

# Testcase cp_fd (Test destination fd = x12)
fsflagsi 0b00000 # clear all fflags
li x20, 0x5d169772adc12c8e # load immediate value into integer register
fcvt.d.l f12, x20 # perform operation

# Testcase cp_fd (Test destination fd = x13)
fsflagsi 0b00000 # clear all fflags
li x7, 0x8c28aa1ce329d87e # load immediate value into integer register
fcvt.d.l f13, x7 # perform operation

# Testcase cp_fd (Test destination fd = x14)
fsflagsi 0b00000 # clear all fflags
li x15, 0x2f2cd1dd53670db7 # load immediate value into integer register
fcvt.d.l f14, x15 # perform operation

# Testcase cp_fd (Test destination fd = x15)
fsflagsi 0b00000 # clear all fflags
li x13, 0xfc15c5c0e404a56e # load immediate value into integer register
fcvt.d.l f15, x13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
fsflagsi 0b00000 # clear all fflags
li x2, 0xb029a9ce850daee8 # load immediate value into integer register
fcvt.d.l f16, x2 # perform operation

# Testcase cp_fd (Test destination fd = x17)
fsflagsi 0b00000 # clear all fflags
li x11, 0xe629001664bd12fe # load immediate value into integer register
fcvt.d.l f17, x11 # perform operation

# Testcase cp_fd (Test destination fd = x18)
fsflagsi 0b00000 # clear all fflags
li x18, 0xd3610dfa79d58e2c # load immediate value into integer register
fcvt.d.l f18, x18 # perform operation

# Testcase cp_fd (Test destination fd = x19)
fsflagsi 0b00000 # clear all fflags
li x7, 0x8747dd26bf968ac5 # load immediate value into integer register
fcvt.d.l f19, x7 # perform operation

# Testcase cp_fd (Test destination fd = x20)
fsflagsi 0b00000 # clear all fflags
li x8, 0xe028022e1f278c3f # load immediate value into integer register
fcvt.d.l f20, x8 # perform operation

# Testcase cp_fd (Test destination fd = x21)
fsflagsi 0b00000 # clear all fflags
li x5, 0xd682745c99b1cbcc # load immediate value into integer register
fcvt.d.l f21, x5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
fsflagsi 0b00000 # clear all fflags
li x28, 0xfcce6dc3518aa05e # load immediate value into integer register
fcvt.d.l f22, x28 # perform operation

# Testcase cp_fd (Test destination fd = x23)
fsflagsi 0b00000 # clear all fflags
li x15, 0x409fc4c3c6bb9ff5 # load immediate value into integer register
fcvt.d.l f23, x15 # perform operation

# Testcase cp_fd (Test destination fd = x24)
fsflagsi 0b00000 # clear all fflags
li x20, 0x0d8b1f1dc76ec339 # load immediate value into integer register
fcvt.d.l f24, x20 # perform operation

# Testcase cp_fd (Test destination fd = x25)
fsflagsi 0b00000 # clear all fflags
li x11, 0xc5a674812076445b # load immediate value into integer register
fcvt.d.l f25, x11 # perform operation

# Testcase cp_fd (Test destination fd = x26)
fsflagsi 0b00000 # clear all fflags
li x22, 0x69723311403188de # load immediate value into integer register
fcvt.d.l f26, x22 # perform operation

# Testcase cp_fd (Test destination fd = x27)
fsflagsi 0b00000 # clear all fflags
li x28, 0xed601fe68c2b6a6e # load immediate value into integer register
fcvt.d.l f27, x28 # perform operation

# Testcase cp_fd (Test destination fd = x28)
fsflagsi 0b00000 # clear all fflags
li x6, 0xc46ae2bd616981b5 # load immediate value into integer register
fcvt.d.l f28, x6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
fsflagsi 0b00000 # clear all fflags
li x12, 0x14fadf3aba1fc5a7 # load immediate value into integer register
fcvt.d.l f29, x12 # perform operation

# Testcase cp_fd (Test destination fd = x30)
fsflagsi 0b00000 # clear all fflags
li x22, 0x544591184b406d19 # load immediate value into integer register
fcvt.d.l f30, x22 # perform operation

# Testcase cp_fd (Test destination fd = x31)
fsflagsi 0b00000 # clear all fflags
li x16, 0xed235354715d17c7 # load immediate value into integer register
fcvt.d.l f31, x16 # perform operation

# Testcase cp_frm
fsflagsi 0b00000 # clear all fflags
li x15, 0xbdbe67d5e9190c6a # load immediate value into integer register
fcvt.d.l f16, x15, dyn # perform operation
fcvt.d.l f16, x15, rdn # perform operation
fcvt.d.l f16, x15, rmm # perform operation
fcvt.d.l f16, x15, rne # perform operation
fcvt.d.l f16, x15, rtz # perform operation
fcvt.d.l f16, x15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.d.l f16, x15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.d.l f16, x15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.d.l f16, x15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.d.l f16, x15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.d.l f16, x15 # perform operation


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
