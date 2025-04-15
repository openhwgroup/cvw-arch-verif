///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-remw.S
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

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xc42658e62389600b # initialize rs1
li x10, 0x4fe381abc0bd6c7f # initialize rs2
remw x3, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7d640421fec87ff6 # initialize rs1
li x20, 0x23f2d7cb9a8076a2 # initialize rs2
remw x2, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x45ae885fc8177978 # initialize rs1
li x30, 0x1bc61a58c8124e1a # initialize rs2
remw x18, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf30e5fb7fa9be9bd # initialize rs1
li x29, 0x2979b8bb59b418a5 # initialize rs2
remw x9, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x02687faf4f24b015 # initialize rs1
li x23, 0xc9e3bdc2d0e3cf43 # initialize rs2
remw x30, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x83ab94a51835a273 # initialize rs1
li x30, 0x167a2b2bf320e16e # initialize rs2
remw x27, x5, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdc1a8263148f7dee # initialize rs1
li x5, 0x2736d5bd809579a3 # initialize rs2
remw x21, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x78dc41504579106e # initialize rs1
li x25, 0xb9943885e62cf9df # initialize rs2
remw x8, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xdfe19de717227ba9 # initialize rs1
li x15, 0x1243a8fe2b10dfe3 # initialize rs2
remw x18, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbdc8ac9c3c0e5b63 # initialize rs1
li x30, 0x999a653a3641d5b6 # initialize rs2
remw x23, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xcf033a5e49402e47 # initialize rs1
li x27, 0xca5d7ba0f29bc769 # initialize rs2
remw x5, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbed130defc336162 # initialize rs1
li x21, 0x0e44bbfc17ab90fa # initialize rs2
remw x19, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x99fd4d30ec3f9c90 # initialize rs1
li x13, 0xdde3914a3b69dc4a # initialize rs2
remw x18, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb1c5bd1b0954873d # initialize rs1
li x12, 0x271ef4dbd38afcf5 # initialize rs2
remw x14, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xdf6a9bdb6d54c9ba # initialize rs1
li x18, 0x57479688dfd2c47b # initialize rs2
remw x8, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe3afd547a3691cf1 # initialize rs1
li x21, 0xfcf5fcb40114d7dd # initialize rs2
remw x31, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc3f709dc56dbe2d7 # initialize rs1
li x5, 0xfc5346dd03e03259 # initialize rs2
remw x24, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2b0217868ce1c202 # initialize rs1
li x7, 0x48426d95ec817bb5 # initialize rs2
remw x18, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x16909e42a296a8a7 # initialize rs1
li x30, 0xf65b608204863899 # initialize rs2
remw x24, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x459956711850c2c5 # initialize rs1
li x26, 0x1516363651a06a0d # initialize rs2
remw x23, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x705789e0015f86f2 # initialize rs1
li x23, 0xf95c601f31796140 # initialize rs2
remw x18, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9ac8d774753a996d # initialize rs1
li x13, 0xf011a60e0197204d # initialize rs2
remw x23, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x8ae339b8ec2b977a # initialize rs1
li x10, 0x1bddf709bf54e6fa # initialize rs2
remw x16, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5215896c7005604e # initialize rs1
li x5, 0x1de230d12671197d # initialize rs2
remw x14, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x994ce7d86c8d3f64 # initialize rs1
li x26, 0x224ebf417fe154c9 # initialize rs2
remw x1, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xec5b2a314e70c42d # initialize rs1
li x24, 0xb3fee838a70d583e # initialize rs2
remw x23, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1bfb463da8351b2e # initialize rs1
li x21, 0x7f056b9fbc3ed745 # initialize rs2
remw x6, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd914319ddd280cc1 # initialize rs1
li x21, 0xd89734ddaaaefe8c # initialize rs2
remw x20, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfef7b5d37a620628 # initialize rs1
li x1, 0x0d72b1c30c4d3f4b # initialize rs2
remw x31, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x26895005e5d6465c # initialize rs1
li x1, 0x56c778dc4fe55a8e # initialize rs2
remw x23, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3104f7505e04746d # initialize rs1
li x6, 0xfc360ec6ad7a7de9 # initialize rs2
remw x19, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xfe7e66803b72fa5a # initialize rs1
li x26, 0xa09e3880129bd00f # initialize rs2
remw x21, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x4fbe20bffff10b46 # initialize rs1
li x0, 0xb507a9dd10adc8cd # initialize rs2
remw x27, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x1f329a3accb1cde0 # initialize rs1
li x1, 0x5dcc3d6a19136fa2 # initialize rs2
remw x16, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x2ead2ee424323dfd # initialize rs1
li x2, 0xf8cc62d26c8d6787 # initialize rs2
remw x16, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x1f680a98d9a2f237 # initialize rs1
li x3, 0x4c63dd046b842b68 # initialize rs2
remw x22, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x7831cdfda9b25378 # initialize rs1
li x4, 0xf6591871a1af8d2d # initialize rs2
remw x3, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x817e63e7f8e88ad1 # initialize rs1
li x5, 0x4ba0b93f39cffadf # initialize rs2
remw x26, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x0e0ce43606301840 # initialize rs1
li x6, 0x3e4679b30211ad6d # initialize rs2
remw x21, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x937a4eb5062f1daf # initialize rs1
li x7, 0xbaec341bb5c4329f # initialize rs2
remw x28, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x8e0e46fc6b4d5b19 # initialize rs1
li x8, 0xe53ee13631a44ce7 # initialize rs2
remw x7, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x42999be64ccbbdbd # initialize rs1
li x9, 0xcc17c25ceb0d8175 # initialize rs2
remw x23, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x691c038c88e58540 # initialize rs1
li x10, 0xd283e8b51eaef629 # initialize rs2
remw x25, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0xfbe565b3f6fd8219 # initialize rs1
li x11, 0x1ca70928207a8ff1 # initialize rs2
remw x10, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0x7ec9b1d8a68fb7f4 # initialize rs1
li x12, 0x35414ffbfa7abd91 # initialize rs2
remw x15, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xd1bf88f4f947605a # initialize rs1
li x13, 0xdd5b3058e5250a6b # initialize rs2
remw x1, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0xad1b7a66c0eba886 # initialize rs1
li x14, 0x8be5284fa1d40979 # initialize rs2
remw x21, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x7c9e671a08cc9ba7 # initialize rs1
li x15, 0x592d0ebfbc52fc3f # initialize rs2
remw x10, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0x9085aab176440266 # initialize rs1
li x16, 0x2e93870cfb05d8d4 # initialize rs2
remw x26, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x6b1b430cd5afb4bc # initialize rs1
li x17, 0xeb432ed710067c2c # initialize rs2
remw x3, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0x61c986d9b88e2c79 # initialize rs1
li x18, 0x462ee6bc4647e0c5 # initialize rs2
remw x31, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0x64442ca32eac9918 # initialize rs1
li x19, 0x6633e2645dda45cf # initialize rs2
remw x20, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0x321e4d405f31800e # initialize rs1
li x20, 0x0507eefd8a2cd4bf # initialize rs2
remw x31, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0xcaded96eea7a278d # initialize rs1
li x21, 0xd3792c3dbafe942b # initialize rs2
remw x11, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x3, 0x947024c4a79bdbe6 # initialize rs1
li x22, 0xf7be211fd642bd0e # initialize rs2
remw x29, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x7, 0xb8896cd009d2094f # initialize rs1
li x23, 0x8694638137fb2509 # initialize rs2
remw x2, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x2c3ea853b24c0815 # initialize rs1
li x24, 0x691af86dcd5b0f1e # initialize rs2
remw x11, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x3f081fd8eafa21fa # initialize rs1
li x25, 0x576c54432781fd5e # initialize rs2
remw x11, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xd7d1cdf5fb95d57b # initialize rs1
li x26, 0x376a0f16031359dd # initialize rs2
remw x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x9965606268396068 # initialize rs1
li x27, 0x4781957173102118 # initialize rs2
remw x2, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0x9e8a2e7dc3595854 # initialize rs1
li x28, 0x1ca1be23680f11a1 # initialize rs2
remw x10, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0x88096e80045297ec # initialize rs1
li x29, 0xc2758def03fe2343 # initialize rs2
remw x19, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x217653bdd152a0b8 # initialize rs1
li x30, 0x8988973d028929d1 # initialize rs2
remw x3, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0x2034252466b5980f # initialize rs1
li x31, 0x86a0f522ec5eb79e # initialize rs2
remw x7, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0x2d8ec40f9236e202 # initialize rs1
li x2, 0x1b7bfeccda867bb1 # initialize rs2
remw x0, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x14, 0xa509cde65542bb43 # initialize rs1
li x29, 0x41a77cd0c14a5b84 # initialize rs2
remw x1, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x22, 0x9fe32519b6da022a # initialize rs1
li x16, 0x1418b292e9492497 # initialize rs2
remw x2, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x2, 0x97a0766e4020146a # initialize rs1
li x19, 0x8b8f80eaf43a0978 # initialize rs2
remw x3, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x8e3e1c3e4cf5c97d # initialize rs1
li x29, 0xf50fe5cd6a04fa12 # initialize rs2
remw x4, x10, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x2bc1e722b893f23f # initialize rs1
li x20, 0xeb99da8c9ed96509 # initialize rs2
remw x5, x25, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0xe91967134e150152 # initialize rs1
li x19, 0x9a59fe4dcfe84094 # initialize rs2
remw x6, x18, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x00461c7f3f2c3b9a # initialize rs1
li x25, 0x9f785cbda970d93d # initialize rs2
remw x7, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x5930ba070d1a7f43 # initialize rs1
li x19, 0x7f8d1189c76fcde6 # initialize rs2
remw x8, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xa9caf578eaaa2bb9 # initialize rs1
li x25, 0x5995049826ccef55 # initialize rs2
remw x9, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x77e0b5bccef6160f # initialize rs1
li x22, 0x88c637e7d29572ee # initialize rs2
remw x10, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0xbf9e422e73904138 # initialize rs1
li x7, 0x31320186ce530f6b # initialize rs2
remw x11, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x173a8322688fb515 # initialize rs1
li x6, 0x2a35b8fa7988f01f # initialize rs2
remw x12, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x31, 0x9980cde981c602eb # initialize rs1
li x11, 0x6d182e1e543a5c38 # initialize rs2
remw x13, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0xf0dfa98f40beb763 # initialize rs1
li x20, 0xa3d59494565f65a4 # initialize rs2
remw x14, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x4059b34e8b46c8ce # initialize rs1
li x17, 0x4117cddb4ae56671 # initialize rs2
remw x15, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x3706373cc5934167 # initialize rs1
li x3, 0x546afd580f8d1ee4 # initialize rs2
remw x16, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0x8b031aaffee52b44 # initialize rs1
li x5, 0x88c7b8e2b06d93be # initialize rs2
remw x17, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0xfaf130e68499d883 # initialize rs1
li x10, 0xf0587e771a93b621 # initialize rs2
remw x18, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x4dc75cd74090beef # initialize rs1
li x7, 0x6e8c71bc78e98852 # initialize rs2
remw x19, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0xd3e319efee0c0748 # initialize rs1
li x22, 0x6888e38f63d15d3c # initialize rs2
remw x20, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x31, 0x4474435f2e84b5e5 # initialize rs1
li x18, 0x306ec88c4ea2feaa # initialize rs2
remw x21, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x2ae5e3194e2fb1d8 # initialize rs1
li x18, 0xd53fdd7ed036adff # initialize rs2
remw x22, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x75390ecf6f6d7f94 # initialize rs1
li x14, 0x0ab5dd57c29e7ec4 # initialize rs2
remw x23, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0xd8c6709d4b3abef9 # initialize rs1
li x18, 0x5d229e2cf83cb9f3 # initialize rs2
remw x24, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x1a560618be887cbc # initialize rs1
li x20, 0x6cd4b719ae3ff410 # initialize rs2
remw x25, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x57db8b1105ff29ea # initialize rs1
li x20, 0xe9102f2848873a12 # initialize rs2
remw x26, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0xeddfb97bcb6c862e # initialize rs1
li x12, 0x8bb240f663d6191d # initialize rs2
remw x27, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x50ce629c4a0e4eed # initialize rs1
li x26, 0x2d0551a845c7162d # initialize rs2
remw x28, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xe7178dfe6fac1954 # initialize rs1
li x23, 0x77cec6e8d8c8db06 # initialize rs2
remw x29, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x31, 0xc09eb5a0cda28666 # initialize rs1
li x24, 0xb3f7c7279d3a98a5 # initialize rs2
remw x30, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0x4ccaee1f90d89dd9 # initialize rs1
li x15, 0x4163dbd2bd3ce169 # initialize rs2
remw x31, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x18, 0x837fa263810a4d11 # initialize rs2
remw x1, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rs1
li x6, 0x457400637d33ec26 # initialize rs2
remw x23, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x0000000000000002 # initialize rs1
li x21, 0x0c03db59546e3c8e # initialize rs2
remw x29, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x1, 0x8bb3c004a3c9a584 # initialize rs2
remw x22, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
li x12, 0xe4ebbdceeefc4284 # initialize rs2
remw x10, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0xc2bc908ccfb80b59 # initialize rs2
remw x14, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x20, 0x03c97d03176e1afc # initialize rs2
remw x21, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x11, 0xf30126124e32f0cd # initialize rs2
remw x26, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x29, 0x4e489f127007c816 # initialize rs2
remw x17, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xf9f4f50667455538 # initialize rs2
remw x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xec563980aee2db0e # initialize rs2
remw x10, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x13, 0xf0d250d2daae2c6c # initialize rs2
remw x20, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x31, 0xe3715722e5d9e9b8 # initialize rs2
remw x9, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x15, 0x87067b2e82ad0257 # initialize rs2
remw x8, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
li x28, 0xc6cfff5e3010d79a # initialize rs2
remw x9, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x2, 0xaddf5995b42c7864 # initialize rs2
remw x5, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0x62753542e2e99f6c # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
remw x1, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xa8189dcd92db8f27 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
remw x22, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0x1b06f4c6517b9457 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remw x27, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x14, 0xc6710f19ca5cb858 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
remw x17, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x15, 0x8b7f720e61aa5937 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
remw x18, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x32011816883942be # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
remw x23, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x18, 0x069742dd75fa1877 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
remw x24, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0xdd17ebadd70736d5 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remw x15, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x9918c2e91087b6fe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
remw x20, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xa448b1d15901152c # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
remw x22, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x078880e279cd6e33 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x23, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0xd938794d6273641f # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
remw x19, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xcbe0b02d50bfbac7 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
remw x9, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x7e847598e3fb9be6 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
remw x14, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x28, 0xe2869f6a5e5b93c0 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
remw x17, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0x9880dfaf8828f00c # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
remw x18, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
remw x12, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
remw x19, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
remw x27, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x27, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
remw x23, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
remw x12, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remw x30, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remw x19, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
remw x27, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remw x5, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
remw x30, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x11, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x8, 0x0000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
remw x16, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
remw x16, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x0000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
remw x11, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x3, 0x0000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
remw x24, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x28, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
remw x26, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x28, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
remw x26, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
remw x1, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x25, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remw x28, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remw x1, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x3, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
remw x6, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remw x16, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remw x16, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
remw x7, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
remw x29, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000000000001 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
remw x2, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x29, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x6, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
remw x9, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0x0000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
remw x8, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
remw x28, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remw x15, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
remw x10, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x27, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
remw x18, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x14, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
remw x3, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remw x1, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x9, 0x0000000000000002 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
remw x3, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x11, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
remw x5, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
remw x30, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remw x5, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
remw x9, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
remw x7, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000002 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remw x2, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x24, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x27, 0x0000000000000002 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
remw x7, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
remw x27, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x26, 0x0000000000000002 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
remw x10, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x5, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
remw x30, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x0000000000000002 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
remw x11, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x8, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
remw x25, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x31, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
remw x15, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x30, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remw x31, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
remw x29, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x27, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
remw x30, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
remw x19, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
remw x22, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
remw x5, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
remw x3, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
remw x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x8000000000000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x3, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x11, 0x8000000000000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
remw x29, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
remw x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
remw x12, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
remw x14, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x6, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
remw x16, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x26, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
remw x2, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x2, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
remw x20, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x29, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remw x18, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x17, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
remw x1, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
remw x9, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remw x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
remw x23, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
remw x7, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
remw x17, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000001 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
remw x20, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x1, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0x8000000000000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remw x21, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remw x24, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
remw x30, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x21, 0x8000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
remw x28, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x5, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
remw x11, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x10, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
remw x5, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
remw x14, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x10, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
remw x14, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
remw x13, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
remw x8, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
remw x10, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
remw x6, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
remw x26, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
remw x7, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x7fffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
remw x6, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7fffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x15, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x18, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
remw x19, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x23, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
remw x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
remw x26, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x28, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
remw x19, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x22, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
remw x14, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x16, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
remw x12, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remw x24, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x14, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
remw x22, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x26, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
remw x10, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
remw x2, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
remw x7, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remw x23, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remw x17, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
remw x7, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x7ffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
remw x3, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7ffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x15, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remw x2, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
remw x28, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remw x24, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x13, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
remw x2, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x24, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
remw x7, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x19, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remw x24, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x15, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
remw x7, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x27, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
remw x18, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x12, 0xffffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
remw x17, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x8, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
remw x13, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
remw x19, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remw x8, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
remw x20, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remw x13, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
remw x11, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x23, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
remw x17, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
remw x14, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
remw x20, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x31, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
remw x30, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x2, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
remw x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x6, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
remw x2, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
remw x26, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
remw x12, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remw x16, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
remw x6, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
remw x10, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
remw x22, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
remw x28, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remw x21, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0xfffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
remw x16, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x15, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xfffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remw x27, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
remw x26, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
remw x3, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x11, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
remw x20, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remw x17, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
remw x16, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
remw x8, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
remw x23, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
remw x31, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
remw x22, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
remw x3, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remw x18, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
remw x11, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
remw x16, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
remw x21, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x28, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
remw x9, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
remw x25, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
remw x23, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
remw x30, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
remw x30, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
remw x10, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
remw x19, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
remw x23, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
remw x25, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
remw x25, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remw x29, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remw x19, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
remw x15, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
remw x5, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
remw x6, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x29, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
remw x7, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
remw x14, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remw x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
remw x28, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
remw x8, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x17, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
remw x15, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x8, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
remw x23, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x13, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
remw x30, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x2, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remw x1, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
remw x29, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
remw x29, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
remw x3, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x31, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
remw x22, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
remw x10, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x22, 0x5555555555555555 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
remw x13, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5555555555555555 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x21, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
remw x30, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remw x12, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
remw x19, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x6, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
remw x20, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x18, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
remw x3, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
remw x10, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
remw x18, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remw x3, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x13, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
remw x3, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
remw x28, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
remw x28, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000ffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
remw x18, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remw x12, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
remw x26, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
remw x18, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000ffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x23, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x8, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remw x1, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
remw x14, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
remw x10, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x5, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
remw x19, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x14, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
remw x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
remw x19, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
remw x29, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remw x28, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x6, 0x00000000fffffffe # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
remw x7, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x13, 0x00000000fffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
remw x11, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
remw x18, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
remw x9, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remw x27, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remw x12, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
remw x12, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x14, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x24, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
remw x16, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
remw x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
remw x2, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
remw x18, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x24, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
remw x26, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x13, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
remw x6, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x11, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
remw x10, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x30, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
remw x13, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x0000000100000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
remw x13, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x15, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
remw x24, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
remw x3, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
remw x8, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
remw x9, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
remw x14, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000100000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
remw x19, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x29, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x16, 0x0000000100000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remw x18, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x2, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
remw x3, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remw x9, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
remw x6, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x6, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
remw x30, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x26, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
remw x1, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x1, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
remw x6, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x15, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
remw x11, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x24, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
remw x31, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
remw x23, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
remw x26, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remw x15, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x30, 0x0000000100000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remw x18, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remw x27, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
remw x17, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000100000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
remw x1, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
remw x17, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remw x5, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
remw x23, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x21, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
remw x10, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
remw x15, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x014200d60e6faaa8 # initialize rs1
li x0, 0xe6a08c8237faca0e # initialize rs2
remw x16, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x80212c00c0843625 # initialize rs1
li x1, 0x1af20d452510811b # initialize rs2
remw x15, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x37ce2473ddaa118f # initialize rs1
li x2, 0x49a164c034162d47 # initialize rs2
remw x30, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6ac961714ea1a444 # initialize rs1
li x3, 0x0aa72250e74ad046 # initialize rs2
remw x19, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf5cb56c52a06681f # initialize rs1
li x4, 0xc3cc13005540e57b # initialize rs2
remw x8, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x508c2dd761f2224b # initialize rs1
li x5, 0xb3778015f4388184 # initialize rs2
remw x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe170f9d1b768a5d8 # initialize rs1
li x6, 0x393f8deb4535a733 # initialize rs2
remw x7, x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0x7f4f7658ca46ebcd # initialize rs1
li x7, 0xd099749dbb54f427 # initialize rs2
remw x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc980aac2a1113612 # initialize rs1
li x8, 0x9a6154d00afbb34c # initialize rs2
remw x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5eb57e94683f4a51 # initialize rs1
li x9, 0x6f787c71bc412163 # initialize rs2
remw x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb232396ebf340f79 # initialize rs1
li x10, 0xf70a96f533efbdf3 # initialize rs2
remw x17, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf4b59052f392284c # initialize rs1
li x11, 0x1689e78b983ac248 # initialize rs2
remw x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa6c31d6dab30ac47 # initialize rs1
li x12, 0x8a566a4c1d7349ea # initialize rs2
remw x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x79f07813484c04e4 # initialize rs1
li x13, 0x068e76d15c4d2dfa # initialize rs2
remw x24, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa0aee0edbebe23d7 # initialize rs1
li x14, 0x655221f09cc1fb72 # initialize rs2
remw x3, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1cdf7ac5a3ca0cb7 # initialize rs1
li x15, 0xdc842bf67ce1b02d # initialize rs2
remw x30, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x77b5f005740e4b12 # initialize rs1
li x16, 0xcfc093e75d87deea # initialize rs2
remw x21, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x43121c104b4fef38 # initialize rs1
li x17, 0x933e71bdfd11d393 # initialize rs2
remw x3, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfddbd200720608df # initialize rs1
li x18, 0xfe6e8546e259cb5f # initialize rs2
remw x6, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x771cf799a3fe685f # initialize rs1
li x19, 0x0c6182091a932ed4 # initialize rs2
remw x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x59d0ed35b65af687 # initialize rs1
li x20, 0xa37171102006ac8f # initialize rs2
remw x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x9fd53c117ad30e8a # initialize rs1
li x21, 0xbae603023cb73815 # initialize rs2
remw x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x0fa2cd14b29cc69b # initialize rs1
li x22, 0xd1af7253f3e7eefa # initialize rs2
remw x31, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe1bdc5c15dd3c36c # initialize rs1
li x23, 0x3e34e61c705307a5 # initialize rs2
remw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x5afe3eab4976c8e5 # initialize rs1
li x24, 0x8b59b5a4945832a8 # initialize rs2
remw x2, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x2b7d03ace1d4f3b7 # initialize rs1
li x25, 0x937a0b5c4482e414 # initialize rs2
remw x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1ef50bcbdc12c034 # initialize rs1
li x26, 0x45ff70aecf331c1d # initialize rs2
remw x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x65c2e8967174a376 # initialize rs1
li x27, 0x43ab084002820afe # initialize rs2
remw x29, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x665742c30a8fea50 # initialize rs1
li x28, 0xb6cafa27f75ed74f # initialize rs2
remw x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdc2d2aed0ef61eb6 # initialize rs1
li x29, 0x1158971df150f9eb # initialize rs2
remw x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xaf570172b2b32736 # initialize rs1
li x30, 0x688cc09e3f7da9e4 # initialize rs2
remw x1, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x58d9cd9b222fe515 # initialize rs1
li x31, 0xd089f6ad51ffbbf5 # initialize rs2
remw x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x775d9896b2b2df63 # initialize rs1
li x2, 0x845ccd3a94b2a695 # initialize rs2
remw x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xaa017d5dad6698d6 # initialize rs1
li x24, 0x980d265d1f20e63e # initialize rs2
remw x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xaee57270c92a700f # initialize rs1
li x10, 0x92055985369af4f5 # initialize rs2
remw x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9ad29c6352051e1c # initialize rs1
li x20, 0x597e947587847682 # initialize rs2
remw x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6258e89635273b19 # initialize rs1
li x14, 0x7f6a26dc04b78c54 # initialize rs2
remw x4, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa94c292070995e94 # initialize rs1
li x14, 0xde5d025d86d26b37 # initialize rs2
remw x5, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4e12698819887407 # initialize rs1
li x9, 0x0cef7b78ddb45aad # initialize rs2
remw x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb8f4836c60c66fe3 # initialize rs1
li x21, 0xf5b9bf681fbb4587 # initialize rs2
remw x7, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x946a5b235b44a175 # initialize rs1
li x10, 0x3273b9eb09b0d85e # initialize rs2
remw x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc70819e9b4645fda # initialize rs1
li x25, 0x825f527e5ff6a45e # initialize rs2
remw x9, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xdbc06b985f73c7e2 # initialize rs1
li x1, 0xf4b4f92f07305457 # initialize rs2
remw x10, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe11be456d2d7ee05 # initialize rs1
li x16, 0x906141f9ef204dac # initialize rs2
remw x11, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xce59672af20b7c35 # initialize rs1
li x28, 0x87a9e4c9a3586fc8 # initialize rs2
remw x12, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x46c124f42f84cf66 # initialize rs1
li x28, 0x767c91ba4e0359da # initialize rs2
remw x13, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7faab9bd04ea19ba # initialize rs1
li x12, 0x9751b8b3294917e9 # initialize rs2
remw x14, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1592e8692c53e212 # initialize rs1
li x6, 0x42b4eed846d51f19 # initialize rs2
remw x15, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x774a770b2bcc520b # initialize rs1
li x10, 0x638bcd9dfe406467 # initialize rs2
remw x16, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1fcf3c2c637411bc # initialize rs1
li x27, 0x42cc578f43a10086 # initialize rs2
remw x17, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2437485613661303 # initialize rs1
li x2, 0x132ea1fe167fdde9 # initialize rs2
remw x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xdd28517d538ae8ba # initialize rs1
li x25, 0x8724619402dfeac9 # initialize rs2
remw x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x64ce7b66c1a3351c # initialize rs1
li x27, 0x179983ce8bf692dd # initialize rs2
remw x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x05279d759704c9ed # initialize rs1
li x30, 0xddd177465549f063 # initialize rs2
remw x21, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x542128aeaffa4a2f # initialize rs1
li x16, 0xbf7bdb291d05b523 # initialize rs2
remw x22, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x45e3284111399853 # initialize rs1
li x17, 0x597ae4e77fe43ade # initialize rs2
remw x23, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x931b0fc875c8e09f # initialize rs1
li x27, 0x33d7701a6b1ace2c # initialize rs2
remw x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf373cbb946bd710a # initialize rs1
li x11, 0x6ba65328de90f6d7 # initialize rs2
remw x25, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6cf175afc0960834 # initialize rs1
li x15, 0x7767a097bc791f4a # initialize rs2
remw x26, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x88f37b53dd6161a6 # initialize rs1
li x25, 0x579186e564ef73bd # initialize rs2
remw x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x94297542aa79c0bb # initialize rs1
li x10, 0x9087ee9de451622e # initialize rs2
remw x28, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd8fe80e49d481406 # initialize rs1
li x15, 0x40d3bf73fcda78b1 # initialize rs2
remw x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xff8352d7254e95da # initialize rs1
li x27, 0x4a91113bdabdad5a # initialize rs2
remw x30, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x463d7556709fada9 # initialize rs1
li x2, 0x1dfea3892966606d # initialize rs2
remw x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x25, 0x1441b876994915ce # initialize rs1
li x0, 0x38400f6209a77238 # initialize rs2
remw x0, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x638bb2182b243959 # initialize rs1
li x1, 0x29de2249d473ce51 # initialize rs2
remw x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0x526c93fbca2b88ff # initialize rs1
li x2, 0xcdc0614afa8ddab2 # initialize rs2
remw x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x1, 0x47465cf29499d950 # initialize rs1
li x3, 0x2febb615454e6029 # initialize rs2
remw x3, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0xaf3bf72f6ec5a10d # initialize rs1
li x4, 0x4577b55b50beecae # initialize rs2
remw x4, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x5605b8947d8c2941 # initialize rs1
li x5, 0x2ae1633cd67e39be # initialize rs2
remw x5, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xca96efb18313b48c # initialize rs1
li x6, 0x586b53fad0ba2987 # initialize rs2
remw x6, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xca0fd9ecbaa562d4 # initialize rs1
li x7, 0x6585571af7350b3c # initialize rs2
remw x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0x0c6c8d917ea3efc9 # initialize rs1
li x8, 0x83683b8442ac4ef3 # initialize rs2
remw x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0xb4651811566c2e6c # initialize rs1
li x9, 0x2f5e3f6ce09c569e # initialize rs2
remw x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0x7da6f08bc83671ac # initialize rs1
li x10, 0x24c56f044f1d69be # initialize rs2
remw x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x34378c76efd4aa9b # initialize rs1
li x11, 0x261edc502f3bcbd3 # initialize rs2
remw x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x23, 0x899a4cd89db39817 # initialize rs1
li x12, 0xcacbfaa146153031 # initialize rs2
remw x12, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x5, 0x84a868136b6d47fe # initialize rs1
li x13, 0x9d7dad68d746d3f4 # initialize rs2
remw x13, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xc568671cb4900ae8 # initialize rs1
li x14, 0x37af1bd4d325b321 # initialize rs2
remw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x6, 0x899d408b84e654c1 # initialize rs1
li x15, 0xbbb8d084b900f433 # initialize rs2
remw x15, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0xbd0bfac70f73d58b # initialize rs1
li x16, 0x38095d17b23baef3 # initialize rs2
remw x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0x07fcd5f343d8cd09 # initialize rs1
li x17, 0xf19a0e62a56b79d4 # initialize rs2
remw x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0xfb35990fec8dadda # initialize rs1
li x18, 0x724c324a82ebba34 # initialize rs2
remw x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x8, 0xc3a34c19598252ac # initialize rs1
li x19, 0xdbe83dcd52c6fff9 # initialize rs2
remw x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x5, 0x64a678bf126f95c7 # initialize rs1
li x20, 0x40884fb80ddfaa69 # initialize rs2
remw x20, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0x6b11a3451aad1f85 # initialize rs1
li x21, 0xc7298bb398e74407 # initialize rs2
remw x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x26, 0x1d780298627479d6 # initialize rs1
li x22, 0x67672e344e9d5ac5 # initialize rs2
remw x22, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x22, 0xb96c51400efbeec8 # initialize rs1
li x23, 0x472415dec9613f59 # initialize rs2
remw x23, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x16, 0x9f0bc1036692ee2d # initialize rs1
li x24, 0xc25dfcc8d550e244 # initialize rs2
remw x24, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x22, 0x09e67fd95430a5e8 # initialize rs1
li x25, 0xaef00aed4179fb7d # initialize rs2
remw x25, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x249759bf9edb6be8 # initialize rs1
li x26, 0x3b73ce9e5997af1f # initialize rs2
remw x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xd1e801beb5cb2e74 # initialize rs1
li x27, 0x54edd8c629eeabb5 # initialize rs2
remw x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0x563e2f29054958b4 # initialize rs1
li x28, 0x1b50cc82764e9b4b # initialize rs2
remw x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x45d21a5bfdaee752 # initialize rs1
li x29, 0x5b1fa58caf5fdeb3 # initialize rs2
remw x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x3d6033b6245c5b41 # initialize rs1
li x30, 0x59bc23e607413908 # initialize rs2
remw x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x25, 0x316c69c66784b6ac # initialize rs1
li x31, 0x8b5d51c4da7a68c6 # initialize rs2
remw x31, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x513ad854ec97e928 # initialize rs1
li x0, 0x964edfe86c30c778 # initialize rs2
remw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x7283c947318a1a35 # initialize rs1
li x1, 0x0a53951aebcafbea # initialize rs2
remw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9027983343e02e95 # initialize rs1
li x2, 0xc0b3211258338db3 # initialize rs2
remw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x07e05ffa575ef00f # initialize rs1
li x3, 0x9e9558621b701e59 # initialize rs2
remw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xde33799e7e50b032 # initialize rs1
li x4, 0x332c9ec2add64caf # initialize rs2
remw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x73f7e55e4a1d9970 # initialize rs1
li x5, 0x968064656e768a17 # initialize rs2
remw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x974f750735bd3b29 # initialize rs1
li x6, 0xb4b1cd8580f39369 # initialize rs2
remw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9712a240638fae4e # initialize rs1
li x7, 0x79af458c4f561d87 # initialize rs2
remw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xafd052f3be2af885 # initialize rs1
li x8, 0xffcbd2c92583ccda # initialize rs2
remw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xfed3d7d9ca3ad5ae # initialize rs1
li x9, 0xebdfda046996f4cc # initialize rs2
remw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e7af96a29012b2b # initialize rs1
li x10, 0xfd7e61ffd2e7b584 # initialize rs2
remw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc05f1a90d5f9fa53 # initialize rs1
li x11, 0xbd119bc331620cc6 # initialize rs2
remw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x36a1166282dfacc0 # initialize rs1
li x12, 0x10b09a162d0ef2d2 # initialize rs2
remw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xf3f912c8897ad607 # initialize rs1
li x13, 0xb5b46add58e09e14 # initialize rs2
remw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6b71f6c7a9a8aee8 # initialize rs1
li x14, 0x20027f1762a0872b # initialize rs2
remw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x0ca675c5acc0548b # initialize rs1
li x15, 0xa9f7d542e40ddeeb # initialize rs2
remw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xbf3f0d38bd65c78c # initialize rs1
li x16, 0x464a24348b54eb78 # initialize rs2
remw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1613ab07c8398bf3 # initialize rs1
li x17, 0x70776ae166814c52 # initialize rs2
remw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xe9e84d00dd1c2c86 # initialize rs1
li x18, 0x9aa37c095e2d10f1 # initialize rs2
remw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x234ee965146d287d # initialize rs1
li x19, 0x63c420ecfa6e8103 # initialize rs2
remw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x8598f2b508794691 # initialize rs1
li x20, 0xed1a83ff84e7bb86 # initialize rs2
remw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x676d3f7906d9179a # initialize rs1
li x21, 0xb1d02e587e573b42 # initialize rs2
remw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x28aac8650f473df9 # initialize rs1
li x22, 0xfe8c7ca3229d947b # initialize rs2
remw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x298bca94f9970390 # initialize rs1
li x23, 0xd4f3db00159f5300 # initialize rs2
remw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9541080d2132b20e # initialize rs1
li x24, 0x0b5eadf6e08ad824 # initialize rs2
remw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xffeb2d09160cf459 # initialize rs1
li x25, 0x43aa466dd1fcc44f # initialize rs2
remw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa7ede27e0abe7f77 # initialize rs1
li x26, 0xacbad1d6de260eb7 # initialize rs2
remw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xef2334748d77bbe0 # initialize rs1
li x27, 0x9204cca3ed5b21d9 # initialize rs2
remw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x158f15505fb7c3cd # initialize rs1
li x28, 0x78ec2773d48329dd # initialize rs2
remw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x613a598a2c98ca47 # initialize rs1
li x29, 0x15c7ae9b6b4c49cc # initialize rs2
remw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd4c91546c8b20ec8 # initialize rs1
li x30, 0xd1727644fa64f323 # initialize rs2
remw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xb286eba02740c4bb # initialize rs1
li x31, 0xdc2128617ccce1f4 # initialize rs2
remw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x28, x3 # perform first operation
remw x20, x24, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x10 # perform first operation
remw x18, x26, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x30, x7 # perform first operation
remw x31, x29, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x26, x9 # perform first operation
remw x12, x12, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x10, x29 # perform first operation
remw x29, x19, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x11, x16 # perform first operation
remw x25, x5, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x31, x11 # perform first operation
remw x28, x16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x16, x19 # perform first operation
remw x28, x12, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x14, x19 # perform first operation
remw x1, x15, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x14, x22 # perform first operation
remw x14, x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x1, x27 # perform first operation
remw x27, x5, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x24, x22 # perform first operation
remw x31, x1, x29 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
