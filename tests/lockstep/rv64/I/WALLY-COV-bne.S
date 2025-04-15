///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-bne.S
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
li x0, 0x5d7f1466abf3dd30 # initialize rs1
li x18, 0x7a6b994288c1742e # initialize rs2
bne x0, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x7a6b994288c1742e # initialize rs1
li x18, 0x7a6b994288c1742e # initialize rs2
bne x0, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x159f969d13c3239c # initialize rs1
li x14, 0xfdab1d8a62565653 # initialize rs2
bne x1, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfdab1d8a62565653 # initialize rs1
li x14, 0xfdab1d8a62565653 # initialize rs2
bne x1, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x9d605daae177d0b9 # initialize rs1
li x19, 0xb9aa49bbf61e160a # initialize rs2
bne x2, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xb9aa49bbf61e160a # initialize rs1
li x19, 0xb9aa49bbf61e160a # initialize rs2
bne x2, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x32b6797d36503360 # initialize rs1
li x19, 0xd9605a2b67bb4843 # initialize rs2
bne x3, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xd9605a2b67bb4843 # initialize rs1
li x19, 0xd9605a2b67bb4843 # initialize rs2
bne x3, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7452072b1336a53a # initialize rs1
li x15, 0xb82bc517d7c63372 # initialize rs2
bne x4, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xb82bc517d7c63372 # initialize rs1
li x15, 0xb82bc517d7c63372 # initialize rs2
bne x4, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbc06483fb6b8494f # initialize rs1
li x17, 0xabd63a0bfac2e2b0 # initialize rs2
bne x5, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xabd63a0bfac2e2b0 # initialize rs1
li x17, 0xabd63a0bfac2e2b0 # initialize rs2
bne x5, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb84724748d4fdb41 # initialize rs1
li x2, 0xf70e04a2c950eab3 # initialize rs2
bne x6, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xf70e04a2c950eab3 # initialize rs1
li x2, 0xf70e04a2c950eab3 # initialize rs2
bne x6, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9953143b5cb7710a # initialize rs1
li x4, 0xc20c713c51cd8bda # initialize rs2
bne x7, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xc20c713c51cd8bda # initialize rs1
li x4, 0xc20c713c51cd8bda # initialize rs2
bne x7, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7fa9ea091eca9101 # initialize rs1
li x2, 0xefde4a91c0147da6 # initialize rs2
bne x8, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xefde4a91c0147da6 # initialize rs1
li x2, 0xefde4a91c0147da6 # initialize rs2
bne x8, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf816726e8521de5d # initialize rs1
li x1, 0x7237be5c70275385 # initialize rs2
bne x9, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7237be5c70275385 # initialize rs1
li x1, 0x7237be5c70275385 # initialize rs2
bne x9, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x686d7568bf2cec3f # initialize rs1
li x9, 0xed599e48d0dd3d46 # initialize rs2
bne x10, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xed599e48d0dd3d46 # initialize rs1
li x9, 0xed599e48d0dd3d46 # initialize rs2
bne x10, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xdaf533b2d635ab88 # initialize rs1
li x30, 0xa98bf277a132bffa # initialize rs2
bne x11, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xa98bf277a132bffa # initialize rs1
li x30, 0xa98bf277a132bffa # initialize rs2
bne x11, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xedf9013447958cc9 # initialize rs1
li x10, 0x89d3995242e847d0 # initialize rs2
bne x12, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x89d3995242e847d0 # initialize rs1
li x10, 0x89d3995242e847d0 # initialize rs2
bne x12, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x9b0109f01b850acd # initialize rs1
li x17, 0x0bdede58f630e7b9 # initialize rs2
bne x13, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0bdede58f630e7b9 # initialize rs1
li x17, 0x0bdede58f630e7b9 # initialize rs2
bne x13, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2361aa086fb82317 # initialize rs1
li x17, 0x9ad97c2793f7db79 # initialize rs2
bne x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x9ad97c2793f7db79 # initialize rs1
li x17, 0x9ad97c2793f7db79 # initialize rs2
bne x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x792465d3e05ace26 # initialize rs1
li x20, 0x409eafd2712ac917 # initialize rs2
bne x15, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x409eafd2712ac917 # initialize rs1
li x20, 0x409eafd2712ac917 # initialize rs2
bne x15, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x70edd9ec788d8e85 # initialize rs1
li x27, 0x3ccfce5f68a64ff9 # initialize rs2
bne x16, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x3ccfce5f68a64ff9 # initialize rs1
li x27, 0x3ccfce5f68a64ff9 # initialize rs2
bne x16, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xfced66175df33ecc # initialize rs1
li x30, 0xd969e2436883f6cf # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xd969e2436883f6cf # initialize rs1
li x30, 0xd969e2436883f6cf # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5e14c02fdf55d7bb # initialize rs1
li x24, 0x989d47748f761deb # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x989d47748f761deb # initialize rs1
li x24, 0x989d47748f761deb # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xcd9cb5b339d4f586 # initialize rs1
li x17, 0x869cc92da5d65f17 # initialize rs2
bne x19, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x869cc92da5d65f17 # initialize rs1
li x17, 0x869cc92da5d65f17 # initialize rs2
bne x19, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8af6a8b1e164e354 # initialize rs1
li x28, 0xff9b19bb05b7b3f7 # initialize rs2
bne x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xff9b19bb05b7b3f7 # initialize rs1
li x28, 0xff9b19bb05b7b3f7 # initialize rs2
bne x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6f586ae56553ac9d # initialize rs1
li x9, 0xb1f5c24f38eb39c5 # initialize rs2
bne x21, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xb1f5c24f38eb39c5 # initialize rs1
li x9, 0xb1f5c24f38eb39c5 # initialize rs2
bne x21, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5b6236977eae9e84 # initialize rs1
li x24, 0xbe03dfa5c473087f # initialize rs2
bne x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xbe03dfa5c473087f # initialize rs1
li x24, 0xbe03dfa5c473087f # initialize rs2
bne x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x9052b22233e4b924 # initialize rs1
li x11, 0xea28933afbcaf1bd # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xea28933afbcaf1bd # initialize rs1
li x11, 0xea28933afbcaf1bd # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x314f46c2ab7ab28e # initialize rs1
li x4, 0x3d0763481376a7fe # initialize rs2
bne x24, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x3d0763481376a7fe # initialize rs1
li x4, 0x3d0763481376a7fe # initialize rs2
bne x24, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x622838203f01fca7 # initialize rs1
li x26, 0x3c9328710db9e17b # initialize rs2
bne x25, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x3c9328710db9e17b # initialize rs1
li x26, 0x3c9328710db9e17b # initialize rs2
bne x25, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf9492a161eb59a3c # initialize rs1
li x3, 0x204213afcc8966cb # initialize rs2
bne x26, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x204213afcc8966cb # initialize rs1
li x3, 0x204213afcc8966cb # initialize rs2
bne x26, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf19a980e5e30e5b0 # initialize rs1
li x17, 0xdae3feed9829395f # initialize rs2
bne x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xdae3feed9829395f # initialize rs1
li x17, 0xdae3feed9829395f # initialize rs2
bne x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x50be6c34ca9c8e92 # initialize rs1
li x31, 0xb1bf0edd428bd2b9 # initialize rs2
bne x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xb1bf0edd428bd2b9 # initialize rs1
li x31, 0xb1bf0edd428bd2b9 # initialize rs2
bne x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xccf3e1a916a97a65 # initialize rs1
li x12, 0xa595c6ca6b20f4ae # initialize rs2
bne x29, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xa595c6ca6b20f4ae # initialize rs1
li x12, 0xa595c6ca6b20f4ae # initialize rs2
bne x29, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x31c76f7074228ea4 # initialize rs1
li x21, 0x41124738efbc1350 # initialize rs2
bne x30, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x41124738efbc1350 # initialize rs1
li x21, 0x41124738efbc1350 # initialize rs2
bne x30, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x09c7d6b9eef8cca4 # initialize rs1
li x11, 0x10a5b43e32ec60a6 # initialize rs2
bne x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x10a5b43e32ec60a6 # initialize rs1
li x11, 0x10a5b43e32ec60a6 # initialize rs2
bne x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0x6347002fdbba2483 # initialize rs1
li x0, 0xc2d0addac34a6804 # initialize rs2
bne x21, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xc2d0addac34a6804 # initialize rs1
li x0, 0xc2d0addac34a6804 # initialize rs2
bne x21, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0x8d74de2aa68a6999 # initialize rs1
li x1, 0x0879a9d97b495450 # initialize rs2
bne x14, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0879a9d97b495450 # initialize rs1
li x1, 0x0879a9d97b495450 # initialize rs2
bne x14, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x14, 0xed131a659d047e55 # initialize rs1
li x2, 0x5cf9ac24bcfe35b7 # initialize rs2
bne x14, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5cf9ac24bcfe35b7 # initialize rs1
li x2, 0x5cf9ac24bcfe35b7 # initialize rs2
bne x14, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xec8a673a68b2626f # initialize rs1
li x3, 0x311ca6dca25e576e # initialize rs2
bne x15, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x311ca6dca25e576e # initialize rs1
li x3, 0x311ca6dca25e576e # initialize rs2
bne x15, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
li x23, 0x54944eaeb8a8d424 # initialize rs1
li x4, 0x48c9487735849e03 # initialize rs2
bne x23, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x48c9487735849e03 # initialize rs1
li x4, 0x48c9487735849e03 # initialize rs2
bne x23, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x1c6b81a1255d2533 # initialize rs1
li x5, 0x0f1bf8c55bdc042a # initialize rs2
bne x19, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0f1bf8c55bdc042a # initialize rs1
li x5, 0x0f1bf8c55bdc042a # initialize rs2
bne x19, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xaadde99c6f9b0b43 # initialize rs1
li x6, 0x2804680f7490cd69 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x2804680f7490cd69 # initialize rs1
li x6, 0x2804680f7490cd69 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xc6328d8f670e8abf # initialize rs1
li x7, 0xcccba45ff9ff4f5e # initialize rs2
bne x21, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xcccba45ff9ff4f5e # initialize rs1
li x7, 0xcccba45ff9ff4f5e # initialize rs2
bne x21, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xd974bb2adc1f7fde # initialize rs1
li x8, 0x539f79cbe3db4593 # initialize rs2
bne x3, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x539f79cbe3db4593 # initialize rs1
li x8, 0x539f79cbe3db4593 # initialize rs2
bne x3, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x5ed9ba58aac44418 # initialize rs1
li x9, 0xecca40c299703ef0 # initialize rs2
bne x24, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xecca40c299703ef0 # initialize rs1
li x9, 0xecca40c299703ef0 # initialize rs2
bne x24, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0xcdcfcdb39b336323 # initialize rs1
li x10, 0x5b3f1b56dfee2004 # initialize rs2
bne x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5b3f1b56dfee2004 # initialize rs1
li x10, 0x5b3f1b56dfee2004 # initialize rs2
bne x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x10, 0xaf363160d1b70f0b # initialize rs1
li x11, 0xee1aa829c6281f78 # initialize rs2
bne x10, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xee1aa829c6281f78 # initialize rs1
li x11, 0xee1aa829c6281f78 # initialize rs2
bne x10, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0xf93e2b29e1b48ea0 # initialize rs1
li x12, 0x04bc8c33977c1cc4 # initialize rs2
bne x2, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x04bc8c33977c1cc4 # initialize rs1
li x12, 0x04bc8c33977c1cc4 # initialize rs2
bne x2, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0xca92e2fdb8e55aa6 # initialize rs1
li x13, 0xe669ab4e2ab4fd7e # initialize rs2
bne x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xe669ab4e2ab4fd7e # initialize rs1
li x13, 0xe669ab4e2ab4fd7e # initialize rs2
bne x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x64bf2d63ab0f19d8 # initialize rs1
li x14, 0x267768e151f3188d # initialize rs2
bne x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x267768e151f3188d # initialize rs1
li x14, 0x267768e151f3188d # initialize rs2
bne x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0xb5307682ab8427ae # initialize rs1
li x15, 0x523584bcc4419f60 # initialize rs2
bne x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x523584bcc4419f60 # initialize rs1
li x15, 0x523584bcc4419f60 # initialize rs2
bne x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x555ae8bfedaaff1c # initialize rs1
li x16, 0x988ce8805efc706c # initialize rs2
bne x10, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x988ce8805efc706c # initialize rs1
li x16, 0x988ce8805efc706c # initialize rs2
bne x10, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xb3194469f56fae70 # initialize rs1
li x17, 0x781e186b173f3d64 # initialize rs2
bne x6, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x781e186b173f3d64 # initialize rs1
li x17, 0x781e186b173f3d64 # initialize rs2
bne x6, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x1854a297f7bc4631 # initialize rs1
li x18, 0xd8b96021c0b3f6cc # initialize rs2
bne x30, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xd8b96021c0b3f6cc # initialize rs1
li x18, 0xd8b96021c0b3f6cc # initialize rs2
bne x30, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xafc709c59871c725 # initialize rs1
li x19, 0x8307067a86a59f7b # initialize rs2
bne x10, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8307067a86a59f7b # initialize rs1
li x19, 0x8307067a86a59f7b # initialize rs2
bne x10, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0xd5ad3ff0c3695be7 # initialize rs1
li x20, 0x3c3e2f786da1961a # initialize rs2
bne x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x3c3e2f786da1961a # initialize rs1
li x20, 0x3c3e2f786da1961a # initialize rs2
bne x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0x8068d20274418ef2 # initialize rs1
li x21, 0x12ad3aa4b018ad3c # initialize rs2
bne x27, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x12ad3aa4b018ad3c # initialize rs1
li x21, 0x12ad3aa4b018ad3c # initialize rs2
bne x27, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0xea057c36cce39c92 # initialize rs1
li x22, 0x80035025369dfd02 # initialize rs2
bne x2, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x80035025369dfd02 # initialize rs1
li x22, 0x80035025369dfd02 # initialize rs2
bne x2, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0xef62d4c3e17f371d # initialize rs1
li x23, 0xdec5c3f248f0a767 # initialize rs2
bne x2, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xdec5c3f248f0a767 # initialize rs1
li x23, 0xdec5c3f248f0a767 # initialize rs2
bne x2, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0x28a0f74d080b5a7f # initialize rs1
li x24, 0x34d4874386b45b2c # initialize rs2
bne x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x34d4874386b45b2c # initialize rs1
li x24, 0x34d4874386b45b2c # initialize rs2
bne x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x99da95fadf63f585 # initialize rs1
li x25, 0xabc68e8e3ca041e5 # initialize rs2
bne x8, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xabc68e8e3ca041e5 # initialize rs1
li x25, 0xabc68e8e3ca041e5 # initialize rs2
bne x8, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0x2648ceb2c8fd1731 # initialize rs1
li x26, 0xf715386c081ff637 # initialize rs2
bne x25, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xf715386c081ff637 # initialize rs1
li x26, 0xf715386c081ff637 # initialize rs2
bne x25, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x2c31005bb61954fe # initialize rs1
li x27, 0x8c8f180b0514a6c1 # initialize rs2
bne x1, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8c8f180b0514a6c1 # initialize rs1
li x27, 0x8c8f180b0514a6c1 # initialize rs2
bne x1, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0xb5c0a2c0c42d21ce # initialize rs1
li x28, 0xde7dcfc30fb4fc0e # initialize rs2
bne x27, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xde7dcfc30fb4fc0e # initialize rs1
li x28, 0xde7dcfc30fb4fc0e # initialize rs2
bne x27, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x2, 0x4be8bbab2ce63f54 # initialize rs1
li x29, 0x1893cf0b375aff3b # initialize rs2
bne x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x1893cf0b375aff3b # initialize rs1
li x29, 0x1893cf0b375aff3b # initialize rs2
bne x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0xc876b16f26f6c007 # initialize rs1
li x30, 0xa575666e53c6cd9b # initialize rs2
bne x31, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xa575666e53c6cd9b # initialize rs1
li x30, 0xa575666e53c6cd9b # initialize rs2
bne x31, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x36792199ca3c5706 # initialize rs1
li x31, 0x687f4a41923df934 # initialize rs2
bne x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x687f4a41923df934 # initialize rs1
li x31, 0x687f4a41923df934 # initialize rs2
bne x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x5, 0x06ee59896edc3d4d # initialize rs2
bne x12, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x06ee59896edc3d4d # initialize rs1
li x5, 0x06ee59896edc3d4d # initialize rs2
bne x12, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x0000000000000001 # initialize rs1
li x6, 0x97a96ddbe6b22ed0 # initialize rs2
bne x30, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x97a96ddbe6b22ed0 # initialize rs1
li x6, 0x97a96ddbe6b22ed0 # initialize rs2
bne x30, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x0000000000000002 # initialize rs1
li x3, 0x2e8ee5b1694e12d8 # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x2e8ee5b1694e12d8 # initialize rs1
li x3, 0x2e8ee5b1694e12d8 # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x12, 0xf525ad3f84a82064 # initialize rs2
bne x9, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xf525ad3f84a82064 # initialize rs1
li x12, 0xf525ad3f84a82064 # initialize rs2
bne x9, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x21, 0x8000000000000001 # initialize rs1
li x20, 0xc482b56904c0f11b # initialize rs2
bne x21, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xc482b56904c0f11b # initialize rs1
li x20, 0xc482b56904c0f11b # initialize rs2
bne x21, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x20, 0xe7006399d26dc9a1 # initialize rs2
bne x26, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe7006399d26dc9a1 # initialize rs1
li x20, 0xe7006399d26dc9a1 # initialize rs2
bne x26, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x9, 0x2031c9c4d627f224 # initialize rs2
bne x25, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x2031c9c4d627f224 # initialize rs1
li x9, 0x2031c9c4d627f224 # initialize rs2
bne x25, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x23, 0x8f4a99a3bcac4e0d # initialize rs2
bne x8, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8f4a99a3bcac4e0d # initialize rs1
li x23, 0x8f4a99a3bcac4e0d # initialize rs2
bne x8, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x31, 0x95cc4ccd996799d9 # initialize rs2
bne x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x95cc4ccd996799d9 # initialize rs1
li x31, 0x95cc4ccd996799d9 # initialize rs2
bne x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0d856718b28fe007 # initialize rs2
bne x20, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0d856718b28fe007 # initialize rs1
li x11, 0x0d856718b28fe007 # initialize rs2
bne x20, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xf28c11717be2bd14 # initialize rs2
bne x17, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xf28c11717be2bd14 # initialize rs1
li x15, 0xf28c11717be2bd14 # initialize rs2
bne x17, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x5, 0x0ee4d86a000a64b5 # initialize rs2
bne x10, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0ee4d86a000a64b5 # initialize rs1
li x5, 0x0ee4d86a000a64b5 # initialize rs2
bne x10, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x10, 0xd8222d36af280289 # initialize rs2
bne x22, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xd8222d36af280289 # initialize rs1
li x10, 0xd8222d36af280289 # initialize rs2
bne x22, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x27, 0xd62501c37798eabd # initialize rs2
bne x16, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xd62501c37798eabd # initialize rs1
li x27, 0xd62501c37798eabd # initialize rs2
bne x16, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x21, 0x9f7653bc22f53a36 # initialize rs2
bne x9, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x9f7653bc22f53a36 # initialize rs1
li x21, 0x9f7653bc22f53a36 # initialize rs2
bne x9, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
li x24, 0xef43f84fea88a691 # initialize rs2
bne x20, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xef43f84fea88a691 # initialize rs1
li x24, 0xef43f84fea88a691 # initialize rs2
bne x20, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xc1681c39c6e12e1c # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x25, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x25, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0xfc9d2e3229dcf0eb # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bne x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bne x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x180b88cc599010bc # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bne x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bne x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0xe5ff923e82a04619 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bne x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bne x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0x28127a583ac8b3b9 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bne x2, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bne x2, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x29, 0x3f12939987f5a22f # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bne x29, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bne x29, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0xde3dfc27a0f7e445 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0x6856b25266e83d09 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0xa52a831d601d4d2b # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bne x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bne x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x5, 0x2170baffc5bec058 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bne x5, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bne x5, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0x838767c51c675688 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x24, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x24, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x44be6abe58d4528e # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bne x15, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bne x15, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xfa1f8715aeabebca # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bne x24, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bne x24, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x4385b7871a903a7c # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bne x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bne x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0x7e9ce65e5783983a # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bne x1, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bne x1, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x3, 0xeff94b7566a86107 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bne x3, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bne x3, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bne x3, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bne x3, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bne x3, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bne x3, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bne x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bne x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bne x28, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bne x28, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bne x18, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bne x18, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x13, 0x0000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bne x13, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bne x13, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000000 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x21, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x21, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x13, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bne x13, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bne x13, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bne x3, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bne x3, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x0000000000000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bne x2, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bne x2, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bne x31, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bne x31, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x25, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bne x25, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bne x25, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x28, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bne x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bne x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
bne x3, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
bne x3, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x9, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bne x9, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bne x9, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x5, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
bne x5, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
bne x5, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x23, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bne x23, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bne x23, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bne x26, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bne x26, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bne x5, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bne x5, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bne x12, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bne x12, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bne x16, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bne x16, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
bne x20, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
bne x20, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x30, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x30, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x22, 0x0000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bne x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bne x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bne x6, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bne x6, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bne x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bne x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x11, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bne x11, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bne x11, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bne x3, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bne x3, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bne x3, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bne x3, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bne x21, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bne x21, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
bne x16, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
bne x16, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x8, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x8, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x8, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x16, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bne x16, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bne x16, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bne x20, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bne x20, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bne x15, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bne x15, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bne x28, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bne x28, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000002 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
bne x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
bne x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000002 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bne x7, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bne x7, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bne x25, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bne x25, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bne x28, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bne x28, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x1, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bne x1, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bne x1, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x1, 0x0000000000000002 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
bne x1, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
bne x1, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x10, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x10, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x2, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bne x2, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bne x2, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bne x5, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bne x5, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x29, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x29, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x29, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bne x25, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bne x25, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bne x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bne x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bne x2, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bne x2, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bne x6, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bne x6, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000000 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
bne x19, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
bne x19, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x28, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x28, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bne x1, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bne x1, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bne x8, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bne x8, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bne x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bne x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bne x26, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bne x26, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x20, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bne x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bne x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x31, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x31, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x31, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
bne x6, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
bne x6, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x7, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bne x7, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bne x7, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x1, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x1, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x1, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bne x16, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bne x16, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bne x15, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bne x15, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bne x13, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bne x13, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x31, 0x8000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bne x31, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bne x31, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bne x10, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bne x10, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x16, 0x8000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bne x16, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bne x16, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x8000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x2, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x2, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
bne x31, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5555555555555555 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
bne x31, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
bne x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
bne x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bne x7, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bne x7, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x28, 0x8000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
bne x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
bne x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bne x16, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bne x16, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x18, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
bne x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
bne x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bne x9, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bne x9, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x21, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bne x21, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bne x21, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bne x19, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bne x19, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
bne x28, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
bne x28, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bne x17, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bne x17, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0x7fffffffffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bne x10, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bne x10, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x7fffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7fffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x8, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x8, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x25, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bne x25, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bne x25, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bne x19, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bne x19, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bne x18, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bne x18, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bne x14, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bne x14, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bne x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bne x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bne x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bne x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bne x23, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bne x23, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bne x18, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
bne x18, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bne x18, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bne x18, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bne x14, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bne x14, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bne x23, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bne x23, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bne x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bne x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bne x6, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bne x6, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x12, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x12, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x5, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
bne x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
bne x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x7ffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x24, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x24, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x29, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bne x6, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bne x6, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bne x12, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bne x12, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x21, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bne x21, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
bne x21, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x7, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bne x7, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bne x7, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x14, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bne x14, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x5, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bne x5, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bne x5, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x5, 0xffffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x5, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x5, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bne x19, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bne x19, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bne x3, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bne x3, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
bne x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
bne x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bne x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bne x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bne x7, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bne x7, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bne x29, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bne x29, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xffffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x19, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x19, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x27, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
bne x27, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5555555555555555 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
bne x27, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bne x30, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bne x30, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bne x11, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bne x11, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x28, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x29, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bne x29, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
bne x29, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x19, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bne x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bne x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x6, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bne x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bne x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bne x21, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bne x21, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bne x7, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bne x7, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x7, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bne x7, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x19, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x19, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bne x15, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bne x15, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bne x6, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bne x6, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
bne x1, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
bne x1, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xfffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x5, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x5, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bne x16, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bne x16, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x9, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bne x14, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bne x14, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bne x3, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bne x3, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bne x23, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bne x23, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bne x23, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bne x23, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bne x11, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bne x11, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bne x28, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bne x28, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
bne x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
bne x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bne x13, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bne x13, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bne x7, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bne x7, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bne x9, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bne x9, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bne x5, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bne x5, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bne x15, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bne x15, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bne x28, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bne x28, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x8, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x8, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bne x22, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bne x22, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bne x14, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bne x14, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bne x5, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bne x5, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bne x8, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bne x8, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bne x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bne x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bne x22, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bne x22, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bne x2, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bne x2, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bne x12, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bne x12, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bne x15, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bne x15, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bne x12, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bne x12, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bne x24, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bne x24, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bne x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bne x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bne x3, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bne x3, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
bne x9, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
bne x9, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bne x14, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bne x14, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bne x14, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bne x14, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bne x20, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bne x20, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bne x2, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bne x2, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bne x16, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bne x16, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x6, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bne x6, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bne x6, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x18, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bne x18, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bne x18, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x18, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bne x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bne x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x26, 0x5555555555555555 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x26, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bne x26, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x13, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bne x13, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bne x13, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bne x8, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bne x8, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x31, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bne x31, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bne x23, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bne x23, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bne x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bne x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x17, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
bne x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
bne x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5555555555555555 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x2, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x2, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bne x29, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bne x29, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bne x7, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bne x7, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
bne x7, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
bne x7, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x11, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bne x11, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bne x11, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bne x11, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bne x11, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x27, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bne x27, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bne x27, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x8, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bne x8, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x10, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bne x10, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bne x10, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x31, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bne x31, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bne x31, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x8, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bne x8, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bne x8, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bne x20, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bne x20, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x11, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x11, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bne x15, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bne x15, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
bne x12, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xfffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
bne x12, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000ffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
bne x24, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
bne x24, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x13, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bne x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bne x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bne x6, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bne x6, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bne x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000000fffffffe # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bne x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x12, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bne x12, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bne x12, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bne x13, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bne x13, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x20, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bne x20, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bne x20, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bne x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bne x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bne x14, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
bne x14, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x14, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x14, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bne x14, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x25, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bne x25, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bne x25, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bne x13, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
bne x13, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bne x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
bne x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
bne x18, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
bne x18, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bne x16, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bne x16, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x19, 0x00000000fffffffe # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
bne x19, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
bne x19, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000fffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x1, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x1, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x6, 0x00000000fffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bne x6, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bne x6, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bne x23, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bne x23, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bne x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bne x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x21, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bne x21, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bne x21, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bne x28, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bne x28, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x22, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bne x22, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bne x22, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bne x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bne x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x25, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bne x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bne x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bne x23, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bne x23, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bne x3, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bne x3, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000100000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bne x9, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bne x9, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x11, 0x0000000100000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bne x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bne x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bne x19, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bne x19, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bne x25, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bne x25, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000100000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x18, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x18, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x13, 0x0000000100000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bne x13, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bne x13, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bne x22, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bne x22, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x10, 0x0000000100000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bne x10, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bne x10, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bne x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bne x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x11, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bne x11, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bne x11, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x31, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bne x31, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bne x31, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x25, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bne x25, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bne x25, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bne x9, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bne x9, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x9, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bne x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bne x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bne x14, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bne x14, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bne x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bne x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x29, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bne x29, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bne x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bne x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000100000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000100000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bne x14, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bne x14, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x21, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bne x21, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x28, 0x0000000100000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bne x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bne x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bne x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bne x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x18, 0x0000000100000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bne x1, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bne x1, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bne x12, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bne x12, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x6aee837b2e365882 # initialize rs1
li x0, 0xbbf911561e23451d # initialize rs2
bne x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xbbf911561e23451d # initialize rs1
li x0, 0xbbf911561e23451d # initialize rs2
bne x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x5579b738686d5f1b # initialize rs1
li x1, 0xb6c8ba19ae396d68 # initialize rs2
bne x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xb6c8ba19ae396d68 # initialize rs1
li x1, 0xb6c8ba19ae396d68 # initialize rs2
bne x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb26fa2b6b6cfd86f # initialize rs1
li x2, 0x8883562713647c6e # initialize rs2
bne x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8883562713647c6e # initialize rs1
li x2, 0x8883562713647c6e # initialize rs2
bne x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6b52fe114e6616f2 # initialize rs1
li x3, 0x3063e9c6e6c75590 # initialize rs2
bne x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x3063e9c6e6c75590 # initialize rs1
li x3, 0x3063e9c6e6c75590 # initialize rs2
bne x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7228cfc21f971832 # initialize rs1
li x4, 0x206a52ad3b1cfba0 # initialize rs2
bne x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x206a52ad3b1cfba0 # initialize rs1
li x4, 0x206a52ad3b1cfba0 # initialize rs2
bne x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4161150a74884946 # initialize rs1
li x5, 0xbc7516a0e991de7f # initialize rs2
bne x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xbc7516a0e991de7f # initialize rs1
li x5, 0xbc7516a0e991de7f # initialize rs2
bne x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe9cf35fe95bd2e48 # initialize rs1
li x6, 0xbd1521e672733fd8 # initialize rs2
bne x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xbd1521e672733fd8 # initialize rs1
li x6, 0xbd1521e672733fd8 # initialize rs2
bne x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb66cd9e6c8b6c066 # initialize rs1
li x7, 0xbb8996aceb74df6b # initialize rs2
bne x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xbb8996aceb74df6b # initialize rs1
li x7, 0xbb8996aceb74df6b # initialize rs2
bne x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9abb899136b4dad5 # initialize rs1
li x8, 0xb2e6ea843b0d4363 # initialize rs2
bne x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xb2e6ea843b0d4363 # initialize rs1
li x8, 0xb2e6ea843b0d4363 # initialize rs2
bne x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xbebf67e6fe3f9e16 # initialize rs1
li x9, 0x062ee5a19c185d16 # initialize rs2
bne x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x062ee5a19c185d16 # initialize rs1
li x9, 0x062ee5a19c185d16 # initialize rs2
bne x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x1d562145a2343a4e # initialize rs1
li x10, 0x8233bf1faf2662d2 # initialize rs2
bne x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8233bf1faf2662d2 # initialize rs1
li x10, 0x8233bf1faf2662d2 # initialize rs2
bne x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xed75377accd281f0 # initialize rs1
li x11, 0x2af5bcd39501304a # initialize rs2
bne x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x2af5bcd39501304a # initialize rs1
li x11, 0x2af5bcd39501304a # initialize rs2
bne x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9a0400bf7bdd1046 # initialize rs1
li x12, 0xbeaeb161073b566e # initialize rs2
bne x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xbeaeb161073b566e # initialize rs1
li x12, 0xbeaeb161073b566e # initialize rs2
bne x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x4a8fa3450ffcbce8 # initialize rs1
li x13, 0xdc042d32e9e24f87 # initialize rs2
bne x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xdc042d32e9e24f87 # initialize rs1
li x13, 0xdc042d32e9e24f87 # initialize rs2
bne x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa08948038dcf58fe # initialize rs1
li x14, 0x687c80b1f2c963ca # initialize rs2
bne x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x687c80b1f2c963ca # initialize rs1
li x14, 0x687c80b1f2c963ca # initialize rs2
bne x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa5e153b82eb0057b # initialize rs1
li x15, 0x9c629177ed38ec2d # initialize rs2
bne x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x9c629177ed38ec2d # initialize rs1
li x15, 0x9c629177ed38ec2d # initialize rs2
bne x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdeb890ca0d7eb748 # initialize rs1
li x16, 0x53a20f3f79fa3c7b # initialize rs2
bne x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x53a20f3f79fa3c7b # initialize rs1
li x16, 0x53a20f3f79fa3c7b # initialize rs2
bne x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x17a40ec8963e239a # initialize rs1
li x17, 0x558d2ddb3fe5371b # initialize rs2
bne x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x558d2ddb3fe5371b # initialize rs1
li x17, 0x558d2ddb3fe5371b # initialize rs2
bne x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1c462fb84c76c9d7 # initialize rs1
li x18, 0x9d37943bc2d73ca9 # initialize rs2
bne x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x9d37943bc2d73ca9 # initialize rs1
li x18, 0x9d37943bc2d73ca9 # initialize rs2
bne x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x9ca02c49c3ad7373 # initialize rs1
li x19, 0x31e96a1e5e5e382a # initialize rs2
bne x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x31e96a1e5e5e382a # initialize rs1
li x19, 0x31e96a1e5e5e382a # initialize rs2
bne x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3756380466c3a655 # initialize rs1
li x20, 0xb053f74410b350c1 # initialize rs2
bne x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xb053f74410b350c1 # initialize rs1
li x20, 0xb053f74410b350c1 # initialize rs2
bne x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x274625e1ae1a46ba # initialize rs1
li x21, 0x6ea61e1f4e03450a # initialize rs2
bne x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x6ea61e1f4e03450a # initialize rs1
li x21, 0x6ea61e1f4e03450a # initialize rs2
bne x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x83002f13a7099454 # initialize rs1
li x22, 0x9e7b230d19881d29 # initialize rs2
bne x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x9e7b230d19881d29 # initialize rs1
li x22, 0x9e7b230d19881d29 # initialize rs2
bne x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1c90748509c4cbb6 # initialize rs1
li x23, 0xaa8bc94d109fd682 # initialize rs2
bne x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xaa8bc94d109fd682 # initialize rs1
li x23, 0xaa8bc94d109fd682 # initialize rs2
bne x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8803418c412574ad # initialize rs1
li x24, 0xc86237c193d908fc # initialize rs2
bne x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xc86237c193d908fc # initialize rs1
li x24, 0xc86237c193d908fc # initialize rs2
bne x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa8c986b7baafc409 # initialize rs1
li x25, 0x763ae6180e2db24b # initialize rs2
bne x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x763ae6180e2db24b # initialize rs1
li x25, 0x763ae6180e2db24b # initialize rs2
bne x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x897f7363e8cc6fef # initialize rs1
li x26, 0x931a6bfd86c3b045 # initialize rs2
bne x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x931a6bfd86c3b045 # initialize rs1
li x26, 0x931a6bfd86c3b045 # initialize rs2
bne x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xee743899c670e3f0 # initialize rs1
li x27, 0x92026096810618e0 # initialize rs2
bne x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x92026096810618e0 # initialize rs1
li x27, 0x92026096810618e0 # initialize rs2
bne x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x14be050c6707b937 # initialize rs1
li x28, 0x163acac06518f4bf # initialize rs2
bne x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x163acac06518f4bf # initialize rs1
li x28, 0x163acac06518f4bf # initialize rs2
bne x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x509369a99469f69d # initialize rs1
li x29, 0x58f0f0b24d7ba4d4 # initialize rs2
bne x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x58f0f0b24d7ba4d4 # initialize rs1
li x29, 0x58f0f0b24d7ba4d4 # initialize rs2
bne x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x32fd9fac732177e1 # initialize rs1
li x30, 0x7b2065c6e0492148 # initialize rs2
bne x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7b2065c6e0492148 # initialize rs1
li x30, 0x7b2065c6e0492148 # initialize rs2
bne x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x9539d134633c3320 # initialize rs1
li x31, 0xbeef66e0d6646662 # initialize rs2
bne x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xbeef66e0d6646662 # initialize rs1
li x31, 0xbeef66e0d6646662 # initialize rs2
bne x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bne x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x24, x23 # perform first operation
bne x31, x7, arbitraryLabel145
nop
arbitraryLabel145:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x5, x31 # perform first operation
bne x20, x30, arbitraryLabel146
nop
arbitraryLabel146:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x15, x14 # perform first operation
bne x26, x27, arbitraryLabel147
nop
arbitraryLabel147:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x3, x15 # perform first operation
bne x27, x1, arbitraryLabel148
nop
arbitraryLabel148:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x2, x20 # perform first operation
bne x28, x13, arbitraryLabel149
nop
arbitraryLabel149:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x3, x25 # perform first operation
bne x26, x21, arbitraryLabel150
nop
arbitraryLabel150:
nop
 # perform second (triggering) operation

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
