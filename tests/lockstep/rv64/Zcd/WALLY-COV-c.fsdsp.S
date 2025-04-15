///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcd/WALLY-COV-c.fsdsp.S
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


# Testcase cp_imm_mul
li x10, 0x84929a36d501c9cc # initialize rs2
fmv.d.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f10, 256(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xe397623c60ba390d # initialize rs2
fmv.d.x f31, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.fsdsp f31, 264(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x3faaefbb0a4ea679 # initialize rs2
fmv.d.x f30, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.fsdsp f30, 272(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x0f8d6b8c281ad254 # initialize rs2
fmv.d.x f7, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.fsdsp f7, 280(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xcb415d520aab592c # initialize rs2
fmv.d.x f14, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f14, 288(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x45d4b101fcd1585a # initialize rs2
fmv.d.x f3, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f3, 296(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf33585c0bf6ecc3d # initialize rs2
fmv.d.x f3, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -304 # offset stack pointer from signature
c.fsdsp f3, 304(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x672b6bd5b3ce7bc2 # initialize rs2
fmv.d.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.fsdsp f10, 312(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x7d47f673c62837c8 # initialize rs2
fmv.d.x f21, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.fsdsp f21, 320(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xd05f1aafd683b97b # initialize rs2
fmv.d.x f18, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.fsdsp f18, 328(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xafa30d2f26654d21 # initialize rs2
fmv.d.x f14, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -336 # offset stack pointer from signature
c.fsdsp f14, 336(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xab4ae304954f5840 # initialize rs2
fmv.d.x f18, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.fsdsp f18, 344(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x5612c311b0b66b4d # initialize rs2
fmv.d.x f31, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.fsdsp f31, 352(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x008d78f475217628 # initialize rs2
fmv.d.x f31, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.fsdsp f31, 360(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xcc6776de53d69d91 # initialize rs2
fmv.d.x f26, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.fsdsp f26, 368(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x012ba1febd106d57 # initialize rs2
fmv.d.x f29, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f29, 376(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x9c9471f43b70a507 # initialize rs2
fmv.d.x f27, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.fsdsp f27, 384(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0xb72baa8348a48632 # initialize rs2
fmv.d.x f16, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.fsdsp f16, 392(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xa34edeb0310bbaf5 # initialize rs2
fmv.d.x f30, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f30, 400(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x85fff751c97466ca # initialize rs2
fmv.d.x f25, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.fsdsp f25, 408(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x1fe1ad4c3ed74bd9 # initialize rs2
fmv.d.x f31, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f31, 416(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x26c03232cecc9e4c # initialize rs2
fmv.d.x f6, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -424 # offset stack pointer from signature
c.fsdsp f6, 424(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xb5a9a2f67373e557 # initialize rs2
fmv.d.x f15, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -432 # offset stack pointer from signature
c.fsdsp f15, 432(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x8970b6c6c3da6ffa # initialize rs2
fmv.d.x f14, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -440 # offset stack pointer from signature
c.fsdsp f14, 440(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x588fbf0218fd5939 # initialize rs2
fmv.d.x f15, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.fsdsp f15, 448(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x0809501c6d975acb # initialize rs2
fmv.d.x f19, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -456 # offset stack pointer from signature
c.fsdsp f19, 456(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x48bee01dcff244a5 # initialize rs2
fmv.d.x f16, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.fsdsp f16, 464(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x3e50330902a3119f # initialize rs2
fmv.d.x f10, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.fsdsp f10, 472(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x929ab969d0ef3fc8 # initialize rs2
fmv.d.x f7, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.fsdsp f7, 480(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xc1e6f5209d9ffc4d # initialize rs2
fmv.d.x f28, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -488 # offset stack pointer from signature
c.fsdsp f28, 488(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x04713b564d422392 # initialize rs2
fmv.d.x f18, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.fsdsp f18, 496(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf2adee2d62bc4fb8 # initialize rs2
fmv.d.x f3, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f3, 504(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x1a1a764a9027cdde # initialize rs2
fmv.d.x f2, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f2, 0(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xf75518c7d025caae # initialize rs2
fmv.d.x f2, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.fsdsp f2, 8(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xe3c952d8aeb94937 # initialize rs2
fmv.d.x f31, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f31, 16(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xbc9557efe90a8ac3 # initialize rs2
fmv.d.x f22, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fsdsp f22, 24(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x8f98682dc71ed4ca # initialize rs2
fmv.d.x f5, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.fsdsp f5, 32(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x0b0b032c68207823 # initialize rs2
fmv.d.x f9, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.fsdsp f9, 40(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x1146f6262f213c99 # initialize rs2
fmv.d.x f8, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f8, 48(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x913baea730370ccc # initialize rs2
fmv.d.x f18, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.fsdsp f18, 56(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x8e97f44292843d65 # initialize rs2
fmv.d.x f20, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f20, 64(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x7f0dc95b8f7d8c72 # initialize rs2
fmv.d.x f23, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f23, 72(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x41b2a3ba9dbb333a # initialize rs2
fmv.d.x f20, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fsdsp f20, 80(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x0bc3f8258e2c81a6 # initialize rs2
fmv.d.x f5, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.fsdsp f5, 88(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x87c1f197f2bbd29a # initialize rs2
fmv.d.x f30, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fsdsp f30, 96(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x893f27c8e668a432 # initialize rs2
fmv.d.x f31, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fsdsp f31, 104(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf131a12818d05852 # initialize rs2
fmv.d.x f12, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f12, 112(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xfc072b44f5b62818 # initialize rs2
fmv.d.x f14, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fsdsp f14, 120(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x0233fbfde2f10957 # initialize rs2
fmv.d.x f12, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.fsdsp f12, 128(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x56657d00c0f35a68 # initialize rs2
fmv.d.x f26, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fsdsp f26, 136(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xd26c5db228b7ce76 # initialize rs2
fmv.d.x f27, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fsdsp f27, 144(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x86eec2b90899cb06 # initialize rs2
fmv.d.x f10, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.fsdsp f10, 152(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xa80017057e9800d2 # initialize rs2
fmv.d.x f9, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fsdsp f9, 160(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xb8325f2e585c83f8 # initialize rs2
fmv.d.x f3, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.fsdsp f3, 168(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x86067b1ce4b464e9 # initialize rs2
fmv.d.x f26, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f26, 176(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xadb0865483e3d3f0 # initialize rs2
fmv.d.x f15, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fsdsp f15, 184(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x85720faf117c3c58 # initialize rs2
fmv.d.x f27, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f27, 192(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x58e755b0fc45a7f0 # initialize rs2
fmv.d.x f9, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fsdsp f9, 200(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x7e1600fa09e0d0ed # initialize rs2
fmv.d.x f11, x5 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.fsdsp f11, 208(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x45f0a78412834d6d # initialize rs2
fmv.d.x f25, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f25, 216(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf69f7ba82e6f8ccb # initialize rs2
fmv.d.x f3, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fsdsp f3, 224(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x2259c211f1c0e8fe # initialize rs2
fmv.d.x f25, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fsdsp f25, 232(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x9ac3bb015c83d7ea # initialize rs2
fmv.d.x f2, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.fsdsp f2, 240(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x3f050ebef19e9188 # initialize rs2
fmv.d.x f24, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f24, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x0, 0x08a9a24a09068c74 # initialize rs2
fmv.d.x f0, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f0, 400(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0xcd46ca8d7cfd9acb # initialize rs2
fmv.d.x f1, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.fsdsp f1, 368(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x2, 0x39e5e522178ca32e # initialize rs2
fmv.d.x f2, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.fsdsp f2, 496(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0x0e782d7d4a1c1b57 # initialize rs2
fmv.d.x f3, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f3, 112(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc144dbe96b1bed41 # initialize rs2
fmv.d.x f4, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.fsdsp f4, 464(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7d33a6d25761d11f # initialize rs2
fmv.d.x f5, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f5, 416(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x114f6647ae4b6ccc # initialize rs2
fmv.d.x f6, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f6, 112(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xebfec1929e4413a9 # initialize rs2
fmv.d.x f7, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f7, 288(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x8, 0xaa3f0f4e5f30a20e # initialize rs2
fmv.d.x f8, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f8, 216(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0xbab5a05bba71c6f9 # initialize rs2
fmv.d.x f9, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f9, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x6417e30f4d691b1f # initialize rs2
fmv.d.x f10, x4 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f10, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x79b91849892855af # initialize rs2
fmv.d.x f11, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.fsdsp f11, 392(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x12, 0x66f096bc7007341e # initialize rs2
fmv.d.x f12, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fsdsp f12, 96(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x27fd107151ee8774 # initialize rs2
fmv.d.x f13, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f13, 288(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x6760d8a5dbe70193 # initialize rs2
fmv.d.x f14, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f14, 72(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0x4cc2114403c8c47f # initialize rs2
fmv.d.x f15, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f15, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x16, 0x54cb6d9773907ed4 # initialize rs2
fmv.d.x f16, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fsdsp f16, 184(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x17, 0x9ce046e4e50ff456 # initialize rs2
fmv.d.x f17, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.fsdsp f17, 472(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0xcfc7a9fc4a86ed9f # initialize rs2
fmv.d.x f18, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.fsdsp f18, 384(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x19, 0x4ef567a3828be9fc # initialize rs2
fmv.d.x f19, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.fsdsp f19, 448(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x20, 0xd5a7f4716a65d2c4 # initialize rs2
fmv.d.x f20, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f20, 0(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x3f30326da24e740a # initialize rs2
fmv.d.x f21, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fsdsp f21, 136(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x3baca468ae5dc300 # initialize rs2
fmv.d.x f22, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f22, 216(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x23, 0x009d15168bc628e7 # initialize rs2
fmv.d.x f23, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fsdsp f23, 120(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x24, 0x73d643a19ebb4a3b # initialize rs2
fmv.d.x f24, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f24, 16(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x25, 0x66e06d43e0ca004c # initialize rs2
fmv.d.x f25, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fsdsp f25, 104(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0xd75225fa07cd5040 # initialize rs2
fmv.d.x f26, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fsdsp f26, 200(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x27, 0xa04dd3d092e927a2 # initialize rs2
fmv.d.x f27, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f27, 48(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0x06a91e38dc0b9226 # initialize rs2
fmv.d.x f28, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f28, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x29, 0xd7c228da05253f06 # initialize rs2
fmv.d.x f29, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f29, 256(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x30, 0x637f08a1037fbe86 # initialize rs2
fmv.d.x f30, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.fsdsp f30, 352(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x31, 0xf30672752ddc8195 # initialize rs2
fmv.d.x f31, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f31, 192(sp)# perform operation

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
