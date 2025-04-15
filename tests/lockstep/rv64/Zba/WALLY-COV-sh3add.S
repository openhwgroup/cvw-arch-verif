///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-sh3add.S
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
li x0, 0x135b5fc5f7752fef # initialize rs1
li x11, 0x35c03e863b621176 # initialize rs2
sh3add x21, x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5a337ec508a5d547 # initialize rs1
li x14, 0x2e26f037582f4bf8 # initialize rs2
sh3add x3, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfc738c0072e82421 # initialize rs1
li x6, 0xd6431cf5a1328371 # initialize rs2
sh3add x13, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8dc01aabb4974a6d # initialize rs1
li x5, 0x7d35fb52d4374874 # initialize rs2
sh3add x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0dd6437787feb183 # initialize rs1
li x21, 0x933d3f2c2038502a # initialize rs2
sh3add x27, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfbed1117ac7c918c # initialize rs1
li x25, 0xf501134d1232e7bd # initialize rs2
sh3add x27, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x81ed13c2348de2c9 # initialize rs1
li x4, 0xa821a752cd091a85 # initialize rs2
sh3add x26, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5ad39029f4841c44 # initialize rs1
li x12, 0x090046abe7977bbb # initialize rs2
sh3add x25, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x37145ce32d79d32b # initialize rs1
li x14, 0x4707f50924c78ac9 # initialize rs2
sh3add x22, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6f8ecd727951ecb4 # initialize rs1
li x30, 0x6f61e4a9dc9f4628 # initialize rs2
sh3add x24, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc59d9b133190ad61 # initialize rs1
li x16, 0x2ff7b6d7ff1ab9fb # initialize rs2
sh3add x24, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x624fb3477feb93eb # initialize rs1
li x15, 0x907903e636ad5bee # initialize rs2
sh3add x21, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x972da780350625b1 # initialize rs1
li x20, 0xf4cdd52ceb6a8ea1 # initialize rs2
sh3add x17, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x63e777100892ed3e # initialize rs1
li x6, 0xa51a766b596a46d7 # initialize rs2
sh3add x9, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x5c8990023d54f9d1 # initialize rs1
li x9, 0x8a419df83f593c47 # initialize rs2
sh3add x26, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x3e353a7cbef3c940 # initialize rs1
li x25, 0x9a7cc38f640056e7 # initialize rs2
sh3add x30, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4344f00f7b0eff70 # initialize rs1
li x24, 0x3134f734bb936931 # initialize rs2
sh3add x26, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x229047c6619255b8 # initialize rs1
li x27, 0x06bb9c540451f025 # initialize rs2
sh3add x5, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xccf21ff7a7124e26 # initialize rs1
li x9, 0xc6173fa70c715189 # initialize rs2
sh3add x27, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb609061d1e3cd37e # initialize rs1
li x15, 0x3706647dc2688bb1 # initialize rs2
sh3add x9, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9816ff102bbcff94 # initialize rs1
li x5, 0x04b34f43a6a27c7e # initialize rs2
sh3add x24, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x77d143369878b17e # initialize rs1
li x19, 0x0cae77101773ebf9 # initialize rs2
sh3add x31, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9ae65938b2bfe67f # initialize rs1
li x14, 0x5a40ef18d97109a0 # initialize rs2
sh3add x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x39933d5ed018fe8c # initialize rs1
li x12, 0xc59cce5578822b8f # initialize rs2
sh3add x20, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4a587e01bac5645d # initialize rs1
li x5, 0x7653b1f6568c7e1b # initialize rs2
sh3add x14, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7f5baa9f653b3540 # initialize rs1
li x18, 0xab58f5381e8b22a8 # initialize rs2
sh3add x21, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x48a62eb89ef31348 # initialize rs1
li x1, 0x7e40b4d842b5f032 # initialize rs2
sh3add x31, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xcc32647b12af6f1b # initialize rs1
li x3, 0x3d537fcf6e87229f # initialize rs2
sh3add x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0df363d777403809 # initialize rs1
li x29, 0xf2e0a98634e1e666 # initialize rs2
sh3add x10, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x59512d351608ceae # initialize rs1
li x12, 0x72d769e8ca70ca43 # initialize rs2
sh3add x17, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x39dd4626cec737bb # initialize rs1
li x12, 0xdc1ac7764a9dfe4c # initialize rs2
sh3add x2, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5af503b1106e9332 # initialize rs1
li x22, 0x6c1307ce902e5e4e # initialize rs2
sh3add x12, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0x60be3a7ac165c006 # initialize rs1
li x0, 0xfd2fe619c3f96922 # initialize rs2
sh3add x17, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0xb4ce9cc1ffe2ca28 # initialize rs1
li x1, 0x6c85f09b5d7af442 # initialize rs2
sh3add x31, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0x5cb80bd3611243fa # initialize rs1
li x2, 0x76544c6480959a57 # initialize rs2
sh3add x24, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x2e631aafc24958c0 # initialize rs1
li x3, 0x35a96a15171aefac # initialize rs2
sh3add x20, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x3fe82a59e7560535 # initialize rs1
li x4, 0x18e5c909d932f4af # initialize rs2
sh3add x26, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x11, 0xd98c58b35548a9aa # initialize rs1
li x5, 0x4f924858490d4ed3 # initialize rs2
sh3add x24, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x4add03f87d871ecc # initialize rs1
li x6, 0xe51cc1ef1883eadb # initialize rs2
sh3add x4, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xef37e1badc457014 # initialize rs1
li x7, 0x599041c69fadf411 # initialize rs2
sh3add x12, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0x78867cbf8e138436 # initialize rs1
li x8, 0x1c6ef8cc0d7fd392 # initialize rs2
sh3add x28, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x855e9f1418e784a1 # initialize rs1
li x9, 0x61b84abc4ac66787 # initialize rs2
sh3add x2, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0x98ee37f5d6e46c5e # initialize rs1
li x10, 0x7ca8748f58488bcf # initialize rs2
sh3add x16, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0xe5b0fe89c53ecb48 # initialize rs1
li x11, 0xe1665afa5fd94df2 # initialize rs2
sh3add x15, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x6c4d70d4729ce9f3 # initialize rs1
li x12, 0xc95bdfc383186026 # initialize rs2
sh3add x5, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x499875d6af8abc2f # initialize rs1
li x13, 0x7f831d3278cda5d2 # initialize rs2
sh3add x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x76d60b777e9f9282 # initialize rs1
li x14, 0x7304d7828f407c7c # initialize rs2
sh3add x16, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0xca4a73258ac7d31f # initialize rs1
li x15, 0x2b921ef1deff0be7 # initialize rs2
sh3add x7, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0x1e3717c1e7651ba3 # initialize rs1
li x16, 0x8aa8d653434deb3d # initialize rs2
sh3add x18, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x47344c7c836fe02e # initialize rs1
li x17, 0x2f5dae874cb4b846 # initialize rs2
sh3add x25, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x22, 0xf28984f0008b5796 # initialize rs1
li x18, 0x0db3ec12da2283fd # initialize rs2
sh3add x14, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0xfa9e36e6970c4f5e # initialize rs1
li x19, 0x0cc262c1b33a87ec # initialize rs2
sh3add x22, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xc14cad934bfb1cb5 # initialize rs1
li x20, 0x3c81f951a871e629 # initialize rs2
sh3add x19, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0xf0cb6f4adbd52e1f # initialize rs1
li x21, 0xa64050777a584752 # initialize rs2
sh3add x10, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xef1a1543fe89aa61 # initialize rs1
li x22, 0xc2f1e624d6af3ea2 # initialize rs2
sh3add x10, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0xf6fa91b550d0a0e8 # initialize rs1
li x23, 0x0d361d1f1ca4c6c2 # initialize rs2
sh3add x6, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x0a30be280a7dfa4e # initialize rs1
li x24, 0xe48da07807caaf3c # initialize rs2
sh3add x12, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x020aca6837ffde52 # initialize rs1
li x25, 0x77296c8bfa47e778 # initialize rs2
sh3add x27, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0xe29f7e8d513e1955 # initialize rs1
li x26, 0x526d6fec519a6088 # initialize rs2
sh3add x9, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0x4ee6c25d70119df3 # initialize rs1
li x27, 0x08ced1c3283f87be # initialize rs2
sh3add x18, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xb5dfaf1a11cd8d64 # initialize rs1
li x28, 0xfb2a528badfcddfc # initialize rs2
sh3add x16, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0xbdbf2a5b208939ea # initialize rs1
li x29, 0xaa45b2e6ff3c3fbe # initialize rs2
sh3add x1, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0x104842010a16a73c # initialize rs1
li x30, 0x3789be30a85130bd # initialize rs2
sh3add x3, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0xfd70b5a6acb1072d # initialize rs1
li x31, 0x27d1aebe2b8d0c80 # initialize rs2
sh3add x7, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0xc217db7bd6d608be # initialize rs1
li x28, 0x20a261924bc5ab54 # initialize rs2
sh3add x0, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0xa7a03b1073192db4 # initialize rs1
li x1, 0xb96dc57419cf3eb1 # initialize rs2
sh3add x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xff25c833a105580b # initialize rs1
li x21, 0x962645172f888524 # initialize rs2
sh3add x2, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x03e53d85e9e9cd62 # initialize rs1
li x17, 0x592b2996f4151530 # initialize rs2
sh3add x3, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x4e2379b3c84d8eaa # initialize rs1
li x15, 0xb4c12ed01e63ff1a # initialize rs2
sh3add x4, x23, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x55e66ccb8a8ba9fb # initialize rs1
li x16, 0x55a2d415d5886621 # initialize rs2
sh3add x5, x27, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x3fb3aa0de368089d # initialize rs1
li x21, 0x41034219103a00e2 # initialize rs2
sh3add x6, x10, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x67499910528f7a4a # initialize rs1
li x17, 0x198c5cef849dd04f # initialize rs2
sh3add x7, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xb530306d94c5c815 # initialize rs1
li x7, 0x1750aaf8c5839f1c # initialize rs2
sh3add x8, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0xd5d9c4a6e8f21c68 # initialize rs1
li x18, 0x443714a1814aca0c # initialize rs2
sh3add x9, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0xf5744b6b0859a3c0 # initialize rs1
li x14, 0xc0e0c1ed1cc198f2 # initialize rs2
sh3add x10, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x9e2e23e6e8a28877 # initialize rs1
li x23, 0xee932876c8ccecfc # initialize rs2
sh3add x11, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x7d77ce24c486420a # initialize rs1
li x14, 0x7049446de5111740 # initialize rs2
sh3add x12, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x7ebf80278c104201 # initialize rs1
li x10, 0x63d5ca6f94f2b1b7 # initialize rs2
sh3add x13, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x4b3b375d471c3625 # initialize rs1
li x25, 0x5e470c92c72bf927 # initialize rs2
sh3add x14, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xda4fb7afdf9c1cbd # initialize rs1
li x5, 0x1084c0ed123c36b7 # initialize rs2
sh3add x15, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xe129e8e9ed4b6dbf # initialize rs1
li x21, 0x4faf20fc8ab95c19 # initialize rs2
sh3add x16, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x9d2b20b6d1a0b54d # initialize rs1
li x7, 0x0741c7e45a8ee3e9 # initialize rs2
sh3add x17, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xc8f43c3b35eacd85 # initialize rs1
li x14, 0xb1e2c124518b8c75 # initialize rs2
sh3add x18, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0xfbbe01a887e1fafb # initialize rs1
li x14, 0x6469cd1570ed9e61 # initialize rs2
sh3add x19, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0xd5325eb7ffd4241f # initialize rs1
li x18, 0xf86d76d18acaee93 # initialize rs2
sh3add x20, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0xa44998f6eee9474d # initialize rs1
li x29, 0x4b58634b7908efdb # initialize rs2
sh3add x21, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0xd8ebeceb45966b77 # initialize rs1
li x30, 0x45ae4d87cc7bdc77 # initialize rs2
sh3add x22, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x527cd47c6c003f17 # initialize rs1
li x10, 0xf83d1714df464999 # initialize rs2
sh3add x23, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0xa14ccbcff9414135 # initialize rs1
li x2, 0xa7d7ff26532e91eb # initialize rs2
sh3add x24, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x2d2f9b015eb4ca12 # initialize rs1
li x10, 0x3d918eb2f6c55220 # initialize rs2
sh3add x25, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x6f27a3567b2072c1 # initialize rs1
li x6, 0xd8d71ca9553d0400 # initialize rs2
sh3add x26, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x14, 0x1558e504b5a8d7aa # initialize rs1
li x19, 0x9b1ec3ec30eaf5c5 # initialize rs2
sh3add x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0xdbfea040da9152e2 # initialize rs1
li x22, 0xbb4f1c2286374865 # initialize rs2
sh3add x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0x18b0ab473d5bff94 # initialize rs1
li x29, 0x3a33d4f5377998a2 # initialize rs2
sh3add x29, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x541de6b6288be173 # initialize rs1
li x14, 0x9af1f3154a85cd35 # initialize rs2
sh3add x30, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xe0a8e44e428e0919 # initialize rs1
li x27, 0x9fa603c54d1c6408 # initialize rs2
sh3add x31, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x7, 0xf04a39ae99bbecaa # initialize rs2
sh3add x3, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x24, 0xdc541861027bf27d # initialize rs2
sh3add x27, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x28, 0x65c03cb6ed4f3103 # initialize rs2
sh3add x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x8, 0xaf1f385eea9bad37 # initialize rs2
sh3add x11, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
li x8, 0x746aef9e3a75e619 # initialize rs2
sh3add x25, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x3, 0x4bc80a96a7e4ce73 # initialize rs2
sh3add x20, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x21, 0x89ced43e7e56e914 # initialize rs2
sh3add x19, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x20, 0x45dc63be950b9a6f # initialize rs2
sh3add x30, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
li x14, 0x6107778aa677e13c # initialize rs2
sh3add x15, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x73ff7379727d1126 # initialize rs2
sh3add x17, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xb21313fd296dd6be # initialize rs2
sh3add x5, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x24, 0xbb50c26e5eda0962 # initialize rs2
sh3add x25, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x20, 0x6f9a6359e09c4067 # initialize rs2
sh3add x2, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0xc2522b1635942eaf # initialize rs2
sh3add x27, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x25, 0x0e436bc27a4fac6d # initialize rs2
sh3add x8, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x3, 0x2e22bc161499f3b2 # initialize rs2
sh3add x13, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x2f98d30dc1a3ed8c # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh3add x24, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0xbf45d88b8d3b5539 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add x31, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x5a4f1273eb87d491 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sh3add x25, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xaf816c9a468aa2a5 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh3add x28, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x33ccd71399fe6c41 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sh3add x24, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x6, 0xcca4fe9ae2a393bf # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sh3add x5, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0xcc00212dea4b8a57 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add x14, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x264d42510686de84 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sh3add x24, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x30, 0x7db26b61c7ef083d # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh3add x23, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0x76c242b0ac3aa37c # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh3add x22, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0xb7fa1e94ba000039 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x16, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x9, 0x5144afe3a588a3c4 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh3add x8, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x7ff1e796227131c9 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh3add x16, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xb5dc137c7f60db6a # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh3add x24, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x9e79094380654c5b # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh3add x19, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x25, 0x801f11c0c62f0257 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sh3add x30, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh3add x6, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sh3add x2, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sh3add x25, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x9, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sh3add x20, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sh3add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sh3add x30, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh3add x13, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh3add x26, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sh3add x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x24, 0x0000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh3add x31, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh3add x26, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh3add x27, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add x28, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x14, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sh3add x3, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh3add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh3add x7, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh3add x20, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sh3add x8, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sh3add x16, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh3add x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add x19, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sh3add x26, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh3add x31, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sh3add x22, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x30, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x27, 0x0000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh3add x12, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x29, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh3add x3, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x24, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh3add x27, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh3add x29, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x17, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh3add x13, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add x11, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x24, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh3add x26, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sh3add x6, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x15, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh3add x30, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh3add x29, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sh3add x10, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000002 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh3add x25, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh3add x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sh3add x23, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x22, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x28, 0x0000000000000002 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sh3add x27, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh3add x2, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x25, 0x0000000000000002 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add x22, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sh3add x16, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x22, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sh3add x11, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x3, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sh3add x27, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh3add x30, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh3add x28, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sh3add x26, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x16, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh3add x5, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sh3add x15, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sh3add x5, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
sh3add x12, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sh3add x28, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
sh3add x27, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x23, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh3add x24, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sh3add x25, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add x23, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x12, 0x8000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh3add x19, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x3, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh3add x25, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sh3add x29, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x30, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sh3add x24, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x28, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh3add x6, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x15, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sh3add x24, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sh3add x9, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh3add x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh3add x24, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sh3add x1, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sh3add x5, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
sh3add x6, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x2, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x20, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
sh3add x19, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x24, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sh3add x7, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh3add x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sh3add x27, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x6, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sh3add x29, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sh3add x5, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh3add x18, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh3add x16, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh3add x8, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sh3add x25, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sh3add x19, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh3add x28, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
sh3add x2, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
sh3add x11, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x7fffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x14, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x7fffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sh3add x10, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sh3add x11, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sh3add x31, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh3add x28, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sh3add x6, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
sh3add x2, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sh3add x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add x30, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh3add x31, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sh3add x13, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sh3add x6, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh3add x31, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sh3add x7, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
sh3add x30, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x16, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh3add x27, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sh3add x26, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add x21, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sh3add x26, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x31, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sh3add x7, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x25, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sh3add x20, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sh3add x24, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sh3add x20, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x14, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sh3add x22, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sh3add x9, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sh3add x3, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh3add x27, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sh3add x18, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sh3add x28, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh3add x17, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xffffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x12, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x13, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sh3add x18, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh3add x2, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sh3add x2, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x16, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
sh3add x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sh3add x2, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x15, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
sh3add x9, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x6, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sh3add x22, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
sh3add x1, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sh3add x8, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh3add x30, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh3add x23, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh3add x25, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sh3add x21, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sh3add x18, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh3add x18, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x9, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x23, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sh3add x22, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sh3add x5, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh3add x17, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sh3add x9, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sh3add x12, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sh3add x13, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh3add x10, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sh3add x14, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sh3add x13, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sh3add x30, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sh3add x5, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh3add x9, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh3add x2, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sh3add x23, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sh3add x20, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x7, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sh3add x2, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sh3add x1, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sh3add x5, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sh3add x8, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sh3add x7, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh3add x26, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sh3add x27, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sh3add x13, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh3add x19, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh3add x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sh3add x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sh3add x25, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh3add x26, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sh3add x30, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sh3add x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x14, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh3add x23, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh3add x8, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh3add x19, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh3add x6, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh3add x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x5, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sh3add x19, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x24, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh3add x20, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh3add x1, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh3add x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x18, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sh3add x24, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sh3add x30, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh3add x26, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh3add x18, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh3add x26, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x8, 0x5555555555555555 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sh3add x26, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x5555555555555555 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x26, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
sh3add x22, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh3add x1, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x27, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sh3add x13, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x13, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh3add x26, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x18, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sh3add x3, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sh3add x29, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x5, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh3add x27, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh3add x7, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
sh3add x10, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh3add x22, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh3add x13, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh3add x5, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sh3add x10, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh3add x19, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x00000000ffffffff # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh3add x20, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x00000000ffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x19, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x24, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh3add x14, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x30, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sh3add x24, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x27, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sh3add x23, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh3add x28, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sh3add x3, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
sh3add x15, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sh3add x7, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x8, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh3add x19, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sh3add x13, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sh3add x30, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh3add x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
sh3add x23, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sh3add x9, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sh3add x27, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x3, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sh3add x15, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sh3add x16, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh3add x18, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x16, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sh3add x2, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x9, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh3add x27, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x12, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sh3add x7, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh3add x20, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sh3add x22, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sh3add x19, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sh3add x12, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh3add x22, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh3add x21, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh3add x29, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
sh3add x24, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000100000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh3add x20, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x21, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0x0000000100000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
sh3add x12, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sh3add x11, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sh3add x28, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x29, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sh3add x27, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x27, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sh3add x16, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x15, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sh3add x16, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x1, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh3add x6, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh3add x22, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh3add x13, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x18, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh3add x11, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh3add x25, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh3add x29, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh3add x11, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh3add x17, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sh3add x26, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh3add x27, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x20, 0x0000000100000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh3add x13, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sh3add x18, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sh3add x15, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x9, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh3add x28, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sh3add x15, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc07969e780db6fd3 # initialize rs1
li x0, 0xee5875f5c927eb6a # initialize rs2
sh3add x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x33068c937676e365 # initialize rs1
li x1, 0xb8c6908b87fc655c # initialize rs2
sh3add x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x32f45158ba6ff6ac # initialize rs1
li x2, 0x8303ff91758e491c # initialize rs2
sh3add x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x25613a8a3ab78581 # initialize rs1
li x3, 0xc93275c07cab46cf # initialize rs2
sh3add x19, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7622098bec6578ce # initialize rs1
li x4, 0x91c2e61deb5b1a9a # initialize rs2
sh3add x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6fa18aa0641b6fd1 # initialize rs1
li x5, 0xca5c3850261dd12a # initialize rs2
sh3add x23, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbd3efb0ff384c907 # initialize rs1
li x6, 0x795b3c3fdcf89d24 # initialize rs2
sh3add x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x342cd9222e2237c5 # initialize rs1
li x7, 0xf81c7073391c9598 # initialize rs2
sh3add x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x21de351a5f5be61d # initialize rs1
li x8, 0xa3417579929c0827 # initialize rs2
sh3add x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9007f5cf7f19218b # initialize rs1
li x9, 0xeada1e6cee043262 # initialize rs2
sh3add x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7b6a26c158114422 # initialize rs1
li x10, 0x1957edb84f36dfab # initialize rs2
sh3add x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1f79086510b9fb38 # initialize rs1
li x11, 0xa4b0dc4665c09bcb # initialize rs2
sh3add x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xeb16980a8fd4ab20 # initialize rs1
li x12, 0x0bf6bf8080441e08 # initialize rs2
sh3add x15, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2ad68de18e006aed # initialize rs1
li x13, 0x243f11585e9966f4 # initialize rs2
sh3add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1c4ddb761a4b69c6 # initialize rs1
li x14, 0xc262fa50ce202bc8 # initialize rs2
sh3add x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc40fb6c71804e88b # initialize rs1
li x15, 0xe0ba9ca378193a3d # initialize rs2
sh3add x11, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6b58b649d72800c5 # initialize rs1
li x16, 0x3b0bba998b3f9e93 # initialize rs2
sh3add x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1edb9ca9350ff304 # initialize rs1
li x17, 0x596057a10af24e40 # initialize rs2
sh3add x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7274690cbcac70c2 # initialize rs1
li x18, 0x764f102600d2290d # initialize rs2
sh3add x15, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xac28e94d2e7b0bbb # initialize rs1
li x19, 0xc1f8882a414a1f7e # initialize rs2
sh3add x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf123dcd4360b8857 # initialize rs1
li x20, 0x22a664823920dada # initialize rs2
sh3add x3, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7fa406e63439c412 # initialize rs1
li x21, 0x20b03e47106724f5 # initialize rs2
sh3add x9, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xe050d84830a81d53 # initialize rs1
li x22, 0x7d32525738cdc7a5 # initialize rs2
sh3add x15, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xeb4d866468b3643f # initialize rs1
li x23, 0xbafd2c2c1a2fefb2 # initialize rs2
sh3add x20, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x21b3d831c7e6419e # initialize rs1
li x24, 0x57dbba3019b2e523 # initialize rs2
sh3add x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1d2f2deb8f23a4b8 # initialize rs1
li x25, 0xab343e2de3ee1a3c # initialize rs2
sh3add x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x7f5494306c3b618f # initialize rs1
li x26, 0x6a9c1facfcad8d54 # initialize rs2
sh3add x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb880017712a40831 # initialize rs1
li x27, 0xcc67941e496bda6b # initialize rs2
sh3add x21, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x30f0871f0fbc6706 # initialize rs1
li x28, 0x82f30bc21bfd0a8c # initialize rs2
sh3add x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xabc1ef01092f1730 # initialize rs1
li x29, 0x8cc4dc2cb23d1167 # initialize rs2
sh3add x26, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa8cc32b9969dee5f # initialize rs1
li x30, 0xf78e19d456cd31cc # initialize rs2
sh3add x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x0f24971711eace7b # initialize rs1
li x31, 0xb5bc0ef83d5bde49 # initialize rs2
sh3add x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb3c48a7e4963165d # initialize rs1
li x10, 0x83a2677aa7044ac7 # initialize rs2
sh3add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7beee038d6471e9b # initialize rs1
li x28, 0x571dcd2c544e7f68 # initialize rs2
sh3add x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x59ab302b3178a571 # initialize rs1
li x14, 0x0e841a47d6ee6894 # initialize rs2
sh3add x2, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x98ed5c96a351e37e # initialize rs1
li x20, 0xbac187c4c7a29b98 # initialize rs2
sh3add x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe537d246d1fd6cfd # initialize rs1
li x19, 0x0ee125e966f447fc # initialize rs2
sh3add x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe1e7e37c717ce0a8 # initialize rs1
li x28, 0xeb1457c946b324bd # initialize rs2
sh3add x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe927a3c4e7e50f7c # initialize rs1
li x4, 0xcda5bc4b8b54b148 # initialize rs2
sh3add x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xac8872c089ffb1bb # initialize rs1
li x12, 0x1431f0eb502882c3 # initialize rs2
sh3add x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7ac739eba6021d1b # initialize rs1
li x10, 0x947b67148a78e4bb # initialize rs2
sh3add x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf6a4c591680d97b5 # initialize rs1
li x10, 0xda62d7ebb8f60022 # initialize rs2
sh3add x9, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc99370eab323d59e # initialize rs1
li x8, 0xe64ccd562322ef9f # initialize rs2
sh3add x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xc4e65c4f65bdacd4 # initialize rs1
li x7, 0xe10d0f3298bacb89 # initialize rs2
sh3add x11, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfe55717a9593f524 # initialize rs1
li x8, 0xb6689d9bdff50849 # initialize rs2
sh3add x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0d1c9afb6baf07b8 # initialize rs1
li x21, 0x56920ea7e2dc2bd9 # initialize rs2
sh3add x13, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x29fb9d09f0bbf512 # initialize rs1
li x27, 0xd8d5f0d96bce1053 # initialize rs2
sh3add x14, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7c7ad7d4bc3db685 # initialize rs1
li x3, 0x2932759bb34ff8cc # initialize rs2
sh3add x15, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x35614a801630b127 # initialize rs1
li x13, 0x7f043bbb15654fc4 # initialize rs2
sh3add x16, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9809709cd3c49cfb # initialize rs1
li x24, 0x57cefe7601d9bcc2 # initialize rs2
sh3add x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xffe46a79f2c330b5 # initialize rs1
li x25, 0xd069f667d2442647 # initialize rs2
sh3add x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x51dbf6a0063cf6ea # initialize rs1
li x16, 0x42a8e347917457dd # initialize rs2
sh3add x19, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x86e799927e6517b5 # initialize rs1
li x18, 0x3e6bb25cbfb36a29 # initialize rs2
sh3add x20, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x656203c339c2fb64 # initialize rs1
li x13, 0x8a66e8e9ea40b920 # initialize rs2
sh3add x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x82f10ab925d7e639 # initialize rs1
li x24, 0x9108019368fe0ab6 # initialize rs2
sh3add x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2f758cf309f0dfe5 # initialize rs1
li x25, 0xe95f3a6f2cc30063 # initialize rs2
sh3add x23, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xfec092cb8a31139b # initialize rs1
li x26, 0xbb7c1c8b452902a9 # initialize rs2
sh3add x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8baf7c3f7a9eb83b # initialize rs1
li x10, 0x920431db17e1f412 # initialize rs2
sh3add x25, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x46b392f2901c989a # initialize rs1
li x11, 0x90bf23e6a5867cbe # initialize rs2
sh3add x26, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1dc34b79a3d93185 # initialize rs1
li x23, 0x666221b9d5a48612 # initialize rs2
sh3add x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa1a513afd470fade # initialize rs1
li x27, 0x9920199221f0aa7e # initialize rs2
sh3add x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6f42ae1838e04e86 # initialize rs1
li x2, 0xeb5784ae104d341a # initialize rs2
sh3add x29, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4ed6c98e9b0cf8c5 # initialize rs1
li x25, 0x6cc4473eb3dd40ce # initialize rs2
sh3add x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x820e6669ab838eeb # initialize rs1
li x5, 0x4893c7919c461ce6 # initialize rs2
sh3add x31, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x15, 0xd2da956d5c387f1e # initialize rs1
li x0, 0x4f908353c11b7a46 # initialize rs2
sh3add x0, x15, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x15, 0x941df8daf7a0b3a4 # initialize rs1
li x1, 0x7d5a6f5b49318a9a # initialize rs2
sh3add x1, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x21533ce9de9e62f3 # initialize rs1
li x2, 0x14d27371ca2969e3 # initialize rs2
sh3add x2, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x475057c6ff5c15b8 # initialize rs1
li x3, 0x38c9ef7be06eea42 # initialize rs2
sh3add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x379c4c0cb36b907c # initialize rs1
li x4, 0x3da950939bd3c233 # initialize rs2
sh3add x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x7d53e15b07e1cfca # initialize rs1
li x5, 0x779fd344dcf6ff57 # initialize rs2
sh3add x5, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x27c313d801716379 # initialize rs1
li x6, 0x69391f8ee342f2f9 # initialize rs2
sh3add x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xb62f0428eaf03169 # initialize rs1
li x7, 0x28330ae322c6c38d # initialize rs2
sh3add x7, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0xcf99f7e52b9bef3d # initialize rs1
li x8, 0x4e4cff8633c524df # initialize rs2
sh3add x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x17, 0x8ba7b107372e7fb4 # initialize rs1
li x9, 0xc7155c4c676ef26a # initialize rs2
sh3add x9, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x7, 0xbdea7ff132343d7c # initialize rs1
li x10, 0x22d98035109dbe14 # initialize rs2
sh3add x10, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0xcde495df282c3b2a # initialize rs1
li x11, 0xef3ec1b6c68f8b08 # initialize rs2
sh3add x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x10, 0xaaba27157aedf250 # initialize rs1
li x12, 0x54ab51d1b9e585eb # initialize rs2
sh3add x12, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x2c49dd5d25b828c3 # initialize rs1
li x13, 0xaf42a81b90170988 # initialize rs2
sh3add x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x2, 0xaa2926c7743f2e6f # initialize rs1
li x14, 0xc8ad1e99cb7d5727 # initialize rs2
sh3add x14, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x20e6fac88cf59147 # initialize rs1
li x15, 0xea2fa287e679f441 # initialize rs2
sh3add x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x478a18b0f42399d8 # initialize rs1
li x16, 0x49f983c7c0814979 # initialize rs2
sh3add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x31, 0xbc5e798ccc50e29e # initialize rs1
li x17, 0x5dc1cb5063acc956 # initialize rs2
sh3add x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x27, 0xabc9d4bff9d975a3 # initialize rs1
li x18, 0xd6540194c49833c9 # initialize rs2
sh3add x18, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0xaac3d7880469ab17 # initialize rs1
li x19, 0xc88c6552bf954cf5 # initialize rs2
sh3add x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x9, 0x896af7adeca78574 # initialize rs1
li x20, 0xe6ec4ebd51aeb224 # initialize rs2
sh3add x20, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x19, 0x117c29f7c7b7ec18 # initialize rs1
li x21, 0xdd6597a25fa1d331 # initialize rs2
sh3add x21, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x1, 0x57f96cf06aae806e # initialize rs1
li x22, 0x5d19a20324b7b191 # initialize rs2
sh3add x22, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x74b694a0873406c8 # initialize rs1
li x23, 0x28787850b9cde513 # initialize rs2
sh3add x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x23, 0xb0b5b2ce9a0bd0d2 # initialize rs1
li x24, 0xe7c5756e062c5382 # initialize rs2
sh3add x24, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0x663086e20ad10e0e # initialize rs1
li x25, 0xfb377f9965220acf # initialize rs2
sh3add x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0xa1d0181b974dd418 # initialize rs1
li x26, 0x49f5c39dbcb0ddc9 # initialize rs2
sh3add x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0xf6af70baaad22bce # initialize rs1
li x27, 0x6e830e1274d2d22b # initialize rs2
sh3add x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x2, 0xb4db33aad7b0cde2 # initialize rs1
li x28, 0x2f9de484e3b6911e # initialize rs2
sh3add x28, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x19, 0xaccc42d94fe4283b # initialize rs1
li x29, 0xef190c15f3824063 # initialize rs2
sh3add x29, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x7, 0xf986858cec2aafb3 # initialize rs1
li x30, 0x50357ccd59f2afa6 # initialize rs2
sh3add x30, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0x29f92ec3ca8875ce # initialize rs1
li x31, 0xc48a959cbc9c9c37 # initialize rs2
sh3add x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x92591c867610efe8 # initialize rs1
li x0, 0x6ff1786fbcb9a276 # initialize rs2
sh3add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xeb82e38ffab511a0 # initialize rs1
li x1, 0xac231aae75e02388 # initialize rs2
sh3add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0b7d867f0ee2b9aa # initialize rs1
li x2, 0xe0e215eb8f7ff07a # initialize rs2
sh3add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xca14b8e0209221c0 # initialize rs1
li x3, 0x6ef853af73ae14fe # initialize rs2
sh3add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x983a89238b34de74 # initialize rs1
li x4, 0xac7995e72a863454 # initialize rs2
sh3add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xabdf5c0c4d551224 # initialize rs1
li x5, 0x2276edf9169e86a4 # initialize rs2
sh3add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x91de58f2616d366f # initialize rs1
li x6, 0x919ab7e5aa304868 # initialize rs2
sh3add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6d10a59d641456ce # initialize rs1
li x7, 0x90dc033cf5813594 # initialize rs2
sh3add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3078eb6264f846e0 # initialize rs1
li x8, 0x62f1ddc5e0d78281 # initialize rs2
sh3add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa96e2e9f083d5748 # initialize rs1
li x9, 0x490431ce81f32ac3 # initialize rs2
sh3add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc44dfeda9f6c1df0 # initialize rs1
li x10, 0x6be29b7886b0b907 # initialize rs2
sh3add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9d6c219dbce6f4a2 # initialize rs1
li x11, 0x316a5b369b0edc6e # initialize rs2
sh3add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xad2052581403f402 # initialize rs1
li x12, 0x427a40e393c6489e # initialize rs2
sh3add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x40ad3e8aad7f4af8 # initialize rs1
li x13, 0x575b9387261be985 # initialize rs2
sh3add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x18f8b0d21bd3b0aa # initialize rs1
li x14, 0x55df485a3a6b35de # initialize rs2
sh3add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5c31d4d321b191f8 # initialize rs1
li x15, 0xf075706bfd372890 # initialize rs2
sh3add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x40594bed6b3211e4 # initialize rs1
li x16, 0x565b4839ad0a4a46 # initialize rs2
sh3add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xec9b20cae628a382 # initialize rs1
li x17, 0xac83088c20f9d654 # initialize rs2
sh3add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x40abae1cad3cc391 # initialize rs1
li x18, 0xfb3767a60793415b # initialize rs2
sh3add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x386969f3eb0c2221 # initialize rs1
li x19, 0x377ecbae60be0b76 # initialize rs2
sh3add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6fb0e9816bde2e8a # initialize rs1
li x20, 0xdabee6f8e87d1ee7 # initialize rs2
sh3add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xecc32b2ff7609dbd # initialize rs1
li x21, 0xb0c3058c56eab7b1 # initialize rs2
sh3add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x341ccd707fbcb5b6 # initialize rs1
li x22, 0x74874b828556cf52 # initialize rs2
sh3add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd10bf767852cb40e # initialize rs1
li x23, 0xde021c21ddbc3fd0 # initialize rs2
sh3add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x1a743859c3f7344b # initialize rs1
li x24, 0x32817b9f145a7829 # initialize rs2
sh3add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc1bc73d63d32de58 # initialize rs1
li x25, 0xc54a4df085e6d49e # initialize rs2
sh3add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x58cab999ddf41102 # initialize rs1
li x26, 0x6c427f3fc13cc4ed # initialize rs2
sh3add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x44f5902e2c4fea8c # initialize rs1
li x27, 0x7436b9fd582ccadf # initialize rs2
sh3add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe8099292b2c84eb7 # initialize rs1
li x28, 0x79b6e1be16be852c # initialize rs2
sh3add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7dc07d500e5a6b4c # initialize rs1
li x29, 0x6eaa183a67f1791c # initialize rs2
sh3add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2fc6a7f60084dbaf # initialize rs1
li x30, 0x93f551d573b15150 # initialize rs2
sh3add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5213cf0d4ed1b751 # initialize rs1
li x31, 0x7561f215aa2dafb5 # initialize rs2
sh3add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x9, x29 # perform first operation
sh3add x24, x5, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x12, x17 # perform first operation
sh3add x30, x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x11, x15 # perform first operation
sh3add x10, x22, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x23, x21 # perform first operation
sh3add x23, x29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x28, x19 # perform first operation
sh3add x30, x15, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x16, x5 # perform first operation
sh3add x24, x15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x15, x5 # perform first operation
sh3add x14, x22, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x14, x12 # perform first operation
sh3add x10, x21, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x24, x25 # perform first operation
sh3add x20, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x8, x1 # perform first operation
sh3add x8, x20, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x14, x2 # perform first operation
sh3add x2, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x15, x27 # perform first operation
sh3add x26, x29, x10 # perform second (triggering) operation

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
