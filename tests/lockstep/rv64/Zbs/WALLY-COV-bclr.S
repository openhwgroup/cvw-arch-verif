///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-bclr.S
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
li x0, 0xae3868580824c925 # initialize rs1
li x9, 0xed7dcd7bca76a737 # initialize rs2
bclr x18, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbafb3b6e9d069a8d # initialize rs1
li x12, 0xbd7177fa65e8074c # initialize rs2
bclr x13, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0541030819275ae1 # initialize rs1
li x24, 0x7a8567bb1822f036 # initialize rs2
bclr x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65f0eeb1be3c8a99 # initialize rs1
li x16, 0xb7c6e46bc5b32932 # initialize rs2
bclr x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4b3a3048bf6b665d # initialize rs1
li x20, 0x97568d9a10880e75 # initialize rs2
bclr x8, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1300a608ec692758 # initialize rs1
li x14, 0xdee68f8cae64dbb0 # initialize rs2
bclr x17, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9f4a0fc604b4c559 # initialize rs1
li x5, 0x9dcb30bef010998b # initialize rs2
bclr x28, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xad93b9e5844fb3ac # initialize rs1
li x24, 0xf99a65fa12bd59f0 # initialize rs2
bclr x15, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2d7ec3dacfd11ebd # initialize rs1
li x6, 0x79ddc75db6cc53fd # initialize rs2
bclr x14, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa3d557ec34fc2876 # initialize rs1
li x12, 0x82ef158d862c49f5 # initialize rs2
bclr x8, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7c9e3c720e601d58 # initialize rs1
li x12, 0xd50e08f5c48b1678 # initialize rs2
bclr x6, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf697f688024f7c6a # initialize rs1
li x13, 0xd478991675cbccc5 # initialize rs2
bclr x7, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x44648a7d05de0cdd # initialize rs1
li x7, 0x2282da21059401e9 # initialize rs2
bclr x18, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb79f05b20e18f542 # initialize rs1
li x23, 0xd91c1e89913a5057 # initialize rs2
bclr x31, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x346973eaabb068ad # initialize rs1
li x12, 0x0b8767f16c2f598f # initialize rs2
bclr x8, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0875960eee221cf9 # initialize rs1
li x29, 0x445174fbaafa6f20 # initialize rs2
bclr x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x774fc48739776bff # initialize rs1
li x1, 0x4863401ef8757dd6 # initialize rs2
bclr x18, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x767fc06655bed2a8 # initialize rs1
li x18, 0x5088287eda80f426 # initialize rs2
bclr x1, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x797562dd90bf8336 # initialize rs1
li x23, 0x92915f93c08406a4 # initialize rs2
bclr x15, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf8cf10f243f548c9 # initialize rs1
li x11, 0x0fbb8fa61ecb3b21 # initialize rs2
bclr x16, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xccaf77fa7c0fba32 # initialize rs1
li x14, 0xd46516cd5eeaa11b # initialize rs2
bclr x15, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xea6d8db66115f1d8 # initialize rs1
li x5, 0xec94df402c8a3c8b # initialize rs2
bclr x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x230e2ddbe9ad3ec7 # initialize rs1
li x5, 0x1d112e885cd5d77c # initialize rs2
bclr x20, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x37b98049581dad56 # initialize rs1
li x21, 0xe98bf91a3702c332 # initialize rs2
bclr x19, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe187a1ca702cac32 # initialize rs1
li x21, 0x356313b7fa93a2a5 # initialize rs2
bclr x6, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd0c6c944e6965994 # initialize rs1
li x16, 0x932e00dd49c3ffc5 # initialize rs2
bclr x26, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0564d1e796bc4186 # initialize rs1
li x21, 0x9e9283b9c0954303 # initialize rs2
bclr x7, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf79ace2bf682463a # initialize rs1
li x9, 0xad7628467e951ece # initialize rs2
bclr x23, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x21ab2a522eca276f # initialize rs1
li x2, 0x28ce5eb080fc52ed # initialize rs2
bclr x10, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x47f37edaaba5fe22 # initialize rs1
li x11, 0x09482e31caa9797b # initialize rs2
bclr x18, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x33689dd3b3382f2c # initialize rs1
li x31, 0xf5ece864e16db556 # initialize rs2
bclr x24, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9c4532a8e529c264 # initialize rs1
li x10, 0x16a504a2ca66d698 # initialize rs2
bclr x16, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0xcef02e0f6c4e1948 # initialize rs1
li x0, 0x60b1ca1f8a37abc7 # initialize rs2
bclr x22, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0xa47566776aa0451b # initialize rs1
li x1, 0x21c8162166caf55c # initialize rs2
bclr x18, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0xb6eae33a0055d42a # initialize rs1
li x2, 0x1742be5dc5e29525 # initialize rs2
bclr x3, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x20a653ddc1c079f7 # initialize rs1
li x3, 0xca5fb1814b23206d # initialize rs2
bclr x19, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x4516982953cbed11 # initialize rs1
li x4, 0x04129bdfa3db0870 # initialize rs2
bclr x10, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x6a4816553ebc17d3 # initialize rs1
li x5, 0x3f7b4ff21bffd18e # initialize rs2
bclr x10, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xe4099199089496e4 # initialize rs1
li x6, 0xe62dd6816052827d # initialize rs2
bclr x25, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x5bbff5fc2baa39d8 # initialize rs1
li x7, 0x14860cad0d05ccac # initialize rs2
bclr x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x686a92329c57a2a9 # initialize rs1
li x8, 0x058f53db1ad50690 # initialize rs2
bclr x29, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x9520ca860059bb83 # initialize rs1
li x9, 0xd0ac507cff2b7dd0 # initialize rs2
bclr x12, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0xe7db83ea28884951 # initialize rs1
li x10, 0x8fca52782d40e470 # initialize rs2
bclr x15, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x7b15d486f5795f9b # initialize rs1
li x11, 0x601c2d2af3f0b65a # initialize rs2
bclr x21, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x221e1b8c9c01cbd7 # initialize rs1
li x12, 0x3a452124a346cbb9 # initialize rs2
bclr x29, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x0d643ba3dc2087de # initialize rs1
li x13, 0xad3ee456b9a53f29 # initialize rs2
bclr x29, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x9c3f624a409f9606 # initialize rs1
li x14, 0x97451e04dfe1ac2e # initialize rs2
bclr x22, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x17, 0x266be878e111f7d4 # initialize rs1
li x15, 0x43cf799a43ff51c2 # initialize rs2
bclr x5, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x806e0ae4018ed5fc # initialize rs1
li x16, 0xa850f29c8bb223e8 # initialize rs2
bclr x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0x5bad8b8a8bc54b33 # initialize rs1
li x17, 0xd4e087d68349b566 # initialize rs2
bclr x16, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x16, 0xa7027e2e8091d565 # initialize rs1
li x18, 0x9637210cfa2bbc1f # initialize rs2
bclr x9, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0xfe3715fa1997fe63 # initialize rs1
li x19, 0x4dfa50e9c77d7b70 # initialize rs2
bclr x21, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x7f19a6f034d3d6e9 # initialize rs1
li x20, 0xb51a238dbe55a734 # initialize rs2
bclr x6, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x94940d5be4dee460 # initialize rs1
li x21, 0xd6241f8b27e60b75 # initialize rs2
bclr x9, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x656599421c720254 # initialize rs1
li x22, 0x8fe36a684364c21f # initialize rs2
bclr x23, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x6, 0x30c8f781d2a5e130 # initialize rs1
li x23, 0xfae6ba010fa4f2fe # initialize rs2
bclr x30, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0x0df14b0df2c04c2b # initialize rs1
li x24, 0xc3d531f40387d5cb # initialize rs2
bclr x8, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0xf55e95db537f6aee # initialize rs1
li x25, 0x6c7650e9950f5368 # initialize rs2
bclr x22, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0xb5bcc472fe826952 # initialize rs1
li x26, 0x9367e73622079b57 # initialize rs2
bclr x18, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x268827f679d34ac9 # initialize rs1
li x27, 0x43967372e588b073 # initialize rs2
bclr x18, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0xc3c3a4846ac41619 # initialize rs1
li x28, 0x0f79313d82a3503e # initialize rs2
bclr x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x3cd9b3974ab113a8 # initialize rs1
li x29, 0xd51f68cf02364e2d # initialize rs2
bclr x24, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0xbad07bef9726a4f2 # initialize rs1
li x30, 0xcfd839d178e2f088 # initialize rs2
bclr x9, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x50e7199e144af054 # initialize rs1
li x31, 0x988271af4307e4b8 # initialize rs2
bclr x21, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x7cffdb253f8ccc2f # initialize rs1
li x1, 0x13573cb72015cbd1 # initialize rs2
bclr x0, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x8697d759250adbc4 # initialize rs1
li x18, 0x10be2d6f8e97629c # initialize rs2
bclr x1, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x4414bc3b64b84a78 # initialize rs1
li x19, 0x163b28db359dc0a7 # initialize rs2
bclr x2, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x3d8d7976fb0aa92d # initialize rs1
li x3, 0xee4950e3ca569c4b # initialize rs2
bclr x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x442c9fd5a96b6869 # initialize rs1
li x5, 0xf67568d1e51ea7c1 # initialize rs2
bclr x4, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
li x7, 0xe7c3a2d973cb7c01 # initialize rs1
li x27, 0x7133f22e38fead71 # initialize rs2
bclr x5, x7, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xea267116a8c90898 # initialize rs1
li x20, 0xbf451be5e5786c0a # initialize rs2
bclr x6, x30, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xc6fbba7ffdc0f69f # initialize rs1
li x30, 0x4da11914709449b7 # initialize rs2
bclr x7, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x57047be119e9e171 # initialize rs1
li x25, 0x9d0bf8b6b6ae7816 # initialize rs2
bclr x8, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0xeb4014b32b89fa6d # initialize rs1
li x8, 0x45bbc5d17345a909 # initialize rs2
bclr x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xd48221e12c4c4896 # initialize rs1
li x21, 0x134d7facee99ff9f # initialize rs2
bclr x10, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0xe7d291183fb2b168 # initialize rs1
li x3, 0x0b81e61830fcc399 # initialize rs2
bclr x11, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x67458415968019c8 # initialize rs1
li x25, 0x76116bdda50f95a6 # initialize rs2
bclr x12, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x9db287d5d79a8d36 # initialize rs1
li x3, 0xd23a093f1140d037 # initialize rs2
bclr x13, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x3b4ce622bac4fd7b # initialize rs1
li x5, 0x3df30add50bb4544 # initialize rs2
bclr x14, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x12df731af4036dcb # initialize rs1
li x3, 0x1e7e2ebd75d07cd6 # initialize rs2
bclr x15, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0x9c91bc779b66d868 # initialize rs1
li x29, 0x28f46ba0233ee621 # initialize rs2
bclr x16, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x47207c10e3eae949 # initialize rs1
li x18, 0x177472c42935d2a6 # initialize rs2
bclr x17, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x308e7ad5e4243e58 # initialize rs1
li x29, 0x9a49be3c794d07a2 # initialize rs2
bclr x18, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x80b709dfc7e5a3bf # initialize rs1
li x6, 0x4cc2af04130ac333 # initialize rs2
bclr x19, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xc559221a45aa2782 # initialize rs1
li x14, 0xb5008a8c510eac6b # initialize rs2
bclr x20, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x7ff59543221e70ce # initialize rs1
li x11, 0xb99b678b48735c7c # initialize rs2
bclr x21, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x3b1d8b19a0269b7b # initialize rs1
li x3, 0x1cf773d09b1e7dc9 # initialize rs2
bclr x22, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x09b16b0693d21944 # initialize rs1
li x20, 0xd5279986c6ee14eb # initialize rs2
bclr x23, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x353bdc888f0c1d4e # initialize rs1
li x1, 0xd1713d3c50df9f9f # initialize rs2
bclr x24, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x75fec299fd10ec1e # initialize rs1
li x7, 0x5c2bc03417affbfa # initialize rs2
bclr x25, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x25, 0x1fd233c8b1589aab # initialize rs1
li x31, 0xa95e35db1ff24718 # initialize rs2
bclr x26, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0xab9762efe3855c62 # initialize rs1
li x8, 0x1772bfa5278a6f9e # initialize rs2
bclr x27, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x19da5391f0bed131 # initialize rs1
li x11, 0x1f5fb4ac864479aa # initialize rs2
bclr x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0xa5969f1616a4e92a # initialize rs1
li x31, 0x15718eb1d0288ab0 # initialize rs2
bclr x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x9f9c6bb4b7c323f9 # initialize rs1
li x13, 0x33df1695c814fad2 # initialize rs2
bclr x30, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x70d9c2cbefdaff60 # initialize rs1
li x30, 0x659e002faef3a048 # initialize rs2
bclr x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0xdaa8db696bcc7667 # initialize rs2
bclr x29, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0000000000000001 # initialize rs1
li x24, 0xe30db72680ede2bb # initialize rs2
bclr x13, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x20, 0xa7694f1ca4455b4e # initialize rs2
bclr x25, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x26, 0xf21e3db39ba12366 # initialize rs2
bclr x24, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x5, 0x8000000000000001 # initialize rs1
li x2, 0x7bead3d2fad24329 # initialize rs2
bclr x12, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x10, 0x7ed87a123521ef9b # initialize rs2
bclr x2, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x14, 0x3819ac4429ba0dde # initialize rs2
bclr x21, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x27, 0x6bf2d708f7d19e50 # initialize rs2
bclr x13, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0xcf916628f892858d # initialize rs2
bclr x28, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x636098bbc496e1be # initialize rs2
bclr x6, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xe2297a332a14c111 # initialize rs2
bclr x18, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x6, 0x353b3d9fb0944c9d # initialize rs2
bclr x23, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x3, 0x4d31292732a0ca22 # initialize rs2
bclr x26, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x20, 0xd929a43aedf2a62f # initialize rs2
bclr x19, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x11, 0x0000000100000000 # initialize rs1
li x24, 0xedd03e7752527e40 # initialize rs2
bclr x3, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
li x2, 0xeeb9b36d0ae636a4 # initialize rs2
bclr x22, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0xaae60944f3b9dbf9 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bclr x27, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0xe0e99795b8ea19f3 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bclr x27, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x4f60f13fdefd015b # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bclr x16, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x18, 0xa11a0cd9f14fa502 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x22, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0xa3d9a04f63e97971 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bclr x10, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x27, 0xbb7b70e68cdc2f09 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bclr x31, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0x43e91e0764929dac # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bclr x21, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0x6e9ed2bee9c38e0d # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bclr x11, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x29, 0x0b8794e998a4216a # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bclr x17, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x8, 0x629f18c0a89ade25 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
bclr x5, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xd0db482c2557e38a # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x31, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0xddaf0f2c220f4d7f # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bclr x16, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0xec0711ace0e2b033 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bclr x18, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x30, 0x63f61e58739161ec # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bclr x11, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x31, 0x7dd6604ac8299c2e # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bclr x22, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x25, 0x579c6b9d94a9e2f2 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bclr x8, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bclr x28, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x19, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bclr x15, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bclr x29, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x24, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bclr x14, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bclr x26, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bclr x18, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bclr x11, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bclr x2, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bclr x15, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bclr x10, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x29, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bclr x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bclr x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bclr x5, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bclr x14, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bclr x16, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bclr x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x1, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bclr x30, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bclr x26, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x10, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bclr x12, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x29, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bclr x11, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bclr x18, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bclr x17, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bclr x9, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bclr x10, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
bclr x10, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x30, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x30, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bclr x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bclr x26, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bclr x13, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x10, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bclr x6, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bclr x9, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bclr x21, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
bclr x10, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bclr x19, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x9, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bclr x6, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x3, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bclr x13, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bclr x6, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bclr x23, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bclr x5, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x22, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000002 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bclr x3, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x13, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bclr x24, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bclr x25, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bclr x26, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x10, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bclr x20, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x23, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bclr x1, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bclr x22, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x24, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
bclr x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x8, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bclr x7, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bclr x14, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x16, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bclr x12, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bclr x26, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bclr x24, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x7, 0x8000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bclr x19, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bclr x29, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bclr x17, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x19, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x31, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bclr x13, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bclr x16, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bclr x28, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bclr x21, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x23, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bclr x12, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bclr x2, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x14, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bclr x12, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bclr x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x14, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bclr x28, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bclr x23, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bclr x3, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bclr x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
bclr x18, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bclr x20, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bclr x3, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x27, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x15, 0x8000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bclr x20, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bclr x21, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
bclr x25, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bclr x3, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bclr x29, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bclr x6, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x21, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bclr x19, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bclr x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x2, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bclr x31, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x10, 0x7fffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bclr x17, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bclr x25, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bclr x6, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bclr x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
bclr x16, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x22, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x25, 0x7fffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bclr x12, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bclr x24, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bclr x30, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bclr x12, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bclr x19, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bclr x18, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x13, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bclr x2, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bclr x20, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bclr x15, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bclr x15, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bclr x13, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bclr x1, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x8, 0x7ffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bclr x21, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
bclr x10, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
bclr x26, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7ffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x23, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bclr x21, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bclr x20, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bclr x30, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bclr x13, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x21, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bclr x25, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bclr x2, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bclr x24, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bclr x31, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bclr x13, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bclr x16, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bclr x1, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bclr x31, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bclr x9, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bclr x12, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0xffffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bclr x8, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x11, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x13, 0xffffffffffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bclr x3, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bclr x19, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bclr x1, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x13, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bclr x31, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bclr x5, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bclr x12, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
bclr x5, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bclr x28, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x29, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bclr x28, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bclr x12, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bclr x11, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bclr x3, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x2, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x10, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bclr x8, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x14, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bclr x8, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bclr x14, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bclr x20, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bclr x26, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bclr x18, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bclr x13, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bclr x12, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bclr x25, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bclr x19, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bclr x19, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bclr x12, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bclr x15, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bclr x16, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bclr x26, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bclr x26, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bclr x16, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bclr x15, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bclr x26, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bclr x19, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bclr x16, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bclr x20, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bclr x12, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bclr x11, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x30, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bclr x29, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bclr x18, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bclr x13, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
bclr x29, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bclr x3, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bclr x10, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x13, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bclr x10, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bclr x27, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bclr x15, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bclr x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bclr x27, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bclr x11, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x24, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bclr x14, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x19, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bclr x9, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bclr x6, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x10, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bclr x19, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bclr x13, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bclr x31, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bclr x16, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bclr x15, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bclr x2, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5555555555555555 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bclr x5, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bclr x3, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bclr x18, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x28, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bclr x23, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bclr x10, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bclr x2, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
bclr x20, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x19, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bclr x23, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bclr x9, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x16, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bclr x5, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bclr x17, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bclr x25, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bclr x19, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bclr x5, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bclr x7, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000ffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x28, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x15, 0x00000000ffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bclr x14, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
bclr x25, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bclr x23, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x3, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bclr x24, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x24, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bclr x29, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bclr x28, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bclr x9, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bclr x11, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x29, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bclr x8, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bclr x7, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bclr x27, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bclr x28, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x9, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bclr x26, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000fffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x29, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x19, 0x00000000fffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bclr x24, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bclr x20, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bclr x30, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x14, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bclr x1, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
bclr x13, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x29, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bclr x20, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bclr x16, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bclr x9, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x6, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bclr x22, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
bclr x2, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bclr x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bclr x10, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
bclr x5, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
bclr x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
bclr x12, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x24, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bclr x29, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bclr x29, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bclr x19, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x7, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bclr x9, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x10, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bclr x15, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bclr x23, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x21, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bclr x17, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bclr x22, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bclr x30, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x29, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bclr x19, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bclr x15, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bclr x29, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bclr x25, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bclr x22, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000100000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
bclr x18, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bclr x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bclr x20, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bclr x25, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bclr x8, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bclr x8, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x27eb9c8fd9a2faf9 # initialize rs1
li x0, 0x7e648f64ef58222b # initialize rs2
bclr x13, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x60f8c9b367a1bf83 # initialize rs1
li x1, 0xdd6030d4a267de0f # initialize rs2
bclr x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x5e94c5a34a6a4b4a # initialize rs1
li x2, 0xec3a79e3b6aceb03 # initialize rs2
bclr x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x9eaf08f699ad742d # initialize rs1
li x3, 0xba65f31b10ed30d3 # initialize rs2
bclr x7, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x78596471b659403f # initialize rs1
li x4, 0xb10efcb1ce85e102 # initialize rs2
bclr x9, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8037c70eef23f168 # initialize rs1
li x5, 0xd80c7dc05d31ad78 # initialize rs2
bclr x27, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x00296ec273cc72eb # initialize rs1
li x6, 0xa14a58259ad38dbb # initialize rs2
bclr x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc80e4245a9b4fbed # initialize rs1
li x7, 0x8f3758eccccc5329 # initialize rs2
bclr x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6af4d99c2bcbd2fc # initialize rs1
li x8, 0xa0085377e8767ace # initialize rs2
bclr x15, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfd56aefa33a5064f # initialize rs1
li x9, 0x679558ce59a3e443 # initialize rs2
bclr x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7eedd1a772fbd7d2 # initialize rs1
li x10, 0x9ca085eb9ba5ad80 # initialize rs2
bclr x8, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc43254be847e1cce # initialize rs1
li x11, 0x6654182e47dc5cd4 # initialize rs2
bclr x25, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7dcf50ce7649e5cc # initialize rs1
li x12, 0xd67ea6558610f5e5 # initialize rs2
bclr x6, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5fce521fba1664de # initialize rs1
li x13, 0x14e521984d8a4294 # initialize rs2
bclr x24, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x90b77ca5e9ba0614 # initialize rs1
li x14, 0xfd8f85f6dbc8f4c8 # initialize rs2
bclr x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x07be0aa96c6e786f # initialize rs1
li x15, 0x5af1e115a7c78b9b # initialize rs2
bclr x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa4b660290f29ce74 # initialize rs1
li x16, 0xfb1c7bab1953bc0e # initialize rs2
bclr x15, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x90d90d8ec9d354c2 # initialize rs1
li x17, 0xf1948e6d162a7e36 # initialize rs2
bclr x1, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc3abc155a7fc072e # initialize rs1
li x18, 0x70e7cd6c99e7b971 # initialize rs2
bclr x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x150f3448892b8d77 # initialize rs1
li x19, 0xc1258bcd1c6a5257 # initialize rs2
bclr x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3db257536c698c32 # initialize rs1
li x20, 0x96f0d40d46d40796 # initialize rs2
bclr x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xbf0d5db33c2147a3 # initialize rs1
li x21, 0x8d468d20022563fa # initialize rs2
bclr x3, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7159eaa48a440593 # initialize rs1
li x22, 0x21b04dbdb536bd79 # initialize rs2
bclr x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfe36ee0861856d47 # initialize rs1
li x23, 0xa2045f6f9977d2c4 # initialize rs2
bclr x29, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7ce4b63b59c3c843 # initialize rs1
li x24, 0x62d094b237a88f1b # initialize rs2
bclr x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x06acb5026f29f4bd # initialize rs1
li x25, 0x60e64b893a2d8c3d # initialize rs2
bclr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xcad5d02f26a94f3f # initialize rs1
li x26, 0x89317dff54419f06 # initialize rs2
bclr x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x71fffd6d5cf6cfef # initialize rs1
li x27, 0x3e982fa97f2532c7 # initialize rs2
bclr x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xfe6a0b1814cae5be # initialize rs1
li x28, 0x30978288d669e495 # initialize rs2
bclr x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x9208a7ba97a262af # initialize rs1
li x29, 0xe187e8d7c67a440e # initialize rs2
bclr x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2ff3eb9fc1491529 # initialize rs1
li x30, 0x8aa0e928159c779e # initialize rs2
bclr x8, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x56fca90430e58062 # initialize rs1
li x31, 0x2b284f4ac3c0f48c # initialize rs2
bclr x10, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5bac5456431d6431 # initialize rs1
li x18, 0xbe5ebdc5b1e7afb1 # initialize rs2
bclr x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3f27d5de7632b507 # initialize rs1
li x10, 0xdcdc3732f2abf100 # initialize rs2
bclr x1, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x167a4cc640868b04 # initialize rs1
li x21, 0x2705188d0690d7ff # initialize rs2
bclr x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xab6f1dc6909f13a0 # initialize rs1
li x28, 0xb875e58fc40248b9 # initialize rs2
bclr x3, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdc222418a9c5857e # initialize rs1
li x13, 0xbb864e51446ee2b6 # initialize rs2
bclr x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8dbb0beb0ce04b0c # initialize rs1
li x21, 0xa7d930eae29bb927 # initialize rs2
bclr x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x959588ec8c25bbfe # initialize rs1
li x30, 0x4a18c5496408c3a0 # initialize rs2
bclr x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5bb692627fd0cc2a # initialize rs1
li x12, 0x85a682d4c05181c7 # initialize rs2
bclr x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb476727ded70b2aa # initialize rs1
li x31, 0x97599b8dfdfb3ede # initialize rs2
bclr x8, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x93b40fc161b423f6 # initialize rs1
li x15, 0xd9f9e43d2159d044 # initialize rs2
bclr x9, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xa97f46b50fcbc8c7 # initialize rs1
li x23, 0xc8c9304d3e7cd897 # initialize rs2
bclr x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7491b38295157d51 # initialize rs1
li x26, 0x8837a7e8bb4f8cbf # initialize rs2
bclr x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa24ac17f05c4a59b # initialize rs1
li x26, 0x0b39e09fcdd114d7 # initialize rs2
bclr x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd72aff1077d1c6b3 # initialize rs1
li x1, 0x940e4fd4db6ad5cc # initialize rs2
bclr x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe5c32f7ea8482154 # initialize rs1
li x31, 0x8e462685c1e3d388 # initialize rs2
bclr x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8f2ed4c2ba2e6825 # initialize rs1
li x7, 0x9334585e76340e9f # initialize rs2
bclr x15, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa903c231faec9cb5 # initialize rs1
li x22, 0x2a1fadaef29ac8cb # initialize rs2
bclr x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc5b0c9a68f29ec91 # initialize rs1
li x25, 0x6b025ae231f74392 # initialize rs2
bclr x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa99978deafa92f81 # initialize rs1
li x31, 0x0911615ab1a365a5 # initialize rs2
bclr x18, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf4e1302868113e23 # initialize rs1
li x20, 0x2498165ff3186926 # initialize rs2
bclr x19, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3e783e2b54e394de # initialize rs1
li x19, 0x3d0f528e47259083 # initialize rs2
bclr x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x89616db1f537f4d8 # initialize rs1
li x20, 0x976bb2f0c8357843 # initialize rs2
bclr x21, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9e3f92d8075e3537 # initialize rs1
li x18, 0x61d00c9b38f99802 # initialize rs2
bclr x22, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe0135a24ac57c412 # initialize rs1
li x26, 0x6dd8dc3a20571169 # initialize rs2
bclr x23, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6e2c946c42928976 # initialize rs1
li x26, 0xaa6a0055ef084520 # initialize rs2
bclr x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5d9c98405f0a3deb # initialize rs1
li x6, 0xca1d560649fbe2c8 # initialize rs2
bclr x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7433a18b6cfd8b1f # initialize rs1
li x16, 0x023e43899e6d94fd # initialize rs2
bclr x26, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x898b7827bc2ffbce # initialize rs1
li x10, 0x4c4c7717409b2028 # initialize rs2
bclr x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6cb33bb33190d2d4 # initialize rs1
li x30, 0x8775dfca8c9796bc # initialize rs2
bclr x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd5c672e9c98eb86b # initialize rs1
li x8, 0x9e77ecb8998ffe3b # initialize rs2
bclr x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1b1688c8875ab0d4 # initialize rs1
li x1, 0x0bc81aa8253f0114 # initialize rs2
bclr x30, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x44fc0b04070e254f # initialize rs1
li x16, 0x8a68de90dab8a120 # initialize rs2
bclr x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x24, 0xf1afbf9dc4a3d2dd # initialize rs1
li x0, 0x0a08d925ae0970ba # initialize rs2
bclr x0, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x11, 0x6bf98995d220085b # initialize rs1
li x1, 0xdd4419d94de37ae3 # initialize rs2
bclr x1, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0x405fc53a852f86fe # initialize rs1
li x2, 0x8ffbd8e50f06e308 # initialize rs2
bclr x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x15, 0x8fd4e72b813253f7 # initialize rs1
li x3, 0x6171d1bd60635a69 # initialize rs2
bclr x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x038d16d3d2e4ec8e # initialize rs1
li x4, 0x6cbe8dd48a2faacb # initialize rs2
bclr x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x39984f1886c606c2 # initialize rs1
li x5, 0x6462a7bf0e1c9b4e # initialize rs2
bclr x5, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xee2850aff6d67f4b # initialize rs1
li x6, 0xc8a8e4c141245f44 # initialize rs2
bclr x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x72a63d3519bf5b82 # initialize rs1
li x7, 0x491e89dd768c0488 # initialize rs2
bclr x7, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0x7b0217a8ae7b7ded # initialize rs1
li x8, 0xb24373fd109ff267 # initialize rs2
bclr x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0xc1fbf55c1a38c8d7 # initialize rs1
li x9, 0x383f24437273c88c # initialize rs2
bclr x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x9, 0x9c70030923893a28 # initialize rs1
li x10, 0x8d62edc61f7167e8 # initialize rs2
bclr x10, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0xae0cfed0a1fac0c2 # initialize rs1
li x11, 0xb30ec2a9dbcd58e1 # initialize rs2
bclr x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x19, 0x7f074c8e29dcdf73 # initialize rs1
li x12, 0x9e1930468ea029d2 # initialize rs2
bclr x12, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0xacb1053a70f83634 # initialize rs1
li x13, 0x41909d3c34c8b71d # initialize rs2
bclr x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x12, 0x6bd6ca0beaa0ca45 # initialize rs1
li x14, 0xc802558ea7351803 # initialize rs2
bclr x14, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0x233d8a36376e487b # initialize rs1
li x15, 0xf1bb30225f949d95 # initialize rs2
bclr x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0x28b3749e3016c884 # initialize rs1
li x16, 0x159bd7b5fbb66441 # initialize rs2
bclr x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x9633abe73c15c6c9 # initialize rs1
li x17, 0x7fb76d0c5bbdb139 # initialize rs2
bclr x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0xf98c8c14bad07dbd # initialize rs1
li x18, 0x015c2461c428cac9 # initialize rs2
bclr x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x98b9d4fd67319bca # initialize rs1
li x19, 0x6ca462438779f363 # initialize rs2
bclr x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0xdec2164cc240f98c # initialize rs1
li x20, 0x078eb8b3e7976aa3 # initialize rs2
bclr x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x23, 0xee35450355b4d08c # initialize rs1
li x21, 0x9e7350f72d0d62bc # initialize rs2
bclr x21, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x1aecbaba171ba3ca # initialize rs1
li x22, 0xfc08fe7516b01290 # initialize rs2
bclr x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0xd69fda818b91c87b # initialize rs1
li x23, 0xca6ac0251b1565bd # initialize rs2
bclr x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x3b9b12b46b35c66c # initialize rs1
li x24, 0x552a6b5df1ffb7c4 # initialize rs2
bclr x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x27, 0x7d77f2b84ffd7e6c # initialize rs1
li x25, 0x2bbd206fc5dd8623 # initialize rs2
bclr x25, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x10, 0xdfcc9197df1ea9b4 # initialize rs1
li x26, 0x5944c1d426391151 # initialize rs2
bclr x26, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x21, 0xe66d502028835b88 # initialize rs1
li x27, 0x5fef09b92b6fc65b # initialize rs2
bclr x27, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0x6fc4eb612562b3ea # initialize rs1
li x28, 0x7111c625fa6ec6e7 # initialize rs2
bclr x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x23, 0xa29aa99d58171169 # initialize rs1
li x29, 0x80333138cff2389e # initialize rs2
bclr x29, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x28, 0xc5c1590ba09aab40 # initialize rs1
li x30, 0x093366adb47b449c # initialize rs2
bclr x30, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0xc0a33530256da47c # initialize rs1
li x31, 0xe4649c9fe42569b5 # initialize rs2
bclr x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x65ce069676ef361d # initialize rs1
li x0, 0x8c78eb60b38a766f # initialize rs2
bclr x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xf0927ebcd8345154 # initialize rs1
li x1, 0x52d417f2ddb1c915 # initialize rs2
bclr x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8dbe7ba60b10cebe # initialize rs1
li x2, 0x8f7dc24347667d75 # initialize rs2
bclr x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9a986b9d74251813 # initialize rs1
li x3, 0x386c590a6173c197 # initialize rs2
bclr x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd8097bafabdae94a # initialize rs1
li x4, 0x4ae687ffc1b24201 # initialize rs2
bclr x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x713181a612c49ce8 # initialize rs1
li x5, 0xdbf40594047e34dc # initialize rs2
bclr x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb3a8f94f8a46b729 # initialize rs1
li x6, 0x427506f0c8a6c4f3 # initialize rs2
bclr x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd7d38e26fdf56b2a # initialize rs1
li x7, 0x135dfe255e58936e # initialize rs2
bclr x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8ccd67cb139cc06c # initialize rs1
li x8, 0x1a8842bf89f2a65c # initialize rs2
bclr x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5011a72f461ea73a # initialize rs1
li x9, 0xdcc5aa250ded555f # initialize rs2
bclr x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e147da8150974b4 # initialize rs1
li x10, 0x716cf05fe85e822f # initialize rs2
bclr x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1d1c7d345ad046f8 # initialize rs1
li x11, 0x739acc67cd13ef4f # initialize rs2
bclr x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc165b97b77828bd5 # initialize rs1
li x12, 0xd6ff7ffdca31e4d3 # initialize rs2
bclr x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7cdd5a5e1eec3ea1 # initialize rs1
li x13, 0x66b0c348d6fda5d1 # initialize rs2
bclr x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa4f02a517b1bff07 # initialize rs1
li x14, 0x394304ce65f11cda # initialize rs2
bclr x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x10b3279e762a9a52 # initialize rs1
li x15, 0xaafe6ace7bd484ac # initialize rs2
bclr x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x071b18541c47034a # initialize rs1
li x16, 0x050ee1443d1f3fde # initialize rs2
bclr x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1482e26f2e1ce97f # initialize rs1
li x17, 0xbf6c592687d9a713 # initialize rs2
bclr x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x23b19d79bbbcda73 # initialize rs1
li x18, 0x0233b6be8c594e28 # initialize rs2
bclr x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x86ec55eb2a5c5472 # initialize rs1
li x19, 0x24857b836a17e67b # initialize rs2
bclr x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1aa8d086f8ac8aa7 # initialize rs1
li x20, 0xb8e2b335d9d4c951 # initialize rs2
bclr x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x02332d511713ea10 # initialize rs1
li x21, 0x8af6ea7a47ffe5d1 # initialize rs2
bclr x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe30d93dd829c3db2 # initialize rs1
li x22, 0x575107e22cb07ee9 # initialize rs2
bclr x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x266ea5a820bdfbb7 # initialize rs1
li x23, 0xe34b679cc8617885 # initialize rs2
bclr x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfd3205b38168e887 # initialize rs1
li x24, 0x49d54f8c492dc17e # initialize rs2
bclr x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xcb6499681f2bd725 # initialize rs1
li x25, 0x52398eefce16a589 # initialize rs2
bclr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2fa03da9cdeca00e # initialize rs1
li x26, 0x7f46dcefe0ee19c3 # initialize rs2
bclr x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4bfb18a5c3080b31 # initialize rs1
li x27, 0xcf04a15d72e9be44 # initialize rs2
bclr x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6577b5479eccc311 # initialize rs1
li x28, 0xa07bfdf7170c6d33 # initialize rs2
bclr x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xec3dd1ee3b82c15c # initialize rs1
li x29, 0x2056dc40008277bd # initialize rs2
bclr x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x14bc2065ad89f715 # initialize rs1
li x30, 0x3141663bf81f662c # initialize rs2
bclr x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0ebebec70c4d7dc9 # initialize rs1
li x31, 0x22f78848bf28890a # initialize rs2
bclr x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x13, x11 # perform first operation
bclr x24, x29, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x1, x30 # perform first operation
bclr x12, x6, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x8, x6 # perform first operation
bclr x20, x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x27 # perform first operation
bclr x27, x1, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x7, x10 # perform first operation
bclr x19, x12, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x8, x12 # perform first operation
bclr x2, x9, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x31, x11 # perform first operation
bclr x23, x5, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x29, x11 # perform first operation
bclr x21, x19, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x26, x29 # perform first operation
bclr x18, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x11, x8 # perform first operation
bclr x11, x7, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x22, x3 # perform first operation
bclr x3, x16, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x19, x10 # perform first operation
bclr x7, x9, x22 # perform second (triggering) operation

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
