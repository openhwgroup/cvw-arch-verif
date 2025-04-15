///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-divuw.S
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
li x0, 0xc2848ac2b218ad31 # initialize rs1
li x30, 0xfaec6a33576476d9 # initialize rs2
divuw x26, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6cf42727db3d4c0f # initialize rs1
li x8, 0xef51bbf9d2cfe3c3 # initialize rs2
divuw x20, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x814dff1610d13294 # initialize rs1
li x17, 0xd916f868197dfdeb # initialize rs2
divuw x5, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x710917a2bcf30c3a # initialize rs1
li x23, 0x6af2c960661ea9bf # initialize rs2
divuw x22, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x66647ed8021f04f4 # initialize rs1
li x14, 0xb32f594f9f0c8f75 # initialize rs2
divuw x20, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x221de0068213596e # initialize rs1
li x23, 0x4df91008edef1185 # initialize rs2
divuw x1, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd1971121f4c6b4a9 # initialize rs1
li x1, 0x5d24f4d75ca63828 # initialize rs2
divuw x12, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe419791d687bd9f8 # initialize rs1
li x6, 0x0fd84cd36c9dd782 # initialize rs2
divuw x21, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1f5ca6cce7c99bf2 # initialize rs1
li x10, 0x1a305a45f04b3478 # initialize rs2
divuw x18, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4cffc95c68ac27cf # initialize rs1
li x26, 0x599d6bee29b475b0 # initialize rs2
divuw x1, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xff35a5defed0979d # initialize rs1
li x9, 0xbfdf771250721f34 # initialize rs2
divuw x31, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa83af8888db59c4c # initialize rs1
li x6, 0x573040acfbb49a0c # initialize rs2
divuw x7, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x17f0bdddb88754ab # initialize rs1
li x13, 0x5c3b55ffd7a092ce # initialize rs2
divuw x31, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8570d27638f3b803 # initialize rs1
li x11, 0x43d00d5ed8e7dc1e # initialize rs2
divuw x29, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa7091988848b9e73 # initialize rs1
li x6, 0x42cf437ef3fe00f9 # initialize rs2
divuw x12, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8d1e8bdd0344e5e4 # initialize rs1
li x17, 0x20b828e45de15080 # initialize rs2
divuw x3, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc47ce8ed7aeb27e6 # initialize rs1
li x31, 0x318d44d4ccdae160 # initialize rs2
divuw x1, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xac3fb6e7e5d8331e # initialize rs1
li x1, 0x0f1352b69fc216d9 # initialize rs2
divuw x27, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x49dbf69d5b69c027 # initialize rs1
li x3, 0x6da757982201c129 # initialize rs2
divuw x13, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x16f3676da2ec32a2 # initialize rs1
li x11, 0x0299e1193cb2d222 # initialize rs2
divuw x14, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x0bf604d4844cf918 # initialize rs1
li x22, 0x33fc0aae011d6a7c # initialize rs2
divuw x13, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe1f311469fce8a4d # initialize rs1
li x8, 0x87cc2d254d798293 # initialize rs2
divuw x14, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa5347a85c0af17a1 # initialize rs1
li x26, 0x8225a00347359fea # initialize rs2
divuw x11, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xda7c0bd185416ed3 # initialize rs1
li x10, 0x9ffc3787d95cb80b # initialize rs2
divuw x3, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x56bba10f9bfc677b # initialize rs1
li x13, 0xbbe5a3f26948167f # initialize rs2
divuw x17, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc3a354eb72f3f2af # initialize rs1
li x19, 0x22bf6594aceeadb8 # initialize rs2
divuw x23, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbab925d143477749 # initialize rs1
li x22, 0xe3e084b95c1bd9f5 # initialize rs2
divuw x18, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xfd3f78ed08893a25 # initialize rs1
li x26, 0x165795ee9c648990 # initialize rs2
divuw x21, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2bda9b89b1a34cc1 # initialize rs1
li x29, 0xdc0c2d20cc581bfc # initialize rs2
divuw x18, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x65d4c54d51dc6ae4 # initialize rs1
li x30, 0xef3ab2d313346fec # initialize rs2
divuw x21, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xf9064738ab3d6e07 # initialize rs1
li x11, 0x98df9a26db1a7e0e # initialize rs2
divuw x16, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x39b12ce32dbc61c2 # initialize rs1
li x23, 0x8bb1be3b49ae91cb # initialize rs2
divuw x25, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x1, 0xddd24eea7d3c61a8 # initialize rs1
li x0, 0xfc691798ace85f15 # initialize rs2
divuw x26, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0xc2ed7011ae7fd362 # initialize rs1
li x1, 0xc8fc3ca796266cfb # initialize rs2
divuw x3, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x26, 0x848fff54af41dba6 # initialize rs1
li x2, 0x5f61ef479a2eeb26 # initialize rs2
divuw x13, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x136b362083767b25 # initialize rs1
li x3, 0xf943a4d14d3c7300 # initialize rs2
divuw x14, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x943c50be5281d5d0 # initialize rs1
li x4, 0xff2afbba4556dadc # initialize rs2
divuw x19, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0xeba9ed3705bcf4c9 # initialize rs1
li x5, 0xba8d6df63ca5f795 # initialize rs2
divuw x29, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xc217ead1c520499d # initialize rs1
li x6, 0xe9c9c50fd0a05d48 # initialize rs2
divuw x21, x16, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x0a25710f242acf66 # initialize rs1
li x7, 0x682d9ac1a0194c93 # initialize rs2
divuw x19, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0x9b49a00d0bae4655 # initialize rs1
li x8, 0x77ad2546491c0ef2 # initialize rs2
divuw x9, x14, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x5590e93ea65ad1bd # initialize rs1
li x9, 0xeb2731d43879c36a # initialize rs2
divuw x17, x22, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0x4cf7de8f8a281efb # initialize rs1
li x10, 0xc2f2622fc243b827 # initialize rs2
divuw x22, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0xc4eefa9c81fff0a8 # initialize rs1
li x11, 0x4d19d6ac73dceed6 # initialize rs2
divuw x12, x27, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0xfe302e28696edd31 # initialize rs1
li x12, 0xaf41b710e96135d0 # initialize rs2
divuw x29, x3, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x474ad5231867564e # initialize rs1
li x13, 0x42f4394dec140362 # initialize rs2
divuw x7, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0x1d59f07f89f5c49e # initialize rs1
li x14, 0xfccff2ef95ba56d0 # initialize rs2
divuw x24, x22, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0x8c39b5b6a353afd5 # initialize rs1
li x15, 0x43788039d4dc48de # initialize rs2
divuw x24, x25, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x25, 0xb44be2b44928b286 # initialize rs1
li x16, 0x0de96c979ffdf091 # initialize rs2
divuw x3, x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0xd19cf8ca8a6d1e29 # initialize rs1
li x17, 0xd0a2b4ec76421bc1 # initialize rs2
divuw x18, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x21, 0x0a5ec495b9c53556 # initialize rs1
li x18, 0x57322d43010acab0 # initialize rs2
divuw x11, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0xcf848fa7ca500554 # initialize rs1
li x19, 0x7b9bad5b5375a958 # initialize rs2
divuw x9, x18, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0x05d9b84941ef0972 # initialize rs1
li x20, 0x1377d500cd14961b # initialize rs2
divuw x26, x15, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x5b32ab095fe2015d # initialize rs1
li x21, 0x181c36913b1fa930 # initialize rs2
divuw x16, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0x303ca66e305f3f1a # initialize rs1
li x22, 0x40838f4d3ff11c84 # initialize rs2
divuw x24, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0x75cf3d2960046229 # initialize rs1
li x23, 0x4b33ffe322cb801b # initialize rs2
divuw x8, x10, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0xab5a5260cc14404f # initialize rs1
li x24, 0xc40a7a2ad8994377 # initialize rs2
divuw x17, x18, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0xe9d0b614309a8a6a # initialize rs1
li x25, 0xaf061f8c4983fe7c # initialize rs2
divuw x13, x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x6f99954eae865394 # initialize rs1
li x26, 0x9832c4839f0b4cf1 # initialize rs2
divuw x3, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x2f017a662256efa7 # initialize rs1
li x27, 0x24709d42dc89a594 # initialize rs2
divuw x23, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x8, 0x22b29f699e6b19dd # initialize rs1
li x28, 0xee5cb0654abb0f38 # initialize rs2
divuw x9, x8, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x396056ad085be232 # initialize rs1
li x29, 0xfba1be7e3d7a3737 # initialize rs2
divuw x26, x9, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0x2e51dd91d68ef738 # initialize rs1
li x30, 0xa6737fff8ff65106 # initialize rs2
divuw x7, x6, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0xc3922445eb3f7456 # initialize rs1
li x31, 0x086143593ddbe94f # initialize rs2
divuw x30, x19, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 504)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0x6240f5ea29d5318e # initialize rs1
li x13, 0xefdeb3a1a8d1337e # initialize rs2
divuw x0, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0xe6bc4d11d3bd8577 # initialize rs1
li x13, 0x9e6b61417d08d741 # initialize rs2
divuw x1, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x3b83cbc20d003e0a # initialize rs1
li x18, 0x196a1fb961439613 # initialize rs2
divuw x2, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x798a02ced9f89769 # initialize rs1
li x20, 0xd1b77f2cb34f0c40 # initialize rs2
divuw x3, x1, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
li x10, 0xbaa8b057e7f36882 # initialize rs1
li x15, 0x22a2d934f6a496fe # initialize rs2
divuw x4, x10, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x73cc82c2922f4685 # initialize rs1
li x24, 0xf62dd180df33d8ba # initialize rs2
divuw x5, x14, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x2c66a783a6f4d3ad # initialize rs1
li x23, 0x1a8056fb66dc27d6 # initialize rs2
divuw x6, x22, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xa088405722dc3cfc # initialize rs1
li x19, 0x0c12bcebfd363b0b # initialize rs2
divuw x7, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0x44a120da0a8d4acc # initialize rs1
li x1, 0x59dd8fb2605a0279 # initialize rs2
divuw x8, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x571fc6f78bb048f1 # initialize rs1
li x13, 0x91fb56e7791697d9 # initialize rs2
divuw x9, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x22, 0xa6980ce6fd6fb6b4 # initialize rs1
li x31, 0xca78332963491012 # initialize rs2
divuw x10, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0xe8c7664e0b16e3c6 # initialize rs1
li x6, 0x7d7cb23ea3655387 # initialize rs2
divuw x11, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x66af928ee0bfb503 # initialize rs1
li x25, 0xacb3f457db5d371a # initialize rs2
divuw x12, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x31, 0x937293ebe2be3771 # initialize rs1
li x24, 0x945e0d6f5e81bcc2 # initialize rs2
divuw x13, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x3, 0x610632c8427a0219 # initialize rs1
li x19, 0xd80739a47052e0c5 # initialize rs2
divuw x14, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x9db94a6d09b40718 # initialize rs1
li x22, 0xc75005b7515bbbf5 # initialize rs2
divuw x15, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xbafc991177c14e62 # initialize rs1
li x18, 0x39ef91d945d8a245 # initialize rs2
divuw x16, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0xc7943025487955a9 # initialize rs1
li x2, 0x3c22eec5ac6fbc6d # initialize rs2
divuw x17, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0xa04fd174b810a8e1 # initialize rs1
li x21, 0xb6ec571bf104c900 # initialize rs2
divuw x18, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0xc52dddb58b948a3b # initialize rs1
li x18, 0x7a3fa5bddc03a807 # initialize rs2
divuw x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x846aa768e365070f # initialize rs1
li x28, 0x6b37df6061cdf612 # initialize rs2
divuw x20, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0x2f73c5ae112dd57c # initialize rs1
li x6, 0x50ebaa1b760a1bdc # initialize rs2
divuw x21, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x7705b298073042c6 # initialize rs1
li x2, 0x3e5448ced2a93e35 # initialize rs2
divuw x22, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0x580bbadee0d9e757 # initialize rs1
li x28, 0x623734f5d7b789fc # initialize rs2
divuw x23, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xc390f56a3790ea89 # initialize rs1
li x5, 0x9d53851523c529f8 # initialize rs2
divuw x24, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x15, 0x984bf221205c77d8 # initialize rs1
li x22, 0x6336ea86984b05d5 # initialize rs2
divuw x25, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0xdcc4e9e2587839d6 # initialize rs1
li x15, 0xa77b030bad588c7e # initialize rs2
divuw x26, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0xa9fcd048776b40f1 # initialize rs1
li x10, 0x51b08b0c654c0961 # initialize rs2
divuw x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x27, 0xb96c854ba0e519ba # initialize rs1
li x16, 0x429be86f0990223e # initialize rs2
divuw x28, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0x2399aa7b413a2f09 # initialize rs1
li x19, 0x0367776b5323cb2f # initialize rs2
divuw x29, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0xa0ff590018b0c111 # initialize rs1
li x20, 0xb238a42d451533ad # initialize rs2
divuw x30, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0xb7476683efd4ec33 # initialize rs1
li x8, 0xbe9e6c817a46b713 # initialize rs2
divuw x31, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x0000000000000000 # initialize rs1
li x12, 0xc10d55daf02f7732 # initialize rs2
divuw x19, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x17, 0xd3865f8b2187f97c # initialize rs2
divuw x11, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x0000000000000002 # initialize rs1
li x28, 0xe7c922dba0fbe75d # initialize rs2
divuw x23, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x19, 0x84636324c74a18f6 # initialize rs2
divuw x26, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0x8000000000000001 # initialize rs1
li x18, 0x08536f65e4b09ffd # initialize rs2
divuw x5, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x5, 0x947b1a5e2077c1f1 # initialize rs2
divuw x20, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x29, 0x36940113f92dd039 # initialize rs2
divuw x15, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x21, 0x431441a1cbb2ad5e # initialize rs2
divuw x30, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x7, 0xf9dba76d5de1bd2c # initialize rs2
divuw x18, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x55fe64bf334847ec # initialize rs2
divuw x31, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaf79fecd88f07130 # initialize rs2
divuw x11, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x2, 0x005d5132f60e9d91 # initialize rs2
divuw x21, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x9, 0x611d68899ac79c8c # initialize rs2
divuw x21, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x2, 0x7c54cc1db9c8b4e8 # initialize rs2
divuw x29, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x19, 0x5b60d241025559ce # initialize rs2
divuw x9, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x26, 0xcaf396e3aa0c2a1d # initialize rs2
divuw x2, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x2fba561d043d3198 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
divuw x9, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x23, 0xc0d6306eeda1ab5f # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
divuw x18, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x37063c7bbb74c590 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
divuw x16, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x1, 0xbfd91917ce517e1f # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
divuw x16, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0x556982d90b5121c8 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
divuw x24, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x69837b3bbf0f6a7c # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
divuw x24, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0xadb0962a74e04ceb # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
divuw x19, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0xaf3738605c9777ad # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
divuw x10, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x19, 0xb6e09d25071ef85c # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divuw x29, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0x3b876636d17f2b6d # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
divuw x8, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x2bd238b2c4d8f3b5 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x11, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0xfd7d183dbe252b2b # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
divuw x31, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x01a8b4c49b1b6715 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
divuw x29, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x24, 0xae805b5826f03d40 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
divuw x2, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x16, 0xf07d589afc5964b3 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
divuw x27, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x2, 0x389de2c15ddf5b8e # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
divuw x30, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
divuw x3, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x19, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divuw x10, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
divuw x10, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x11, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divuw x30, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x14, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
divuw x9, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
divuw x25, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
divuw x1, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
divuw x26, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000000000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
divuw x25, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
divuw x14, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x24, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x19, 0x0000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
divuw x16, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
divuw x9, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
divuw x6, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x19, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
divuw x29, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x5, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
divuw x21, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
divuw x9, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
divuw x29, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x15, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
divuw x23, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x17, 0x0000000000000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
divuw x3, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x20, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
divuw x6, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
divuw x30, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
divuw x1, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
divuw x15, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
divuw x15, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
divuw x22, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x6, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x20, 0x0000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
divuw x13, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
divuw x17, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
divuw x5, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x13, 0x0000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divuw x24, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x9, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divuw x16, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
divuw x28, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
divuw x20, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
divuw x7, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x26, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
divuw x19, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
divuw x14, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000002 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
divuw x31, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
divuw x2, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
divuw x31, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
divuw x31, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000000000002 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
divuw x16, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000002 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x29, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x15, 0x0000000000000002 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divuw x5, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
divuw x3, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x0000000000000002 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
divuw x1, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x30, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
divuw x15, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divuw x20, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x9, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
divuw x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x31, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
divuw x27, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x5, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
divuw x19, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
divuw x19, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
divuw x12, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
divuw x12, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
divuw x14, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
divuw x12, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
divuw x2, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
divuw x5, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x21, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x24, 0x8000000000000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
divuw x15, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
divuw x25, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
divuw x8, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x7, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
divuw x15, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x31, 0x8000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
divuw x6, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x13, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
divuw x8, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x2, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
divuw x12, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x10, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
divuw x20, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x15, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
divuw x3, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x3, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
divuw x6, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
divuw x5, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
divuw x17, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
divuw x7, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divuw x28, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000001 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
divuw x3, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x28, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divuw x18, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
divuw x6, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
divuw x1, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
divuw x17, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x1, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
divuw x5, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
divuw x17, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x26, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
divuw x25, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x14, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
divuw x31, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
divuw x30, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
divuw x26, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
divuw x31, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
divuw x29, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
divuw x27, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
divuw x7, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0x7fffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
divuw x16, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7fffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x12, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x19, 0x7fffffffffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
divuw x24, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
divuw x17, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
divuw x24, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
divuw x9, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
divuw x6, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
divuw x8, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x27, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
divuw x19, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x19, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
divuw x15, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
divuw x8, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
divuw x6, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
divuw x2, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
divuw x13, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
divuw x16, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divuw x24, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
divuw x5, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x7ffffffffffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x28, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
divuw x12, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x5, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
divuw x3, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
divuw x22, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
divuw x24, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
divuw x17, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x25, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
divuw x22, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x18, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
divuw x12, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x26, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
divuw x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x18, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
divuw x14, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
divuw x10, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divuw x29, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divuw x10, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
divuw x24, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
divuw x6, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0xffffffffffffffff # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
divuw x11, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x5, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x19, 0xffffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
divuw x7, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
divuw x14, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x31, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
divuw x17, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
divuw x2, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x11, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
divuw x22, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x25, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
divuw x26, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x9, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
divuw x24, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
divuw x24, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
divuw x11, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0xfffffffffffffffe # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
divuw x3, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
divuw x25, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
divuw x10, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
divuw x19, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
divuw x12, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x7, 0xfffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
divuw x16, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xfffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x28, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
divuw x8, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
divuw x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divuw x26, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x24, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
divuw x15, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
divuw x24, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
divuw x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
divuw x19, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
divuw x5, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divuw x5, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
divuw x26, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
divuw x30, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
divuw x10, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
divuw x2, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
divuw x10, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
divuw x1, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x13, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divuw x28, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
divuw x8, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divuw x3, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
divuw x10, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
divuw x29, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
divuw x1, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
divuw x27, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
divuw x25, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
divuw x12, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
divuw x11, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
divuw x16, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
divuw x18, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
divuw x8, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
divuw x18, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
divuw x13, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x1, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divuw x6, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
divuw x16, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
divuw x13, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
divuw x11, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divuw x10, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x23, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
divuw x18, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x28, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
divuw x13, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x25, 0x5555555555555555 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divuw x8, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x7, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
divuw x8, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x12, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
divuw x26, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
divuw x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divuw x7, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
divuw x30, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
divuw x1, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x2, 0x5555555555555555 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
divuw x9, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x5555555555555555 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x16, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
divuw x8, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
divuw x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
divuw x3, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x11, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
divuw x7, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x5, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
divuw x31, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x14, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
divuw x12, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
divuw x26, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
divuw x28, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x31, 0x00000000ffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
divuw x1, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x14, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
divuw x21, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divuw x11, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x00000000ffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
divuw x14, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
divuw x5, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
divuw x30, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000ffffffff # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
divuw x30, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x00000000ffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x6, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
divuw x12, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divuw x11, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
divuw x22, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x22, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
divuw x24, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
divuw x27, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x12, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
divuw x25, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
divuw x27, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x26, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
divuw x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x28, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divuw x30, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divuw x29, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
divuw x16, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
divuw x1, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
divuw x12, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
divuw x24, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000fffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
divuw x24, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x00000000fffffffe # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x6, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x28, 0x00000000fffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
divuw x27, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
divuw x12, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divuw x22, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
divuw x18, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x12, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
divuw x13, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x9, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
divuw x6, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x10, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
divuw x24, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x14, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
divuw x20, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
divuw x18, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x21, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
divuw x12, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
divuw x15, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
divuw x30, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
divuw x28, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
divuw x7, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000100000000 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
divuw x7, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000100000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x7, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x13, 0x0000000100000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
divuw x3, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
divuw x31, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x21, 0x0000000100000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
divuw x17, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
divuw x2, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x11, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
divuw x19, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x17, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
divuw x10, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
divuw x2, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
divuw x6, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x7, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
divuw x20, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x18, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divuw x28, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
divuw x13, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
divuw x12, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
divuw x28, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000100000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
divuw x22, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000100000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
divuw x14, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x7, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
divuw x18, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
divuw x13, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
divuw x23, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x23, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
divuw x17, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
divuw x29, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbbd4c00721998098 # initialize rs1
li x0, 0xf6a758a60582e478 # initialize rs2
divuw x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xe347a8c2439ae2e2 # initialize rs1
li x1, 0x9642ff054aa36194 # initialize rs2
divuw x23, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x6bd6df1145ba3c61 # initialize rs1
li x2, 0xab99beffaa5337e0 # initialize rs2
divuw x11, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd745df4513ae1276 # initialize rs1
li x3, 0xd8782e29d82a9956 # initialize rs2
divuw x10, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x54bd1ec49ed0c417 # initialize rs1
li x4, 0xb7d06d40619b81d1 # initialize rs2
divuw x30, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x944aa3f4dfcc6fe3 # initialize rs1
li x5, 0x4388b964f665a1cc # initialize rs2
divuw x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb0d240322d952a24 # initialize rs1
li x6, 0x1a83d37f52eaf39a # initialize rs2
divuw x23, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x64196cbddc280ed7 # initialize rs1
li x7, 0xae8b3a8b73dd822b # initialize rs2
divuw x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xeac861321a312551 # initialize rs1
li x8, 0x26fb64914b3665f6 # initialize rs2
divuw x3, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd43ae069a4149592 # initialize rs1
li x9, 0x74e9a9c8e0792a65 # initialize rs2
divuw x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf46e46f45e749924 # initialize rs1
li x10, 0xb5b08f6248344180 # initialize rs2
divuw x27, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb1e369decbd5ded6 # initialize rs1
li x11, 0x6562e3fc9decc78c # initialize rs2
divuw x31, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3acf618cfc3f5497 # initialize rs1
li x12, 0xeff55c36650f228e # initialize rs2
divuw x10, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x330bc9fe3b2de058 # initialize rs1
li x13, 0x20040784caac8df8 # initialize rs2
divuw x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7ba045148fb046f2 # initialize rs1
li x14, 0x58f482930a12c28d # initialize rs2
divuw x13, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x69827484d18e5c47 # initialize rs1
li x15, 0x92945907cbfd2dea # initialize rs2
divuw x2, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xd11f41cda24212d7 # initialize rs1
li x16, 0x8df1a22089016b7e # initialize rs2
divuw x15, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xb60836f9cb0353f9 # initialize rs1
li x17, 0x71cadc0aa2eccb98 # initialize rs2
divuw x7, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1f525e1d42a27cb0 # initialize rs1
li x18, 0x5c4cc4dae12127d3 # initialize rs2
divuw x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5ee60b2df05c3cd4 # initialize rs1
li x19, 0x4813a1ab064376f4 # initialize rs2
divuw x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x76edd2c890f95e71 # initialize rs1
li x20, 0x912f08b6d2849f17 # initialize rs2
divuw x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x9be0d5d127dd0fc0 # initialize rs1
li x21, 0xfd7c16556228b2d8 # initialize rs2
divuw x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa3cabceaaac659db # initialize rs1
li x22, 0xf0bd98a9887be7b8 # initialize rs2
divuw x9, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x73dbaa475eb75eed # initialize rs1
li x23, 0x734216f3d55e3602 # initialize rs2
divuw x10, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xfd4c7adb471446eb # initialize rs1
li x24, 0x51e037db864fb498 # initialize rs2
divuw x14, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbf77cc103a98b442 # initialize rs1
li x25, 0x1b940f2ba66e8353 # initialize rs2
divuw x3, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x281cce1adf252d56 # initialize rs1
li x26, 0x87f6ba7314fdad7b # initialize rs2
divuw x5, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc5ddf369760afd9e # initialize rs1
li x27, 0x4f8f3c0e7f79b158 # initialize rs2
divuw x6, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x645da02e6cac1217 # initialize rs1
li x28, 0xd1556b0ff1189a6a # initialize rs2
divuw x7, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x0d41f233f0689be1 # initialize rs1
li x29, 0x7c4432f821b58cb3 # initialize rs2
divuw x7, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xdca822c83c832f87 # initialize rs1
li x30, 0xb1bc958238415bd8 # initialize rs2
divuw x5, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xb5f78c14bdf948fb # initialize rs1
li x31, 0x2962b88c3aa9f527 # initialize rs2
divuw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xca7cdb099d04e8d2 # initialize rs1
li x21, 0x17a8798221a85d9b # initialize rs2
divuw x0, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2f9ea43d0dd681ac # initialize rs1
li x20, 0x9f8e95299646a0ce # initialize rs2
divuw x1, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xad90d7eca881b299 # initialize rs1
li x18, 0xda057ff2ce0406bb # initialize rs2
divuw x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9054fffbb4993217 # initialize rs1
li x10, 0x43fcf370a1ee6d1f # initialize rs2
divuw x3, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf1d341941f3cef73 # initialize rs1
li x11, 0x8fe882283fc2c217 # initialize rs2
divuw x4, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xeee9e6584353cbc0 # initialize rs1
li x11, 0x94314c87089f2ab3 # initialize rs2
divuw x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x06e066c208f76a02 # initialize rs1
li x1, 0x33c960e281d121b9 # initialize rs2
divuw x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x24fe6042cf7c82ec # initialize rs1
li x31, 0x86780339b688e1bf # initialize rs2
divuw x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9ff72ab0716d46e0 # initialize rs1
li x5, 0x1aada14654d4a28d # initialize rs2
divuw x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4bc78f5a7072ff4f # initialize rs1
li x22, 0xbfd469ddfa4fa107 # initialize rs2
divuw x9, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xae342af02692002a # initialize rs1
li x5, 0x8e12e5469b3cbb49 # initialize rs2
divuw x10, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x77cce700daa7411b # initialize rs1
li x26, 0xa384904ab9fb4a40 # initialize rs2
divuw x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x405b22ca03bd136e # initialize rs1
li x6, 0xbec41df177fb15a8 # initialize rs2
divuw x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x939c9f7871af7658 # initialize rs1
li x26, 0x710b05baf4c6e28e # initialize rs2
divuw x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf995082ef4030a61 # initialize rs1
li x8, 0xc04212aa18292714 # initialize rs2
divuw x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8a8c8ae5505dd6b8 # initialize rs1
li x15, 0x84a653dce6a2d074 # initialize rs2
divuw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xba999c6f82052f4f # initialize rs1
li x11, 0x8871d34c783ea782 # initialize rs2
divuw x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf1204c93534f7d6c # initialize rs1
li x18, 0x7fa780c6b7c083d5 # initialize rs2
divuw x17, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x12d25fc3b5bfba8d # initialize rs1
li x2, 0x6ead7a5060afddd6 # initialize rs2
divuw x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x57ff879f167c7479 # initialize rs1
li x27, 0x31fb87506bf5ed99 # initialize rs2
divuw x19, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x23f9ad5c6fdda966 # initialize rs1
li x28, 0x77648c303603282f # initialize rs2
divuw x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x36c3725ae9dd9ea2 # initialize rs1
li x15, 0xa2f2061a7a480597 # initialize rs2
divuw x21, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xed8a4eacd10a9545 # initialize rs1
li x23, 0xafdbd1b6d83b149d # initialize rs2
divuw x22, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfe04079350a06a23 # initialize rs1
li x29, 0xcdf81d8286f44ed3 # initialize rs2
divuw x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa13f0803210b41a5 # initialize rs1
li x15, 0xf653b23fcafc3558 # initialize rs2
divuw x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf7826adc7ae757f1 # initialize rs1
li x17, 0x50d600e534be80dc # initialize rs2
divuw x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc9b1fc792b3a7555 # initialize rs1
li x10, 0x6dfbc141ff30173a # initialize rs2
divuw x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4bd291d13649267f # initialize rs1
li x2, 0xcf97becc39ea6f7c # initialize rs2
divuw x27, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5d3d00b1d85cdc3c # initialize rs1
li x17, 0x6489d6f958fb0ae5 # initialize rs2
divuw x28, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x83c21d258d410b78 # initialize rs1
li x21, 0xc78c4b7ff77a8e29 # initialize rs2
divuw x29, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8cd534b825868847 # initialize rs1
li x25, 0x1a2c5a96f9acc41f # initialize rs2
divuw x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4298e05b78f130cf # initialize rs1
li x2, 0xc5dd65beb40a2950 # initialize rs2
divuw x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x13, 0xad5317f81e6e0048 # initialize rs1
li x0, 0x84ca34862a328114 # initialize rs2
divuw x0, x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0x9c8000228139ab80 # initialize rs1
li x1, 0xbe976e89f7575eed # initialize rs2
divuw x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0x8e929fc2da4010b0 # initialize rs1
li x2, 0x1c0d6e8677f5e692 # initialize rs2
divuw x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x20, 0x5b5aa42c37f307af # initialize rs1
li x3, 0x67a7cc7914d7e6f2 # initialize rs2
divuw x3, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xafc37b02d5ce8cca # initialize rs1
li x4, 0xa9cd0ff7e7cb3515 # initialize rs2
divuw x4, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x6ce4b683514636bb # initialize rs1
li x5, 0x38545c58dc9e7a5d # initialize rs2
divuw x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x01b792b27ba49527 # initialize rs1
li x6, 0x4c5eb88226334244 # initialize rs2
divuw x6, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x5c0bef0e238dd891 # initialize rs1
li x7, 0xc71359e43e03b3bd # initialize rs2
divuw x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x289925e7c13313fc # initialize rs1
li x8, 0xc5fe5b6b4f243727 # initialize rs2
divuw x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x2, 0xeb2016935e7a0775 # initialize rs1
li x9, 0xd1f8c57c280b517f # initialize rs2
divuw x9, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x20, 0x49d96a4e4657c6c3 # initialize rs1
li x10, 0xad0515922d6951df # initialize rs2
divuw x10, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x5, 0x95a62508791873fe # initialize rs1
li x11, 0x7d0325d9daab1b8e # initialize rs2
divuw x11, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0x17aa45d5cf8ddfdd # initialize rs1
li x12, 0xb4638d8e25ef8a77 # initialize rs2
divuw x12, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x31, 0x9afc2983e224a5bb # initialize rs1
li x13, 0x1976cd24e8eb1ba6 # initialize rs2
divuw x13, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x73b890b89825446d # initialize rs1
li x14, 0x729c7d550a644f8a # initialize rs2
divuw x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x13, 0x59b45f58c6b8873c # initialize rs1
li x15, 0x2b296003a8b2c988 # initialize rs2
divuw x15, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x9a375f8a4477d899 # initialize rs1
li x16, 0xedb329fa32b13e76 # initialize rs2
divuw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0xe4cf0845ecf0eab3 # initialize rs1
li x17, 0x21d63ec1132d6d3e # initialize rs2
divuw x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x6, 0xd8d10fcde516b8be # initialize rs1
li x18, 0x2d96e77a2103ecb9 # initialize rs2
divuw x18, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x17, 0xec5107c739eda1c7 # initialize rs1
li x19, 0x6c46db3764ab321e # initialize rs2
divuw x19, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x13, 0xdb73b097d9a228c5 # initialize rs1
li x20, 0xaf65cbaddd663182 # initialize rs2
divuw x20, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x27, 0x61f567bd75cbda36 # initialize rs1
li x21, 0x50e80ace965ce41c # initialize rs2
divuw x21, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0xaca116df34f42378 # initialize rs1
li x22, 0x5733f396e7915e34 # initialize rs2
divuw x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x16, 0xee3879d9fa8d9961 # initialize rs1
li x23, 0xb7bff468d602e283 # initialize rs2
divuw x23, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x2, 0xc6b4fa138b366b5e # initialize rs1
li x24, 0xd0a12d27c88663c0 # initialize rs2
divuw x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x3, 0x9cdef6513c8c20a4 # initialize rs1
li x25, 0x49d33ea23d1c2d77 # initialize rs2
divuw x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0xdc057d91a86b1146 # initialize rs1
li x26, 0xc5617d4c768f5c2b # initialize rs2
divuw x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xf2800ff2c959c534 # initialize rs1
li x27, 0x0cadc711a36684d2 # initialize rs2
divuw x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x1, 0x216ceb8d2c5c6015 # initialize rs1
li x28, 0xbd985239f64bdaa8 # initialize rs2
divuw x28, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0x6f0bf240069d5458 # initialize rs1
li x29, 0xe41e23c4f2d45c63 # initialize rs2
divuw x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x5, 0x7bf715775647481f # initialize rs1
li x30, 0xcd67c8f43c0d71d7 # initialize rs2
divuw x30, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0x4ac4dcac59a9ef85 # initialize rs1
li x31, 0xb868d5fadf0b9d30 # initialize rs2
divuw x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3bb500a952bf67df # initialize rs1
li x0, 0x1ab4aeb2325e9f47 # initialize rs2
divuw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x62e8ad0b2e63b02e # initialize rs1
li x1, 0xfdc408d650a066ef # initialize rs2
divuw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x00ff888aabf4bf63 # initialize rs1
li x2, 0x98dd671928f23f3b # initialize rs2
divuw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3b4712218fa3fcb7 # initialize rs1
li x3, 0x95680a576b8bbae9 # initialize rs2
divuw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaa32b7d8d842ceab # initialize rs1
li x4, 0xab67eb8500827887 # initialize rs2
divuw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab70bd413c2ed393 # initialize rs1
li x5, 0xa34721cebb4c7373 # initialize rs2
divuw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xca14af6b59031b48 # initialize rs1
li x6, 0x3a847ba2e413a842 # initialize rs2
divuw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3e8128cd7d61163b # initialize rs1
li x7, 0x49c98e54bb15d8b0 # initialize rs2
divuw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfd41fc2160f52f4d # initialize rs1
li x8, 0xd3dcb30b81b56222 # initialize rs2
divuw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xe3aed2f69f095f8d # initialize rs1
li x9, 0xdb9121ba74e37b7d # initialize rs2
divuw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4aa6b22789a5cd8e # initialize rs1
li x10, 0xe19091766cd8b955 # initialize rs2
divuw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xaa2d4d4733ffa71c # initialize rs1
li x11, 0x69e527d753dc2346 # initialize rs2
divuw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd70ce86b2a199856 # initialize rs1
li x12, 0x18aeddd0c08f05d4 # initialize rs2
divuw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x0b2e1ae3648dc3df # initialize rs1
li x13, 0xd3a2acc7f28ded61 # initialize rs2
divuw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x5ce011d07b3afbc4 # initialize rs1
li x14, 0xf7e33bc8af9baab2 # initialize rs2
divuw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x73598a775152e6aa # initialize rs1
li x15, 0xa8731b6d25d11f75 # initialize rs2
divuw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x31fe5e45673083a1 # initialize rs1
li x16, 0xea705d2e865fa798 # initialize rs2
divuw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7e8ee94fec42a108 # initialize rs1
li x17, 0x5b03b05e2281268f # initialize rs2
divuw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6a0819245bcbc26a # initialize rs1
li x18, 0xadb8647391bbac1c # initialize rs2
divuw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x633df7c598de5d0b # initialize rs1
li x19, 0x8c3bbe8ff1bd3377 # initialize rs2
divuw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x83df9b4a1b537fd7 # initialize rs1
li x20, 0xc2a960c509a84cbb # initialize rs2
divuw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xff3f0a44a7b7cf9b # initialize rs1
li x21, 0x36e72d9648da82a4 # initialize rs2
divuw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x686fa2745f6bb440 # initialize rs1
li x22, 0x7855e327af99a40d # initialize rs2
divuw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xa19e5d7aea5b3e87 # initialize rs1
li x23, 0x5655c18821c74198 # initialize rs2
divuw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf3c60bc73355cf68 # initialize rs1
li x24, 0xa0fc4fc8aa2fca9c # initialize rs2
divuw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x401a6b98b496cc3b # initialize rs1
li x25, 0xdfa0455476b8e0ad # initialize rs2
divuw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x04940e5349a4e3d9 # initialize rs1
li x26, 0x40767e1f7cf4e3e7 # initialize rs2
divuw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x09ce69832a197448 # initialize rs1
li x27, 0x7064af0ec8d2526b # initialize rs2
divuw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6df249f1245e7a8e # initialize rs1
li x28, 0xd137f1fcecf53eb6 # initialize rs2
divuw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbd814afb20f84530 # initialize rs1
li x29, 0x47713d9af5088a44 # initialize rs2
divuw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6197b945390e46a2 # initialize rs1
li x30, 0x37cc9de260b687fe # initialize rs2
divuw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe8eaa6725eb538ef # initialize rs1
li x31, 0xd270a986af930181 # initialize rs2
divuw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x18, x16 # perform first operation
divuw x27, x1, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x2, x23 # perform first operation
divuw x31, x25, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x30, x18 # perform first operation
divuw x29, x10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x12, x11 # perform first operation
divuw x28, x9, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x29, x10 # perform first operation
divuw x10, x3, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x18, x9 # perform first operation
divuw x27, x18, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x14, x9 # perform first operation
divuw x31, x24, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x29, x8 # perform first operation
divuw x14, x19, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x13, x7 # perform first operation
divuw x31, x12, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x18, x23 # perform first operation
divuw x18, x19, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x10, x11 # perform first operation
divuw x11, x12, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x12, x19 # perform first operation
divuw x5, x30, x2 # perform second (triggering) operation

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
