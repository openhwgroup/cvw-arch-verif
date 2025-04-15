///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.addi16sp.S
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

    
# Testcase cp_imm_mul
li x8, 0x395a58168403f990 # initialize rs1
c.addi16sp sp, -512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cp_imm_mul
li x5, 0xd4ac78b6d04d0485 # initialize rs1
c.addi16sp sp, -496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_imm_mul
li x8, 0x382d47ee4e3e4b2f # initialize rs1
c.addi16sp sp, -480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_imm_mul
li x19, 0x0dc287145ee167e7 # initialize rs1
c.addi16sp sp, -464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_imm_mul
li x17, 0x9f11672166d7e81d # initialize rs1
c.addi16sp sp, -448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_imm_mul
li x18, 0x189a0b7f6970dc5f # initialize rs1
c.addi16sp sp, -432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cp_imm_mul
li x1, 0xb3dcc1c19f82a5e9 # initialize rs1
c.addi16sp sp, -416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cp_imm_mul
li x21, 0x930b87c906655b4f # initialize rs1
c.addi16sp sp, -400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 56)

# Testcase cp_imm_mul
li x9, 0x96dd13b319cfd70a # initialize rs1
c.addi16sp sp, -384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_imm_mul
li x5, 0x4895076524774f58 # initialize rs1
c.addi16sp sp, -368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_imm_mul
li x13, 0x838d575835750b18 # initialize rs1
c.addi16sp sp, -352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_imm_mul
li x19, 0x166054ff396def80 # initialize rs1
c.addi16sp sp, -336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_imm_mul
li x24, 0x69d40224777ca0d9 # initialize rs1
c.addi16sp sp, -320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_imm_mul
li x31, 0x3b8010e59dfc81c1 # initialize rs1
c.addi16sp sp, -304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_imm_mul
li x15, 0xf8ccf56df827266f # initialize rs1
c.addi16sp sp, -288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_imm_mul
li x23, 0xff4a117b467acbf3 # initialize rs1
c.addi16sp sp, -272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_imm_mul
li x5, 0x85dab7f4fc750f4b # initialize rs1
c.addi16sp sp, -256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_imm_mul
li x30, 0x4e09ecbd28576d8b # initialize rs1
c.addi16sp sp, -240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_imm_mul
li x30, 0x3c20400728301557 # initialize rs1
c.addi16sp sp, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_imm_mul
li x7, 0x9eab5fa1dbfbbc75 # initialize rs1
c.addi16sp sp, -208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_imm_mul
li x2, 0xbf3eb4dfda6da188 # initialize rs1
c.addi16sp sp, -192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_imm_mul
li x16, 0x65a778a69cf8167f # initialize rs1
c.addi16sp sp, -176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_imm_mul
li x10, 0x52238e7cff7e3709 # initialize rs1
c.addi16sp sp, -160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_imm_mul
li x11, 0xb8e6fb9ed82bf436 # initialize rs1
c.addi16sp sp, -144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_imm_mul
li x10, 0x856f7b11a999b61e # initialize rs1
c.addi16sp sp, -128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_imm_mul
li x25, 0xfb003bcd61f66d38 # initialize rs1
c.addi16sp sp, -112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_imm_mul
li x2, 0x2ae3642e7ded6149 # initialize rs1
c.addi16sp sp, -96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_imm_mul
li x26, 0xc89728309d02fe1b # initialize rs1
c.addi16sp sp, -80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_imm_mul
li x2, 0xcf52c357793e9737 # initialize rs1
c.addi16sp sp, -64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cp_imm_mul
li x2, 0x91ae58d0d324f165 # initialize rs1
c.addi16sp sp, -48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_imm_mul
li x11, 0xea96e3e9548bb74d # initialize rs1
c.addi16sp sp, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_imm_mul
li x2, 0xb66d22876294bd58 # initialize rs1
c.addi16sp sp, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_imm_mul
li x31, 0x38b23146702ccd5c # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_imm_mul
li x24, 0x0d4910b4ca40c5ec # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_imm_mul
li x18, 0x77e9f04115e8dcbb # initialize rs1
c.addi16sp sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_imm_mul
li x7, 0xd1d503f4bad9be00 # initialize rs1
c.addi16sp sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_imm_mul
li x17, 0xdc89928e1eb070cf # initialize rs1
c.addi16sp sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_imm_mul
li x24, 0xb782d04df1a873bd # initialize rs1
c.addi16sp sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 296)

# Testcase cp_imm_mul
li x5, 0x9f24da6dbd94e497 # initialize rs1
c.addi16sp sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 304)

# Testcase cp_imm_mul
li x11, 0x393d830fd05e24e8 # initialize rs1
c.addi16sp sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cp_imm_mul
li x12, 0xbff11d4564614f54 # initialize rs1
c.addi16sp sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cp_imm_mul
li x5, 0xac5ffb7bc37addad # initialize rs1
c.addi16sp sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_imm_mul
li x13, 0xdc76ac05b63aec06 # initialize rs1
c.addi16sp sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cp_imm_mul
li x6, 0x9249669107434a5c # initialize rs1
c.addi16sp sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cp_imm_mul
li x7, 0x9b95be8bc7582273 # initialize rs1
c.addi16sp sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cp_imm_mul
li x27, 0x2e8bca430dfe766f # initialize rs1
c.addi16sp sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_imm_mul
li x30, 0x29817e9b659e0c57 # initialize rs1
c.addi16sp sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cp_imm_mul
li x31, 0x6aedc2b335ba5751 # initialize rs1
c.addi16sp sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cp_imm_mul
li x5, 0x46a3653abd09890a # initialize rs1
c.addi16sp sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_imm_mul
li x3, 0xacbb17bc7438347f # initialize rs1
c.addi16sp sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_imm_mul
li x15, 0x4c8439dbe668d662 # initialize rs1
c.addi16sp sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_imm_mul
li x30, 0x90ce1e78af63f79b # initialize rs1
c.addi16sp sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_imm_mul
li x10, 0x795ab02b2701135b # initialize rs1
c.addi16sp sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_imm_mul
li x10, 0x8c88692bd65b21d6 # initialize rs1
c.addi16sp sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_imm_mul
li x18, 0x409d385226bf601c # initialize rs1
c.addi16sp sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_imm_mul
li x20, 0x2333d3d73e54a2fe # initialize rs1
c.addi16sp sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_imm_mul
li x3, 0xf9a86561ac18b7ae # initialize rs1
c.addi16sp sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_imm_mul
li x3, 0x6282162869148058 # initialize rs1
c.addi16sp sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 456)

# Testcase cp_imm_mul
li x16, 0x9019a28727a427e9 # initialize rs1
c.addi16sp sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_imm_mul
li x23, 0xef9aedf080626e41 # initialize rs1
c.addi16sp sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_imm_mul
li x6, 0x06db25520548aade # initialize rs1
c.addi16sp sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cp_imm_mul
li x28, 0xb9de1fe3f5f4dab2 # initialize rs1
c.addi16sp sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cp_imm_mul
li x19, 0x4601403c3c7de06e # initialize rs1
c.addi16sp sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_imm_mul
li x23, 0xca70e82e622f4c7b # initialize rs1
c.addi16sp sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

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
