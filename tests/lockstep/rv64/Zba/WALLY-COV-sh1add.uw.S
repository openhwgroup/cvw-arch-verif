///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-sh1add.uw.S
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
li x0, 0xd552d443a38a001b # initialize rs1
li x28, 0x32ef9ea453c10fb4 # initialize rs2
sh1add.uw x13, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x65664672ed31e786 # initialize rs1
li x14, 0xb44151d3eaadac5f # initialize rs2
sh1add.uw x2, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8361055cedc5733e # initialize rs1
li x5, 0xaab75526539adb90 # initialize rs2
sh1add.uw x10, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa297737fa72d666e # initialize rs1
li x26, 0x58564a6a4bf31328 # initialize rs2
sh1add.uw x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6e8c1e302639a5fb # initialize rs1
li x3, 0x9cbee01039307815 # initialize rs2
sh1add.uw x28, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x748ed7ca7f226f8e # initialize rs1
li x12, 0xd46b49a9ea66ca96 # initialize rs2
sh1add.uw x31, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4b3e470a07466f66 # initialize rs1
li x18, 0x7b4718d97cb21f8a # initialize rs2
sh1add.uw x7, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x6b10c47287336db8 # initialize rs1
li x14, 0xd8c7eba49c727b82 # initialize rs2
sh1add.uw x17, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8d2560bdaacd37ef # initialize rs1
li x13, 0x107f054bfbd09184 # initialize rs2
sh1add.uw x7, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe8eb7f1d951b44ed # initialize rs1
li x24, 0xcd45ff14ddc68167 # initialize rs2
sh1add.uw x11, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x49079d3e8efc590b # initialize rs1
li x27, 0x8605e002734ed2d9 # initialize rs2
sh1add.uw x18, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb211fcb1ea3cf8f1 # initialize rs1
li x3, 0x63f84b39ef1809b1 # initialize rs2
sh1add.uw x22, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf73aba219443bf39 # initialize rs1
li x3, 0xb9020e12f28b5629 # initialize rs2
sh1add.uw x7, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5eca8335df0c1cf9 # initialize rs1
li x31, 0x7e1c7a873a06d54c # initialize rs2
sh1add.uw x24, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xac05258b423c43ac # initialize rs1
li x6, 0x4e45c57135e126af # initialize rs2
sh1add.uw x2, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x838f9027419e5759 # initialize rs1
li x11, 0x6c6cf06ebfd74c2c # initialize rs2
sh1add.uw x19, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb481b5945f164e46 # initialize rs1
li x28, 0x27d1ffb7bd9bb2ff # initialize rs2
sh1add.uw x2, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x339533da73bc40b2 # initialize rs1
li x7, 0x8571938ed03d9419 # initialize rs2
sh1add.uw x25, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x31a7bb0ed2aabed8 # initialize rs1
li x6, 0xccbfd8eb6899f18e # initialize rs2
sh1add.uw x22, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf2e6bbabfa8eb6f5 # initialize rs1
li x30, 0x7c117b7607bcc46c # initialize rs2
sh1add.uw x17, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x70ad7a749f8e9577 # initialize rs1
li x12, 0xae90a3ad02dd6ed8 # initialize rs2
sh1add.uw x25, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4508e855889ff1b2 # initialize rs1
li x6, 0x25aed0ea1e3d8e6d # initialize rs2
sh1add.uw x30, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5bf918c519156261 # initialize rs1
li x5, 0x11bda1c48459e8b1 # initialize rs2
sh1add.uw x15, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb217538337675504 # initialize rs1
li x22, 0x81cf6dd67707a47d # initialize rs2
sh1add.uw x1, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf691a65df8919175 # initialize rs1
li x25, 0x9e564e0dc882244f # initialize rs2
sh1add.uw x18, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xde6077afb5462465 # initialize rs1
li x23, 0x6d8859298d04ecab # initialize rs2
sh1add.uw x31, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x92276db0961973e3 # initialize rs1
li x23, 0x81c4c07ff86f6c25 # initialize rs2
sh1add.uw x1, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa9bb72ae61f3393f # initialize rs1
li x1, 0x81f438f41a29971b # initialize rs2
sh1add.uw x12, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x59b3d30e1e5b681a # initialize rs1
li x27, 0x4ab904a12f2205f9 # initialize rs2
sh1add.uw x6, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x357ca6f1bf17ce71 # initialize rs1
li x22, 0x70c11049e596f0f2 # initialize rs2
sh1add.uw x27, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x82ef9dbb6d671c37 # initialize rs1
li x12, 0xd27f5a9911a2c611 # initialize rs2
sh1add.uw x23, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7169be8a12308850 # initialize rs1
li x17, 0xfa68e20a3cfde4fa # initialize rs2
sh1add.uw x23, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x28, 0x3ac1d384777dc518 # initialize rs1
li x0, 0x4435909ee43fdeae # initialize rs2
sh1add.uw x11, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xeb0a4a03f815d4b6 # initialize rs1
li x1, 0x19a31f9c64db462c # initialize rs2
sh1add.uw x24, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x4b624d96ccb15c54 # initialize rs1
li x2, 0xef6ce86e2b5eb999 # initialize rs2
sh1add.uw x29, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x19955d5d2d0946a6 # initialize rs1
li x3, 0xe279e59a0a11df0d # initialize rs2
sh1add.uw x2, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x2ce25bc867abd08b # initialize rs1
li x4, 0xf98bcedebef359e6 # initialize rs2
sh1add.uw x12, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xafb0a4af663c6882 # initialize rs1
li x5, 0xaf0e8f635d284b39 # initialize rs2
sh1add.uw x28, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x8dd0dbfdef59c8fb # initialize rs1
li x6, 0x5b991687590907ca # initialize rs2
sh1add.uw x14, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x0d9a1c5c09272a30 # initialize rs1
li x7, 0xdad3cb72123e82dd # initialize rs2
sh1add.uw x21, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x94386696f3423ac9 # initialize rs1
li x8, 0x43a5c70a32610f32 # initialize rs2
sh1add.uw x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xfc73400e12aebc97 # initialize rs1
li x9, 0x72f5ae61a567dcdf # initialize rs2
sh1add.uw x5, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xfbc8ce48a08b7590 # initialize rs1
li x10, 0x78577a3a3f3d8cd9 # initialize rs2
sh1add.uw x5, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0x200fcb5b21ea38e4 # initialize rs1
li x11, 0xce818c1a13621930 # initialize rs2
sh1add.uw x14, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xebb56a11b22e6131 # initialize rs1
li x12, 0x07325a166c0f8443 # initialize rs2
sh1add.uw x24, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0xf039f80f35618db2 # initialize rs1
li x13, 0x387f57861db4384d # initialize rs2
sh1add.uw x20, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x24a50d72a4a53749 # initialize rs1
li x14, 0x11ee4dfa361b37b8 # initialize rs2
sh1add.uw x9, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x40fb7a6620544e65 # initialize rs1
li x15, 0x48dc7e5c71b52d92 # initialize rs2
sh1add.uw x1, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0xd1c37af93faa9e84 # initialize rs1
li x16, 0xd040e87e4f67d963 # initialize rs2
sh1add.uw x11, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x6d6ac9d459dc33f2 # initialize rs1
li x17, 0x9b6a41a0e8f734fb # initialize rs2
sh1add.uw x12, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xe91587b5599f5d63 # initialize rs1
li x18, 0x439840e59111efe8 # initialize rs2
sh1add.uw x25, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0x30332abdea8b6a3b # initialize rs1
li x19, 0x075e19d3e347c08d # initialize rs2
sh1add.uw x11, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0xd632c169321668c2 # initialize rs1
li x20, 0x3ae5d4214796da0f # initialize rs2
sh1add.uw x29, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xc83881beae9068e4 # initialize rs1
li x21, 0x0b54433402c04010 # initialize rs2
sh1add.uw x30, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0xd44f4c4cdf0fb704 # initialize rs1
li x22, 0x8de1180120977e5c # initialize rs2
sh1add.uw x20, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xe8f793c5ad2885d2 # initialize rs1
li x23, 0x5caf0885877645cc # initialize rs2
sh1add.uw x26, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x02f6f3ec5656a01b # initialize rs1
li x24, 0x5dc26ab9344c4577 # initialize rs2
sh1add.uw x25, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x9eed6adccb316656 # initialize rs1
li x25, 0xc4a0b8ab4896eab6 # initialize rs2
sh1add.uw x10, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0xf8e60cf0a0f4e454 # initialize rs1
li x26, 0x1633290a2bb36e30 # initialize rs2
sh1add.uw x1, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0xb1e71694a5c2f4d2 # initialize rs1
li x27, 0x8ec8ab536e9bef37 # initialize rs2
sh1add.uw x13, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x0c3884f337d50dd4 # initialize rs1
li x28, 0x3015b5b6bf602022 # initialize rs2
sh1add.uw x10, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0xfd886a60cee6296d # initialize rs1
li x29, 0xd0085251d8616535 # initialize rs2
sh1add.uw x24, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x027b9ce7537362fb # initialize rs1
li x30, 0x353a094d398d78ec # initialize rs2
sh1add.uw x18, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x18, 0x328a4d553c6dbf90 # initialize rs1
li x31, 0x23fbdf956c20a5a7 # initialize rs2
sh1add.uw x26, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0xbb867ebea5a2ee08 # initialize rs1
li x14, 0xae0152a3203d4827 # initialize rs2
sh1add.uw x0, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x329b6dc1e0b50a9c # initialize rs1
li x27, 0xc32ceb4b7191c1c6 # initialize rs2
sh1add.uw x1, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x633f5d27b973cfd0 # initialize rs1
li x23, 0xce01cf9ee0405dc7 # initialize rs2
sh1add.uw x2, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x77689243ee428a5a # initialize rs1
li x26, 0x677e557ced8fc622 # initialize rs2
sh1add.uw x3, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x6325d74ef16240ab # initialize rs1
li x20, 0x23199292dda02cf7 # initialize rs2
sh1add.uw x4, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x79d321f40e2aa53d # initialize rs1
li x18, 0xb1fb5d2e20d3b112 # initialize rs2
sh1add.uw x5, x13, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x599814cf17c6aa49 # initialize rs1
li x23, 0x31cbda16ff9669e6 # initialize rs2
sh1add.uw x6, x4, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xdd6c3190f9a9d17d # initialize rs1
li x17, 0x185622bf5236776f # initialize rs2
sh1add.uw x7, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5453f70b86eb9c1b # initialize rs1
li x20, 0x07be891c2f09ff00 # initialize rs2
sh1add.uw x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0x2e882c76c8967424 # initialize rs1
li x16, 0x71a19c8b52178b33 # initialize rs2
sh1add.uw x9, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x4636718b27ac5a1a # initialize rs1
li x21, 0xc338fc7f5a1c5a64 # initialize rs2
sh1add.uw x10, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x400c4105e9004e5b # initialize rs1
li x2, 0xbfd79ab0b9dd0d5a # initialize rs2
sh1add.uw x11, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xd3697a07029147c3 # initialize rs1
li x15, 0xe496002261df0114 # initialize rs2
sh1add.uw x12, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0x38118bde56bd58f3 # initialize rs1
li x12, 0x80661ae5182a6b56 # initialize rs2
sh1add.uw x13, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xccbbe546a2a9c947 # initialize rs1
li x8, 0x812d1c07e4e01dfd # initialize rs2
sh1add.uw x14, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0x9549fb24bf108adf # initialize rs1
li x6, 0x85bbc62f91bc3f46 # initialize rs2
sh1add.uw x15, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x34388da8815f26e5 # initialize rs1
li x21, 0x65ac30b468d69579 # initialize rs2
sh1add.uw x16, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x864206abf6260566 # initialize rs1
li x28, 0xe3f88acf4e23e1f6 # initialize rs2
sh1add.uw x17, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xf72ac93a23e13e5f # initialize rs1
li x23, 0x3db6dc35247b6803 # initialize rs2
sh1add.uw x18, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x474280c41d32b7e1 # initialize rs1
li x24, 0x262099736a20adb3 # initialize rs2
sh1add.uw x19, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x11, 0xced47843e2ac3338 # initialize rs1
li x30, 0x832606f19d025e79 # initialize rs2
sh1add.uw x20, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x65de4a699ac1c827 # initialize rs1
li x7, 0x876e1d3420c12f1e # initialize rs2
sh1add.uw x21, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0xe091a70ab2932587 # initialize rs1
li x21, 0xd89e306417695c11 # initialize rs2
sh1add.uw x22, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0xa72d164bce31b47b # initialize rs1
li x30, 0x70b3acdb24ffa0e3 # initialize rs2
sh1add.uw x23, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x57882a6618dedf11 # initialize rs1
li x13, 0x03d8d02ed8c4c23d # initialize rs2
sh1add.uw x24, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x21, 0x0ace9d113fbd77f8 # initialize rs1
li x13, 0xee18373f0c9bbe4d # initialize rs2
sh1add.uw x25, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x27, 0xa119e524adc76f44 # initialize rs1
li x24, 0x451c14b3c5d6ab27 # initialize rs2
sh1add.uw x26, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x61b2c6abe8693526 # initialize rs1
li x26, 0x8dcb5993857f0f4a # initialize rs2
sh1add.uw x27, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x7, 0x918c24cc61f1876e # initialize rs1
li x1, 0x91d93d7e3624720b # initialize rs2
sh1add.uw x28, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xa371a85ad29b637b # initialize rs1
li x28, 0x06a3212c58598639 # initialize rs2
sh1add.uw x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x3a628138875c631b # initialize rs1
li x18, 0xd3a9cae20b004e98 # initialize rs2
sh1add.uw x30, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xbb5b0e3db8ab2db9 # initialize rs1
li x6, 0xab125b00589e94b5 # initialize rs2
sh1add.uw x31, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000 # initialize rs1
li x25, 0x87221aeaadbf73c8 # initialize rs2
sh1add.uw x22, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x6, 0xbd02064a78569207 # initialize rs2
sh1add.uw x11, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x20, 0xcefceacab4868fcd # initialize rs2
sh1add.uw x3, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x10, 0xc9c247ef2e138d7f # initialize rs2
sh1add.uw x7, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x29, 0xeb854508e3867ca4 # initialize rs2
sh1add.uw x8, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x23, 0x5de22d7efca52568 # initialize rs2
sh1add.uw x1, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0xefc717c61212d2ef # initialize rs2
sh1add.uw x15, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x8, 0x42fc903abbd011c5 # initialize rs2
sh1add.uw x30, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x23, 0xe5c16b9df849307d # initialize rs2
sh1add.uw x7, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x349f5af6fe8a2efe # initialize rs2
sh1add.uw x27, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x6f4315a4846ad443 # initialize rs2
sh1add.uw x1, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0xfe4a77c65133d92c # initialize rs2
sh1add.uw x30, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x19, 0x8095d58f48fb7a7c # initialize rs2
sh1add.uw x16, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x13, 0xa0b0504fdaf89ba8 # initialize rs2
sh1add.uw x19, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x12f537a04964965d # initialize rs2
sh1add.uw x31, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x29, 0xeeb4b0909a25b5ea # initialize rs2
sh1add.uw x14, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0xcee0a32dc562096a # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add.uw x6, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x75710df48ab2397e # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sh1add.uw x11, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x1e89346dd824291a # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh1add.uw x13, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x0991b11200348e4c # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh1add.uw x18, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0x1d4a1bbb55ebb58c # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh1add.uw x13, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0xcc87d33cab88ccb8 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh1add.uw x3, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0xd09497c80eebb954 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x26, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x24989d921190ac75 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh1add.uw x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x2, 0x6904dad81aa34d16 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sh1add.uw x23, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0xaace786a605fd0b7 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x31, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x78b9e538f3bb8a72 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x13, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x6, 0xf0f99e4c2f3f4589 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh1add.uw x26, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x3c23a70e7c2f37c4 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sh1add.uw x8, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x5bb6b62ded8a9f72 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sh1add.uw x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x5a37b9cd248f6836 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh1add.uw x15, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0x6c73b307a7007795 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh1add.uw x5, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh1add.uw x28, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
sh1add.uw x2, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh1add.uw x5, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x14, 0x0000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sh1add.uw x12, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sh1add.uw x16, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x25, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sh1add.uw x5, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh1add.uw x26, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x18, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x5, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh1add.uw x18, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sh1add.uw x16, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh1add.uw x29, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x19, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sh1add.uw x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x9, 0x0000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh1add.uw x30, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sh1add.uw x26, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add.uw x25, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x15, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh1add.uw x31, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x13, 0x0000000000000001 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh1add.uw x30, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh1add.uw x7, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh1add.uw x25, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x21, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sh1add.uw x21, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh1add.uw x25, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x2, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x18, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x9, 0x0000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh1add.uw x8, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add.uw x24, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh1add.uw x7, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add.uw x31, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x6, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh1add.uw x15, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh1add.uw x18, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh1add.uw x17, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh1add.uw x15, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x10, 0x0000000000000002 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh1add.uw x24, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh1add.uw x27, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000002 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x18, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh1add.uw x20, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh1add.uw x3, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000002 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x27, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000002 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x14, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh1add.uw x21, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sh1add.uw x30, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add.uw x15, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sh1add.uw x26, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sh1add.uw x22, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x30, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh1add.uw x6, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
sh1add.uw x24, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x7, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sh1add.uw x18, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh1add.uw x2, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh1add.uw x19, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh1add.uw x29, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x16, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh1add.uw x30, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sh1add.uw x24, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x11, 0x8000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x14, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x27, 0x8000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh1add.uw x24, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sh1add.uw x22, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sh1add.uw x14, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x22, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh1add.uw x14, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x18, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh1add.uw x13, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh1add.uw x15, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh1add.uw x1, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x17, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh1add.uw x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x7, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sh1add.uw x18, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sh1add.uw x25, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh1add.uw x29, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x2, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh1add.uw x2, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh1add.uw x8, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x24, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x8000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0x8000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sh1add.uw x7, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sh1add.uw x21, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
sh1add.uw x21, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x8000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add.uw x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh1add.uw x15, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x12, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sh1add.uw x13, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x1, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh1add.uw x28, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh1add.uw x22, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh1add.uw x16, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh1add.uw x24, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x22, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh1add.uw x13, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add.uw x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x21, 0x7fffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x28, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7fffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x24, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh1add.uw x30, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sh1add.uw x7, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sh1add.uw x16, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sh1add.uw x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add.uw x24, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x30, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh1add.uw x8, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sh1add.uw x15, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sh1add.uw x21, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh1add.uw x2, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sh1add.uw x28, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh1add.uw x30, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x5, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x22, 0x7ffffffffffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh1add.uw x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sh1add.uw x27, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x22, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7ffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x13, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x7ffffffffffffffe # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sh1add.uw x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sh1add.uw x11, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sh1add.uw x16, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh1add.uw x20, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x7, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sh1add.uw x29, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x17, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh1add.uw x6, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x14, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sh1add.uw x24, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x21, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh1add.uw x16, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh1add.uw x8, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x9, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sh1add.uw x5, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh1add.uw x25, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x10, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh1add.uw x24, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh1add.uw x23, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x3, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x1, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x6, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh1add.uw x27, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh1add.uw x21, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x8, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh1add.uw x9, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh1add.uw x17, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x25, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sh1add.uw x28, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh1add.uw x20, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x5, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sh1add.uw x13, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x24, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh1add.uw x9, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sh1add.uw x31, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh1add.uw x18, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
sh1add.uw x29, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x7, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh1add.uw x19, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh1add.uw x8, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0xfffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x5, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x13, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh1add.uw x1, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sh1add.uw x1, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh1add.uw x2, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x14, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sh1add.uw x24, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh1add.uw x13, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sh1add.uw x21, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sh1add.uw x26, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh1add.uw x29, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sh1add.uw x21, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sh1add.uw x7, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sh1add.uw x28, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x10, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh1add.uw x8, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sh1add.uw x14, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x15, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x24, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh1add.uw x7, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sh1add.uw x13, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sh1add.uw x14, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
sh1add.uw x25, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sh1add.uw x27, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh1add.uw x9, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh1add.uw x27, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh1add.uw x13, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh1add.uw x3, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh1add.uw x28, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sh1add.uw x3, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x16, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sh1add.uw x12, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sh1add.uw x27, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x26, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x3, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh1add.uw x19, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh1add.uw x2, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh1add.uw x14, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh1add.uw x31, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add.uw x14, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x16, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh1add.uw x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh1add.uw x21, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x15, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sh1add.uw x16, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh1add.uw x31, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh1add.uw x18, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh1add.uw x16, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x10, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh1add.uw x24, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh1add.uw x13, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x5, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x18, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5555555555555555 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x28, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh1add.uw x31, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh1add.uw x3, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x10, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh1add.uw x19, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x18, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh1add.uw x7, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh1add.uw x8, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh1add.uw x17, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x20, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add.uw x3, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh1add.uw x30, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x30, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh1add.uw x19, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x27, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sh1add.uw x3, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh1add.uw x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x20, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh1add.uw x26, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sh1add.uw x12, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x00000000ffffffff # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x11, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x31, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh1add.uw x10, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh1add.uw x5, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sh1add.uw x10, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x27, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sh1add.uw x28, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sh1add.uw x11, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add.uw x21, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh1add.uw x25, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x20, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh1add.uw x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x7, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh1add.uw x12, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sh1add.uw x12, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh1add.uw x5, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x12, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sh1add.uw x20, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh1add.uw x6, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000fffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x6, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000fffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x20, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sh1add.uw x3, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh1add.uw x25, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sh1add.uw x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sh1add.uw x6, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sh1add.uw x31, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sh1add.uw x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh1add.uw x24, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sh1add.uw x13, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sh1add.uw x1, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sh1add.uw x27, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh1add.uw x3, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x28, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh1add.uw x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sh1add.uw x31, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x25, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x22, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sh1add.uw x9, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sh1add.uw x19, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x1, 0x0000000100000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh1add.uw x31, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sh1add.uw x14, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh1add.uw x3, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh1add.uw x8, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x17, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sh1add.uw x10, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sh1add.uw x27, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x23, 0x0000000100000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sh1add.uw x21, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x13, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh1add.uw x21, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sh1add.uw x20, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh1add.uw x5, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sh1add.uw x18, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh1add.uw x5, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000100000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh1add.uw x19, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh1add.uw x18, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sh1add.uw x26, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh1add.uw x13, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sh1add.uw x19, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x8, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh1add.uw x12, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh1add.uw x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x371ff949a02b694a # initialize rs1
li x0, 0xf32ca67dfab8c8b5 # initialize rs2
sh1add.uw x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x74a6ed29aea76d88 # initialize rs1
li x1, 0xeeb429a3b3593958 # initialize rs2
sh1add.uw x31, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x3b1e43f54f866c36 # initialize rs1
li x2, 0xddb887d945fbf897 # initialize rs2
sh1add.uw x29, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x1932af7b39d9925b # initialize rs1
li x3, 0x160d3d72f7ce0f59 # initialize rs2
sh1add.uw x21, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd57f5d1bf8d0b004 # initialize rs1
li x4, 0x595bc520c0be427a # initialize rs2
sh1add.uw x27, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9fb0fe67afa2cd50 # initialize rs1
li x5, 0x75db5cc3eb335b39 # initialize rs2
sh1add.uw x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x019504bbcfbd1693 # initialize rs1
li x6, 0xb82e07e5af243390 # initialize rs2
sh1add.uw x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe6b4110fd3d24226 # initialize rs1
li x7, 0xac29af13a6683151 # initialize rs2
sh1add.uw x10, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc6fb3ba98f05260e # initialize rs1
li x8, 0xf428f1adc5f62593 # initialize rs2
sh1add.uw x16, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5621fef60aecf886 # initialize rs1
li x9, 0x34751db8d2701656 # initialize rs2
sh1add.uw x11, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe072dcc5301504b1 # initialize rs1
li x10, 0xe3fca5cf4ce7cacc # initialize rs2
sh1add.uw x19, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x01ade17e36bbaa25 # initialize rs1
li x11, 0xee5da51dfc6ca4d8 # initialize rs2
sh1add.uw x17, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7079f08279c63f09 # initialize rs1
li x12, 0x7103cce4decc0983 # initialize rs2
sh1add.uw x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x9c2fe543e6610164 # initialize rs1
li x13, 0x2f8b82b0da3bdf4f # initialize rs2
sh1add.uw x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xad4d82eeeaf681b9 # initialize rs1
li x14, 0x71377b8bdc40096e # initialize rs2
sh1add.uw x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x213e0e18d03d770f # initialize rs1
li x15, 0x8003b67952632ae3 # initialize rs2
sh1add.uw x30, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xf278127f0e2626df # initialize rs1
li x16, 0xe05725ab11c8fb74 # initialize rs2
sh1add.uw x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf8c9dd247dd01656 # initialize rs1
li x17, 0x4cc6a3b072bbb880 # initialize rs2
sh1add.uw x12, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4b836f8a4123814e # initialize rs1
li x18, 0x94ee008facbebf52 # initialize rs2
sh1add.uw x1, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9b9deb301c9ffc72 # initialize rs1
li x19, 0x019d738921fa0f72 # initialize rs2
sh1add.uw x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x28b1f4797882793c # initialize rs1
li x20, 0x0751a8529c24fc52 # initialize rs2
sh1add.uw x5, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x306bb4a103b38a1f # initialize rs1
li x21, 0x55be859d59d92d36 # initialize rs2
sh1add.uw x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x26c32abbca5eecc8 # initialize rs1
li x22, 0x11e3b645e554eb0d # initialize rs2
sh1add.uw x2, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xb5a7bb9f14b7cebf # initialize rs1
li x23, 0xcc66884595b75afb # initialize rs2
sh1add.uw x6, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xe8b8591d494870d3 # initialize rs1
li x24, 0xb2437be86d05b7ca # initialize rs2
sh1add.uw x20, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4aaa805d9ffcf023 # initialize rs1
li x25, 0xee1b3b1f5e811a57 # initialize rs2
sh1add.uw x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xa92ec5cbc551a532 # initialize rs1
li x26, 0xa3a2d75d55d1be05 # initialize rs2
sh1add.uw x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9068150a0e27d1c1 # initialize rs1
li x27, 0x44b47ce1b90258d2 # initialize rs2
sh1add.uw x30, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x08e1e3803546f88b # initialize rs1
li x28, 0xdf3e32f090752549 # initialize rs2
sh1add.uw x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xfb80fadb27a187a2 # initialize rs1
li x29, 0xc5bb45049b57f049 # initialize rs2
sh1add.uw x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3981e54d4e5a36f7 # initialize rs1
li x30, 0xbc4eff18509e86b2 # initialize rs2
sh1add.uw x13, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa4304bdfe542bddc # initialize rs1
li x31, 0xf70cac06d5289de4 # initialize rs2
sh1add.uw x22, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xabd8092ac8376b43 # initialize rs1
li x21, 0xc25c211c72d64c7e # initialize rs2
sh1add.uw x0, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1d3f698693ea3bae # initialize rs1
li x28, 0x4ab84c02aea88966 # initialize rs2
sh1add.uw x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf009e5e5e065aab1 # initialize rs1
li x31, 0x6565e5472444768f # initialize rs2
sh1add.uw x2, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xb1f695b9f35ceed6 # initialize rs1
li x17, 0x208e95c7da47dcff # initialize rs2
sh1add.uw x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe4e3bcda0ce355ff # initialize rs1
li x30, 0xd79bd048b77d3be5 # initialize rs2
sh1add.uw x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8258c2ff9e869efb # initialize rs1
li x11, 0xe73c9c4fd13dc5ca # initialize rs2
sh1add.uw x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x82f1c386640e40dc # initialize rs1
li x27, 0x8f12dcb6723e268d # initialize rs2
sh1add.uw x6, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc23dd71a069148ca # initialize rs1
li x24, 0x6ac732581a789b13 # initialize rs2
sh1add.uw x7, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xeabd191ea8ecf95f # initialize rs1
li x24, 0x50d85debfdadc38e # initialize rs2
sh1add.uw x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa29c1e44dd086b66 # initialize rs1
li x6, 0x42d44bb8e27b9f7c # initialize rs2
sh1add.uw x9, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfc4dc09ec8a715af # initialize rs1
li x9, 0x5d4f9f881e662554 # initialize rs2
sh1add.uw x10, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdc9cd7c1127a0af1 # initialize rs1
li x10, 0x04a6890feb28ff46 # initialize rs2
sh1add.uw x11, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xad292d18b57d6c33 # initialize rs1
li x2, 0x1c80b7799ddcd781 # initialize rs2
sh1add.uw x12, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdcebe826fe739685 # initialize rs1
li x22, 0xadf4f7a00c9d9f99 # initialize rs2
sh1add.uw x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x445d2ea789be9e81 # initialize rs1
li x7, 0x292836c6aa08d4d7 # initialize rs2
sh1add.uw x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2c5653b41822c180 # initialize rs1
li x8, 0x527aa1ae9dcbfded # initialize rs2
sh1add.uw x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8542d341dc1f9c19 # initialize rs1
li x24, 0x9336b4f98bf25cde # initialize rs2
sh1add.uw x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xcd7cecb076426119 # initialize rs1
li x16, 0x6538be21f269a649 # initialize rs2
sh1add.uw x17, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8302d8b0c4390829 # initialize rs1
li x28, 0x96c414c2b637f238 # initialize rs2
sh1add.uw x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd72b947ebb326276 # initialize rs1
li x29, 0xfe5e843d1cd320d2 # initialize rs2
sh1add.uw x19, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8c737104387b1f09 # initialize rs1
li x29, 0xfcaca84bbb1f1d61 # initialize rs2
sh1add.uw x20, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb7f9edeb2230c371 # initialize rs1
li x10, 0x04e8c73fb4882bce # initialize rs2
sh1add.uw x21, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xdd5b6f8fa3404ea3 # initialize rs1
li x31, 0x98cf3586cf9e550b # initialize rs2
sh1add.uw x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5357e252e00ddfaa # initialize rs1
li x29, 0x95cf064f77db58fd # initialize rs2
sh1add.uw x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0cf8c42b82435b17 # initialize rs1
li x6, 0xf9281482bd6cc1c6 # initialize rs2
sh1add.uw x24, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8f9f5c572fbae103 # initialize rs1
li x13, 0xc70193d8e8ed5ecb # initialize rs2
sh1add.uw x25, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8c7bb41155117f12 # initialize rs1
li x20, 0xeef2b21e9935c651 # initialize rs2
sh1add.uw x26, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7ee7880060f1a6c5 # initialize rs1
li x28, 0x16f122cd1d497e05 # initialize rs2
sh1add.uw x27, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x75b715e1975b39ed # initialize rs1
li x26, 0xa031511d11199067 # initialize rs2
sh1add.uw x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x48899a73fa40afe5 # initialize rs1
li x16, 0x838d3d64e91a5099 # initialize rs2
sh1add.uw x29, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd25a34792cf49e22 # initialize rs1
li x8, 0x9e9014e936b0a753 # initialize rs2
sh1add.uw x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8fef1ee8a432e62c # initialize rs1
li x3, 0x80fa6cce67e33a5e # initialize rs2
sh1add.uw x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x2, 0x3606043c50e546e8 # initialize rs1
li x0, 0x6b5d838133ae0953 # initialize rs2
sh1add.uw x0, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0xd98c58ff38932e1f # initialize rs1
li x1, 0xe4d18f91443d5ccb # initialize rs2
sh1add.uw x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0xc291d21cd81292bb # initialize rs1
li x2, 0x1e4d69b987b2172d # initialize rs2
sh1add.uw x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x1, 0x71c122fae8de2d3b # initialize rs1
li x3, 0x12a563c401529bbf # initialize rs2
sh1add.uw x3, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xd896f8ad0a85c40a # initialize rs1
li x4, 0xa8ced75ecc798062 # initialize rs2
sh1add.uw x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xd4d7789797d6aa4b # initialize rs1
li x5, 0xc1f2a5f5c166fe87 # initialize rs2
sh1add.uw x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xb95ac2239304b04b # initialize rs1
li x6, 0x52e50b1417fcc96d # initialize rs2
sh1add.uw x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x2a82302db079201f # initialize rs1
li x7, 0x3b64e433e30c6290 # initialize rs2
sh1add.uw x7, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xb29ab558c00cf77d # initialize rs1
li x8, 0xe828fc25a6965679 # initialize rs2
sh1add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0x68cc9419ddb0ffee # initialize rs1
li x9, 0xaea45405f4139a20 # initialize rs2
sh1add.uw x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x20, 0xcd136ad0c6003dc7 # initialize rs1
li x10, 0x557cb0d94503b986 # initialize rs2
sh1add.uw x10, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0xee83223c2368144d # initialize rs1
li x11, 0xde4ad6b7eaac0728 # initialize rs2
sh1add.uw x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0xac1ab6da32718add # initialize rs1
li x12, 0xeaddfb7f2d59f27d # initialize rs2
sh1add.uw x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x6, 0x7df6adcb29552bc5 # initialize rs1
li x13, 0x103948895eb962f3 # initialize rs2
sh1add.uw x13, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0x32ee05fdf04b1db9 # initialize rs1
li x14, 0x7127e000fbcfb588 # initialize rs2
sh1add.uw x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xd7511003a3c62520 # initialize rs1
li x15, 0xb41fa1bc8791eccd # initialize rs2
sh1add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x12, 0xa1b46d27f4d385ee # initialize rs1
li x16, 0x3c21ad6571a3e589 # initialize rs2
sh1add.uw x16, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0xe53d2334738b3f17 # initialize rs1
li x17, 0x5ce469b42ae1ff77 # initialize rs2
sh1add.uw x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x5, 0x3cd8e8d71f38db4a # initialize rs1
li x18, 0x0400b6fd5375de28 # initialize rs2
sh1add.uw x18, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x6, 0xa9ab70f5f2a8a3aa # initialize rs1
li x19, 0x711ebe1ffc2d83a3 # initialize rs2
sh1add.uw x19, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x11, 0x5e00777b20c2d99b # initialize rs1
li x20, 0xb6057ae5a81b3b79 # initialize rs2
sh1add.uw x20, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x24, 0x7b464916844623be # initialize rs1
li x21, 0x2d6a27a34b561400 # initialize rs2
sh1add.uw x21, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x10, 0x65f0b60129b20d7e # initialize rs1
li x22, 0xd5b6a18d0f675a07 # initialize rs2
sh1add.uw x22, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x1b1d460acfc7bff0 # initialize rs1
li x23, 0x4430c693187e6239 # initialize rs2
sh1add.uw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x11, 0xf8ea0b9d23300246 # initialize rs1
li x24, 0x359a3b0a3c2b89ad # initialize rs2
sh1add.uw x24, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0x7f15be3c95d6e52b # initialize rs1
li x25, 0x68c4bb17f54696a5 # initialize rs2
sh1add.uw x25, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x19, 0x7a93b0b64f53c6a5 # initialize rs1
li x26, 0x3f755cd6557a00ef # initialize rs2
sh1add.uw x26, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x17, 0xd4525c596be64b7b # initialize rs1
li x27, 0x7e7937ace912be94 # initialize rs2
sh1add.uw x27, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x12, 0xb4e0ff494c10a623 # initialize rs1
li x28, 0xc0253b61a7c56d2d # initialize rs2
sh1add.uw x28, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x20, 0xa32e99773dc602ee # initialize rs1
li x29, 0xc7ac82ccd3dec6c2 # initialize rs2
sh1add.uw x29, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0x65faddca1712d147 # initialize rs1
li x30, 0xd55f8d2f59e959b5 # initialize rs2
sh1add.uw x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x21, 0x16966ece59b854d3 # initialize rs1
li x31, 0xbbd61825249fdfd4 # initialize rs2
sh1add.uw x31, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x797ee97361e788d4 # initialize rs1
li x0, 0x60a7e6da99ebaee0 # initialize rs2
sh1add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5ccc275b7919ff79 # initialize rs1
li x1, 0x630bbd1f87b0b837 # initialize rs2
sh1add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8f6ad40666e4e2c7 # initialize rs1
li x2, 0xcc84f68654cfb93b # initialize rs2
sh1add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x52551f6ff6b18cea # initialize rs1
li x3, 0x830f9e09cf154ea0 # initialize rs2
sh1add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1036f445f66369f # initialize rs1
li x4, 0x6bb19d73bb39f6e8 # initialize rs2
sh1add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbc075496da49e83d # initialize rs1
li x5, 0xc50efaa7e8fe9d0d # initialize rs2
sh1add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x487ee7812f61a422 # initialize rs1
li x6, 0x0747fde9ccca5d03 # initialize rs2
sh1add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f7cb31bd7e31780 # initialize rs1
li x7, 0xa30c97a23c9c3001 # initialize rs2
sh1add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfd17181352a81e91 # initialize rs1
li x8, 0xf0e3274c77c7eeb1 # initialize rs2
sh1add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x63169b4a59eb6aa4 # initialize rs1
li x9, 0x7a87fa0bcced7d15 # initialize rs2
sh1add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x84bf5cca764e2937 # initialize rs1
li x10, 0xc4ba0025246e507c # initialize rs2
sh1add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x52a225d35d9a00d3 # initialize rs1
li x11, 0x62537a0a11bbd04d # initialize rs2
sh1add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb96e435f26aa69e4 # initialize rs1
li x12, 0x1b8558d6d679c4f4 # initialize rs2
sh1add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x86e1e77f3a3e4f73 # initialize rs1
li x13, 0x06e0261ce7ccd14a # initialize rs2
sh1add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x1be339caecdeab77 # initialize rs1
li x14, 0x3bd90882ba1a3f4e # initialize rs2
sh1add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb729312697e2c4a7 # initialize rs1
li x15, 0x8f5ee914987a6f2e # initialize rs2
sh1add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xd692075b488ac651 # initialize rs1
li x16, 0x6841370b17c4097a # initialize rs2
sh1add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xa3e7df16135135de # initialize rs1
li x17, 0xada70f79ee393e26 # initialize rs2
sh1add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x38bad8932140f3b9 # initialize rs1
li x18, 0x6dcd6d1f6f3a08fb # initialize rs2
sh1add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x95a2d4d95656a113 # initialize rs1
li x19, 0x15eb65224a6b3eb8 # initialize rs2
sh1add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2b2dbdca60e55ca2 # initialize rs1
li x20, 0x6699b162fc7e5aaf # initialize rs2
sh1add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x8e06eec908f54ba6 # initialize rs1
li x21, 0x8194ab28c05cef42 # initialize rs2
sh1add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc7016600760b84a4 # initialize rs1
li x22, 0x98f09bab300b369c # initialize rs2
sh1add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x0af5e2f233c12b78 # initialize rs1
li x23, 0x1f584160691e781a # initialize rs2
sh1add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbf821307e6917143 # initialize rs1
li x24, 0x97a16a5fb80c2bda # initialize rs2
sh1add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb5dfab125bdf8d48 # initialize rs1
li x25, 0x459a5b0b76713f87 # initialize rs2
sh1add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8c8e3d79da5893a1 # initialize rs1
li x26, 0xca76ccdf00115029 # initialize rs2
sh1add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2518751b952eff16 # initialize rs1
li x27, 0xac8bbd91cc5886b9 # initialize rs2
sh1add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x53d34fb1ba7cca96 # initialize rs1
li x28, 0x8deaacea52d4da72 # initialize rs2
sh1add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc18ef752b29347c9 # initialize rs1
li x29, 0xb01442eaabb4dc14 # initialize rs2
sh1add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0941bb44e58cce77 # initialize rs1
li x30, 0xdf7adc7fb1aee486 # initialize rs2
sh1add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x77b70d6fcca99dcf # initialize rs1
li x31, 0x06f867ddf265e79c # initialize rs2
sh1add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x18, x27 # perform first operation
sh1add.uw x20, x7, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x28, x14 # perform first operation
sh1add.uw x13, x29, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x9, x13 # perform first operation
sh1add.uw x31, x19, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x25, x13 # perform first operation
sh1add.uw x20, x20, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x27, x7 # perform first operation
sh1add.uw x9, x20, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x28, x18 # perform first operation
sh1add.uw x18, x8, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x15 # perform first operation
sh1add.uw x18, x20, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x7, x31 # perform first operation
sh1add.uw x2, x23, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x18, x10 # perform first operation
sh1add.uw x29, x8, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x1, x12 # perform first operation
sh1add.uw x1, x22, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x5, x24 # perform first operation
sh1add.uw x24, x10, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x13, x7 # perform first operation
sh1add.uw x10, x18, x23 # perform second (triggering) operation

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
