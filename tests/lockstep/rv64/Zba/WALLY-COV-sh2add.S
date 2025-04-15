///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-sh2add.S
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
li x0, 0x9aa92a9277efb360 # initialize rs1
li x22, 0xbdad2bb7ce8178fd # initialize rs2
sh2add x21, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbbca7f93fedd2cb0 # initialize rs1
li x12, 0x5588a0a1bbf4f890 # initialize rs2
sh2add x21, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf23b331ca6b02bf5 # initialize rs1
li x7, 0x59ee8a54dfafb1c6 # initialize rs2
sh2add x12, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe667e6c1b551e292 # initialize rs1
li x16, 0x1da06c9fc6f3f9ee # initialize rs2
sh2add x30, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf59d6199b43282d8 # initialize rs1
li x17, 0x67a02482d04a6521 # initialize rs2
sh2add x22, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7a36bcc5d5981cb9 # initialize rs1
li x30, 0xabf654c584bce648 # initialize rs2
sh2add x28, x5, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3ebdeb188974e185 # initialize rs1
li x15, 0x40cfd77f4d82d216 # initialize rs2
sh2add x24, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3b0b7156611c2f3d # initialize rs1
li x21, 0x78041c1462cb6f0f # initialize rs2
sh2add x11, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa82bc7efed66dbc3 # initialize rs1
li x13, 0x7951238371349ba3 # initialize rs2
sh2add x26, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1e1ce6cf0ee3d5a6 # initialize rs1
li x12, 0xfc35ccc9c1928d80 # initialize rs2
sh2add x24, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa9173ccef301a002 # initialize rs1
li x28, 0x67e365b5240a1cf7 # initialize rs2
sh2add x8, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x33f01147822ca217 # initialize rs1
li x28, 0xa711af2647d6b7e7 # initialize rs2
sh2add x24, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xdbf1cc6b969311dd # initialize rs1
li x11, 0x56fd9c8e1b69290c # initialize rs2
sh2add x30, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x08f86100e5bfeb4b # initialize rs1
li x20, 0x57fc2bd5ecc4c568 # initialize rs2
sh2add x1, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x00f603bc2826c2e2 # initialize rs1
li x31, 0x4d237489d42a801f # initialize rs2
sh2add x23, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x828f0f3637ee9cc1 # initialize rs1
li x1, 0x28018f2179afd99d # initialize rs2
sh2add x7, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x37d172bf8101e6f1 # initialize rs1
li x29, 0x53affec66be66b24 # initialize rs2
sh2add x9, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8bc188b555fea65c # initialize rs1
li x26, 0x15d68ab2b7caaef4 # initialize rs2
sh2add x10, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x313884e793ac3fe1 # initialize rs1
li x22, 0xa25e2bce3993e2fa # initialize rs2
sh2add x28, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x13b2b92278b504fc # initialize rs1
li x8, 0x24ceffe0278107f7 # initialize rs2
sh2add x29, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x562bdff3325933c7 # initialize rs1
li x5, 0xff8158216af4db03 # initialize rs2
sh2add x27, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4e50d41557741011 # initialize rs1
li x16, 0xad68b4ca3a6a71f5 # initialize rs2
sh2add x28, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xab8798d2ee2b2fa5 # initialize rs1
li x16, 0xafe84cb60188cd43 # initialize rs2
sh2add x5, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x98012d507c9bca12 # initialize rs1
li x27, 0xfa2fb8ef6dbe994a # initialize rs2
sh2add x19, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x088c398fe6ea27ea # initialize rs1
li x15, 0xef5129fb200d2b44 # initialize rs2
sh2add x20, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc5793d810e723cd6 # initialize rs1
li x11, 0x5cb2ff0a5ae886cd # initialize rs2
sh2add x19, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xee5faf2ce168251a # initialize rs1
li x5, 0xdcf537effa852c32 # initialize rs2
sh2add x17, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd784f6b08731bf0f # initialize rs1
li x7, 0xa9cca8a7c7a1c692 # initialize rs2
sh2add x18, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc5f99e0a1e2e7f4a # initialize rs1
li x6, 0xe0bcb1ae9e1ea079 # initialize rs2
sh2add x9, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8ed82c9e0ec6be4e # initialize rs1
li x17, 0x462ec8d3ceda46c5 # initialize rs2
sh2add x7, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xc6226ca2834a4069 # initialize rs1
li x25, 0xf1f9102e07bf35a6 # initialize rs2
sh2add x14, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2c0ff66e8b759fee # initialize rs1
li x7, 0x24f17438247f0607 # initialize rs2
sh2add x1, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x10b64ed60ba0fb0f # initialize rs1
li x0, 0x6698ec065b9defa0 # initialize rs2
sh2add x15, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x914b2956cf85c772 # initialize rs1
li x1, 0x65f79accb4287cba # initialize rs2
sh2add x24, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x74125f32168dd643 # initialize rs1
li x2, 0x67066c3237c21fe8 # initialize rs2
sh2add x13, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0x6bf60344b38edf92 # initialize rs1
li x3, 0x418c913fea288972 # initialize rs2
sh2add x1, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xa35637dc99447ce7 # initialize rs1
li x4, 0xfdb12ef718076226 # initialize rs2
sh2add x6, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xb91b18917a0c834f # initialize rs1
li x5, 0xcd2835aa8d473412 # initialize rs2
sh2add x15, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0xc9007bb08d83dc39 # initialize rs1
li x6, 0xc4889c65b708a34d # initialize rs2
sh2add x20, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xb2db598bacaca3a7 # initialize rs1
li x7, 0x3ecc2c9d143e2ce0 # initialize rs2
sh2add x21, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0x009d7c00cffa1047 # initialize rs1
li x8, 0xd167a7251b1aa4e5 # initialize rs2
sh2add x23, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0x54575c948d60157c # initialize rs1
li x9, 0x7dfefce501dbed89 # initialize rs2
sh2add x16, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0xc6afd5f3ff81db01 # initialize rs1
li x10, 0xc06b1dbbbaf710ed # initialize rs2
sh2add x31, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xe56b29f354677276 # initialize rs1
li x11, 0x077abd21f2a774b7 # initialize rs2
sh2add x17, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x1d90a065e32ce7ac # initialize rs1
li x12, 0x32af063108b9629f # initialize rs2
sh2add x10, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0xaf10fe68b2fde2fc # initialize rs1
li x13, 0xedb957d75fa29e55 # initialize rs2
sh2add x9, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x789fe818e5c8adc9 # initialize rs1
li x14, 0x09cdfed73ff5758a # initialize rs2
sh2add x6, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0x8e93193d10a99eed # initialize rs1
li x15, 0x728ed6480668dac1 # initialize rs2
sh2add x9, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x61c24b70704aff3c # initialize rs1
li x16, 0xd5f7c9cd35462884 # initialize rs2
sh2add x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xc16defc93c00e13b # initialize rs1
li x17, 0x0633ad00ef7af97f # initialize rs2
sh2add x16, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0x7345bd007145b1e3 # initialize rs1
li x18, 0x099a4544f6aebf6b # initialize rs2
sh2add x3, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xad2b7d9a27bb922d # initialize rs1
li x19, 0xa8819dcb5527b826 # initialize rs2
sh2add x8, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0x47245cd180f88e3e # initialize rs1
li x20, 0x5a462153ca994ab0 # initialize rs2
sh2add x25, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0xd4ec3c9d8c90a5da # initialize rs1
li x21, 0xf20e60930e425da4 # initialize rs2
sh2add x16, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x5ec3938e69826a96 # initialize rs1
li x22, 0x3c1a4d34943cc17d # initialize rs2
sh2add x14, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xea2647a3e4a8b9a8 # initialize rs1
li x23, 0x6b936cd74670ee30 # initialize rs2
sh2add x5, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xef89c0f7a49f8870 # initialize rs1
li x24, 0x49e3bd592cad6742 # initialize rs2
sh2add x21, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0xf0d8dbda139d02b4 # initialize rs1
li x25, 0xcdf2e2791f8e06f1 # initialize rs2
sh2add x17, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0x3e521274ca58a021 # initialize rs1
li x26, 0x839dd1ae511ee1c7 # initialize rs2
sh2add x19, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0x9ba023a6d7bc9099 # initialize rs1
li x27, 0x2a4b52a303658f78 # initialize rs2
sh2add x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x16633c7dba8c9810 # initialize rs1
li x28, 0x182755ab760546c7 # initialize rs2
sh2add x1, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x03189691f8405629 # initialize rs1
li x29, 0xbaa31f4ab066a6b4 # initialize rs2
sh2add x19, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x52a3204addcbf81e # initialize rs1
li x30, 0x5fbd5fc4bb91f0ca # initialize rs2
sh2add x14, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x473fd5de51898fe9 # initialize rs1
li x31, 0x100042ba0b1a431d # initialize rs2
sh2add x29, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0xd3d72a039f4f925b # initialize rs1
li x31, 0x4d3871ab8a36b228 # initialize rs2
sh2add x0, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xc53f22295ee36331 # initialize rs1
li x7, 0x9f8c538210b1a39f # initialize rs2
sh2add x1, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x5408cf8aa034e2cc # initialize rs1
li x8, 0x7cccb065d1d47b67 # initialize rs2
sh2add x2, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0xfa08fb56206396d3 # initialize rs1
li x28, 0xc613aa0b1bf57286 # initialize rs2
sh2add x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xfd06b315ec7b776e # initialize rs1
li x1, 0x04deb379eb70e3ba # initialize rs2
sh2add x4, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x274a941612871dd7 # initialize rs1
li x12, 0xf0ae4b3b8fa5891c # initialize rs2
sh2add x5, x1, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x35dc8e1a1f9f3bf0 # initialize rs1
li x26, 0xd076696c81d0fa07 # initialize rs2
sh2add x6, x19, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xf2761c98ada3dbaa # initialize rs1
li x30, 0xb51edaba8602c861 # initialize rs2
sh2add x7, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0x8644e2245af57d92 # initialize rs1
li x8, 0x69b8cf6749567e83 # initialize rs2
sh2add x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x46900f0acbc0ef3e # initialize rs1
li x24, 0x4990a099e5f0d30a # initialize rs2
sh2add x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x0866312b86726629 # initialize rs1
li x9, 0x69f543f0a4964a4d # initialize rs2
sh2add x10, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0xfdf2d46a2dda4b45 # initialize rs1
li x8, 0x3d408de1e97104a3 # initialize rs2
sh2add x11, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0xf00824e874625414 # initialize rs1
li x18, 0x6546656343356214 # initialize rs2
sh2add x12, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x888d7832a7a9c5e1 # initialize rs1
li x24, 0x32a8f54950fc4f56 # initialize rs2
sh2add x13, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x2884f6fd4e313e10 # initialize rs1
li x15, 0x7e53d1d57f8bd508 # initialize rs2
sh2add x14, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0x48b928e207674d30 # initialize rs1
li x18, 0x8c42fc522e201a0a # initialize rs2
sh2add x15, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xfbb4b7dd20b9ec62 # initialize rs1
li x3, 0x3aee33ac0362f34c # initialize rs2
sh2add x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0x69ba81f1d61ad28f # initialize rs1
li x20, 0xd37efc3f7907da31 # initialize rs2
sh2add x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x85e81738f8142489 # initialize rs1
li x23, 0x40ad729e41c983f0 # initialize rs2
sh2add x18, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x8a3e5003733c8a40 # initialize rs1
li x15, 0x10b9d7d9572f5807 # initialize rs2
sh2add x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x939f8148edec54cb # initialize rs1
li x25, 0x8d84291e7ee816b3 # initialize rs2
sh2add x20, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x84c392c54b7198e8 # initialize rs1
li x5, 0xc06d924ef2ffb0e1 # initialize rs2
sh2add x21, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x269bf726fd5440da # initialize rs1
li x24, 0x4fa6540d82833ec2 # initialize rs2
sh2add x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x4269f1b9f936ae7f # initialize rs1
li x3, 0x38a325f8972598fd # initialize rs2
sh2add x23, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x20eeb93333433068 # initialize rs1
li x18, 0xfd8e643837f99a4b # initialize rs2
sh2add x24, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x31, 0xe58c49478c26e133 # initialize rs1
li x26, 0x189388b2c9a57745 # initialize rs2
sh2add x25, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x26f1d095306a1ae1 # initialize rs1
li x2, 0xa9ab64d05cf9029c # initialize rs2
sh2add x26, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0x362e2a5957831e1a # initialize rs1
li x27, 0xf237c114012aafa1 # initialize rs2
sh2add x27, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0xd2a27ebf49fa2e87 # initialize rs1
li x10, 0x2859bd0142df7954 # initialize rs2
sh2add x28, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0x9c6e072042af4635 # initialize rs1
li x31, 0xadc719cef0c12b6c # initialize rs2
sh2add x29, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x344a9491bcafcc54 # initialize rs1
li x6, 0x2494a4299624d793 # initialize rs2
sh2add x30, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0xf5dbf662dcf15824 # initialize rs1
li x13, 0x574a30ad3737edcd # initialize rs2
sh2add x31, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x23, 0x043c14c48a8aa0f0 # initialize rs2
sh2add x5, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
li x14, 0x5496f8e4e1084109 # initialize rs2
sh2add x29, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x5a362acf07ac3f98 # initialize rs2
sh2add x21, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x21, 0x6c932462a94ad0ba # initialize rs2
sh2add x12, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
li x20, 0x32326ca82fdd1374 # initialize rs2
sh2add x29, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0xb59971afaccbec2b # initialize rs2
sh2add x30, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0xa28cb3de57f2f62f # initialize rs2
sh2add x24, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x19, 0xfa10d163ea5747ef # initialize rs2
sh2add x20, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x19, 0xc6ec38e2af4e86e6 # initialize rs2
sh2add x7, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x525d26c01ec47297 # initialize rs2
sh2add x26, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xa9a4ecb51218f6cb # initialize rs2
sh2add x26, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x20, 0x669ec7a8a2eac4a0 # initialize rs2
sh2add x21, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x12, 0xa209864ab2dac43f # initialize rs2
sh2add x28, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x2, 0x999b4a2f82b2a5bc # initialize rs2
sh2add x28, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0xb75e0161b49ff086 # initialize rs2
sh2add x3, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs1
li x2, 0xa5c0f113cf923a10 # initialize rs2
sh2add x3, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x832f8cfea706b227 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sh2add x26, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x9e3115856ddb4e26 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add x5, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x8b7a34543f2bab0e # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh2add x10, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0xbc5076da2c770763 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh2add x25, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x1d6822345a83df93 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh2add x30, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x88243dd30e06bbf3 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh2add x7, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x043da2cda1480679 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh2add x16, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x18, 0xd0503fd17ca606aa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sh2add x26, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0x1833c564880d43cf # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh2add x28, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0x6e7c76fb4c654485 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh2add x26, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x2f8d3b6ac4f2ac76 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x6, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x40d5ceccb654ee1f # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh2add x27, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x1b1f7018851e43ca # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sh2add x5, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x414b166432d38f26 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add x21, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x935e67972ebe1c67 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh2add x18, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x6, 0x9daa7fd16938a9b5 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh2add x5, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x7, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sh2add x2, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add x3, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x26, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sh2add x11, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x2, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sh2add x7, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x6, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sh2add x8, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh2add x6, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh2add x1, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh2add x23, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sh2add x29, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000000 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sh2add x23, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x14, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x12, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh2add x14, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sh2add x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sh2add x25, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x3, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sh2add x10, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x17, 0x0000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh2add x3, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh2add x3, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sh2add x17, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh2add x9, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x5, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sh2add x14, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x13, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh2add x26, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh2add x9, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh2add x30, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add x6, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sh2add x31, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh2add x29, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x3, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x26, 0x0000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh2add x23, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh2add x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sh2add x7, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh2add x6, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sh2add x11, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x5, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh2add x28, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add x17, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x26, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sh2add x30, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh2add x19, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh2add x10, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh2add x9, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sh2add x5, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sh2add x10, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000002 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh2add x2, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x5, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh2add x30, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh2add x16, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sh2add x8, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add x7, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x12, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh2add x24, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x29, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh2add x14, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x30, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh2add x11, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x6, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh2add x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sh2add x23, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sh2add x22, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sh2add x31, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sh2add x14, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add x27, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh2add x6, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x13, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sh2add x22, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x7, 0x8000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh2add x9, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add x9, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x7, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh2add x13, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh2add x12, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x28, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh2add x11, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x9, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh2add x21, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh2add x9, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x6, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh2add x1, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sh2add x17, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh2add x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sh2add x3, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh2add x23, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add x28, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sh2add x18, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x8000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x30, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh2add x7, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh2add x10, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add x8, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh2add x17, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add x15, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh2add x11, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x19, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh2add x22, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x22, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sh2add x26, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sh2add x12, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x9, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh2add x8, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh2add x21, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh2add x30, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh2add x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh2add x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x7fffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sh2add x21, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7fffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x20, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x1, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sh2add x23, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sh2add x17, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add x25, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh2add x17, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x22, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
sh2add x7, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh2add x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x20, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh2add x6, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sh2add x17, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh2add x19, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sh2add x15, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh2add x3, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sh2add x26, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add x31, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh2add x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x17, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh2add x10, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sh2add x16, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sh2add x3, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add x21, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh2add x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh2add x24, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x28, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sh2add x7, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x27, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh2add x3, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sh2add x18, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x31, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sh2add x19, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh2add x18, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sh2add x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sh2add x1, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh2add x8, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sh2add x18, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xffffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x15, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x2, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sh2add x17, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh2add x22, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh2add x18, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x13, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh2add x28, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh2add x13, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x14, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh2add x12, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh2add x28, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh2add x27, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sh2add x18, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh2add x27, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh2add x28, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sh2add x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add x20, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sh2add x2, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
sh2add x20, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x18, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
sh2add x2, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh2add x29, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh2add x19, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh2add x30, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh2add x5, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh2add x19, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sh2add x8, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sh2add x10, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh2add x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sh2add x13, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sh2add x19, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh2add x8, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sh2add x29, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh2add x12, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh2add x30, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x6, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh2add x9, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh2add x20, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sh2add x26, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sh2add x21, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sh2add x15, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sh2add x16, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh2add x13, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sh2add x21, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh2add x29, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh2add x21, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sh2add x30, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh2add x17, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sh2add x30, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add x10, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh2add x2, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x25, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sh2add x10, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh2add x5, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add x10, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sh2add x20, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add x26, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh2add x26, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x1, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh2add x14, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
sh2add x31, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x17, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sh2add x10, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh2add x18, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sh2add x24, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh2add x16, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sh2add x16, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh2add x15, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5555555555555555 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x23, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x23, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
sh2add x31, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sh2add x26, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sh2add x9, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sh2add x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh2add x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sh2add x5, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh2add x7, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh2add x21, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x25, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sh2add x29, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sh2add x8, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sh2add x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh2add x2, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh2add x16, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh2add x15, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sh2add x31, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh2add x25, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sh2add x12, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh2add x1, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x27, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sh2add x24, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x19, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sh2add x30, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh2add x6, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh2add x19, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x30, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh2add x2, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x28, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sh2add x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sh2add x9, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh2add x8, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sh2add x30, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sh2add x26, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh2add x17, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sh2add x17, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000fffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x25, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh2add x10, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh2add x24, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
sh2add x27, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sh2add x7, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sh2add x12, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh2add x8, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x3, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sh2add x10, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x1, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sh2add x28, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh2add x19, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x2, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sh2add x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sh2add x19, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
sh2add x15, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh2add x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sh2add x18, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000100000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh2add x29, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x19, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x16, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sh2add x24, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh2add x22, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh2add x2, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh2add x6, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x11, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh2add x24, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x10, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sh2add x18, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x3, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add x5, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh2add x7, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh2add x30, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x7, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sh2add x29, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add x17, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sh2add x26, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh2add x1, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add x12, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh2add x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add x14, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sh2add x5, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sh2add x13, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add x1, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sh2add x31, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sh2add x1, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xda4c8d38983d15f5 # initialize rs1
li x0, 0x61f1391d14f3c8d3 # initialize rs2
sh2add x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x2c04e58318f190b6 # initialize rs1
li x1, 0xbab2abb9c3bcae0f # initialize rs2
sh2add x5, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb56f1a0032d3a157 # initialize rs1
li x2, 0x34e0f47192a7ed51 # initialize rs2
sh2add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd30b20b29775d70b # initialize rs1
li x3, 0x5e8c569ed3bc90f2 # initialize rs2
sh2add x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed4e4d508b379228 # initialize rs1
li x4, 0xf1cfa03a51d0ae3c # initialize rs2
sh2add x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa56fc2727f03d3d5 # initialize rs1
li x5, 0xad9ce09933295c2a # initialize rs2
sh2add x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x611bf42e8b80f63b # initialize rs1
li x6, 0x20fb835838ce3a35 # initialize rs2
sh2add x2, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5160fe5046283d15 # initialize rs1
li x7, 0x0bf2c3b14a054343 # initialize rs2
sh2add x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x40f479245e25e6d7 # initialize rs1
li x8, 0x20026e1af16c7c51 # initialize rs2
sh2add x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x98135dee1285639c # initialize rs1
li x9, 0x8212cd4e6e9a79c4 # initialize rs2
sh2add x1, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd72b0fa0a169e0b3 # initialize rs1
li x10, 0x8fba4986dda1e02f # initialize rs2
sh2add x30, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x812824fea24f93ee # initialize rs1
li x11, 0xf75fc044921a153b # initialize rs2
sh2add x28, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x36ea516e55275626 # initialize rs1
li x12, 0xc1615c5b72577368 # initialize rs2
sh2add x7, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0a45e62a404b9528 # initialize rs1
li x13, 0x173ea2cd7bff05a2 # initialize rs2
sh2add x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5c3122f06c3c3ec5 # initialize rs1
li x14, 0xd3ce21468de6dde9 # initialize rs2
sh2add x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd7a40ff42b580fde # initialize rs1
li x15, 0xd6ec7cd9abfbc1c2 # initialize rs2
sh2add x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1773aece27a44529 # initialize rs1
li x16, 0x18ff3b000ab1a500 # initialize rs2
sh2add x25, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x16804de0afe0003b # initialize rs1
li x17, 0x72ed326352640aa0 # initialize rs2
sh2add x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7a192d2c4eb6f3ca # initialize rs1
li x18, 0x6e6745d25ef4ec5c # initialize rs2
sh2add x21, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5a0925a6d1e1e349 # initialize rs1
li x19, 0xeab5978d2527a4c9 # initialize rs2
sh2add x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe262343fdc97ccd5 # initialize rs1
li x20, 0x0fd17f443dee0bd2 # initialize rs2
sh2add x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc8eb331f29466be8 # initialize rs1
li x21, 0xf15c3937952f5cee # initialize rs2
sh2add x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7fc9fef3bc8933f7 # initialize rs1
li x22, 0x08b1fe886c6c56ce # initialize rs2
sh2add x1, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf8718d868a32be61 # initialize rs1
li x23, 0x1f67cf0a06aba61d # initialize rs2
sh2add x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9d68e81c65696752 # initialize rs1
li x24, 0x341ab83ce78f5fa8 # initialize rs2
sh2add x20, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x44d2c2974b1b1b91 # initialize rs1
li x25, 0xf276f22988349bf1 # initialize rs2
sh2add x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x96b0502d82d55fba # initialize rs1
li x26, 0x5ea1e40de3f11f48 # initialize rs2
sh2add x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc464ab1847db471d # initialize rs1
li x27, 0x5d59ac3ac356400b # initialize rs2
sh2add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x78300abc308e25dd # initialize rs1
li x28, 0x544889373ea3e6ca # initialize rs2
sh2add x14, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4a025fe51b0f3b47 # initialize rs1
li x29, 0xcaa78788cead9c9e # initialize rs2
sh2add x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa23e2b7350184c87 # initialize rs1
li x30, 0x714c408396f95082 # initialize rs2
sh2add x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd0f0e396b3da3a74 # initialize rs1
li x31, 0xf785a9366b48eb78 # initialize rs2
sh2add x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfcd6078b320faead # initialize rs1
li x10, 0xc7a3983b13649843 # initialize rs2
sh2add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5956e3791fb39a7e # initialize rs1
li x6, 0xe7cd97f4dfc5b1f1 # initialize rs2
sh2add x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa46bc3f7dd3388d9 # initialize rs1
li x26, 0x4e37d4eb4694eb3c # initialize rs2
sh2add x2, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf68e349c9efa24df # initialize rs1
li x17, 0xbb3fa2ecdecf9c83 # initialize rs2
sh2add x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x32da1eb05457d869 # initialize rs1
li x13, 0x967823fac3f051fe # initialize rs2
sh2add x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x045be58372657126 # initialize rs1
li x23, 0xaa3fa25ef6a01fef # initialize rs2
sh2add x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb3faa7de602c84fb # initialize rs1
li x20, 0x6854d88cab849b82 # initialize rs2
sh2add x6, x6, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x495c22c85df651e6 # initialize rs1
li x11, 0x8e92e08049538bc6 # initialize rs2
sh2add x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd6035aa8ad37facd # initialize rs1
li x21, 0xc2603370f761f4b0 # initialize rs2
sh2add x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x18bcd3164777cde0 # initialize rs1
li x6, 0xe5c29ea9ce817326 # initialize rs2
sh2add x9, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb0ac2f0c1c00474d # initialize rs1
li x16, 0xbd7e8adcdec18193 # initialize rs2
sh2add x10, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x392753663c288f70 # initialize rs1
li x21, 0x01c806fd911c0861 # initialize rs2
sh2add x11, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9e44d35502015ddb # initialize rs1
li x31, 0x18afdfba99578e37 # initialize rs2
sh2add x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x91619edb61724db0 # initialize rs1
li x25, 0xcdbe1c86603badad # initialize rs2
sh2add x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd9eafc30fc432550 # initialize rs1
li x19, 0xa8ddac2b5d863345 # initialize rs2
sh2add x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8b6c0733bf37254c # initialize rs1
li x14, 0x5b0864ad64e1e04b # initialize rs2
sh2add x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xad3ff167cbfeaea9 # initialize rs1
li x29, 0xb8e8ca98e93eac89 # initialize rs2
sh2add x16, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5f1fe54fabb9cf48 # initialize rs1
li x14, 0x7eee64ac278e36d8 # initialize rs2
sh2add x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbc249d9f124e765f # initialize rs1
li x28, 0xaa0578911b50d957 # initialize rs2
sh2add x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x66fbcee33391c4da # initialize rs1
li x7, 0xa5045d174e1b7e52 # initialize rs2
sh2add x19, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x869c9e93939b352d # initialize rs1
li x11, 0x63b98b0c37840274 # initialize rs2
sh2add x20, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7fd088a4ed1083dd # initialize rs1
li x1, 0x6eda074337b9884e # initialize rs2
sh2add x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6b172e10d275ee07 # initialize rs1
li x20, 0x276a9ae5a8df624d # initialize rs2
sh2add x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc6ba72f750e152fa # initialize rs1
li x15, 0x6248e3f255660caf # initialize rs2
sh2add x23, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x699f2d0f05cc9748 # initialize rs1
li x30, 0x62ead10ad2d84e5d # initialize rs2
sh2add x24, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe0496a1c8ab9cce8 # initialize rs1
li x19, 0xd4327180d6626043 # initialize rs2
sh2add x25, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb787f721b7c55963 # initialize rs1
li x6, 0x9d8a8ca67a6d0f6c # initialize rs2
sh2add x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x39bcb90f54282334 # initialize rs1
li x22, 0xd3adb4a1cd7fdc3a # initialize rs2
sh2add x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc8ae167699eba485 # initialize rs1
li x1, 0x273ebeabb77a9eaf # initialize rs2
sh2add x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x62bc3b438e5c1718 # initialize rs1
li x26, 0xca8ddbe003320876 # initialize rs2
sh2add x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x000e8b2a45b596b6 # initialize rs1
li x10, 0x5d0e5a7834a59523 # initialize rs2
sh2add x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x303f5521bee670cd # initialize rs1
li x2, 0x49fbe00eb13bb992 # initialize rs2
sh2add x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x5, 0xf49b2c46f5b7a90d # initialize rs1
li x0, 0x259f7989e1755b56 # initialize rs2
sh2add x0, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x24, 0xb8f1e0efbf558d00 # initialize rs1
li x1, 0x2417c0d15084e438 # initialize rs2
sh2add x1, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x5d58307f7cf18fc1 # initialize rs1
li x2, 0x2d81db721845ef2a # initialize rs2
sh2add x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0xabdfb4890c71c30f # initialize rs1
li x3, 0xbb279c2f444fbf2b # initialize rs2
sh2add x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0xbe3ef855b9951148 # initialize rs1
li x4, 0x2e584a391e0a75c9 # initialize rs2
sh2add x4, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x95de940e0b0579ab # initialize rs1
li x5, 0x2d5672f3a59e6131 # initialize rs2
sh2add x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x07cdaf49589fdca8 # initialize rs1
li x6, 0xf7c4307c319db301 # initialize rs2
sh2add x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x0d8527740ce9578d # initialize rs1
li x7, 0x632d704a2c4dfdcf # initialize rs2
sh2add x7, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x12, 0x0a9fc005f8bf5fcb # initialize rs1
li x8, 0x231bac71a79bd8f8 # initialize rs2
sh2add x8, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x13, 0x2f6c4bb70762f785 # initialize rs1
li x9, 0xf545b8e4fd502c0f # initialize rs2
sh2add x9, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x3, 0x6111512a37f5d083 # initialize rs1
li x10, 0xa1967137f7417f10 # initialize rs2
sh2add x10, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0x7b528b1da1f3068f # initialize rs1
li x11, 0xef0137e66e4cf480 # initialize rs2
sh2add x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x26, 0x516bfedc20959ab3 # initialize rs1
li x12, 0xaab3187de98cfd7e # initialize rs2
sh2add x12, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x30, 0xb574d11df60a5341 # initialize rs1
li x13, 0xdaa8df1732df85da # initialize rs2
sh2add x13, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0xb7118424f4ff14e3 # initialize rs1
li x14, 0xfd1df7f080639e87 # initialize rs2
sh2add x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0xfc66e4b9523f9967 # initialize rs1
li x15, 0xfbbc3b6b45f017da # initialize rs2
sh2add x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x4a5597e08b4d70e6 # initialize rs1
li x16, 0x24cae6251f366b63 # initialize rs2
sh2add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x15, 0x5a82a6874c218adf # initialize rs1
li x17, 0xeac620f6b9f9b103 # initialize rs2
sh2add x17, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0x16df3bfdfc42963a # initialize rs1
li x18, 0xa8b8dd03f14d5f9d # initialize rs2
sh2add x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0x8a11899443b7af5a # initialize rs1
li x19, 0x62b3cb0c67588c84 # initialize rs2
sh2add x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x2, 0xaf675d998086b791 # initialize rs1
li x20, 0x9b322f767e2bc7ea # initialize rs2
sh2add x20, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xa4757cc3f4589e57 # initialize rs1
li x21, 0xb62b8e95072de1f6 # initialize rs2
sh2add x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x30, 0xbe5a637131733615 # initialize rs1
li x22, 0x5c100aec01a8f46d # initialize rs2
sh2add x22, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x17, 0xcfc16325db75adc5 # initialize rs1
li x23, 0x12ed539337330000 # initialize rs2
sh2add x23, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x15, 0xe10ed5c11e804f56 # initialize rs1
li x24, 0x215a4af9fd5a9ead # initialize rs2
sh2add x24, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0x299ec1355f7fca89 # initialize rs1
li x25, 0x336ac6faff7c61bb # initialize rs2
sh2add x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x10477c1a71197f92 # initialize rs1
li x26, 0x85a774817e7e0255 # initialize rs2
sh2add x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x0320738c535d7d9a # initialize rs1
li x27, 0x024c244efd7149d3 # initialize rs2
sh2add x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0xb659b4a75e977986 # initialize rs1
li x28, 0xc549cd07cde11ba6 # initialize rs2
sh2add x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x080c6eafe0fdabe7 # initialize rs1
li x29, 0xda8507bbada627fa # initialize rs2
sh2add x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x21, 0x086fab720bf478f8 # initialize rs1
li x30, 0x727cd6cbf0527aef # initialize rs2
sh2add x30, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0xc424f930e79f724d # initialize rs1
li x31, 0xb2ec0e4cdcfa7d7c # initialize rs2
sh2add x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa3816e0082832685 # initialize rs1
li x0, 0x5e56950717a836ea # initialize rs2
sh2add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x06c2431f2ce61138 # initialize rs1
li x1, 0x4f0e1115e0e6e153 # initialize rs2
sh2add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1e9bcb875c50d347 # initialize rs1
li x2, 0xcd9ed7c0d3a1741f # initialize rs2
sh2add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb7508c41bbc2fc84 # initialize rs1
li x3, 0xe7e85080fbe7308e # initialize rs2
sh2add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd16c2a36975bc075 # initialize rs1
li x4, 0x63d35f0597c9f400 # initialize rs2
sh2add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x157989b272b2c440 # initialize rs1
li x5, 0x775fb3522194831c # initialize rs2
sh2add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xccca2df7b91f9363 # initialize rs1
li x6, 0xcc8544c8748d810b # initialize rs2
sh2add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x587d46a77c020ac7 # initialize rs1
li x7, 0x2e97275f01d96494 # initialize rs2
sh2add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x605d16593d87e10a # initialize rs1
li x8, 0x2f7b35309e9b1ec4 # initialize rs2
sh2add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7d3af2ca1baed8fc # initialize rs1
li x9, 0x4abb35f34faeabfe # initialize rs2
sh2add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc81ee7a239888176 # initialize rs1
li x10, 0x9604c446c05ef756 # initialize rs2
sh2add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2d00965a7bae71a8 # initialize rs1
li x11, 0x71572d29c925282b # initialize rs2
sh2add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x2b287d70fd874006 # initialize rs1
li x12, 0x5dd469fc1315b9b0 # initialize rs2
sh2add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x96eec385766dd88d # initialize rs1
li x13, 0x861547b4d3af53dd # initialize rs2
sh2add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x55b6dd61d46d6dcf # initialize rs1
li x14, 0x33786c96953c9d0a # initialize rs2
sh2add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf1194fe2b34a8bf1 # initialize rs1
li x15, 0x1a4bbc969d1f8a96 # initialize rs2
sh2add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x98909e1bbc460bf4 # initialize rs1
li x16, 0x19b912edb0195059 # initialize rs2
sh2add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3e5f728cdc242790 # initialize rs1
li x17, 0x13f3bd4723050547 # initialize rs2
sh2add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7d197622831ba4c2 # initialize rs1
li x18, 0x47ddd3f2b66ed4bf # initialize rs2
sh2add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7dd6ef4394bd5561 # initialize rs1
li x19, 0x03fba98338592408 # initialize rs2
sh2add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd218d4b386d49431 # initialize rs1
li x20, 0x18fae92faef41514 # initialize rs2
sh2add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x5a89f47492bc0b82 # initialize rs1
li x21, 0x06e80b08c11d50c1 # initialize rs2
sh2add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4b5b4ec07fa7046e # initialize rs1
li x22, 0xe3f8da54c0c722f4 # initialize rs2
sh2add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4288e496bedceafe # initialize rs1
li x23, 0x2357089955768f8f # initialize rs2
sh2add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x387a399221c6434b # initialize rs1
li x24, 0x2fc4ad23f6c93d6f # initialize rs2
sh2add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf0c711eb9ba0b202 # initialize rs1
li x25, 0x41462bd0d4c49367 # initialize rs2
sh2add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x32505e7efb99b93d # initialize rs1
li x26, 0xdc2cecc3c171ef99 # initialize rs2
sh2add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4fcfa03a6077de9b # initialize rs1
li x27, 0x557eb8e74a08eedd # initialize rs2
sh2add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8c63177c1d4bd469 # initialize rs1
li x28, 0xe1c0a720c7c99b7e # initialize rs2
sh2add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf7619241f11d1e04 # initialize rs1
li x29, 0xc47aea29b2ba548d # initialize rs2
sh2add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xeff1f4b404e98789 # initialize rs1
li x30, 0x751a9665136bc614 # initialize rs2
sh2add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8a667255bfc51fd0 # initialize rs1
li x31, 0x4a84e9ab2acaadf0 # initialize rs2
sh2add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x6, x26 # perform first operation
sh2add x27, x13, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x13, x8 # perform first operation
sh2add x28, x18, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x7, x9 # perform first operation
sh2add x3, x10, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x30, x11 # perform first operation
sh2add x30, x22, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x13, x11 # perform first operation
sh2add x31, x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x8, x26 # perform first operation
sh2add x11, x31, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x23, x19 # perform first operation
sh2add x16, x22, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x10, x21 # perform first operation
sh2add x18, x25, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x24, x10 # perform first operation
sh2add x30, x26, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x3, x2 # perform first operation
sh2add x3, x27, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x6, x10 # perform first operation
sh2add x10, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x28, x9 # perform first operation
sh2add x25, x29, x3 # perform second (triggering) operation

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
