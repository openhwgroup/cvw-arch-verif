///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.sdsp.S
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

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x33d18f574d12ac4f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.sdsp x0, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x851a436ac48f3abe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.sdsp x1, 472(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xd83eb1116e24d8d0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.sdsp x2, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x71aa106d7cc54f1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.sdsp x3, 480(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x536ff75e341b0401 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.sdsp x4, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x105f6a17a9affd80 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x5, 264(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0x5a5c58429944785a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.sdsp x6, 168(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb1563cdb4ef94706 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.sdsp x7, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x07982c757b123657 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x8, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x015ec218317cfbfa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.sdsp x9, 472(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x1f79898e8467d8eb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.sdsp x10, 504(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x5068fa58b132372a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.sdsp x11, 504(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x4ceabd718d93af81 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.sdsp x12, 8(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x7488ca424fdc804b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.sdsp x13, 376(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x58ef53fff5cbc3b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.sdsp x14, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xe5699adc6850740c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.sdsp x15, 288(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x4039140e75d9fa94 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.sdsp x16, 272(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x2ae1870915bf6b7f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.sdsp x17, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x1d03bb2d5c8fc3a9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.sdsp x18, 280(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x15023a441ebba8b5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.sdsp x19, 296(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x38cdb6a45bf81221 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.sdsp x20, 352(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x5236a80aa02f0ff2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.sdsp x21, 280(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xe895d83b56a27d0c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.sdsp x22, 328(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x1c7c1ab56ab70fa3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.sdsp x23, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xfba31a73b5c8c2c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.sdsp x24, 272(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x0ae982e16b31d215 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x25, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x89dbf7e38e10d5d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.sdsp x26, 384(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x5e8db7176617f784 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x27, 264(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x3997f834c9dcb8ca # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.sdsp x28, 32(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x0efdd3a7075490d2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.sdsp x29, 32(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xeb2f85a4e4135964 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.sdsp x30, 56(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x75f02519f817c05a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.sdsp x31, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.sdsp x19, 176(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.sdsp x10, 224(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.sdsp x24, 112(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.sdsp x11, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.sdsp x31, 320(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.sdsp x12, 240(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x5, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x28, 264(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.sdsp x21, 8(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.sdsp x16, 384(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.sdsp x7, 136(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.sdsp x11, 360(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.sdsp x17, 104(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.sdsp x13, 256(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.sdsp x30, 408(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.sdsp x23, 88(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xa9b9c372e974cbc1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.sdsp x29, 0(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xbb4f259ed7494ac8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.sdsp x12, 8(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x842f8949e41fbaf7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.sdsp x14, 16(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xc89a4340dbdf2615 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.sdsp x27, 24(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xc2a631e63f18b79c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.sdsp x20, 32(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xf778c66053aabcbd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.sdsp x9, 40(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xb0197b6fc331663e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.sdsp x5, 48(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x19434aba1d3c740c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.sdsp x22, 56(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xf1eb79a68484acb6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.sdsp x2, 64(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x51b7f0d2e348544b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.sdsp x28, 72(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x44c3dd45bffa094b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.sdsp x11, 80(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x1f975e9bc65a5d7e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.sdsp x17, 88(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xf7dd8daa14088161 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.sdsp x18, 96(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x49318d4129857e9d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.sdsp x15, 104(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xb053ebc7a656231f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.sdsp x18, 112(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x314be2d69bfa1eb0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.sdsp x21, 120(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x701a53d49cb6d0b4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.sdsp x8, 128(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x6429acbb65619efe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.sdsp x18, 136(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x756378fc732c51a3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.sdsp x13, 144(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x98018b9845bfa117 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.sdsp x26, 152(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xc0e8ab2b8766b985 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.sdsp x30, 160(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x5883a246cd38fb1f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.sdsp x8, 168(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x29e80d9422f6a841 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.sdsp x29, 176(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xd80a26c6b80c2a41 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.sdsp x23, 184(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x8ad3c4d3e27c7703 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.sdsp x5, 192(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x68df72c64b74797c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.sdsp x15, 200(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x5bbf91b1ea0f3981 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.sdsp x20, 208(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x510df04cd1d6a0b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.sdsp x14, 216(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x93373b080d3327e3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.sdsp x14, 224(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xeebbc72fca812037 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.sdsp x31, 232(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x20b8765f8aed2265 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.sdsp x29, 240(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x9573414a6252bb1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.sdsp x9, 248(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x5ca283eff9f3b0e0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.sdsp x3, 256(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x780437f12f33790c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.sdsp x20, 264(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x4a0210fa24dd8b6b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.sdsp x22, 272(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x9c213184085db342 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.sdsp x29, 280(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x64c1076f5cf5a6e9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.sdsp x22, 288(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xa99c5bdef21f6b1f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.sdsp x8, 296(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xa12e66e0aedbb92d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -304 # offset stack pointer from signature
c.sdsp x25, 304(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xa68fcb150a1f766e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.sdsp x26, 312(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xd53662e3d4928bae # initialize rs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.sdsp x13, 320(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x1adc6a816120b0c3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.sdsp x14, 328(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x6f4a78fec05e253b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # offset stack pointer from signature
c.sdsp x10, 336(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0xe3ace52dcda87901 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.sdsp x16, 344(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x33130f224306f7a6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.sdsp x29, 352(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xf561a618756ff5c3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.sdsp x7, 360(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x73628cd2f55677cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.sdsp x27, 368(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x5628f2143bcb6140 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.sdsp x13, 376(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x3b4a5f30a9be925c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.sdsp x22, 384(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x01f1e810f351662d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.sdsp x15, 392(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x00660c9f30c9f667 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.sdsp x31, 400(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x9d098df191a29a4a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.sdsp x31, 408(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x30db00400f2d373c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.sdsp x31, 416(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x9423fffa425fecee # initialize rs2
la sp, scratch # base address 
addi sp, sp, -424 # offset stack pointer from signature
c.sdsp x21, 424(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x9b026fafeed79674 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -432 # offset stack pointer from signature
c.sdsp x6, 432(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xeb978e32bc4c98d3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # offset stack pointer from signature
c.sdsp x31, 440(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xf8784b502c782cbf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.sdsp x11, 448(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x7f0c917071084226 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # offset stack pointer from signature
c.sdsp x8, 456(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x403d1f8df0e5f71e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.sdsp x1, 464(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xeac0c8842b481fb1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.sdsp x8, 472(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xc8080ef6c19e9bad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.sdsp x8, 480(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x44c21f52f3e12df8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -488 # offset stack pointer from signature
c.sdsp x18, 488(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x652a7df8fec70290 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.sdsp x25, 496(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xf33747db9ed27fac # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.sdsp x1, 504(sp)# perform operation

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
