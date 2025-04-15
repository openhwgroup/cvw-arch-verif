///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-flw.S
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


# Testcase cp_rs1 (Test source rs1 = x1)
la x1, scratch # base address 
addi x1, x1, -669 # sub immediate from rs1 to counter offset
li x7, 0x8f3393ceeb6b9f2d # load x3 with value 0x8f3393ceeb6b9f2d
sw x7, 669(x1) # store 0x8f3393ceeb6b9f2d in memory
flw f5, 669(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, -525 # sub immediate from rs1 to counter offset
li x3, 0x28189afa992fca11 # load x3 with value 0x28189afa992fca11
sw x3, 525(x2) # store 0x28189afa992fca11 in memory
flw f8, 525(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, -2017 # sub immediate from rs1 to counter offset
li x11, 0x303b73a4c2202bd0 # load x3 with value 0x303b73a4c2202bd0
sw x11, 2017(x3) # store 0x303b73a4c2202bd0 in memory
flw f31, 2017(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, -230 # sub immediate from rs1 to counter offset
li x7, 0x5d08ae56da312a20 # load x3 with value 0x5d08ae56da312a20
sw x7, 230(x4) # store 0x5d08ae56da312a20 in memory
flw f12, 230(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, -1013 # sub immediate from rs1 to counter offset
li x31, 0x7e65d41de2ecc67a # load x3 with value 0x7e65d41de2ecc67a
sw x31, 1013(x5) # store 0x7e65d41de2ecc67a in memory
flw f15, 1013(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, -1120 # sub immediate from rs1 to counter offset
li x29, 0xc74cac44876bc81c # load x3 with value 0xc74cac44876bc81c
sw x29, 1120(x6) # store 0xc74cac44876bc81c in memory
flw f4, 1120(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, -6 # sub immediate from rs1 to counter offset
li x10, 0x7225e1de8e707bae # load x3 with value 0x7225e1de8e707bae
sw x10, 6(x7) # store 0x7225e1de8e707bae in memory
flw f9, 6(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, 105 # sub immediate from rs1 to counter offset
li x5, 0xb1c82a2ed85fed9b # load x3 with value 0xb1c82a2ed85fed9b
sw x5, -105(x8) # store 0xb1c82a2ed85fed9b in memory
flw f9, -105(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, -1190 # sub immediate from rs1 to counter offset
li x18, 0x85c6846c93aaef32 # load x3 with value 0x85c6846c93aaef32
sw x18, 1190(x9) # store 0x85c6846c93aaef32 in memory
flw f3, 1190(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, -1371 # sub immediate from rs1 to counter offset
li x2, 0x5aae383e3c88f942 # load x3 with value 0x5aae383e3c88f942
sw x2, 1371(x10) # store 0x5aae383e3c88f942 in memory
flw f13, 1371(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 362 # sub immediate from rs1 to counter offset
li x10, 0x17591d299eb1449a # load x3 with value 0x17591d299eb1449a
sw x10, -362(x11) # store 0x17591d299eb1449a in memory
flw f12, -362(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 1154 # sub immediate from rs1 to counter offset
li x14, 0xdc68e609c3e222ae # load x3 with value 0xdc68e609c3e222ae
sw x14, -1154(x12) # store 0xdc68e609c3e222ae in memory
flw f17, -1154(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, 377 # sub immediate from rs1 to counter offset
li x25, 0x62e4f11f97efc5b3 # load x3 with value 0x62e4f11f97efc5b3
sw x25, -377(x13) # store 0x62e4f11f97efc5b3 in memory
flw f27, -377(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -1804 # sub immediate from rs1 to counter offset
li x30, 0x66d5245b20e2610b # load x3 with value 0x66d5245b20e2610b
sw x30, 1804(x14) # store 0x66d5245b20e2610b in memory
flw f18, 1804(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, 302 # sub immediate from rs1 to counter offset
li x7, 0x29d7b6e6f58c9aef # load x3 with value 0x29d7b6e6f58c9aef
sw x7, -302(x15) # store 0x29d7b6e6f58c9aef in memory
flw f6, -302(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, -678 # sub immediate from rs1 to counter offset
li x18, 0x8610643371569937 # load x3 with value 0x8610643371569937
sw x18, 678(x16) # store 0x8610643371569937 in memory
flw f9, 678(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, 1994 # sub immediate from rs1 to counter offset
li x8, 0x37bfcece3154a1c7 # load x3 with value 0x37bfcece3154a1c7
sw x8, -1994(x17) # store 0x37bfcece3154a1c7 in memory
flw f27, -1994(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, 1499 # sub immediate from rs1 to counter offset
li x11, 0x1ee323eb0245f17a # load x3 with value 0x1ee323eb0245f17a
sw x11, -1499(x18) # store 0x1ee323eb0245f17a in memory
flw f10, -1499(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, -691 # sub immediate from rs1 to counter offset
li x18, 0x341651ff2731ef2 # load x3 with value 0x341651ff2731ef2
sw x18, 691(x19) # store 0x341651ff2731ef2 in memory
flw f7, 691(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, -709 # sub immediate from rs1 to counter offset
li x28, 0xeba3b5a5b68977c9 # load x3 with value 0xeba3b5a5b68977c9
sw x28, 709(x20) # store 0xeba3b5a5b68977c9 in memory
flw f11, 709(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -905 # sub immediate from rs1 to counter offset
li x15, 0x882ecef94673a4f0 # load x3 with value 0x882ecef94673a4f0
sw x15, 905(x21) # store 0x882ecef94673a4f0 in memory
flw f15, 905(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, -1361 # sub immediate from rs1 to counter offset
li x12, 0x7c9b2be6550052a # load x3 with value 0x7c9b2be6550052a
sw x12, 1361(x22) # store 0x7c9b2be6550052a in memory
flw f29, 1361(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, 125 # sub immediate from rs1 to counter offset
li x28, 0xe2fb80eee4bb9f3e # load x3 with value 0xe2fb80eee4bb9f3e
sw x28, -125(x23) # store 0xe2fb80eee4bb9f3e in memory
flw f31, -125(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, -1907 # sub immediate from rs1 to counter offset
li x13, 0xe0650fe336a0daec # load x3 with value 0xe0650fe336a0daec
sw x13, 1907(x24) # store 0xe0650fe336a0daec in memory
flw f31, 1907(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, 1403 # sub immediate from rs1 to counter offset
li x23, 0x6426e3dcf174e23c # load x3 with value 0x6426e3dcf174e23c
sw x23, -1403(x25) # store 0x6426e3dcf174e23c in memory
flw f11, -1403(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, 1250 # sub immediate from rs1 to counter offset
li x5, 0x7ae84fdf5fac46f3 # load x3 with value 0x7ae84fdf5fac46f3
sw x5, -1250(x26) # store 0x7ae84fdf5fac46f3 in memory
flw f18, -1250(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, 742 # sub immediate from rs1 to counter offset
li x19, 0x569ad582c401c6e0 # load x3 with value 0x569ad582c401c6e0
sw x19, -742(x27) # store 0x569ad582c401c6e0 in memory
flw f20, -742(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, -1386 # sub immediate from rs1 to counter offset
li x26, 0x8051ddaa23abf38b # load x3 with value 0x8051ddaa23abf38b
sw x26, 1386(x28) # store 0x8051ddaa23abf38b in memory
flw f30, 1386(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, 1831 # sub immediate from rs1 to counter offset
li x17, 0xbe1851650bc2260b # load x3 with value 0xbe1851650bc2260b
sw x17, -1831(x29) # store 0xbe1851650bc2260b in memory
flw f21, -1831(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, 1560 # sub immediate from rs1 to counter offset
li x24, 0x6f96a48b3611318 # load x3 with value 0x6f96a48b3611318
sw x24, -1560(x30) # store 0x6f96a48b3611318 in memory
flw f23, -1560(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, 1841 # sub immediate from rs1 to counter offset
li x10, 0x7b88070b759ef076 # load x3 with value 0x7b88070b759ef076
sw x10, -1841(x31) # store 0x7b88070b759ef076 in memory
flw f6, -1841(x31) # perform operation

# Testcase cp_imm_corners
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
li x29, 0x2cb9219488e4885a # load x3 with value 0x2cb9219488e4885a
sw x29, 0(x7) # store 0x2cb9219488e4885a in memory
flw f24, 0(x7) # perform operation

# Testcase cp_imm_corners
la x15, scratch # base address 
addi x15, x15, -1 # sub immediate from rs1 to counter offset
li x8, 0xe2be02187e5f9cbd # load x3 with value 0xe2be02187e5f9cbd
sw x8, 1(x15) # store 0xe2be02187e5f9cbd in memory
flw f29, 1(x15) # perform operation

# Testcase cp_imm_corners
la x18, scratch # base address 
addi x18, x18, -2 # sub immediate from rs1 to counter offset
li x16, 0xe42cc5821fb945d4 # load x3 with value 0xe42cc5821fb945d4
sw x16, 2(x18) # store 0xe42cc5821fb945d4 in memory
flw f30, 2(x18) # perform operation

# Testcase cp_imm_corners
la x16, scratch # base address 
addi x16, x16, -3 # sub immediate from rs1 to counter offset
li x11, 0xfd7178b95446deb6 # load x3 with value 0xfd7178b95446deb6
sw x11, 3(x16) # store 0xfd7178b95446deb6 in memory
flw f18, 3(x16) # perform operation

# Testcase cp_imm_corners
la x22, scratch # base address 
addi x22, x22, -4 # sub immediate from rs1 to counter offset
li x13, 0xa43cfeed080ef4f4 # load x3 with value 0xa43cfeed080ef4f4
sw x13, 4(x22) # store 0xa43cfeed080ef4f4 in memory
flw f27, 4(x22) # perform operation

# Testcase cp_imm_corners
la x25, scratch # base address 
addi x25, x25, -8 # sub immediate from rs1 to counter offset
li x27, 0x28f65e469c6948da # load x3 with value 0x28f65e469c6948da
sw x27, 8(x25) # store 0x28f65e469c6948da in memory
flw f10, 8(x25) # perform operation

# Testcase cp_imm_corners
la x11, scratch # base address 
addi x11, x11, -16 # sub immediate from rs1 to counter offset
li x22, 0x312175d2632a1d7d # load x3 with value 0x312175d2632a1d7d
sw x22, 16(x11) # store 0x312175d2632a1d7d in memory
flw f9, 16(x11) # perform operation

# Testcase cp_imm_corners
la x25, scratch # base address 
addi x25, x25, -32 # sub immediate from rs1 to counter offset
li x13, 0xe8a2ee2eb9cc33ab # load x3 with value 0xe8a2ee2eb9cc33ab
sw x13, 32(x25) # store 0xe8a2ee2eb9cc33ab in memory
flw f8, 32(x25) # perform operation

# Testcase cp_imm_corners
la x17, scratch # base address 
addi x17, x17, -64 # sub immediate from rs1 to counter offset
li x19, 0xecca221ff0bc404c # load x3 with value 0xecca221ff0bc404c
sw x19, 64(x17) # store 0xecca221ff0bc404c in memory
flw f30, 64(x17) # perform operation

# Testcase cp_imm_corners
la x11, scratch # base address 
addi x11, x11, -128 # sub immediate from rs1 to counter offset
li x9, 0x8a2bf5d72e58d8e3 # load x3 with value 0x8a2bf5d72e58d8e3
sw x9, 128(x11) # store 0x8a2bf5d72e58d8e3 in memory
flw f31, 128(x11) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, -256 # sub immediate from rs1 to counter offset
li x1, 0x538c0351db104a0b # load x3 with value 0x538c0351db104a0b
sw x1, 256(x24) # store 0x538c0351db104a0b in memory
flw f25, 256(x24) # perform operation

# Testcase cp_imm_corners
la x6, scratch # base address 
addi x6, x6, -512 # sub immediate from rs1 to counter offset
li x15, 0xbdab27f4c862dd29 # load x3 with value 0xbdab27f4c862dd29
sw x15, 512(x6) # store 0xbdab27f4c862dd29 in memory
flw f15, 512(x6) # perform operation

# Testcase cp_imm_corners
la x29, scratch # base address 
addi x29, x29, -1023 # sub immediate from rs1 to counter offset
li x12, 0x5066c1752eca3956 # load x3 with value 0x5066c1752eca3956
sw x12, 1023(x29) # store 0x5066c1752eca3956 in memory
flw f7, 1023(x29) # perform operation

# Testcase cp_imm_corners
la x30, scratch # base address 
addi x30, x30, -1024 # sub immediate from rs1 to counter offset
li x19, 0xf02cfe1001d611c3 # load x3 with value 0xf02cfe1001d611c3
sw x19, 1024(x30) # store 0xf02cfe1001d611c3 in memory
flw f6, 1024(x30) # perform operation

# Testcase cp_imm_corners
la x6, scratch # base address 
addi x6, x6, -1795 # sub immediate from rs1 to counter offset
li x24, 0xa8394751b28d6170 # load x3 with value 0xa8394751b28d6170
sw x24, 1795(x6) # store 0xa8394751b28d6170 in memory
flw f8, 1795(x6) # perform operation

# Testcase cp_imm_corners
la x2, scratch # base address 
addi x2, x2, -2047 # sub immediate from rs1 to counter offset
li x10, 0x401a56b1b99e6ab6 # load x3 with value 0x401a56b1b99e6ab6
sw x10, 2047(x2) # store 0x401a56b1b99e6ab6 in memory
flw f18, 2047(x2) # perform operation

# Testcase cp_imm_corners
la x16, scratch # base address 
addi x16, x16, 2047 # increment rs1 by 2047 
addi x16, x16, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x17, 0xf87c6972d003df3a # load x3 with value 0xf87c6972d003df3a
sw x17, -2048(x16) # store 0xf87c6972d003df3a in memory
flw f2, -2048(x16) # perform operation

# Testcase cp_imm_corners
la x11, scratch # base address 
addi x11, x11, 2047 # sub immediate from rs1 to counter offset
li x30, 0x480d9b0635b762d5 # load x3 with value 0x480d9b0635b762d5
sw x30, -2047(x11) # store 0x480d9b0635b762d5 in memory
flw f26, -2047(x11) # perform operation

# Testcase cp_imm_corners
la x31, scratch # base address 
addi x31, x31, 2 # sub immediate from rs1 to counter offset
li x6, 0x894f6c4f8437a646 # load x3 with value 0x894f6c4f8437a646
sw x6, -2(x31) # store 0x894f6c4f8437a646 in memory
flw f25, -2(x31) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, 1 # sub immediate from rs1 to counter offset
li x17, 0xb4083394f335b403 # load x3 with value 0xb4083394f335b403
sw x17, -1(x20) # store 0xb4083394f335b403 in memory
flw f15, -1(x20) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, -1694
add x16, x7, x25 # perform first operation
flw f27, 1694(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
addi x13, x13, 1326
add x26, x31, x7 # perform first operation
flw f8, -1326(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, 700
add x1, x20, x31 # perform first operation
flw f10, -700(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x2, scratch
addi x2, x2, -50
fmul.s f10, f12, f8 # perform first operation
flw f10, 50(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x2, scratch
addi x2, x2, 254
fmul.s f10, f21, f24 # perform first operation
flw f10, -254(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x29, scratch
addi x29, x29, -1048
fmul.s f7, f8, f13 # perform first operation
flw f7, 1048(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
addi x19, x19, -832
fmul.s f8, f30, f3 # perform first operation
flw f30, 832(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x22, scratch
addi x22, x22, -1774
fmul.s f15, f16, f2 # perform first operation
flw f2, 1774(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
addi x24, x24, -1495
fmul.s f19, f11, f3 # perform first operation
flw f17, 1495(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
addi x20, x20, -1741
add x10, x16, x2 # perform first operation
flw f30, 1741(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x11, scratch
addi x11, x11, 1517
add x29, x7, x31 # perform first operation
flw f8, -1517(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x8, scratch
addi x8, x8, 2025
add x18, x19, x2 # perform first operation
flw f25, -2025(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x3, scratch
addi x3, x3, -103
add x3, x3, x0 # perform first operation
flw f20, 103(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, -1839
add x10, x10, x0 # perform first operation
flw f12, 1839(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x3, scratch
addi x3, x3, -516
add x3, x3, x0 # perform first operation
flw f13, 516(x3) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x26, scratch # base address 
addi x26, x26, 94 # sub immediate from rs1 to counter offset
li x13, 0x5d327c9e8cbd2166 # load x3 with value 0x5d327c9e8cbd2166
sw x13, -94(x26) # store 0x5d327c9e8cbd2166 in memory
flw f0, -94(x26) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x16, scratch # base address 
addi x16, x16, -535 # sub immediate from rs1 to counter offset
li x30, 0xf3c7260fa8fc3763 # load x3 with value 0xf3c7260fa8fc3763
sw x30, 535(x16) # store 0xf3c7260fa8fc3763 in memory
flw f1, 535(x16) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x12, scratch # base address 
addi x12, x12, 1914 # sub immediate from rs1 to counter offset
li x22, 0xacc62b8c7e1c92ac # load x3 with value 0xacc62b8c7e1c92ac
sw x22, -1914(x12) # store 0xacc62b8c7e1c92ac in memory
flw f2, -1914(x12) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x6, scratch # base address 
addi x6, x6, 1469 # sub immediate from rs1 to counter offset
li x30, 0xd3050a5ae1388c8d # load x3 with value 0xd3050a5ae1388c8d
sw x30, -1469(x6) # store 0xd3050a5ae1388c8d in memory
flw f3, -1469(x6) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x21, scratch # base address 
addi x21, x21, 722 # sub immediate from rs1 to counter offset
li x13, 0x19e00d9821fabf99 # load x3 with value 0x19e00d9821fabf99
sw x13, -722(x21) # store 0x19e00d9821fabf99 in memory
flw f4, -722(x21) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x17, scratch # base address 
addi x17, x17, -1578 # sub immediate from rs1 to counter offset
li x7, 0xfae7d9a369e72cfc # load x3 with value 0xfae7d9a369e72cfc
sw x7, 1578(x17) # store 0xfae7d9a369e72cfc in memory
flw f5, 1578(x17) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, 973 # sub immediate from rs1 to counter offset
li x28, 0x505ee90cdc3f160c # load x3 with value 0x505ee90cdc3f160c
sw x28, -973(x5) # store 0x505ee90cdc3f160c in memory
flw f6, -973(x5) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x24, scratch # base address 
addi x24, x24, -107 # sub immediate from rs1 to counter offset
li x31, 0x117d3620ffb9448f # load x3 with value 0x117d3620ffb9448f
sw x31, 107(x24) # store 0x117d3620ffb9448f in memory
flw f7, 107(x24) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x19, scratch # base address 
addi x19, x19, -517 # sub immediate from rs1 to counter offset
li x1, 0xe8bf6b05f3c03ef5 # load x3 with value 0xe8bf6b05f3c03ef5
sw x1, 517(x19) # store 0xe8bf6b05f3c03ef5 in memory
flw f8, 517(x19) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x25, scratch # base address 
addi x25, x25, -1253 # sub immediate from rs1 to counter offset
li x21, 0xcd2e86f924abd4e6 # load x3 with value 0xcd2e86f924abd4e6
sw x21, 1253(x25) # store 0xcd2e86f924abd4e6 in memory
flw f9, 1253(x25) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x20, scratch # base address 
addi x20, x20, 395 # sub immediate from rs1 to counter offset
li x22, 0x98894d06cf0dbd5e # load x3 with value 0x98894d06cf0dbd5e
sw x22, -395(x20) # store 0x98894d06cf0dbd5e in memory
flw f10, -395(x20) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x13, scratch # base address 
addi x13, x13, 1393 # sub immediate from rs1 to counter offset
li x27, 0xc25626d3671b1716 # load x3 with value 0xc25626d3671b1716
sw x27, -1393(x13) # store 0xc25626d3671b1716 in memory
flw f11, -1393(x13) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x7, scratch # base address 
addi x7, x7, -1291 # sub immediate from rs1 to counter offset
li x24, 0xa0ca0540993d9ef2 # load x3 with value 0xa0ca0540993d9ef2
sw x24, 1291(x7) # store 0xa0ca0540993d9ef2 in memory
flw f12, 1291(x7) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x26, scratch # base address 
addi x26, x26, -1576 # sub immediate from rs1 to counter offset
li x11, 0x2466f99d75ae558a # load x3 with value 0x2466f99d75ae558a
sw x11, 1576(x26) # store 0x2466f99d75ae558a in memory
flw f13, 1576(x26) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x23, scratch # base address 
addi x23, x23, -726 # sub immediate from rs1 to counter offset
li x15, 0xf62a32bb0a4ef642 # load x3 with value 0xf62a32bb0a4ef642
sw x15, 726(x23) # store 0xf62a32bb0a4ef642 in memory
flw f14, 726(x23) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x22, scratch # base address 
addi x22, x22, 452 # sub immediate from rs1 to counter offset
li x18, 0x53e306bf7c664ee1 # load x3 with value 0x53e306bf7c664ee1
sw x18, -452(x22) # store 0x53e306bf7c664ee1 in memory
flw f15, -452(x22) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x28, scratch # base address 
addi x28, x28, 546 # sub immediate from rs1 to counter offset
li x7, 0x3223b3db8fb81ed7 # load x3 with value 0x3223b3db8fb81ed7
sw x7, -546(x28) # store 0x3223b3db8fb81ed7 in memory
flw f16, -546(x28) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x30, scratch # base address 
addi x30, x30, -1153 # sub immediate from rs1 to counter offset
li x4, 0xff59f75195508ba4 # load x3 with value 0xff59f75195508ba4
sw x4, 1153(x30) # store 0xff59f75195508ba4 in memory
flw f17, 1153(x30) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x26, scratch # base address 
addi x26, x26, -705 # sub immediate from rs1 to counter offset
li x18, 0x8fa5d018e965fa81 # load x3 with value 0x8fa5d018e965fa81
sw x18, 705(x26) # store 0x8fa5d018e965fa81 in memory
flw f18, 705(x26) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x4, scratch # base address 
addi x4, x4, 1021 # sub immediate from rs1 to counter offset
li x27, 0xf6ec915610eabec9 # load x3 with value 0xf6ec915610eabec9
sw x27, -1021(x4) # store 0xf6ec915610eabec9 in memory
flw f19, -1021(x4) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x9, scratch # base address 
addi x9, x9, 1648 # sub immediate from rs1 to counter offset
li x14, 0x76c3b32cf1b19742 # load x3 with value 0x76c3b32cf1b19742
sw x14, -1648(x9) # store 0x76c3b32cf1b19742 in memory
flw f20, -1648(x9) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x20, scratch # base address 
addi x20, x20, 1600 # sub immediate from rs1 to counter offset
li x25, 0x4fb86e403603778f # load x3 with value 0x4fb86e403603778f
sw x25, -1600(x20) # store 0x4fb86e403603778f in memory
flw f21, -1600(x20) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x8, scratch # base address 
addi x8, x8, -756 # sub immediate from rs1 to counter offset
li x15, 0x5938962f293455c4 # load x3 with value 0x5938962f293455c4
sw x15, 756(x8) # store 0x5938962f293455c4 in memory
flw f22, 756(x8) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch # base address 
addi x2, x2, -1468 # sub immediate from rs1 to counter offset
li x27, 0xe6fc47cae8eda732 # load x3 with value 0xe6fc47cae8eda732
sw x27, 1468(x2) # store 0xe6fc47cae8eda732 in memory
flw f23, 1468(x2) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x23, scratch # base address 
addi x23, x23, 578 # sub immediate from rs1 to counter offset
li x22, 0x32ab33f77ea5283f # load x3 with value 0x32ab33f77ea5283f
sw x22, -578(x23) # store 0x32ab33f77ea5283f in memory
flw f24, -578(x23) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x28, scratch # base address 
addi x28, x28, -1449 # sub immediate from rs1 to counter offset
li x12, 0x669296527da4b549 # load x3 with value 0x669296527da4b549
sw x12, 1449(x28) # store 0x669296527da4b549 in memory
flw f25, 1449(x28) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x13, scratch # base address 
addi x13, x13, -1170 # sub immediate from rs1 to counter offset
li x19, 0x391f55c5e25f7701 # load x3 with value 0x391f55c5e25f7701
sw x19, 1170(x13) # store 0x391f55c5e25f7701 in memory
flw f26, 1170(x13) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x17, scratch # base address 
addi x17, x17, 733 # sub immediate from rs1 to counter offset
li x19, 0xf2081e06636720f1 # load x3 with value 0xf2081e06636720f1
sw x19, -733(x17) # store 0xf2081e06636720f1 in memory
flw f27, -733(x17) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x22, scratch # base address 
addi x22, x22, -619 # sub immediate from rs1 to counter offset
li x9, 0xcaec25532fe23860 # load x3 with value 0xcaec25532fe23860
sw x9, 619(x22) # store 0xcaec25532fe23860 in memory
flw f28, 619(x22) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x29, scratch # base address 
addi x29, x29, 1466 # sub immediate from rs1 to counter offset
li x17, 0x80287e61d812cc0c # load x3 with value 0x80287e61d812cc0c
sw x17, -1466(x29) # store 0x80287e61d812cc0c in memory
flw f29, -1466(x29) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x31, scratch # base address 
addi x31, x31, -183 # sub immediate from rs1 to counter offset
li x12, 0x9d9afc065485832d # load x3 with value 0x9d9afc065485832d
sw x12, 183(x31) # store 0x9d9afc065485832d in memory
flw f30, 183(x31) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x27, scratch # base address 
addi x27, x27, -862 # sub immediate from rs1 to counter offset
li x22, 0x452e7c12696846bd # load x3 with value 0x452e7c12696846bd
sw x22, 862(x27) # store 0x452e7c12696846bd in memory
flw f31, 862(x27) # perform operation

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
