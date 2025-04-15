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

    

// ******************
// Tests from: WALLY-COV-aes64ds.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xf312f7028288fee5 # initialize rs1
li x9, 0xdf870748a7c8aa1e # initialize rs2
aes64ds x12, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x400dde557f3d4eab # initialize rs1
li x25, 0x33d1b2d1f50c0c09 # initialize rs2
aes64ds x30, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x891939a58383c156 # initialize rs1
li x12, 0x047bee6425a849c7 # initialize rs2
aes64ds x22, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x4233e4b32c832802 # initialize rs1
li x6, 0xada912fc0ddf722c # initialize rs2
aes64ds x28, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf6cb79a3b9cfd9a5 # initialize rs1
li x26, 0xfab96e5504dd88cb # initialize rs2
aes64ds x12, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7fe3634a0cf227ec # initialize rs1
li x12, 0x29e9d0cee4741974 # initialize rs2
aes64ds x30, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd595e19955b3fedc # initialize rs1
li x29, 0x24b3dda707e16ec0 # initialize rs2
aes64ds x26, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbe89d65f9da97d4b # initialize rs1
li x22, 0x846eeeeac26ec40d # initialize rs2
aes64ds x17, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3161a120249d5405 # initialize rs1
li x5, 0x81a6b1254926c57b # initialize rs2
aes64ds x24, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb5c5a7eca475a962 # initialize rs1
li x17, 0xfee12acb74f31c15 # initialize rs2
aes64ds x5, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x47667e912862c3f9 # initialize rs1
li x14, 0x345ba556ed25eebd # initialize rs2
aes64ds x26, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5e4afad2d9a3d9b9 # initialize rs1
li x9, 0x72b4000313d93de9 # initialize rs2
aes64ds x7, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa8e0e07f4de371ed # initialize rs1
li x3, 0x9cf2a50b4a1b1a07 # initialize rs2
aes64ds x11, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa96495c519f99c41 # initialize rs1
li x28, 0x42bf9154e86782e6 # initialize rs2
aes64ds x18, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x37bbb997526333ad # initialize rs1
li x12, 0x14cf7ff9a7329079 # initialize rs2
aes64ds x23, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8a167189d5c73e43 # initialize rs1
li x23, 0x79ee70632517ea1a # initialize rs2
aes64ds x7, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb1b169dec493be7f # initialize rs1
li x7, 0x1ac6581f0103de71 # initialize rs2
aes64ds x30, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7f243d9ff41c71a8 # initialize rs1
li x14, 0x93a5f070c18b8f03 # initialize rs2
aes64ds x22, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x34c384cbc02cbe37 # initialize rs1
li x23, 0xb224c9f0aaf93bbc # initialize rs2
aes64ds x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa151401c57f8279a # initialize rs1
li x27, 0xdc9bf262d08546bd # initialize rs2
aes64ds x20, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x2fe401b11f26bc1c # initialize rs1
li x26, 0x650750fcd77877c8 # initialize rs2
aes64ds x2, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xfef18f1c0282ae5b # initialize rs1
li x28, 0x43c12129a3422da4 # initialize rs2
aes64ds x10, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9959bf23c70c2e85 # initialize rs1
li x18, 0x7029472b97fbed7f # initialize rs2
aes64ds x8, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x0a10017030164eca # initialize rs1
li x15, 0x160bc9207bc2bbb0 # initialize rs2
aes64ds x29, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xff466f95fbcfa289 # initialize rs1
li x1, 0x58342f1f3a7c2c0e # initialize rs2
aes64ds x11, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7951dbf41a7404cc # initialize rs1
li x10, 0x22ad74b259b00b55 # initialize rs2
aes64ds x1, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x15ed8f3e25a2b359 # initialize rs1
li x15, 0x4ad833a76d3fda5f # initialize rs2
aes64ds x24, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xef2b2986a130a70b # initialize rs1
li x16, 0x9a4a95f863284b12 # initialize rs2
aes64ds x20, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9f945c19c390f098 # initialize rs1
li x16, 0x92c189402706d5e3 # initialize rs2
aes64ds x8, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x761cf07438bf4ffb # initialize rs1
li x14, 0x18780e690adfc339 # initialize rs2
aes64ds x23, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb7793b014fb58782 # initialize rs1
li x26, 0x89ba9c1647448a3b # initialize rs2
aes64ds x14, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe638673f0e83309d # initialize rs1
li x7, 0x5bbf5bd9acfa7d3d # initialize rs2
aes64ds x26, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0xb2f49219eb16cef4 # initialize rs1
li x0, 0xb02c6f975f58d89c # initialize rs2
aes64ds x27, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0x2d5a9092023df488 # initialize rs1
li x1, 0x5ac02ba24ff88223 # initialize rs2
aes64ds x8, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xd119b28200b8394b # initialize rs1
li x2, 0x1172ff2fc15b145f # initialize rs2
aes64ds x13, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x8e226bb6b7f22c9a # initialize rs1
li x3, 0xa64d25f66943ed23 # initialize rs2
aes64ds x2, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x446be449b1f1a348 # initialize rs1
li x4, 0xa644904607fb03c7 # initialize rs2
aes64ds x13, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xc0c44654c9071cd5 # initialize rs1
li x5, 0x1c2dc46b94b024b4 # initialize rs2
aes64ds x25, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x7b2f110ac39fd131 # initialize rs1
li x6, 0x88a9dd4f1338ba23 # initialize rs2
aes64ds x8, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x5febee1245d126b1 # initialize rs1
li x7, 0x1529f4a7dbc9598d # initialize rs2
aes64ds x3, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xc0f1e57c921a137b # initialize rs1
li x8, 0x03b6d10864fa8979 # initialize rs2
aes64ds x1, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x1821a9c60146ced3 # initialize rs1
li x9, 0x0232b634952152bf # initialize rs2
aes64ds x10, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0xe8084259753efe2e # initialize rs1
li x10, 0x631c2455f42f2352 # initialize rs2
aes64ds x21, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0xe339cefd42c9a111 # initialize rs1
li x11, 0x6c5efcb5f2fd9d48 # initialize rs2
aes64ds x16, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0xe054e1da78670267 # initialize rs1
li x12, 0x84b3b293fac190d9 # initialize rs2
aes64ds x16, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x524aa87be42309eb # initialize rs1
li x13, 0x3cc9ff2697bfbdac # initialize rs2
aes64ds x3, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x23, 0xcf79000f02dc0985 # initialize rs1
li x14, 0x268593479919dc07 # initialize rs2
aes64ds x15, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x0853924f50648d00 # initialize rs1
li x15, 0xce967f12b057181d # initialize rs2
aes64ds x10, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0xd58c0e25f2850ef5 # initialize rs1
li x16, 0x18223cec714b29ec # initialize rs2
aes64ds x12, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0x00d7c20ac93355c3 # initialize rs1
li x17, 0xf9032f692e875a67 # initialize rs2
aes64ds x22, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0x912c3c7276b7e9aa # initialize rs1
li x18, 0x69963f4b6bd85fab # initialize rs2
aes64ds x29, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x5, 0x46affdebd9ddc8cd # initialize rs1
li x19, 0x4ea5534e0a6f063f # initialize rs2
aes64ds x14, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x362a8eb0c4e5e5e7 # initialize rs1
li x20, 0x70f2d8f84705c9c4 # initialize rs2
aes64ds x31, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x966d4da0e320d714 # initialize rs1
li x21, 0x2e7e49c6b9988be3 # initialize rs2
aes64ds x2, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x3cbda456ba1ec32b # initialize rs1
li x22, 0x3d80c0625a5e8320 # initialize rs2
aes64ds x26, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x1, 0x31844ceb497975c2 # initialize rs1
li x23, 0xcd7f721aaf608ce5 # initialize rs2
aes64ds x3, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0xbf09ebc85627d151 # initialize rs1
li x24, 0x296cb5f239f1199e # initialize rs2
aes64ds x6, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0xd12d7d8b28c375eb # initialize rs1
li x25, 0xd09ebc144af253a7 # initialize rs2
aes64ds x14, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0x69481ff5f37b736a # initialize rs1
li x26, 0xe2ab3440c1b36344 # initialize rs2
aes64ds x12, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x4ae9f068113eb191 # initialize rs1
li x27, 0xf6f2968a27cb66fc # initialize rs2
aes64ds x23, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0x7e4e70da68ecb141 # initialize rs1
li x28, 0x6a0f53a40779efb7 # initialize rs2
aes64ds x3, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0xdaf37b75d095002e # initialize rs1
li x29, 0x2c8da0874247bfdf # initialize rs2
aes64ds x3, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0x96142e7b05f191d7 # initialize rs1
li x30, 0x043f7a46ff0e1a4e # initialize rs2
aes64ds x29, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0x14b19e96af6d4d74 # initialize rs1
li x31, 0x6672eecc0ac86bee # initialize rs2
aes64ds x12, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0xa6238b1fddc37449 # initialize rs1
li x8, 0x509285be21eb65a7 # initialize rs2
aes64ds x0, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x6a318531286cf5ac # initialize rs1
li x24, 0x5febbd7f43718976 # initialize rs2
aes64ds x1, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0xe4bbc106df5aa684 # initialize rs1
li x7, 0xc288fa35b3804cb6 # initialize rs2
aes64ds x2, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0xddf5f538af972570 # initialize rs1
li x31, 0x47cebfa04670d2e0 # initialize rs2
aes64ds x3, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x6144b4ec8d985241 # initialize rs1
li x28, 0x9f3ac1cb681d1392 # initialize rs2
aes64ds x4, x22, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x1810582aceac5342 # initialize rs1
li x26, 0x1acd457399ef5017 # initialize rs2
aes64ds x5, x10, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x7af93e0a85499f69 # initialize rs1
li x23, 0x858c231314aa05c1 # initialize rs2
aes64ds x6, x13, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xd80d8379224087b3 # initialize rs1
li x29, 0x2d6fe14cbd556c51 # initialize rs2
aes64ds x7, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x58614d9dd15b9f70 # initialize rs1
li x18, 0x41274e7e658dee41 # initialize rs2
aes64ds x8, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x3fa7b57f8a65f7d8 # initialize rs1
li x27, 0xb012f86782484563 # initialize rs2
aes64ds x9, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xd081d119cc0036e2 # initialize rs1
li x6, 0xf9da0f57984b718a # initialize rs2
aes64ds x10, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0xf39f5c4b99d35983 # initialize rs1
li x1, 0x55ca70f646cca962 # initialize rs2
aes64ds x11, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xbef55ef6963b871f # initialize rs1
li x2, 0x0426674c96d82df9 # initialize rs2
aes64ds x12, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0xe2b6072c8cfa2703 # initialize rs1
li x25, 0xaafa9a89a67fe248 # initialize rs2
aes64ds x13, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x30, 0x655c617b2f766bc7 # initialize rs1
li x2, 0x486c421727c55794 # initialize rs2
aes64ds x14, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x9a30b8b22f8a2e07 # initialize rs1
li x11, 0x747d51ba8f9aad29 # initialize rs2
aes64ds x15, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0xb6f86784f8cd9688 # initialize rs1
li x3, 0x2fc92938a919c36a # initialize rs2
aes64ds x16, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0x3f3202847cd9fbf5 # initialize rs1
li x2, 0x9a66e40d050be557 # initialize rs2
aes64ds x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x22, 0xc4b4369a17cf8301 # initialize rs1
li x17, 0x6c729551679ad146 # initialize rs2
aes64ds x18, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x794d8617505d349c # initialize rs1
li x30, 0x9cfbc284165c5d48 # initialize rs2
aes64ds x19, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x89249f3407f2c03c # initialize rs1
li x21, 0x19952260edb4ff54 # initialize rs2
aes64ds x20, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0x2a06a2b86a3c4d83 # initialize rs1
li x11, 0xe293891338fa3f77 # initialize rs2
aes64ds x21, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0xc15b6dfa499fd341 # initialize rs1
li x11, 0xb70958e85a5cd7e7 # initialize rs2
aes64ds x22, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0xa17bf9ca31a7fb88 # initialize rs1
li x16, 0xf157df620d0b47d3 # initialize rs2
aes64ds x23, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0xbf7618846e1f4998 # initialize rs1
li x5, 0xd32ae9f6615709c7 # initialize rs2
aes64ds x24, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x6b76de949a7378ee # initialize rs1
li x15, 0x512cfbf3b742b65f # initialize rs2
aes64ds x25, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x2f6916ea7cec2374 # initialize rs1
li x20, 0x6f40f8bab3b05e82 # initialize rs2
aes64ds x26, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xa99c8b14125c5d24 # initialize rs1
li x16, 0xeda284e9b2737c16 # initialize rs2
aes64ds x27, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x5a479ca92ff2fe9b # initialize rs1
li x29, 0xd7b8da59a593f00a # initialize rs2
aes64ds x28, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x14, 0x47d5779a487422a5 # initialize rs1
li x6, 0x27fe81d3ef174c26 # initialize rs2
aes64ds x29, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0xdb073156149d89e8 # initialize rs1
li x15, 0x41784fb6196ea470 # initialize rs2
aes64ds x30, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x3f964b2b15a28d5c # initialize rs1
li x25, 0x60e462221d230e0a # initialize rs2
aes64ds x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x1, 0x2d05a5a2c2fddae1 # initialize rs2
aes64ds x30, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x20, 0xa6a5f60022ff0011 # initialize rs2
aes64ds x28, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rs1
li x10, 0xba73bded99649eb0 # initialize rs2
aes64ds x16, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs1
li x26, 0x50ae4b04bb9d89be # initialize rs2
aes64ds x21, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x29, 0x8000000000000001 # initialize rs1
li x2, 0x520778f82a52098f # initialize rs2
aes64ds x28, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
li x7, 0xb85b4403cce74cad # initialize rs2
aes64ds x14, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x22, 0x4603845347ce6e20 # initialize rs2
aes64ds x10, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x22, 0x2f4e8ae505e5617c # initialize rs2
aes64ds x27, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x14, 0xdc55fa8ec061500b # initialize rs2
aes64ds x20, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xb03f661444611a1d # initialize rs2
aes64ds x16, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xe8b797a304336ff3 # initialize rs2
aes64ds x21, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x1, 0x5555555555555555 # initialize rs1
li x21, 0xa252b35574c6042a # initialize rs2
aes64ds x27, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x9, 0x34350243872651d3 # initialize rs2
aes64ds x27, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x31, 0xc8b746dc7a102d56 # initialize rs2
aes64ds x20, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x29, 0x0000000100000000 # initialize rs1
li x12, 0x062189efc185f124 # initialize rs2
aes64ds x10, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x8, 0xa539c39c0507e4f5 # initialize rs2
aes64ds x6, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x16, 0xe826b2e42734b3cd # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
aes64ds x17, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0xccdf83cc8cb25595 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
aes64ds x17, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x28, 0x98a407213879ef08 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
aes64ds x18, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0x7e691504a13c9974 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
aes64ds x19, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x143e8b2ab988be68 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
aes64ds x27, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x815f9b02cfcef030 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
aes64ds x20, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0x7180c110662c1cd7 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
aes64ds x14, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x2, 0xa88f88d06d7c3795 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
aes64ds x28, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0x0c6543b3ce2c32f9 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ds x18, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x22, 0x8dddd70f0ceca67c # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x19, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0x89a103d7fd5c37f6 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x2, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x18, 0x9c80673671654516 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
aes64ds x31, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0x94317b7210c9e51c # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
aes64ds x13, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0x09a4a0fd05ff0530 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
aes64ds x19, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0xd03cf6802867f502 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
aes64ds x1, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0xcfc150b8acd08bfb # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
aes64ds x21, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
aes64ds x19, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
aes64ds x13, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
aes64ds x1, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x3, 0x0000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64ds x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x7, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
aes64ds x24, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
aes64ds x10, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
aes64ds x3, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
aes64ds x23, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
aes64ds x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000000000000 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x15, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x26, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x7, 0x0000000000000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
aes64ds x22, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
aes64ds x18, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
aes64ds x18, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x23, 0x0000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
aes64ds x25, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x18, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ds x30, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64ds x31, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
aes64ds x12, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
aes64ds x19, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x29, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64ds x1, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x5, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
aes64ds x8, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64ds x16, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
aes64ds x20, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64ds x14, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64ds x8, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x13, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x2, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x10, 0x0000000000000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
aes64ds x14, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
aes64ds x13, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
aes64ds x27, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x24, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64ds x3, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
aes64ds x8, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x5, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64ds x7, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
aes64ds x25, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
aes64ds x25, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
aes64ds x19, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x18, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
aes64ds x5, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
aes64ds x12, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
aes64ds x26, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
aes64ds x22, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
aes64ds x17, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x29, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x7, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64ds x19, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
aes64ds x3, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
aes64ds x22, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x23, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64ds x11, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x23, 0x0000000000000002 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
aes64ds x19, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x27, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
aes64ds x17, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x10, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
aes64ds x16, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x2, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
aes64ds x13, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
aes64ds x17, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x18, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64ds x3, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
aes64ds x22, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
aes64ds x20, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
aes64ds x19, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
aes64ds x22, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x10, 0x8000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x23, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x18, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x7, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
aes64ds x28, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
aes64ds x29, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
aes64ds x2, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
aes64ds x9, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64ds x20, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x8, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
aes64ds x20, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x8, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
aes64ds x31, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64ds x11, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x8, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
aes64ds x16, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
aes64ds x10, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64ds x27, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64ds x29, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
aes64ds x3, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
aes64ds x14, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x5, 0x8000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x10, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x7, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
aes64ds x13, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
aes64ds x29, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
aes64ds x29, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
aes64ds x25, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
aes64ds x9, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
aes64ds x16, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x1, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
aes64ds x29, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x3, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
aes64ds x21, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
aes64ds x21, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x18, 0x7fffffffffffffff # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
aes64ds x13, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
aes64ds x7, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x7fffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
aes64ds x21, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
aes64ds x18, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
aes64ds x2, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0x7fffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x13, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7fffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
aes64ds x7, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
aes64ds x16, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
aes64ds x16, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
aes64ds x1, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ds x20, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x12, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
aes64ds x31, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
aes64ds x23, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
aes64ds x17, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x31, 0x7ffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64ds x22, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
aes64ds x15, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
aes64ds x12, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64ds x18, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64ds x21, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
aes64ds x24, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x22, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7ffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x12, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64ds x11, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
aes64ds x19, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
aes64ds x18, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x16, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
aes64ds x21, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x24, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
aes64ds x22, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x2, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
aes64ds x22, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x15, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
aes64ds x21, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x31, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
aes64ds x29, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x17, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
aes64ds x7, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x21, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
aes64ds x6, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0xffffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64ds x23, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64ds x8, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
aes64ds x8, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
aes64ds x7, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0xffffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x1, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xffffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x20, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x8, 0xffffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
aes64ds x3, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
aes64ds x24, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ds x28, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
aes64ds x14, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x25, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
aes64ds x28, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
aes64ds x18, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x14, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
aes64ds x7, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64ds x31, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0xfffffffffffffffe # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
aes64ds x12, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
aes64ds x20, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0xfffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
aes64ds x20, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
aes64ds x5, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0xfffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
aes64ds x15, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
aes64ds x22, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x25, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x5, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xfffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x29, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0xfffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
aes64ds x22, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x27, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64ds x1, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
aes64ds x13, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64ds x30, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x11, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64ds x9, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
aes64ds x28, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
aes64ds x7, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
aes64ds x17, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
aes64ds x19, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64ds x16, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
aes64ds x9, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
aes64ds x22, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
aes64ds x9, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
aes64ds x24, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x7, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x7, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
aes64ds x27, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
aes64ds x3, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
aes64ds x16, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
aes64ds x5, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64ds x10, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
aes64ds x9, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
aes64ds x18, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
aes64ds x2, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
aes64ds x3, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
aes64ds x6, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
aes64ds x18, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
aes64ds x28, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64ds x11, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
aes64ds x13, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x6, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x8, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64ds x3, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64ds x11, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
aes64ds x11, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64ds x12, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
aes64ds x7, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x2, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
aes64ds x27, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
aes64ds x17, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
aes64ds x13, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64ds x15, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x20, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
aes64ds x1, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
aes64ds x12, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x27, 0x5555555555555555 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64ds x23, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
aes64ds x22, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
aes64ds x23, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x5, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x23, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
aes64ds x17, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64ds x2, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
aes64ds x22, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64ds x2, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64ds x16, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64ds x11, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x15, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
aes64ds x17, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
aes64ds x24, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x2, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
aes64ds x14, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
aes64ds x9, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
aes64ds x23, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
aes64ds x9, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
aes64ds x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
aes64ds x30, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x13, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x15, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x26, 0x00000000ffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
aes64ds x29, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
aes64ds x24, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
aes64ds x22, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x2, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
aes64ds x24, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x9, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64ds x2, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
aes64ds x9, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64ds x25, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
aes64ds x16, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x21, 0x00000000fffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
aes64ds x11, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
aes64ds x7, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
aes64ds x2, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
aes64ds x15, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
aes64ds x3, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
aes64ds x12, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x14, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000fffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x30, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x11, 0x00000000fffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
aes64ds x16, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64ds x9, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64ds x30, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
aes64ds x9, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x16, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64ds x21, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
aes64ds x2, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
aes64ds x14, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x27, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
aes64ds x13, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x10, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64ds x2, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64ds x27, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
aes64ds x2, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
aes64ds x21, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64ds x31, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64ds x2, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000100000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x11, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x21, 0x0000000100000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
aes64ds x3, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64ds x25, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
aes64ds x10, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
aes64ds x9, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x10, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
aes64ds x18, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x6, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64ds x29, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x5, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
aes64ds x24, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x22, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
aes64ds x24, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64ds x17, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x0000000100000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
aes64ds x6, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
aes64ds x22, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
aes64ds x28, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
aes64ds x29, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
aes64ds x17, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000001 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
aes64ds x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000100000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x24, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64ds x29, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
aes64ds x3, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ds x31, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x3, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
aes64ds x25, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ds x21, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xe002fd00205ee55f # initialize rs1
li x0, 0xe0be2281cbbb3c06 # initialize rs2
aes64ds x10, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xbbb57af01c4f8013 # initialize rs1
li x1, 0x90ca9083dbaf35e6 # initialize rs2
aes64ds x28, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8ee351c830266bec # initialize rs1
li x2, 0x73030f411a68ac0d # initialize rs2
aes64ds x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x51ee50177056be37 # initialize rs1
li x3, 0x2b3908688812991b # initialize rs2
aes64ds x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22485bf88c82277f # initialize rs1
li x4, 0x9706a14ada80d538 # initialize rs2
aes64ds x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xefac719dcb7fdb81 # initialize rs1
li x5, 0xd4888723c2b326b8 # initialize rs2
aes64ds x24, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x482174ab4ca6676f # initialize rs1
li x6, 0x3944ec0248cd2c39 # initialize rs2
aes64ds x16, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb53195414bd0c3cb # initialize rs1
li x7, 0x7127dcc98bee60bb # initialize rs2
aes64ds x6, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xed7aaf0d6a583a84 # initialize rs1
li x8, 0x8eeb7a2b78dbdb13 # initialize rs2
aes64ds x28, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xcfda3ad3265bb993 # initialize rs1
li x9, 0x0bf07e76763b0ced # initialize rs2
aes64ds x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x329382ad1f9a0b85 # initialize rs1
li x10, 0x5be8475672423044 # initialize rs2
aes64ds x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x19befe4fa8b267be # initialize rs1
li x11, 0xc3d4e71285cf324e # initialize rs2
aes64ds x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa192267c60cc94eb # initialize rs1
li x12, 0xe0958d0913e25c10 # initialize rs2
aes64ds x22, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x82bc342eac811856 # initialize rs1
li x13, 0xcc450454b3064599 # initialize rs2
aes64ds x20, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf2b62d6a5dbd01ca # initialize rs1
li x14, 0xe6f5930a273f51d1 # initialize rs2
aes64ds x12, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x4562aed3a8130864 # initialize rs1
li x15, 0x065c23ee4c78373c # initialize rs2
aes64ds x23, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xce043b15fcea2a52 # initialize rs1
li x16, 0x6dd270ceb26324b5 # initialize rs2
aes64ds x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x952faee2ac107293 # initialize rs1
li x17, 0xdc35838777f6dcc8 # initialize rs2
aes64ds x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfaa6fa9c7114254f # initialize rs1
li x18, 0x3365b61121b6bb77 # initialize rs2
aes64ds x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x4cbfd941a312d218 # initialize rs1
li x19, 0x25ec03ec907069ad # initialize rs2
aes64ds x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x5eb53eb14e84179e # initialize rs1
li x20, 0x88c8e5407035ee8f # initialize rs2
aes64ds x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x00e8f3c4e3b1a9e9 # initialize rs1
li x21, 0x4df002bef261532e # initialize rs2
aes64ds x31, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9b25b27b0e45066f # initialize rs1
li x22, 0x3817a71a69414714 # initialize rs2
aes64ds x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x557e9217ca0b7f18 # initialize rs1
li x23, 0x6b78f2f54d4561f9 # initialize rs2
aes64ds x13, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xae57aacc82964157 # initialize rs1
li x24, 0xc7c38fec8980d6ba # initialize rs2
aes64ds x14, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x9ec3e804a80ce9c8 # initialize rs1
li x25, 0xc8177c2b05f9e6ab # initialize rs2
aes64ds x12, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xed86a913cc8df907 # initialize rs1
li x26, 0xf36867b7f40a4cfb # initialize rs2
aes64ds x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb89a153abcef9748 # initialize rs1
li x27, 0x5fa426d4d34b06e8 # initialize rs2
aes64ds x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7395032aea0ead41 # initialize rs1
li x28, 0x5be0c6c3209c5264 # initialize rs2
aes64ds x12, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x613de9ed35565d09 # initialize rs1
li x29, 0x65afef8e2b8cbd49 # initialize rs2
aes64ds x26, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf2d4647af96dd4ab # initialize rs1
li x30, 0x4a96a0da843bb51d # initialize rs2
aes64ds x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xf28d38fc86fbabb2 # initialize rs1
li x31, 0x5be6f57d5c3b6be3 # initialize rs2
aes64ds x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa0668e3f99649a55 # initialize rs1
li x3, 0x32b477a5e71b87a7 # initialize rs2
aes64ds x0, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd7280dfef83d2a5c # initialize rs1
li x22, 0x6bae9d7d0e34a44f # initialize rs2
aes64ds x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb922591d6890d062 # initialize rs1
li x30, 0x59a083bff791f2fc # initialize rs2
aes64ds x2, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x85d48dcc370981f7 # initialize rs1
li x28, 0x1b67b976e181af1f # initialize rs2
aes64ds x3, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x446e8fe6696e61d1 # initialize rs1
li x21, 0x9de40a78d2d0b223 # initialize rs2
aes64ds x4, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1523ce76fd1e2c10 # initialize rs1
li x28, 0xcca3f24ce9c457b4 # initialize rs2
aes64ds x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xaecc46481d94e6a1 # initialize rs1
li x21, 0x573d5a4733e398ff # initialize rs2
aes64ds x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2dc48e16e2d6e6bf # initialize rs1
li x22, 0x342592761695888a # initialize rs2
aes64ds x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x5e99c072b5afc22d # initialize rs1
li x28, 0xc00339c69cd30393 # initialize rs2
aes64ds x8, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa974ae4cacfeb758 # initialize rs1
li x7, 0xf5a0a6c843a64923 # initialize rs2
aes64ds x9, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5be3040f5f6c369c # initialize rs1
li x5, 0x3e96778c5158e3c2 # initialize rs2
aes64ds x10, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3c717e9d8427b2c3 # initialize rs1
li x29, 0x6323e8c99e86af03 # initialize rs2
aes64ds x11, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf001f1ded6966b53 # initialize rs1
li x8, 0x27ef490de71a950f # initialize rs2
aes64ds x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xeabffd6ed97f1794 # initialize rs1
li x30, 0x658e30a6d560fadc # initialize rs2
aes64ds x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf5ae25dcf34867b7 # initialize rs1
li x6, 0xfb627907644f98e9 # initialize rs2
aes64ds x14, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1abcb1828d929d21 # initialize rs1
li x25, 0xab28615792aeefaf # initialize rs2
aes64ds x15, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa4d67f43c33d8c26 # initialize rs1
li x17, 0x4b3f7e11243a6f0e # initialize rs2
aes64ds x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x18e3af0388eb6702 # initialize rs1
li x17, 0xa759ddd16acc167c # initialize rs2
aes64ds x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x94d7a7c2813a85a6 # initialize rs1
li x25, 0xae4c30918bb30b3b # initialize rs2
aes64ds x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2e73c821c1e86b05 # initialize rs1
li x1, 0xa96e56f592fb4e2e # initialize rs2
aes64ds x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3f43a976e19ec958 # initialize rs1
li x27, 0x308055260f802444 # initialize rs2
aes64ds x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x74b52fd881e18387 # initialize rs1
li x6, 0xb8ae2f724ae9b4ad # initialize rs2
aes64ds x21, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe7640fd485ae075f # initialize rs1
li x29, 0x438ec965eca09082 # initialize rs2
aes64ds x22, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x315c62526f6345ce # initialize rs1
li x8, 0x21c266872407630a # initialize rs2
aes64ds x23, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xfee42cd21b36ee65 # initialize rs1
li x5, 0x8a765af1d3e0637f # initialize rs2
aes64ds x24, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x199fad4f7ea7ef12 # initialize rs1
li x30, 0x78cb624dd663cd52 # initialize rs2
aes64ds x25, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x26269c810519e5a4 # initialize rs1
li x2, 0x5ca606bac7a058a8 # initialize rs2
aes64ds x26, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8104dd9b25e8dbef # initialize rs1
li x8, 0x6f677c95c84ef7db # initialize rs2
aes64ds x27, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4b64de0ca5325041 # initialize rs1
li x29, 0x49cba9c33e6fed8b # initialize rs2
aes64ds x28, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x329b52c89807c19d # initialize rs1
li x21, 0x3f8e5419788ff45c # initialize rs2
aes64ds x29, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x669aa62e0885c8ef # initialize rs1
li x6, 0x8133cd9734695943 # initialize rs2
aes64ds x30, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x40425a78f67d8043 # initialize rs1
li x14, 0xb7fd99ef88ab0160 # initialize rs2
aes64ds x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x18, 0x2521e29b539ff269 # initialize rs1
li x0, 0x73620a3651097c05 # initialize rs2
aes64ds x0, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x19, 0x087737c53a2b0900 # initialize rs1
li x1, 0x8ab6de046986994f # initialize rs2
aes64ds x1, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0xf1ab18211f502173 # initialize rs1
li x2, 0x752aaf493de4cb09 # initialize rs2
aes64ds x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x1, 0xd849ec5eaa596d3c # initialize rs1
li x3, 0x47aa32d6ec80a5ee # initialize rs2
aes64ds x3, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0xd267ccfee6a6d6d4 # initialize rs1
li x4, 0xabd8f61d1772d211 # initialize rs2
aes64ds x4, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xf8e27ddc5cc32233 # initialize rs1
li x5, 0x0cf17d7059b498a6 # initialize rs2
aes64ds x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x6e379698d4f571b0 # initialize rs1
li x6, 0x82e2366885c5d7e3 # initialize rs2
aes64ds x6, x30, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xcee247014667e1f3 # initialize rs1
li x7, 0xc3d181a0a2e59d20 # initialize rs2
aes64ds x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0x4a66927b8ac7cca3 # initialize rs1
li x8, 0xd9cab1a571de7cc5 # initialize rs2
aes64ds x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0x07256b7665e38fb0 # initialize rs1
li x9, 0xf92715f2884edffb # initialize rs2
aes64ds x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0x421041854a4e5271 # initialize rs1
li x10, 0x99f50b4e3873dd08 # initialize rs2
aes64ds x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0x031e584870ae92b0 # initialize rs1
li x11, 0xc3d9f59c1f03a51b # initialize rs2
aes64ds x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x22, 0x2bb6bbde8c157c87 # initialize rs1
li x12, 0xc4e4ef62fb84a2a0 # initialize rs2
aes64ds x12, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x27, 0x9d47bc0502822379 # initialize rs1
li x13, 0x7910e2663fbc6626 # initialize rs2
aes64ds x13, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0xec6e9acc5c14a593 # initialize rs1
li x14, 0x4c22c0d25f82bce9 # initialize rs2
aes64ds x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0x4a8525708146146a # initialize rs1
li x15, 0x44acfc3aa4585aa1 # initialize rs2
aes64ds x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0x2777236284f02505 # initialize rs1
li x16, 0x7568e953ee13fc31 # initialize rs2
aes64ds x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x15, 0x765b540df9e06ba7 # initialize rs1
li x17, 0xb0790631d3a6f8a0 # initialize rs2
aes64ds x17, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0xfe580223228e2ad5 # initialize rs1
li x18, 0x4311d1a04a31f85c # initialize rs2
aes64ds x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x25, 0x5fbb5acb53b32d0c # initialize rs1
li x19, 0xd5f4c4744c97559c # initialize rs2
aes64ds x19, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xf93f01c5ae723f18 # initialize rs1
li x20, 0x81a228a40b2bb251 # initialize rs2
aes64ds x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x8dbc00ac6edae6f1 # initialize rs1
li x21, 0xc2ac90358b4a2efe # initialize rs2
aes64ds x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0xa8a4b2b94ba618fd # initialize rs1
li x22, 0x1cc59f1bc0c38fd3 # initialize rs2
aes64ds x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x22, 0xf4348331de03d850 # initialize rs1
li x23, 0x35552ffdd333841e # initialize rs2
aes64ds x23, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x8, 0x9baf10e9a3c025b7 # initialize rs1
li x24, 0xaa4b42dc65bd9a49 # initialize rs2
aes64ds x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x18, 0x2dc38765a45412e0 # initialize rs1
li x25, 0x6aedddc27218af09 # initialize rs2
aes64ds x25, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x2, 0x623f38e8da3f65df # initialize rs1
li x26, 0x1b98849a81837178 # initialize rs2
aes64ds x26, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x9, 0xca7291594786600f # initialize rs1
li x27, 0xf6fa2f970cc6f65e # initialize rs2
aes64ds x27, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x14, 0x6e4a1fabf6750f4f # initialize rs1
li x28, 0x66f848f9679ccad4 # initialize rs2
aes64ds x28, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x5, 0x21288725edbb5710 # initialize rs1
li x29, 0x88bbc2f376d24770 # initialize rs2
aes64ds x29, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x20, 0x3ba9435faa69e569 # initialize rs1
li x30, 0x8493f03973227650 # initialize rs2
aes64ds x30, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x287f98c23d4ebca8 # initialize rs1
li x31, 0x5e001f422d982358 # initialize rs2
aes64ds x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x92b82d4ed8348bc5 # initialize rs1
li x0, 0x99629d347d4f9c08 # initialize rs2
aes64ds x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6ec2c5272b12e45b # initialize rs1
li x1, 0xb7f04cd54d872cf4 # initialize rs2
aes64ds x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x576abc26b475599d # initialize rs1
li x2, 0xeeb350d1b3eed7be # initialize rs2
aes64ds x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3edc17d7487fe974 # initialize rs1
li x3, 0xfe8f81cbc2b09a09 # initialize rs2
aes64ds x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x27de304f728589ca # initialize rs1
li x4, 0x1b0ac2810a86aa35 # initialize rs2
aes64ds x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9d55541fb51aafb4 # initialize rs1
li x5, 0xfbaa645d62629530 # initialize rs2
aes64ds x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x66bff0e6cc5d49b4 # initialize rs1
li x6, 0xf7146a3a089da695 # initialize rs2
aes64ds x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x69c384657679102f # initialize rs1
li x7, 0x555d2be4dd4d96cb # initialize rs2
aes64ds x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0fe67294806655f6 # initialize rs1
li x8, 0x299550ee0d877f25 # initialize rs2
aes64ds x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x2e2fa0421479ca2d # initialize rs1
li x9, 0x94cac2fb709a1035 # initialize rs2
aes64ds x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc8411d10531639ee # initialize rs1
li x10, 0x6f7771290ee1da8e # initialize rs2
aes64ds x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x32b12cfb8c2f459e # initialize rs1
li x11, 0xc7dda95410f8d0df # initialize rs2
aes64ds x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xddbbdafa0c9b026f # initialize rs1
li x12, 0xd769ca26144f4367 # initialize rs2
aes64ds x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1a700507e276bd4c # initialize rs1
li x13, 0xb18fbc5bb0c7f2ba # initialize rs2
aes64ds x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbbff12113a4e2738 # initialize rs1
li x14, 0x93598d06f91f3a41 # initialize rs2
aes64ds x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3fa96cc189bc5566 # initialize rs1
li x15, 0x668a1e7daf858298 # initialize rs2
aes64ds x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf588227c4865a415 # initialize rs1
li x16, 0xb18b0b79f6dc49b5 # initialize rs2
aes64ds x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe0f184889a470be6 # initialize rs1
li x17, 0xc3a8f75eb3448eba # initialize rs2
aes64ds x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x092acdfb0282cfdb # initialize rs1
li x18, 0x616305c3b513719a # initialize rs2
aes64ds x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xf4a26f0bf1285ad9 # initialize rs1
li x19, 0xe6317567be5906b1 # initialize rs2
aes64ds x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xcab9668e4e76bab6 # initialize rs1
li x20, 0x668133ce9bc2d574 # initialize rs2
aes64ds x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc6928c0ff91f3050 # initialize rs1
li x21, 0x813a778c4b600689 # initialize rs2
aes64ds x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc1db574ba8ee8026 # initialize rs1
li x22, 0xd77a7a5d94312733 # initialize rs2
aes64ds x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x66dc8558c6714535 # initialize rs1
li x23, 0xc1cda6fdff0f4c67 # initialize rs2
aes64ds x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd9c3858549010be2 # initialize rs1
li x24, 0x414d259f12acbe79 # initialize rs2
aes64ds x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x71fc8af2479472f2 # initialize rs1
li x25, 0x2755baa20e1e31cb # initialize rs2
aes64ds x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2982f816426593c9 # initialize rs1
li x26, 0x250d864c5052a89e # initialize rs2
aes64ds x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5c909254ca86b6eb # initialize rs1
li x27, 0xe1695ca71b05630a # initialize rs2
aes64ds x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x64fd78aec3a93dff # initialize rs1
li x28, 0xddfacc9c39607ae6 # initialize rs2
aes64ds x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1315c0e93633eb1a # initialize rs1
li x29, 0x70a7ec84a71d7b49 # initialize rs2
aes64ds x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x4eeebe6fecb5c088 # initialize rs1
li x30, 0xed9d9142d59bfb68 # initialize rs2
aes64ds x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1310e36abb5f6f56 # initialize rs1
li x31, 0x516a6bb3cbb9daf3 # initialize rs2
aes64ds x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x13, x17 # perform first operation
aes64ds x11, x1, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x21, x22 # perform first operation
aes64ds x3, x19, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x26, x31 # perform first operation
aes64ds x20, x12, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x21, x19 # perform first operation
aes64ds x19, x13, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x14, x11 # perform first operation
aes64ds x14, x17, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x1, x18 # perform first operation
aes64ds x17, x14, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x8, x31 # perform first operation
aes64ds x5, x26, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x30, x19 # perform first operation
aes64ds x31, x14, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x31, x14 # perform first operation
aes64ds x5, x20, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x8, x19 # perform first operation
aes64ds x8, x14, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x11, x24 # perform first operation
aes64ds x24, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x18, x20 # perform first operation
aes64ds x10, x31, x16 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x16, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
aes64ds x1, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_sbox = 1
li x8, 0x0101010101010101 # initialize rs1
li x16, 0x0101010101010101 # initialize rs2
aes64ds x27, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cp_sbox = 2
li x23, 0x0202020202020202 # initialize rs1
li x27, 0x0202020202020202 # initialize rs2
aes64ds x17, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cp_sbox = 3
li x1, 0x0303030303030303 # initialize rs1
li x26, 0x0303030303030303 # initialize rs2
aes64ds x23, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cp_sbox = 4
li x22, 0x0404040404040404 # initialize rs1
li x15, 0x0404040404040404 # initialize rs2
aes64ds x16, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 528)

# Testcase cp_sbox = 5
li x23, 0x0505050505050505 # initialize rs1
li x24, 0x0505050505050505 # initialize rs2
aes64ds x22, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_sbox = 6
li x8, 0x0606060606060606 # initialize rs1
li x7, 0x0606060606060606 # initialize rs2
aes64ds x20, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cp_sbox = 7
li x3, 0x0707070707070707 # initialize rs1
li x27, 0x0707070707070707 # initialize rs2
aes64ds x13, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_sbox = 8
li x14, 0x0808080808080808 # initialize rs1
li x9, 0x0808080808080808 # initialize rs2
aes64ds x24, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 560)

# Testcase cp_sbox = 9
li x11, 0x0909090909090909 # initialize rs1
li x3, 0x0909090909090909 # initialize rs2
aes64ds x28, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 568)

# Testcase cp_sbox = 10
li x16, 0x0a0a0a0a0a0a0a0a # initialize rs1
li x19, 0x0a0a0a0a0a0a0a0a # initialize rs2
aes64ds x3, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cp_sbox = 11
li x28, 0x0b0b0b0b0b0b0b0b # initialize rs1
li x31, 0x0b0b0b0b0b0b0b0b # initialize rs2
aes64ds x17, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cp_sbox = 12
li x25, 0x0c0c0c0c0c0c0c0c # initialize rs1
li x1, 0x0c0c0c0c0c0c0c0c # initialize rs2
aes64ds x22, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 592)

# Testcase cp_sbox = 13
li x17, 0x0d0d0d0d0d0d0d0d # initialize rs1
li x24, 0x0d0d0d0d0d0d0d0d # initialize rs2
aes64ds x2, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cp_sbox = 14
li x26, 0x0e0e0e0e0e0e0e0e # initialize rs1
li x30, 0x0e0e0e0e0e0e0e0e # initialize rs2
aes64ds x27, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 608)

# Testcase cp_sbox = 15
li x2, 0x0f0f0f0f0f0f0f0f # initialize rs1
li x8, 0x0f0f0f0f0f0f0f0f # initialize rs2
aes64ds x11, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cp_sbox = 16
li x6, 0x1010101010101010 # initialize rs1
li x16, 0x1010101010101010 # initialize rs2
aes64ds x21, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cp_sbox = 17
li x22, 0x1111111111111111 # initialize rs1
li x9, 0x1111111111111111 # initialize rs2
aes64ds x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cp_sbox = 18
li x22, 0x1212121212121212 # initialize rs1
li x23, 0x1212121212121212 # initialize rs2
aes64ds x1, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cp_sbox = 19
li x15, 0x1313131313131313 # initialize rs1
li x28, 0x1313131313131313 # initialize rs2
aes64ds x13, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cp_sbox = 20
li x18, 0x1414141414141414 # initialize rs1
li x2, 0x1414141414141414 # initialize rs2
aes64ds x27, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cp_sbox = 21
li x20, 0x1515151515151515 # initialize rs1
li x17, 0x1515151515151515 # initialize rs2
aes64ds x30, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cp_sbox = 22
li x23, 0x1616161616161616 # initialize rs1
li x17, 0x1616161616161616 # initialize rs2
aes64ds x2, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cp_sbox = 23
li x2, 0x1717171717171717 # initialize rs1
li x7, 0x1717171717171717 # initialize rs2
aes64ds x9, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cp_sbox = 24
li x18, 0x1818181818181818 # initialize rs1
li x3, 0x1818181818181818 # initialize rs2
aes64ds x22, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_sbox = 25
li x12, 0x1919191919191919 # initialize rs1
li x24, 0x1919191919191919 # initialize rs2
aes64ds x13, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cp_sbox = 26
li x12, 0x1a1a1a1a1a1a1a1a # initialize rs1
li x15, 0x1a1a1a1a1a1a1a1a # initialize rs2
aes64ds x23, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 704)

# Testcase cp_sbox = 27
li x17, 0x1b1b1b1b1b1b1b1b # initialize rs1
li x24, 0x1b1b1b1b1b1b1b1b # initialize rs2
aes64ds x19, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cp_sbox = 28
li x17, 0x1c1c1c1c1c1c1c1c # initialize rs1
li x3, 0x1c1c1c1c1c1c1c1c # initialize rs2
aes64ds x6, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cp_sbox = 29
li x7, 0x1d1d1d1d1d1d1d1d # initialize rs1
li x1, 0x1d1d1d1d1d1d1d1d # initialize rs2
aes64ds x13, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cp_sbox = 30
li x30, 0x1e1e1e1e1e1e1e1e # initialize rs1
li x25, 0x1e1e1e1e1e1e1e1e # initialize rs2
aes64ds x13, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 736)

# Testcase cp_sbox = 31
li x8, 0x1f1f1f1f1f1f1f1f # initialize rs1
li x7, 0x1f1f1f1f1f1f1f1f # initialize rs2
aes64ds x11, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cp_sbox = 32
li x16, 0x2020202020202020 # initialize rs1
li x20, 0x2020202020202020 # initialize rs2
aes64ds x7, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 752)

# Testcase cp_sbox = 33
li x6, 0x2121212121212121 # initialize rs1
li x16, 0x2121212121212121 # initialize rs2
aes64ds x17, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cp_sbox = 34
li x16, 0x2222222222222222 # initialize rs1
li x8, 0x2222222222222222 # initialize rs2
aes64ds x3, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cp_sbox = 35
li x15, 0x2323232323232323 # initialize rs1
li x28, 0x2323232323232323 # initialize rs2
aes64ds x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cp_sbox = 36
li x10, 0x2424242424242424 # initialize rs1
li x19, 0x2424242424242424 # initialize rs2
aes64ds x26, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cp_sbox = 37
li x15, 0x2525252525252525 # initialize rs1
li x6, 0x2525252525252525 # initialize rs2
aes64ds x28, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cp_sbox = 38
li x16, 0x2626262626262626 # initialize rs1
li x9, 0x2626262626262626 # initialize rs2
aes64ds x29, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_sbox = 39
li x7, 0x2727272727272727 # initialize rs1
li x20, 0x2727272727272727 # initialize rs2
aes64ds x22, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cp_sbox = 40
li x28, 0x2828282828282828 # initialize rs1
li x27, 0x2828282828282828 # initialize rs2
aes64ds x17, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cp_sbox = 41
li x25, 0x2929292929292929 # initialize rs1
li x11, 0x2929292929292929 # initialize rs2
aes64ds x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cp_sbox = 42
li x19, 0x2a2a2a2a2a2a2a2a # initialize rs1
li x17, 0x2a2a2a2a2a2a2a2a # initialize rs2
aes64ds x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 832)

# Testcase cp_sbox = 43
li x17, 0x2b2b2b2b2b2b2b2b # initialize rs1
li x21, 0x2b2b2b2b2b2b2b2b # initialize rs2
aes64ds x9, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cp_sbox = 44
li x11, 0x2c2c2c2c2c2c2c2c # initialize rs1
li x9, 0x2c2c2c2c2c2c2c2c # initialize rs2
aes64ds x16, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 848)

# Testcase cp_sbox = 45
li x23, 0x2d2d2d2d2d2d2d2d # initialize rs1
li x18, 0x2d2d2d2d2d2d2d2d # initialize rs2
aes64ds x11, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cp_sbox = 46
li x10, 0x2e2e2e2e2e2e2e2e # initialize rs1
li x3, 0x2e2e2e2e2e2e2e2e # initialize rs2
aes64ds x21, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cp_sbox = 47
li x25, 0x2f2f2f2f2f2f2f2f # initialize rs1
li x2, 0x2f2f2f2f2f2f2f2f # initialize rs2
aes64ds x23, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cp_sbox = 48
li x27, 0x3030303030303030 # initialize rs1
li x8, 0x3030303030303030 # initialize rs2
aes64ds x17, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 880)

# Testcase cp_sbox = 49
li x26, 0x3131313131313131 # initialize rs1
li x19, 0x3131313131313131 # initialize rs2
aes64ds x16, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 888)

# Testcase cp_sbox = 50
li x22, 0x3232323232323232 # initialize rs1
li x8, 0x3232323232323232 # initialize rs2
aes64ds x14, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cp_sbox = 51
li x9, 0x3333333333333333 # initialize rs1
li x15, 0x3333333333333333 # initialize rs2
aes64ds x10, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_sbox = 52
li x2, 0x3434343434343434 # initialize rs1
li x7, 0x3434343434343434 # initialize rs2
aes64ds x23, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cp_sbox = 53
li x16, 0x3535353535353535 # initialize rs1
li x25, 0x3535353535353535 # initialize rs2
aes64ds x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cp_sbox = 54
li x29, 0x3636363636363636 # initialize rs1
li x1, 0x3636363636363636 # initialize rs2
aes64ds x30, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 928)

# Testcase cp_sbox = 55
li x22, 0x3737373737373737 # initialize rs1
li x19, 0x3737373737373737 # initialize rs2
aes64ds x23, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

# Testcase cp_sbox = 56
li x25, 0x3838383838383838 # initialize rs1
li x30, 0x3838383838383838 # initialize rs2
aes64ds x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cp_sbox = 57
li x7, 0x3939393939393939 # initialize rs1
li x12, 0x3939393939393939 # initialize rs2
aes64ds x16, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_sbox = 58
li x31, 0x3a3a3a3a3a3a3a3a # initialize rs1
li x7, 0x3a3a3a3a3a3a3a3a # initialize rs2
aes64ds x6, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_sbox = 59
li x3, 0x3b3b3b3b3b3b3b3b # initialize rs1
li x18, 0x3b3b3b3b3b3b3b3b # initialize rs2
aes64ds x10, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cp_sbox = 60
li x17, 0x3c3c3c3c3c3c3c3c # initialize rs1
li x29, 0x3c3c3c3c3c3c3c3c # initialize rs2
aes64ds x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cp_sbox = 61
li x26, 0x3d3d3d3d3d3d3d3d # initialize rs1
li x3, 0x3d3d3d3d3d3d3d3d # initialize rs2
aes64ds x20, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_sbox = 62
li x8, 0x3e3e3e3e3e3e3e3e # initialize rs1
li x20, 0x3e3e3e3e3e3e3e3e # initialize rs2
aes64ds x5, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cp_sbox = 63
li x2, 0x3f3f3f3f3f3f3f3f # initialize rs1
li x9, 0x3f3f3f3f3f3f3f3f # initialize rs2
aes64ds x13, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cp_sbox = 64
li x14, 0x4040404040404040 # initialize rs1
li x11, 0x4040404040404040 # initialize rs2
aes64ds x31, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cp_sbox = 65
li x22, 0x4141414141414141 # initialize rs1
li x15, 0x4141414141414141 # initialize rs2
aes64ds x12, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cp_sbox = 66
li x2, 0x4242424242424242 # initialize rs1
li x18, 0x4242424242424242 # initialize rs2
aes64ds x24, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cp_sbox = 67
li x27, 0x4343434343434343 # initialize rs1
li x6, 0x4343434343434343 # initialize rs2
aes64ds x9, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cp_sbox = 68
li x9, 0x4444444444444444 # initialize rs1
li x17, 0x4444444444444444 # initialize rs2
aes64ds x5, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cp_sbox = 69
li x25, 0x4545454545454545 # initialize rs1
li x12, 0x4545454545454545 # initialize rs2
aes64ds x9, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cp_sbox = 70
li x16, 0x4646464646464646 # initialize rs1
li x10, 0x4646464646464646 # initialize rs2
aes64ds x7, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cp_sbox = 71
li x12, 0x4747474747474747 # initialize rs1
li x17, 0x4747474747474747 # initialize rs2
aes64ds x28, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1064)

# Testcase cp_sbox = 72
li x12, 0x4848484848484848 # initialize rs1
li x9, 0x4848484848484848 # initialize rs2
aes64ds x7, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1072)

# Testcase cp_sbox = 73
li x7, 0x4949494949494949 # initialize rs1
li x11, 0x4949494949494949 # initialize rs2
aes64ds x30, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1080)

# Testcase cp_sbox = 74
li x17, 0x4a4a4a4a4a4a4a4a # initialize rs1
li x20, 0x4a4a4a4a4a4a4a4a # initialize rs2
aes64ds x5, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cp_sbox = 75
li x1, 0x4b4b4b4b4b4b4b4b # initialize rs1
li x18, 0x4b4b4b4b4b4b4b4b # initialize rs2
aes64ds x19, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cp_sbox = 76
li x27, 0x4c4c4c4c4c4c4c4c # initialize rs1
li x18, 0x4c4c4c4c4c4c4c4c # initialize rs2
aes64ds x17, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cp_sbox = 77
li x26, 0x4d4d4d4d4d4d4d4d # initialize rs1
li x16, 0x4d4d4d4d4d4d4d4d # initialize rs2
aes64ds x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cp_sbox = 78
li x2, 0x4e4e4e4e4e4e4e4e # initialize rs1
li x20, 0x4e4e4e4e4e4e4e4e # initialize rs2
aes64ds x7, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1120)

# Testcase cp_sbox = 79
li x10, 0x4f4f4f4f4f4f4f4f # initialize rs1
li x28, 0x4f4f4f4f4f4f4f4f # initialize rs2
aes64ds x24, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cp_sbox = 80
li x22, 0x5050505050505050 # initialize rs1
li x27, 0x5050505050505050 # initialize rs2
aes64ds x28, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cp_sbox = 81
li x16, 0x5151515151515151 # initialize rs1
li x6, 0x5151515151515151 # initialize rs2
aes64ds x29, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1144)

# Testcase cp_sbox = 82
li x6, 0x5252525252525252 # initialize rs1
li x8, 0x5252525252525252 # initialize rs2
aes64ds x1, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1152)

# Testcase cp_sbox = 83
li x15, 0x5353535353535353 # initialize rs1
li x12, 0x5353535353535353 # initialize rs2
aes64ds x14, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cp_sbox = 84
li x10, 0x5454545454545454 # initialize rs1
li x26, 0x5454545454545454 # initialize rs2
aes64ds x24, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cp_sbox = 85
li x26, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
aes64ds x25, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1176)

# Testcase cp_sbox = 86
li x29, 0x5656565656565656 # initialize rs1
li x24, 0x5656565656565656 # initialize rs2
aes64ds x28, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1184)

# Testcase cp_sbox = 87
li x11, 0x5757575757575757 # initialize rs1
li x14, 0x5757575757575757 # initialize rs2
aes64ds x8, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1192)

# Testcase cp_sbox = 88
li x18, 0x5858585858585858 # initialize rs1
li x1, 0x5858585858585858 # initialize rs2
aes64ds x13, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cp_sbox = 89
li x11, 0x5959595959595959 # initialize rs1
li x8, 0x5959595959595959 # initialize rs2
aes64ds x1, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cp_sbox = 90
li x15, 0x5a5a5a5a5a5a5a5a # initialize rs1
li x27, 0x5a5a5a5a5a5a5a5a # initialize rs2
aes64ds x14, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1216)

# Testcase cp_sbox = 91
li x8, 0x5b5b5b5b5b5b5b5b # initialize rs1
li x19, 0x5b5b5b5b5b5b5b5b # initialize rs2
aes64ds x25, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

# Testcase cp_sbox = 92
li x17, 0x5c5c5c5c5c5c5c5c # initialize rs1
li x27, 0x5c5c5c5c5c5c5c5c # initialize rs2
aes64ds x9, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cp_sbox = 93
li x13, 0x5d5d5d5d5d5d5d5d # initialize rs1
li x5, 0x5d5d5d5d5d5d5d5d # initialize rs2
aes64ds x24, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cp_sbox = 94
li x27, 0x5e5e5e5e5e5e5e5e # initialize rs1
li x21, 0x5e5e5e5e5e5e5e5e # initialize rs2
aes64ds x7, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cp_sbox = 95
li x23, 0x5f5f5f5f5f5f5f5f # initialize rs1
li x31, 0x5f5f5f5f5f5f5f5f # initialize rs2
aes64ds x9, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cp_sbox = 96
li x15, 0x6060606060606060 # initialize rs1
li x8, 0x6060606060606060 # initialize rs2
aes64ds x25, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cp_sbox = 97
li x5, 0x6161616161616161 # initialize rs1
li x16, 0x6161616161616161 # initialize rs2
aes64ds x18, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cp_sbox = 98
li x2, 0x6262626262626262 # initialize rs1
li x11, 0x6262626262626262 # initialize rs2
aes64ds x26, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1280)

# Testcase cp_sbox = 99
li x20, 0x6363636363636363 # initialize rs1
li x27, 0x6363636363636363 # initialize rs2
aes64ds x22, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)

# Testcase cp_sbox = 100
li x16, 0x6464646464646464 # initialize rs1
li x7, 0x6464646464646464 # initialize rs2
aes64ds x22, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1296)

# Testcase cp_sbox = 101
li x15, 0x6565656565656565 # initialize rs1
li x7, 0x6565656565656565 # initialize rs2
aes64ds x24, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1304)

# Testcase cp_sbox = 102
li x23, 0x6666666666666666 # initialize rs1
li x24, 0x6666666666666666 # initialize rs2
aes64ds x25, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1312)

# Testcase cp_sbox = 103
li x19, 0x6767676767676767 # initialize rs1
li x12, 0x6767676767676767 # initialize rs2
aes64ds x26, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1320)

# Testcase cp_sbox = 104
li x11, 0x6868686868686868 # initialize rs1
li x31, 0x6868686868686868 # initialize rs2
aes64ds x24, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1328)

# Testcase cp_sbox = 105
li x28, 0x6969696969696969 # initialize rs1
li x31, 0x6969696969696969 # initialize rs2
aes64ds x7, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cp_sbox = 106
li x26, 0x6a6a6a6a6a6a6a6a # initialize rs1
li x1, 0x6a6a6a6a6a6a6a6a # initialize rs2
aes64ds x7, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cp_sbox = 107
li x29, 0x6b6b6b6b6b6b6b6b # initialize rs1
li x10, 0x6b6b6b6b6b6b6b6b # initialize rs2
aes64ds x5, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cp_sbox = 108
li x9, 0x6c6c6c6c6c6c6c6c # initialize rs1
li x5, 0x6c6c6c6c6c6c6c6c # initialize rs2
aes64ds x27, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

# Testcase cp_sbox = 109
li x21, 0x6d6d6d6d6d6d6d6d # initialize rs1
li x6, 0x6d6d6d6d6d6d6d6d # initialize rs2
aes64ds x18, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cp_sbox = 110
li x30, 0x6e6e6e6e6e6e6e6e # initialize rs1
li x7, 0x6e6e6e6e6e6e6e6e # initialize rs2
aes64ds x15, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cp_sbox = 111
li x1, 0x6f6f6f6f6f6f6f6f # initialize rs1
li x6, 0x6f6f6f6f6f6f6f6f # initialize rs2
aes64ds x3, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1384)

# Testcase cp_sbox = 112
li x5, 0x7070707070707070 # initialize rs1
li x18, 0x7070707070707070 # initialize rs2
aes64ds x21, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cp_sbox = 113
li x8, 0x7171717171717171 # initialize rs1
li x3, 0x7171717171717171 # initialize rs2
aes64ds x19, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1400)

# Testcase cp_sbox = 114
li x1, 0x7272727272727272 # initialize rs1
li x25, 0x7272727272727272 # initialize rs2
aes64ds x13, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)

# Testcase cp_sbox = 115
li x25, 0x7373737373737373 # initialize rs1
li x31, 0x7373737373737373 # initialize rs2
aes64ds x8, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1416)

# Testcase cp_sbox = 116
li x23, 0x7474747474747474 # initialize rs1
li x21, 0x7474747474747474 # initialize rs2
aes64ds x28, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cp_sbox = 117
li x16, 0x7575757575757575 # initialize rs1
li x10, 0x7575757575757575 # initialize rs2
aes64ds x18, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1432)

# Testcase cp_sbox = 118
li x18, 0x7676767676767676 # initialize rs1
li x17, 0x7676767676767676 # initialize rs2
aes64ds x26, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cp_sbox = 119
li x28, 0x7777777777777777 # initialize rs1
li x18, 0x7777777777777777 # initialize rs2
aes64ds x6, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1448)

# Testcase cp_sbox = 120
li x18, 0x7878787878787878 # initialize rs1
li x9, 0x7878787878787878 # initialize rs2
aes64ds x8, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cp_sbox = 121
li x29, 0x7979797979797979 # initialize rs1
li x16, 0x7979797979797979 # initialize rs2
aes64ds x19, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cp_sbox = 122
li x12, 0x7a7a7a7a7a7a7a7a # initialize rs1
li x21, 0x7a7a7a7a7a7a7a7a # initialize rs2
aes64ds x22, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cp_sbox = 123
li x5, 0x7b7b7b7b7b7b7b7b # initialize rs1
li x2, 0x7b7b7b7b7b7b7b7b # initialize rs2
aes64ds x18, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

# Testcase cp_sbox = 124
li x12, 0x7c7c7c7c7c7c7c7c # initialize rs1
li x24, 0x7c7c7c7c7c7c7c7c # initialize rs2
aes64ds x6, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cp_sbox = 125
li x14, 0x7d7d7d7d7d7d7d7d # initialize rs1
li x16, 0x7d7d7d7d7d7d7d7d # initialize rs2
aes64ds x23, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1496)

# Testcase cp_sbox = 126
li x29, 0x7e7e7e7e7e7e7e7e # initialize rs1
li x18, 0x7e7e7e7e7e7e7e7e # initialize rs2
aes64ds x14, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1504)

# Testcase cp_sbox = 127
li x3, 0x7f7f7f7f7f7f7f7f # initialize rs1
li x2, 0x7f7f7f7f7f7f7f7f # initialize rs2
aes64ds x16, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1512)

# Testcase cp_sbox = 128
li x6, 0x8080808080808080 # initialize rs1
li x30, 0x8080808080808080 # initialize rs2
aes64ds x9, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

# Testcase cp_sbox = 129
li x3, 0x8181818181818181 # initialize rs1
li x2, 0x8181818181818181 # initialize rs2
aes64ds x6, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1528)

# Testcase cp_sbox = 130
li x18, 0x8282828282828282 # initialize rs1
li x1, 0x8282828282828282 # initialize rs2
aes64ds x10, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1536)

# Testcase cp_sbox = 131
li x19, 0x8383838383838383 # initialize rs1
li x21, 0x8383838383838383 # initialize rs2
aes64ds x30, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1544)

# Testcase cp_sbox = 132
li x31, 0x8484848484848484 # initialize rs1
li x5, 0x8484848484848484 # initialize rs2
aes64ds x13, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1552)

# Testcase cp_sbox = 133
li x7, 0x8585858585858585 # initialize rs1
li x12, 0x8585858585858585 # initialize rs2
aes64ds x17, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1560)

# Testcase cp_sbox = 134
li x28, 0x8686868686868686 # initialize rs1
li x17, 0x8686868686868686 # initialize rs2
aes64ds x22, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1568)

# Testcase cp_sbox = 135
li x23, 0x8787878787878787 # initialize rs1
li x12, 0x8787878787878787 # initialize rs2
aes64ds x5, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cp_sbox = 136
li x17, 0x8888888888888888 # initialize rs1
li x12, 0x8888888888888888 # initialize rs2
aes64ds x5, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1584)

# Testcase cp_sbox = 137
li x17, 0x8989898989898989 # initialize rs1
li x26, 0x8989898989898989 # initialize rs2
aes64ds x21, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1592)

# Testcase cp_sbox = 138
li x16, 0x8a8a8a8a8a8a8a8a # initialize rs1
li x30, 0x8a8a8a8a8a8a8a8a # initialize rs2
aes64ds x25, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cp_sbox = 139
li x28, 0x8b8b8b8b8b8b8b8b # initialize rs1
li x23, 0x8b8b8b8b8b8b8b8b # initialize rs2
aes64ds x22, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1608)

# Testcase cp_sbox = 140
li x7, 0x8c8c8c8c8c8c8c8c # initialize rs1
li x26, 0x8c8c8c8c8c8c8c8c # initialize rs2
aes64ds x19, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1616)

# Testcase cp_sbox = 141
li x30, 0x8d8d8d8d8d8d8d8d # initialize rs1
li x8, 0x8d8d8d8d8d8d8d8d # initialize rs2
aes64ds x5, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cp_sbox = 142
li x2, 0x8e8e8e8e8e8e8e8e # initialize rs1
li x18, 0x8e8e8e8e8e8e8e8e # initialize rs2
aes64ds x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1632)

# Testcase cp_sbox = 143
li x28, 0x8f8f8f8f8f8f8f8f # initialize rs1
li x8, 0x8f8f8f8f8f8f8f8f # initialize rs2
aes64ds x27, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1640)

# Testcase cp_sbox = 144
li x26, 0x9090909090909090 # initialize rs1
li x18, 0x9090909090909090 # initialize rs2
aes64ds x3, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1648)

# Testcase cp_sbox = 145
li x20, 0x9191919191919191 # initialize rs1
li x15, 0x9191919191919191 # initialize rs2
aes64ds x23, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

# Testcase cp_sbox = 146
li x17, 0x9292929292929292 # initialize rs1
li x18, 0x9292929292929292 # initialize rs2
aes64ds x9, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1664)

# Testcase cp_sbox = 147
li x9, 0x9393939393939393 # initialize rs1
li x15, 0x9393939393939393 # initialize rs2
aes64ds x19, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1672)

# Testcase cp_sbox = 148
li x7, 0x9494949494949494 # initialize rs1
li x11, 0x9494949494949494 # initialize rs2
aes64ds x3, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1680)

# Testcase cp_sbox = 149
li x11, 0x9595959595959595 # initialize rs1
li x17, 0x9595959595959595 # initialize rs2
aes64ds x12, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1688)

# Testcase cp_sbox = 150
li x17, 0x9696969696969696 # initialize rs1
li x3, 0x9696969696969696 # initialize rs2
aes64ds x1, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1696)

# Testcase cp_sbox = 151
li x6, 0x9797979797979797 # initialize rs1
li x8, 0x9797979797979797 # initialize rs2
aes64ds x29, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

# Testcase cp_sbox = 152
li x12, 0x9898989898989898 # initialize rs1
li x25, 0x9898989898989898 # initialize rs2
aes64ds x29, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1712)

# Testcase cp_sbox = 153
li x3, 0x9999999999999999 # initialize rs1
li x9, 0x9999999999999999 # initialize rs2
aes64ds x22, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1720)

# Testcase cp_sbox = 154
li x22, 0x9a9a9a9a9a9a9a9a # initialize rs1
li x9, 0x9a9a9a9a9a9a9a9a # initialize rs2
aes64ds x29, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cp_sbox = 155
li x27, 0x9b9b9b9b9b9b9b9b # initialize rs1
li x17, 0x9b9b9b9b9b9b9b9b # initialize rs2
aes64ds x14, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

# Testcase cp_sbox = 156
li x20, 0x9c9c9c9c9c9c9c9c # initialize rs1
li x19, 0x9c9c9c9c9c9c9c9c # initialize rs2
aes64ds x28, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1744)

# Testcase cp_sbox = 157
li x13, 0x9d9d9d9d9d9d9d9d # initialize rs1
li x24, 0x9d9d9d9d9d9d9d9d # initialize rs2
aes64ds x14, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1752)

# Testcase cp_sbox = 158
li x29, 0x9e9e9e9e9e9e9e9e # initialize rs1
li x3, 0x9e9e9e9e9e9e9e9e # initialize rs2
aes64ds x8, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cp_sbox = 159
li x10, 0x9f9f9f9f9f9f9f9f # initialize rs1
li x17, 0x9f9f9f9f9f9f9f9f # initialize rs2
aes64ds x1, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cp_sbox = 160
li x15, 0xa0a0a0a0a0a0a0a0 # initialize rs1
li x20, 0xa0a0a0a0a0a0a0a0 # initialize rs2
aes64ds x26, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1776)

# Testcase cp_sbox = 161
li x23, 0xa1a1a1a1a1a1a1a1 # initialize rs1
li x28, 0xa1a1a1a1a1a1a1a1 # initialize rs2
aes64ds x19, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cp_sbox = 162
li x27, 0xa2a2a2a2a2a2a2a2 # initialize rs1
li x11, 0xa2a2a2a2a2a2a2a2 # initialize rs2
aes64ds x17, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 163
li x7, 0xa3a3a3a3a3a3a3a3 # initialize rs1
li x27, 0xa3a3a3a3a3a3a3a3 # initialize rs2
aes64ds x30, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 0)

# Testcase cp_sbox = 164
li x16, 0xa4a4a4a4a4a4a4a4 # initialize rs1
li x10, 0xa4a4a4a4a4a4a4a4 # initialize rs2
aes64ds x15, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_sbox = 165
li x24, 0xa5a5a5a5a5a5a5a5 # initialize rs1
li x9, 0xa5a5a5a5a5a5a5a5 # initialize rs2
aes64ds x11, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_sbox = 166
li x5, 0xa6a6a6a6a6a6a6a6 # initialize rs1
li x9, 0xa6a6a6a6a6a6a6a6 # initialize rs2
aes64ds x19, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_sbox = 167
li x10, 0xa7a7a7a7a7a7a7a7 # initialize rs1
li x17, 0xa7a7a7a7a7a7a7a7 # initialize rs2
aes64ds x7, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_sbox = 168
li x13, 0xa8a8a8a8a8a8a8a8 # initialize rs1
li x9, 0xa8a8a8a8a8a8a8a8 # initialize rs2
aes64ds x10, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_sbox = 169
li x8, 0xa9a9a9a9a9a9a9a9 # initialize rs1
li x1, 0xa9a9a9a9a9a9a9a9 # initialize rs2
aes64ds x9, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cp_sbox = 170
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ds x3, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_sbox = 171
li x20, 0xabababababababab # initialize rs1
li x30, 0xabababababababab # initialize rs2
aes64ds x21, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_sbox = 172
li x9, 0xacacacacacacacac # initialize rs1
li x24, 0xacacacacacacacac # initialize rs2
aes64ds x17, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_sbox = 173
li x18, 0xadadadadadadadad # initialize rs1
li x27, 0xadadadadadadadad # initialize rs2
aes64ds x12, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_sbox = 174
li x18, 0xaeaeaeaeaeaeaeae # initialize rs1
li x11, 0xaeaeaeaeaeaeaeae # initialize rs2
aes64ds x2, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_sbox = 175
li x30, 0xafafafafafafafaf # initialize rs1
li x6, 0xafafafafafafafaf # initialize rs2
aes64ds x19, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_sbox = 176
li x15, 0xb0b0b0b0b0b0b0b0 # initialize rs1
li x7, 0xb0b0b0b0b0b0b0b0 # initialize rs2
aes64ds x17, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_sbox = 177
li x11, 0xb1b1b1b1b1b1b1b1 # initialize rs1
li x22, 0xb1b1b1b1b1b1b1b1 # initialize rs2
aes64ds x7, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_sbox = 178
li x13, 0xb2b2b2b2b2b2b2b2 # initialize rs1
li x7, 0xb2b2b2b2b2b2b2b2 # initialize rs2
aes64ds x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_sbox = 179
li x25, 0xb3b3b3b3b3b3b3b3 # initialize rs1
li x6, 0xb3b3b3b3b3b3b3b3 # initialize rs2
aes64ds x27, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_sbox = 180
li x6, 0xb4b4b4b4b4b4b4b4 # initialize rs1
li x10, 0xb4b4b4b4b4b4b4b4 # initialize rs2
aes64ds x30, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_sbox = 181
li x28, 0xb5b5b5b5b5b5b5b5 # initialize rs1
li x31, 0xb5b5b5b5b5b5b5b5 # initialize rs2
aes64ds x8, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_sbox = 182
li x8, 0xb6b6b6b6b6b6b6b6 # initialize rs1
li x19, 0xb6b6b6b6b6b6b6b6 # initialize rs2
aes64ds x26, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_sbox = 183
li x5, 0xb7b7b7b7b7b7b7b7 # initialize rs1
li x15, 0xb7b7b7b7b7b7b7b7 # initialize rs2
aes64ds x9, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_sbox = 184
li x8, 0xb8b8b8b8b8b8b8b8 # initialize rs1
li x10, 0xb8b8b8b8b8b8b8b8 # initialize rs2
aes64ds x19, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_sbox = 185
li x9, 0xb9b9b9b9b9b9b9b9 # initialize rs1
li x3, 0xb9b9b9b9b9b9b9b9 # initialize rs2
aes64ds x27, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_sbox = 186
li x21, 0xbabababababababa # initialize rs1
li x26, 0xbabababababababa # initialize rs2
aes64ds x30, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cp_sbox = 187
li x29, 0xbbbbbbbbbbbbbbbb # initialize rs1
li x31, 0xbbbbbbbbbbbbbbbb # initialize rs2
aes64ds x7, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_sbox = 188
li x6, 0xbcbcbcbcbcbcbcbc # initialize rs1
li x14, 0xbcbcbcbcbcbcbcbc # initialize rs2
aes64ds x19, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_sbox = 189
li x31, 0xbdbdbdbdbdbdbdbd # initialize rs1
li x20, 0xbdbdbdbdbdbdbdbd # initialize rs2
aes64ds x18, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_sbox = 190
li x12, 0xbebebebebebebebe # initialize rs1
li x11, 0xbebebebebebebebe # initialize rs2
aes64ds x23, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_sbox = 191
li x14, 0xbfbfbfbfbfbfbfbf # initialize rs1
li x21, 0xbfbfbfbfbfbfbfbf # initialize rs2
aes64ds x28, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_sbox = 192
li x25, 0xc0c0c0c0c0c0c0c0 # initialize rs1
li x23, 0xc0c0c0c0c0c0c0c0 # initialize rs2
aes64ds x3, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_sbox = 193
li x6, 0xc1c1c1c1c1c1c1c1 # initialize rs1
li x26, 0xc1c1c1c1c1c1c1c1 # initialize rs2
aes64ds x16, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_sbox = 194
li x14, 0xc2c2c2c2c2c2c2c2 # initialize rs1
li x20, 0xc2c2c2c2c2c2c2c2 # initialize rs2
aes64ds x29, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_sbox = 195
li x24, 0xc3c3c3c3c3c3c3c3 # initialize rs1
li x22, 0xc3c3c3c3c3c3c3c3 # initialize rs2
aes64ds x25, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_sbox = 196
li x7, 0xc4c4c4c4c4c4c4c4 # initialize rs1
li x21, 0xc4c4c4c4c4c4c4c4 # initialize rs2
aes64ds x14, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_sbox = 197
li x21, 0xc5c5c5c5c5c5c5c5 # initialize rs1
li x26, 0xc5c5c5c5c5c5c5c5 # initialize rs2
aes64ds x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_sbox = 198
li x18, 0xc6c6c6c6c6c6c6c6 # initialize rs1
li x22, 0xc6c6c6c6c6c6c6c6 # initialize rs2
aes64ds x13, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_sbox = 199
li x5, 0xc7c7c7c7c7c7c7c7 # initialize rs1
li x25, 0xc7c7c7c7c7c7c7c7 # initialize rs2
aes64ds x7, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cp_sbox = 200
li x25, 0xc8c8c8c8c8c8c8c8 # initialize rs1
li x7, 0xc8c8c8c8c8c8c8c8 # initialize rs2
aes64ds x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cp_sbox = 201
li x26, 0xc9c9c9c9c9c9c9c9 # initialize rs1
li x12, 0xc9c9c9c9c9c9c9c9 # initialize rs2
aes64ds x31, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 304)

# Testcase cp_sbox = 202
li x26, 0xcacacacacacacaca # initialize rs1
li x27, 0xcacacacacacacaca # initialize rs2
aes64ds x12, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_sbox = 203
li x17, 0xcbcbcbcbcbcbcbcb # initialize rs1
li x12, 0xcbcbcbcbcbcbcbcb # initialize rs2
aes64ds x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_sbox = 204
li x20, 0xcccccccccccccccc # initialize rs1
li x27, 0xcccccccccccccccc # initialize rs2
aes64ds x28, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_sbox = 205
li x7, 0xcdcdcdcdcdcdcdcd # initialize rs1
li x17, 0xcdcdcdcdcdcdcdcd # initialize rs2
aes64ds x15, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_sbox = 206
li x25, 0xcececececececece # initialize rs1
li x16, 0xcececececececece # initialize rs2
aes64ds x21, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_sbox = 207
li x23, 0xcfcfcfcfcfcfcfcf # initialize rs1
li x26, 0xcfcfcfcfcfcfcfcf # initialize rs2
aes64ds x30, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 352)

# Testcase cp_sbox = 208
li x11, 0xd0d0d0d0d0d0d0d0 # initialize rs1
li x26, 0xd0d0d0d0d0d0d0d0 # initialize rs2
aes64ds x8, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_sbox = 209
li x10, 0xd1d1d1d1d1d1d1d1 # initialize rs1
li x29, 0xd1d1d1d1d1d1d1d1 # initialize rs2
aes64ds x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cp_sbox = 210
li x18, 0xd2d2d2d2d2d2d2d2 # initialize rs1
li x13, 0xd2d2d2d2d2d2d2d2 # initialize rs2
aes64ds x10, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cp_sbox = 211
li x15, 0xd3d3d3d3d3d3d3d3 # initialize rs1
li x30, 0xd3d3d3d3d3d3d3d3 # initialize rs2
aes64ds x18, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_sbox = 212
li x18, 0xd4d4d4d4d4d4d4d4 # initialize rs1
li x20, 0xd4d4d4d4d4d4d4d4 # initialize rs2
aes64ds x9, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cp_sbox = 213
li x24, 0xd5d5d5d5d5d5d5d5 # initialize rs1
li x20, 0xd5d5d5d5d5d5d5d5 # initialize rs2
aes64ds x18, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_sbox = 214
li x22, 0xd6d6d6d6d6d6d6d6 # initialize rs1
li x29, 0xd6d6d6d6d6d6d6d6 # initialize rs2
aes64ds x15, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_sbox = 215
li x5, 0xd7d7d7d7d7d7d7d7 # initialize rs1
li x6, 0xd7d7d7d7d7d7d7d7 # initialize rs2
aes64ds x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 416)

# Testcase cp_sbox = 216
li x3, 0xd8d8d8d8d8d8d8d8 # initialize rs1
li x18, 0xd8d8d8d8d8d8d8d8 # initialize rs2
aes64ds x13, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)

# Testcase cp_sbox = 217
li x16, 0xd9d9d9d9d9d9d9d9 # initialize rs1
li x17, 0xd9d9d9d9d9d9d9d9 # initialize rs2
aes64ds x30, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_sbox = 218
li x23, 0xdadadadadadadada # initialize rs1
li x22, 0xdadadadadadadada # initialize rs2
aes64ds x13, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_sbox = 219
li x21, 0xdbdbdbdbdbdbdbdb # initialize rs1
li x12, 0xdbdbdbdbdbdbdbdb # initialize rs2
aes64ds x25, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_sbox = 220
li x20, 0xdcdcdcdcdcdcdcdc # initialize rs1
li x25, 0xdcdcdcdcdcdcdcdc # initialize rs2
aes64ds x22, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cp_sbox = 221
li x3, 0xdddddddddddddddd # initialize rs1
li x19, 0xdddddddddddddddd # initialize rs2
aes64ds x25, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cp_sbox = 222
li x17, 0xdededededededede # initialize rs1
li x23, 0xdededededededede # initialize rs2
aes64ds x15, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cp_sbox = 223
li x27, 0xdfdfdfdfdfdfdfdf # initialize rs1
li x21, 0xdfdfdfdfdfdfdfdf # initialize rs2
aes64ds x14, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_sbox = 224
li x11, 0xe0e0e0e0e0e0e0e0 # initialize rs1
li x13, 0xe0e0e0e0e0e0e0e0 # initialize rs2
aes64ds x10, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cp_sbox = 225
li x2, 0xe1e1e1e1e1e1e1e1 # initialize rs1
li x14, 0xe1e1e1e1e1e1e1e1 # initialize rs2
aes64ds x24, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_sbox = 226
li x11, 0xe2e2e2e2e2e2e2e2 # initialize rs1
li x18, 0xe2e2e2e2e2e2e2e2 # initialize rs2
aes64ds x24, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cp_sbox = 227
li x8, 0xe3e3e3e3e3e3e3e3 # initialize rs1
li x30, 0xe3e3e3e3e3e3e3e3 # initialize rs2
aes64ds x26, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_sbox = 228
li x30, 0xe4e4e4e4e4e4e4e4 # initialize rs1
li x21, 0xe4e4e4e4e4e4e4e4 # initialize rs2
aes64ds x5, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cp_sbox = 229
li x17, 0xe5e5e5e5e5e5e5e5 # initialize rs1
li x31, 0xe5e5e5e5e5e5e5e5 # initialize rs2
aes64ds x3, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cp_sbox = 230
li x14, 0xe6e6e6e6e6e6e6e6 # initialize rs1
li x3, 0xe6e6e6e6e6e6e6e6 # initialize rs2
aes64ds x22, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_sbox = 231
li x26, 0xe7e7e7e7e7e7e7e7 # initialize rs1
li x3, 0xe7e7e7e7e7e7e7e7 # initialize rs2
aes64ds x18, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cp_sbox = 232
li x15, 0xe8e8e8e8e8e8e8e8 # initialize rs1
li x12, 0xe8e8e8e8e8e8e8e8 # initialize rs2
aes64ds x11, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cp_sbox = 233
li x31, 0xe9e9e9e9e9e9e9e9 # initialize rs1
li x13, 0xe9e9e9e9e9e9e9e9 # initialize rs2
aes64ds x27, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 560)

# Testcase cp_sbox = 234
li x19, 0xeaeaeaeaeaeaeaea # initialize rs1
li x25, 0xeaeaeaeaeaeaeaea # initialize rs2
aes64ds x6, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cp_sbox = 235
li x18, 0xebebebebebebebeb # initialize rs1
li x12, 0xebebebebebebebeb # initialize rs2
aes64ds x24, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cp_sbox = 236
li x1, 0xecececececececec # initialize rs1
li x24, 0xecececececececec # initialize rs2
aes64ds x5, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cp_sbox = 237
li x14, 0xedededededededed # initialize rs1
li x21, 0xedededededededed # initialize rs2
aes64ds x3, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cp_sbox = 238
li x22, 0xeeeeeeeeeeeeeeee # initialize rs1
li x5, 0xeeeeeeeeeeeeeeee # initialize rs2
aes64ds x30, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cp_sbox = 239
li x2, 0xefefefefefefefef # initialize rs1
li x20, 0xefefefefefefefef # initialize rs2
aes64ds x26, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cp_sbox = 240
li x3, 0xf0f0f0f0f0f0f0f0 # initialize rs1
li x26, 0xf0f0f0f0f0f0f0f0 # initialize rs2
aes64ds x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cp_sbox = 241
li x29, 0xf1f1f1f1f1f1f1f1 # initialize rs1
li x14, 0xf1f1f1f1f1f1f1f1 # initialize rs2
aes64ds x2, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 624)

# Testcase cp_sbox = 242
li x17, 0xf2f2f2f2f2f2f2f2 # initialize rs1
li x12, 0xf2f2f2f2f2f2f2f2 # initialize rs2
aes64ds x31, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cp_sbox = 243
li x3, 0xf3f3f3f3f3f3f3f3 # initialize rs1
li x27, 0xf3f3f3f3f3f3f3f3 # initialize rs2
aes64ds x29, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 640)

# Testcase cp_sbox = 244
li x22, 0xf4f4f4f4f4f4f4f4 # initialize rs1
li x1, 0xf4f4f4f4f4f4f4f4 # initialize rs2
aes64ds x6, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 648)

# Testcase cp_sbox = 245
li x24, 0xf5f5f5f5f5f5f5f5 # initialize rs1
li x22, 0xf5f5f5f5f5f5f5f5 # initialize rs2
aes64ds x30, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 656)

# Testcase cp_sbox = 246
li x9, 0xf6f6f6f6f6f6f6f6 # initialize rs1
li x2, 0xf6f6f6f6f6f6f6f6 # initialize rs2
aes64ds x1, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cp_sbox = 247
li x15, 0xf7f7f7f7f7f7f7f7 # initialize rs1
li x10, 0xf7f7f7f7f7f7f7f7 # initialize rs2
aes64ds x17, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cp_sbox = 248
li x16, 0xf8f8f8f8f8f8f8f8 # initialize rs1
li x10, 0xf8f8f8f8f8f8f8f8 # initialize rs2
aes64ds x28, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cp_sbox = 249
li x24, 0xf9f9f9f9f9f9f9f9 # initialize rs1
li x2, 0xf9f9f9f9f9f9f9f9 # initialize rs2
aes64ds x19, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cp_sbox = 250
li x17, 0xfafafafafafafafa # initialize rs1
li x14, 0xfafafafafafafafa # initialize rs2
aes64ds x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cp_sbox = 251
li x7, 0xfbfbfbfbfbfbfbfb # initialize rs1
li x9, 0xfbfbfbfbfbfbfbfb # initialize rs2
aes64ds x29, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 704)

# Testcase cp_sbox = 252
li x30, 0xfcfcfcfcfcfcfcfc # initialize rs1
li x17, 0xfcfcfcfcfcfcfcfc # initialize rs2
aes64ds x20, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cp_sbox = 253
li x12, 0xfdfdfdfdfdfdfdfd # initialize rs1
li x11, 0xfdfdfdfdfdfdfdfd # initialize rs2
aes64ds x17, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cp_sbox = 254
li x15, 0xfefefefefefefefe # initialize rs1
li x28, 0xfefefefefefefefe # initialize rs2
aes64ds x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cp_sbox = 255
li x22, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64ds x2, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

#.EQU SIGSIZE,6144


// ******************
// Tests from: WALLY-COV-aes64dsm.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xe2efba9cd578f85a # initialize rs1
li x13, 0x6d66df6ba87c2756 # initialize rs2
aes64dsm x24, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x0ce0735c4a75d047 # initialize rs1
li x7, 0xa45e6ee1dca46f93 # initialize rs2
aes64dsm x24, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x325d3e1cd3fe4880 # initialize rs1
li x16, 0x134f34e77650b461 # initialize rs2
aes64dsm x23, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x665620ceb76cc249 # initialize rs1
li x28, 0x14111c602294616e # initialize rs2
aes64dsm x10, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xae8a941151ffecec # initialize rs1
li x12, 0x3956a41b0a9446a6 # initialize rs2
aes64dsm x25, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xef70382a8c4a1887 # initialize rs1
li x11, 0x2f2f4bdfabdb1dc3 # initialize rs2
aes64dsm x17, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x35f5b5921bf986ef # initialize rs1
li x1, 0x73d23bff1b68fdc2 # initialize rs2
aes64dsm x24, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x076546becb81a8f9 # initialize rs1
li x20, 0x699e3abc8e063a4f # initialize rs2
aes64dsm x11, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x49789ca40f4e9aae # initialize rs1
li x30, 0x706360a6ba2435ee # initialize rs2
aes64dsm x11, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x819c522235221abb # initialize rs1
li x7, 0x8b42a093fe9ef480 # initialize rs2
aes64dsm x25, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x71077663623214e6 # initialize rs1
li x17, 0x9f47fad01ff60bba # initialize rs2
aes64dsm x14, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x66d33fdaaa9f2a55 # initialize rs1
li x28, 0xc54c96caf32853db # initialize rs2
aes64dsm x31, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6d6ef20e1bb95275 # initialize rs1
li x31, 0xbbaf643b35d243ed # initialize rs2
aes64dsm x25, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7f6b31f60834224a # initialize rs1
li x30, 0x339c4f6fa68e4032 # initialize rs2
aes64dsm x20, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x3a3f6d7ce4c0cbb7 # initialize rs1
li x2, 0xde6e4c63e06255da # initialize rs2
aes64dsm x15, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf8f1a97c1d85f4b7 # initialize rs1
li x3, 0xff1a8047dbf2bf86 # initialize rs2
aes64dsm x20, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x95965f8ef11e6d8a # initialize rs1
li x15, 0xd6bb448fc5e0e0df # initialize rs2
aes64dsm x11, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc5ccc1e0a6c77be2 # initialize rs1
li x22, 0x80fdd65d1f017ed1 # initialize rs2
aes64dsm x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc22823f2b0037fcb # initialize rs1
li x29, 0xef21c2803f943c82 # initialize rs2
aes64dsm x14, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xba34830c63b3b23b # initialize rs1
li x13, 0x867ba0e202eaf2e9 # initialize rs2
aes64dsm x30, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6867b4e64155cf5c # initialize rs1
li x13, 0x477eeaf2f2c03686 # initialize rs2
aes64dsm x31, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8e0b9fbe01999f3b # initialize rs1
li x25, 0xfb8ea0afc6082864 # initialize rs2
aes64dsm x8, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5cecefab5dd4276f # initialize rs1
li x15, 0xfdbd08837592fa79 # initialize rs2
aes64dsm x2, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5b5bb497d6804a07 # initialize rs1
li x31, 0x9c78f43a3228e70d # initialize rs2
aes64dsm x2, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7bf9703b4921c936 # initialize rs1
li x1, 0xec5e5abf896544e2 # initialize rs2
aes64dsm x7, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5c06260f307c2e84 # initialize rs1
li x31, 0x2f1ad6d6e3b2a381 # initialize rs2
aes64dsm x20, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6e66447e69244d02 # initialize rs1
li x31, 0xf88ca70008abd2e4 # initialize rs2
aes64dsm x1, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1d400fdab9e2e865 # initialize rs1
li x12, 0x47aa39d9f78ce4ed # initialize rs2
aes64dsm x15, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0aeb71ea41c9231e # initialize rs1
li x18, 0x26d36d6489939d9a # initialize rs2
aes64dsm x22, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xadd5d929ebcd4a53 # initialize rs1
li x11, 0x9f82310f32259456 # initialize rs2
aes64dsm x10, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x86b679eb47a6a387 # initialize rs1
li x17, 0x38ff81abd6a774ed # initialize rs2
aes64dsm x23, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbae8c8397136d6b0 # initialize rs1
li x5, 0x83830edca944bb38 # initialize rs2
aes64dsm x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x191eb74de47bba41 # initialize rs1
li x0, 0xdcf75c32d4ea805b # initialize rs2
aes64dsm x14, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xe64fd52f0d8f5123 # initialize rs1
li x1, 0xc7f07c62d9e68f6b # initialize rs2
aes64dsm x15, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x77c0f871eb5cdc2d # initialize rs1
li x2, 0x058b33e18534d71d # initialize rs2
aes64dsm x16, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0xe1b0987b0d84f106 # initialize rs1
li x3, 0x58b871599b0078d1 # initialize rs2
aes64dsm x10, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x45cd5fc8cf159140 # initialize rs1
li x4, 0x15be8020355150b1 # initialize rs2
aes64dsm x26, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x9d79fade2a9015ee # initialize rs1
li x5, 0xd37f9053287fcd65 # initialize rs2
aes64dsm x21, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xc2ce3578cc695bd4 # initialize rs1
li x6, 0x29e91f36e2dd6a09 # initialize rs2
aes64dsm x23, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x6f82187681ac47b6 # initialize rs1
li x7, 0x64b81bd132d21c7a # initialize rs2
aes64dsm x27, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x679b0faf388ef687 # initialize rs1
li x8, 0x4038bdb962eee0be # initialize rs2
aes64dsm x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x21, 0x17ffa07d3ed6de2e # initialize rs1
li x9, 0xfab3ebc4fc5f6116 # initialize rs2
aes64dsm x20, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0xe0611bdde96adecb # initialize rs1
li x10, 0xf478e64d1e75657a # initialize rs2
aes64dsm x23, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x40c6db03c180a5b1 # initialize rs1
li x11, 0x0c55a38867067390 # initialize rs2
aes64dsm x26, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x24, 0x70c6a54cd154720e # initialize rs1
li x12, 0xe8aea4c70f4d008c # initialize rs2
aes64dsm x26, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0xc2406d3ca38de435 # initialize rs1
li x13, 0xe0af0b9f8a4af08b # initialize rs2
aes64dsm x9, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0x58b1daad508b9bc7 # initialize rs1
li x14, 0x9c4e5b0dfd6b4399 # initialize rs2
aes64dsm x19, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0x6cf8f0d8e2584c3b # initialize rs1
li x15, 0x3a0aa08fb7c59a77 # initialize rs2
aes64dsm x13, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x674866b93a1c8dc9 # initialize rs1
li x16, 0x0d456ab8b7a548df # initialize rs2
aes64dsm x11, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0xa4c305eca231ac52 # initialize rs1
li x17, 0x1ebded1c95eef449 # initialize rs2
aes64dsm x28, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x7accee116637b425 # initialize rs1
li x18, 0x116a8eafdd3f7dcb # initialize rs2
aes64dsm x31, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x22, 0x85b1bfa6eed98cb4 # initialize rs1
li x19, 0x805ace81a83f8c38 # initialize rs2
aes64dsm x8, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x10, 0x6b1219891791ef7a # initialize rs1
li x20, 0x5f0864ff677fd8df # initialize rs2
aes64dsm x30, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x14, 0xa9622ab425c6f59e # initialize rs1
li x21, 0x762833d2c8f7deb9 # initialize rs2
aes64dsm x6, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0x0c41d50c1bd38ef5 # initialize rs1
li x22, 0xd3e2135bdc001157 # initialize rs2
aes64dsm x8, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0x4216424208a99431 # initialize rs1
li x23, 0x2e47a84b37315edd # initialize rs2
aes64dsm x1, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x93f8ac619c369519 # initialize rs1
li x24, 0xbd66b7387d7bc837 # initialize rs2
aes64dsm x10, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0x52e0c84b7d2f804c # initialize rs1
li x25, 0xcf569822a8736bb2 # initialize rs2
aes64dsm x27, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0xe21bbc54cee3333c # initialize rs1
li x26, 0x50761c2551588902 # initialize rs2
aes64dsm x21, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0x8cd20c93c7a2f7b3 # initialize rs1
li x27, 0xd6d0c253045bcf94 # initialize rs2
aes64dsm x21, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xdc0fb698e3847e5f # initialize rs1
li x28, 0xa7fa92dc19fb5604 # initialize rs2
aes64dsm x9, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x0b99ec835ff9bd75 # initialize rs1
li x29, 0x36ce7c6a05a7c329 # initialize rs2
aes64dsm x22, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0xc1510bbceb8e0da5 # initialize rs1
li x30, 0xc9ddd0bcf7afdff2 # initialize rs2
aes64dsm x3, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0xcf5f49a46dc75e9f # initialize rs1
li x31, 0x828afa7703d564ca # initialize rs2
aes64dsm x28, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x21b6e6679d7fa2cd # initialize rs1
li x18, 0x6f01db8707d4f2de # initialize rs2
aes64dsm x0, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x22b8b35a9504f2a3 # initialize rs1
li x14, 0xa3143229c74d54d6 # initialize rs2
aes64dsm x1, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x20024a1b59657624 # initialize rs1
li x1, 0x1234e0501d9d7a16 # initialize rs2
aes64dsm x2, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0x6836bd1f4f84933c # initialize rs1
li x8, 0x44c55c130164b87d # initialize rs2
aes64dsm x3, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x9e23b5fcc057eae1 # initialize rs1
li x17, 0x1f9fb55f859d7559 # initialize rs2
aes64dsm x4, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xc75d72e41d59f089 # initialize rs1
li x4, 0x9a117a6ebbac32f0 # initialize rs2
aes64dsm x5, x28, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x273c78375cee386e # initialize rs1
li x21, 0x627ab547a5f097b9 # initialize rs2
aes64dsm x6, x29, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x0aef2e6a58a0b65c # initialize rs1
li x26, 0xb6d5be234a5f97af # initialize rs2
aes64dsm x7, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0xc6d9af8d226cfa6d # initialize rs1
li x24, 0x252db546b67fd30c # initialize rs2
aes64dsm x8, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0xf666721d0fdcd407 # initialize rs1
li x9, 0x1b9858d4429dcd93 # initialize rs2
aes64dsm x9, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xe39f3514af6b193c # initialize rs1
li x22, 0xa2de4d14a5b6e16c # initialize rs2
aes64dsm x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xc3eb3667eff355a9 # initialize rs1
li x30, 0xc94a25b3d8483b3b # initialize rs2
aes64dsm x11, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x2, 0xde5cb894190c5965 # initialize rs1
li x12, 0x762cdf45383d8fc0 # initialize rs2
aes64dsm x12, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x7d960f5447e8e2b8 # initialize rs1
li x12, 0x0871257ff58f4e51 # initialize rs2
aes64dsm x13, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x8ff91676a52bd517 # initialize rs1
li x25, 0xf9de1d0924440e83 # initialize rs2
aes64dsm x14, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x6e713422ce5a3111 # initialize rs1
li x20, 0xa573f394df9050bc # initialize rs2
aes64dsm x15, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0xc47b32c1da9865ff # initialize rs1
li x19, 0x3732285c9392d7ad # initialize rs2
aes64dsm x16, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xe4df0f3734e26c5b # initialize rs1
li x6, 0xea509be999bba5c6 # initialize rs2
aes64dsm x17, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x607a346153aa560a # initialize rs1
li x30, 0x23fe2065312e71b7 # initialize rs2
aes64dsm x18, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0x05a0adbd945a5085 # initialize rs1
li x28, 0xff20ebe31dd126f5 # initialize rs2
aes64dsm x19, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x53699951e79ece3d # initialize rs1
li x30, 0xa07b7f2cdfcd95e1 # initialize rs2
aes64dsm x20, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x1a10c0e171cfb37a # initialize rs1
li x7, 0xae5217f5104e6e88 # initialize rs2
aes64dsm x21, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x19, 0x18b699f8a939be6a # initialize rs1
li x31, 0x35d4aef0cf3fe8cd # initialize rs2
aes64dsm x22, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0x2cf830f95e296408 # initialize rs1
li x7, 0x310896acb959a9c9 # initialize rs2
aes64dsm x23, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0x86432f1bda078827 # initialize rs1
li x23, 0xf65ac4474a7eb7cb # initialize rs2
aes64dsm x24, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xf3093d0f32bf7e4d # initialize rs1
li x10, 0xdd61bd6d741f8c81 # initialize rs2
aes64dsm x25, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x10171a263ecdce30 # initialize rs1
li x25, 0xbdbd7597a73236cd # initialize rs2
aes64dsm x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x376cbdbb46d73b7d # initialize rs1
li x28, 0x50906543daccb3e4 # initialize rs2
aes64dsm x27, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x048265e671533f09 # initialize rs1
li x13, 0x9629f160f1df255b # initialize rs2
aes64dsm x28, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0x1f476836d524e56e # initialize rs1
li x6, 0x844eeca7c6c68ef8 # initialize rs2
aes64dsm x29, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0xf4266989c4d5a24f # initialize rs1
li x9, 0x2b4c0c715372bf8b # initialize rs2
aes64dsm x30, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x14, 0xfb50df3763ac4a3c # initialize rs1
li x22, 0x4bd86388f95c568c # initialize rs2
aes64dsm x31, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x6, 0x90eb931151b94090 # initialize rs2
aes64dsm x29, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x0000000000000001 # initialize rs1
li x31, 0xbcf2226f840ed7bd # initialize rs2
aes64dsm x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x0000000000000002 # initialize rs1
li x17, 0x9bbb76295c4c3519 # initialize rs2
aes64dsm x27, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x19, 0x8000000000000000 # initialize rs1
li x7, 0x8abb480375b6f6f4 # initialize rs2
aes64dsm x30, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
li x20, 0x177f555402ac9e85 # initialize rs2
aes64dsm x13, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x6, 0x21c399e60ccc176e # initialize rs2
aes64dsm x7, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x27, 0xfa4c227e229f1a10 # initialize rs2
aes64dsm x20, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0xbd51ce63f8f5df06 # initialize rs2
aes64dsm x16, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0x378289dc462e2aed # initialize rs2
aes64dsm x8, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x8c48d988b2f8b38c # initialize rs2
aes64dsm x1, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xa6521f1fec566807 # initialize rs2
aes64dsm x14, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
li x23, 0x2ef6ab52e9047094 # initialize rs2
aes64dsm x5, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x30, 0xf7b040217725a77e # initialize rs2
aes64dsm x14, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x21, 0xc71654fff247c7c9 # initialize rs2
aes64dsm x31, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x20, 0xbeb8c59a792a7efa # initialize rs2
aes64dsm x19, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
li x11, 0x2627b020db97c202 # initialize rs2
aes64dsm x21, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xe18b774a46835523 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
aes64dsm x31, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x44b05e50b8882a9f # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
aes64dsm x2, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0xc5e27f85f9dc455c # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64dsm x12, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0x5e901538ae71e49c # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
aes64dsm x28, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x21, 0xe86e32f0a7be0264 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64dsm x31, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x7, 0x8dfe274a1f0b0ebc # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
aes64dsm x15, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0xeddb18377d9473c7 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
aes64dsm x7, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x26, 0x606c6d67ffbe0343 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
aes64dsm x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0xba091b61aebb8d46 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
aes64dsm x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x30, 0x8d863a0680b7d416 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x734a7dfef12b40f1 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x15, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xc077e4d9f55110e7 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
aes64dsm x26, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xa3b5909038bf0ab0 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
aes64dsm x8, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0xd0a277e9df817c3a # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64dsm x13, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xc3bad82337ae26bb # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
aes64dsm x18, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0x43a575bfc8d3c082 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
aes64dsm x11, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
aes64dsm x5, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
aes64dsm x30, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
aes64dsm x2, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x16, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
aes64dsm x30, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x9, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
aes64dsm x13, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
aes64dsm x3, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
aes64dsm x18, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
aes64dsm x10, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
aes64dsm x31, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x19, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x21, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x5, 0x0000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
aes64dsm x11, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
aes64dsm x6, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
aes64dsm x19, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
aes64dsm x14, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
aes64dsm x19, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
aes64dsm x31, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
aes64dsm x20, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
aes64dsm x2, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x23, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
aes64dsm x11, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x27, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
aes64dsm x16, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x12, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
aes64dsm x30, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
aes64dsm x12, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
aes64dsm x6, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
aes64dsm x13, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x29, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x7, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
aes64dsm x26, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
aes64dsm x18, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
aes64dsm x5, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x15, 0x0000000000000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
aes64dsm x25, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x25, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
aes64dsm x7, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
aes64dsm x24, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
aes64dsm x18, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x31, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64dsm x28, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x19, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64dsm x21, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x23, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
aes64dsm x10, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000002 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
aes64dsm x6, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000002 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
aes64dsm x28, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
aes64dsm x28, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000002 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
aes64dsm x1, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x8, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000000000002 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x3, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
aes64dsm x22, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
aes64dsm x26, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
aes64dsm x27, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x26, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
aes64dsm x7, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64dsm x11, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x5, 0x8000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
aes64dsm x24, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
aes64dsm x1, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64dsm x28, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
aes64dsm x3, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
aes64dsm x17, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64dsm x23, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
aes64dsm x28, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
aes64dsm x26, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
aes64dsm x24, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x6, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x8000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x23, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x7, 0x8000000000000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
aes64dsm x31, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x30, 0x8000000000000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64dsm x17, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
aes64dsm x9, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x12, 0x8000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
aes64dsm x31, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x12, 0x8000000000000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
aes64dsm x20, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
aes64dsm x21, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64dsm x21, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
aes64dsm x11, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x5, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
aes64dsm x19, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64dsm x11, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64dsm x14, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
aes64dsm x31, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
aes64dsm x11, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x30, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64dsm x3, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x26, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x6, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x21, 0x8000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
aes64dsm x5, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64dsm x15, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x26, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
aes64dsm x21, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x28, 0x8000000000000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64dsm x11, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
aes64dsm x17, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
aes64dsm x8, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x12, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
aes64dsm x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x26, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
aes64dsm x7, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x3, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
aes64dsm x13, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
aes64dsm x3, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64dsm x12, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
aes64dsm x24, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
aes64dsm x9, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
aes64dsm x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0x7fffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x14, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7fffffffffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x5, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x21, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
aes64dsm x5, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64dsm x21, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64dsm x7, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x5, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
aes64dsm x16, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
aes64dsm x2, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x12, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
aes64dsm x7, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x13, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64dsm x10, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
aes64dsm x24, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
aes64dsm x3, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
aes64dsm x5, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
aes64dsm x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64dsm x23, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0x7ffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
aes64dsm x13, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64dsm x10, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x10, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x28, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7ffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x15, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x7ffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
aes64dsm x8, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
aes64dsm x1, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64dsm x24, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x9, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64dsm x31, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x2, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
aes64dsm x10, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x9, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
aes64dsm x15, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
aes64dsm x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x27, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
aes64dsm x9, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x9, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
aes64dsm x22, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
aes64dsm x16, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
aes64dsm x28, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
aes64dsm x26, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
aes64dsm x5, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
aes64dsm x20, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0xffffffffffffffff # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x6, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xffffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x8, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0xffffffffffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64dsm x17, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
aes64dsm x29, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
aes64dsm x12, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64dsm x18, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x10, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
aes64dsm x17, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x23, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64dsm x9, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x16, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
aes64dsm x3, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
aes64dsm x26, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
aes64dsm x10, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
aes64dsm x10, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
aes64dsm x14, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64dsm x14, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x5, 0xfffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
aes64dsm x3, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
aes64dsm x28, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0xfffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x20, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xfffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x24, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x11, 0xfffffffffffffffe # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64dsm x6, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x11, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
aes64dsm x30, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64dsm x20, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64dsm x5, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x17, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
aes64dsm x5, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64dsm x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
aes64dsm x31, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64dsm x12, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64dsm x6, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
aes64dsm x1, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64dsm x18, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64dsm x21, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
aes64dsm x1, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
aes64dsm x10, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x9, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x11, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
aes64dsm x14, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
aes64dsm x19, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
aes64dsm x17, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64dsm x30, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
aes64dsm x15, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
aes64dsm x3, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
aes64dsm x28, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
aes64dsm x5, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64dsm x2, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64dsm x29, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
aes64dsm x24, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
aes64dsm x5, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
aes64dsm x5, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
aes64dsm x2, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x25, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x20, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
aes64dsm x17, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
aes64dsm x10, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64dsm x23, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
aes64dsm x26, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
aes64dsm x16, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x15, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
aes64dsm x7, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x7, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64dsm x22, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x7, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64dsm x22, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x14, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64dsm x22, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
aes64dsm x10, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
aes64dsm x18, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
aes64dsm x31, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
aes64dsm x21, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
aes64dsm x31, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x10, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5555555555555555 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x16, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64dsm x20, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
aes64dsm x27, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64dsm x22, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
aes64dsm x31, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x21, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
aes64dsm x16, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
aes64dsm x25, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
aes64dsm x25, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64dsm x6, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
aes64dsm x5, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x9, 0x00000000ffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
aes64dsm x16, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x00000000ffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64dsm x24, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
aes64dsm x27, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
aes64dsm x3, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
aes64dsm x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000ffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x27, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x00000000ffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x27, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x13, 0x00000000ffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64dsm x21, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
aes64dsm x22, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
aes64dsm x16, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x11, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
aes64dsm x15, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64dsm x5, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64dsm x29, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
aes64dsm x24, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x27, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
aes64dsm x30, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x19, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
aes64dsm x28, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x29, 0x00000000fffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
aes64dsm x12, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64dsm x24, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
aes64dsm x22, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
aes64dsm x27, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
aes64dsm x9, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x2, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000fffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x29, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x11, 0x00000000fffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
aes64dsm x12, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
aes64dsm x16, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
aes64dsm x29, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
aes64dsm x18, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x2, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
aes64dsm x1, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x23, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64dsm x28, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x5, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
aes64dsm x28, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x14, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
aes64dsm x13, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x8, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
aes64dsm x26, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64dsm x1, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64dsm x17, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64dsm x8, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x18, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64dsm x17, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64dsm x21, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000100000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x1, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000100000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x1, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x7, 0x0000000100000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64dsm x14, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
aes64dsm x10, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x10, 0x0000000100000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
aes64dsm x20, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
aes64dsm x21, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x29, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64dsm x27, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x21, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
aes64dsm x26, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x10, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
aes64dsm x13, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
aes64dsm x21, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x20, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
aes64dsm x8, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x30, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
aes64dsm x9, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64dsm x14, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
aes64dsm x25, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
aes64dsm x31, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
aes64dsm x30, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000100000001 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
aes64dsm x10, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000100000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x18, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x3, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64dsm x29, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
aes64dsm x6, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
aes64dsm x26, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x21, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
aes64dsm x22, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
aes64dsm x7, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5f3ca7669a5286ca # initialize rs1
li x0, 0x4949f7385d1fbe7e # initialize rs2
aes64dsm x14, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0befa525957e9e68 # initialize rs1
li x1, 0x7661b37cae0fbe42 # initialize rs2
aes64dsm x17, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7b1110274bb42139 # initialize rs1
li x2, 0x6e6ab56d29f011c1 # initialize rs2
aes64dsm x19, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xcf3f060399dcd0d5 # initialize rs1
li x3, 0xd0bcb0856ae2edb2 # initialize rs2
aes64dsm x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4523ec3241d31ddd # initialize rs1
li x4, 0x53a06bffa35f4ef3 # initialize rs2
aes64dsm x30, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xde1a19c045e20bcc # initialize rs1
li x5, 0x9b167fca2cab8b23 # initialize rs2
aes64dsm x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb758d35831f0f519 # initialize rs1
li x6, 0x822dbe28b922d33a # initialize rs2
aes64dsm x17, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2def4027666413a0 # initialize rs1
li x7, 0x834a9524eb76cad4 # initialize rs2
aes64dsm x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x692c5daac5b0cf00 # initialize rs1
li x8, 0x4e30d1dfdcd50e58 # initialize rs2
aes64dsm x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6e67ce6ba628de1f # initialize rs1
li x9, 0x9229cb07c3b55077 # initialize rs2
aes64dsm x16, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xdcb4be40084f3ea7 # initialize rs1
li x10, 0x40ef97c915511d74 # initialize rs2
aes64dsm x31, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x315599fc21a336c7 # initialize rs1
li x11, 0x0f1f6fab2e8cb3dc # initialize rs2
aes64dsm x5, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x40a4b2c141a55abb # initialize rs1
li x12, 0x34450027fa4e0aed # initialize rs2
aes64dsm x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe19481f61aa8816c # initialize rs1
li x13, 0xcdeea7877936e109 # initialize rs2
aes64dsm x28, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xff0b29ef1d402486 # initialize rs1
li x14, 0x0c55e07990cd8d09 # initialize rs2
aes64dsm x1, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xfc68d4304ef5c866 # initialize rs1
li x15, 0x4ce06ee06ca8791a # initialize rs2
aes64dsm x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x309461c0e39a1536 # initialize rs1
li x16, 0x8106c3931fcf6188 # initialize rs2
aes64dsm x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4e02feeb2655f630 # initialize rs1
li x17, 0x713dfc094d8b2039 # initialize rs2
aes64dsm x23, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3525f320fc744885 # initialize rs1
li x18, 0x93fbdeaa57d0caf4 # initialize rs2
aes64dsm x15, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x56598b130f8a62d5 # initialize rs1
li x19, 0x35ad163667236f43 # initialize rs2
aes64dsm x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf13f9cfd3ff65518 # initialize rs1
li x20, 0x337314cfa36c92a6 # initialize rs2
aes64dsm x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x65a73cddcffb9a50 # initialize rs1
li x21, 0x2c51439f6b6a613a # initialize rs2
aes64dsm x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x006d173c58a682b9 # initialize rs1
li x22, 0x9bb27a089b50a01f # initialize rs2
aes64dsm x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x30b70215043cab7f # initialize rs1
li x23, 0xc9e7f734e6731604 # initialize rs2
aes64dsm x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8dd9cc4c8e510172 # initialize rs1
li x24, 0x7f6b1a426138aa62 # initialize rs2
aes64dsm x16, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xecb1bce57e4214df # initialize rs1
li x25, 0x0f338c612c651bba # initialize rs2
aes64dsm x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd21f06f9e373c992 # initialize rs1
li x26, 0xd61895553d8ff0b8 # initialize rs2
aes64dsm x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe17b9b85ab231584 # initialize rs1
li x27, 0xab7bf7697c1a1cad # initialize rs2
aes64dsm x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x61a885d8981d3779 # initialize rs1
li x28, 0xe19da87b246a84fd # initialize rs2
aes64dsm x22, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb9a881986c796753 # initialize rs1
li x29, 0xd4259c9ad5d22da5 # initialize rs2
aes64dsm x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x51ab832901da4a28 # initialize rs1
li x30, 0x345a25758d9b6db5 # initialize rs2
aes64dsm x10, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x2c874bfcfdd7d30e # initialize rs1
li x31, 0x98cc071a4bba7588 # initialize rs2
aes64dsm x30, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x39e70e97025627ca # initialize rs1
li x14, 0xfdc793114ad12074 # initialize rs2
aes64dsm x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7ddd35d65b33c1b4 # initialize rs1
li x25, 0x0fa6fce93e50ee2f # initialize rs2
aes64dsm x1, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x63b247cd4e5cea00 # initialize rs1
li x18, 0x36d7d510e31922d2 # initialize rs2
aes64dsm x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x280eaff7606f4777 # initialize rs1
li x17, 0x70691bea98501c99 # initialize rs2
aes64dsm x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x52b07d9cc62116e6 # initialize rs1
li x10, 0x886225ee4549b59c # initialize rs2
aes64dsm x4, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2d86403823175e72 # initialize rs1
li x28, 0x6a5f83796a5fcbef # initialize rs2
aes64dsm x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5da7accdc48e202b # initialize rs1
li x15, 0x59a862d5e014b54b # initialize rs2
aes64dsm x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5f2f9fd3158ebc3f # initialize rs1
li x4, 0x534cdd90659e1b72 # initialize rs2
aes64dsm x7, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x85ebf601c1be3633 # initialize rs1
li x28, 0xbd590e41a119c78d # initialize rs2
aes64dsm x8, x8, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9cdadcc27620f91d # initialize rs1
li x3, 0x710a05f87ad2c60c # initialize rs2
aes64dsm x9, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2809313ec1e38e27 # initialize rs1
li x31, 0x60daf27caa213a41 # initialize rs2
aes64dsm x10, x10, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb95eb2237a41bc61 # initialize rs1
li x13, 0xfa6be80098b0018d # initialize rs2
aes64dsm x11, x11, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf1351476f5e0309a # initialize rs1
li x30, 0x864e51a95eecf19a # initialize rs2
aes64dsm x12, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2bb581f5c6862df5 # initialize rs1
li x24, 0xd6a1c65a6701a4d2 # initialize rs2
aes64dsm x13, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb1676fbfcbaba000 # initialize rs1
li x16, 0x0c060a0f778a93bb # initialize rs2
aes64dsm x14, x14, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdbb26f23e9fdd0ad # initialize rs1
li x10, 0x28499143d6406935 # initialize rs2
aes64dsm x15, x15, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x17d8629616d4f7ca # initialize rs1
li x10, 0x8d847d13c483709a # initialize rs2
aes64dsm x16, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1ee7f12e72c1069c # initialize rs1
li x31, 0xb24efd9bc6a692d6 # initialize rs2
aes64dsm x17, x17, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf93f87d80059a140 # initialize rs1
li x14, 0x4646514426d30c09 # initialize rs2
aes64dsm x18, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x279a2f3706c2e41c # initialize rs1
li x14, 0xabcbd8c438c35c58 # initialize rs2
aes64dsm x19, x19, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xae93f737e24c7a4b # initialize rs1
li x9, 0x6002d1b50f0961f3 # initialize rs2
aes64dsm x20, x20, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9178f7b27de7b726 # initialize rs1
li x24, 0xf6e0bd1b7ef5a8c2 # initialize rs2
aes64dsm x21, x21, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3fa61280aad984d7 # initialize rs1
li x17, 0x33a2c4bf609bf060 # initialize rs2
aes64dsm x22, x22, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa70fa6ed56ff55dd # initialize rs1
li x28, 0x61802fceba09570b # initialize rs2
aes64dsm x23, x23, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9f31500e3655789a # initialize rs1
li x15, 0x127d18d90bac3df3 # initialize rs2
aes64dsm x24, x24, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9056dff9520d28f4 # initialize rs1
li x3, 0xabceaaed07ad65f6 # initialize rs2
aes64dsm x25, x25, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xccb0f25daf319d47 # initialize rs1
li x3, 0xa3ee782f86dc9ae0 # initialize rs2
aes64dsm x26, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x174a2abba4cc50d2 # initialize rs1
li x19, 0x71a9a6653fa87128 # initialize rs2
aes64dsm x27, x27, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6595a5451db9bcc0 # initialize rs1
li x16, 0xf9082d611339a891 # initialize rs2
aes64dsm x28, x28, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0018514f051169b3 # initialize rs1
li x15, 0x052524b07629de3a # initialize rs2
aes64dsm x29, x29, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeb912d0d0f5ff927 # initialize rs1
li x15, 0x322599e61cbbf33f # initialize rs2
aes64dsm x30, x30, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x25fb22b4264e8d1a # initialize rs1
li x13, 0x38f9c6215f4aaea1 # initialize rs2
aes64dsm x31, x31, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x22, 0xef734de7d7c51e60 # initialize rs1
li x0, 0xe4c12c307836be12 # initialize rs2
aes64dsm x0, x22, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x19, 0xc75eab0bb8bfbf03 # initialize rs1
li x1, 0xc973bf3bf23c114a # initialize rs2
aes64dsm x1, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x2d3178b3c8245e8d # initialize rs1
li x2, 0xe11bdcc3506a8739 # initialize rs2
aes64dsm x2, x31, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x24, 0xe71ad5f9921e11cd # initialize rs1
li x3, 0xcb28d2b2ad2019de # initialize rs2
aes64dsm x3, x24, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x19, 0x0ae7d4d81a8e132f # initialize rs1
li x4, 0x0e8cfc00ee8aa44c # initialize rs2
aes64dsm x4, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xf517621aa7d8e37e # initialize rs1
li x5, 0xf9db58149c6271a9 # initialize rs2
aes64dsm x5, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x835efbdd7b7c3508 # initialize rs1
li x6, 0x98bcf50ce2aa8b11 # initialize rs2
aes64dsm x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x6f1718809278dc7e # initialize rs1
li x7, 0x7692ad65e35d4390 # initialize rs2
aes64dsm x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x31, 0x929bd8cc541b10e5 # initialize rs1
li x8, 0xb864525e3fd9fde9 # initialize rs2
aes64dsm x8, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0xb689fad077f4364a # initialize rs1
li x9, 0xe78cd9ed10e1b167 # initialize rs2
aes64dsm x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x20, 0xf17fa1541542ff16 # initialize rs1
li x10, 0xce9086fb12f1ccc0 # initialize rs2
aes64dsm x10, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0xe4378936e0d763be # initialize rs1
li x11, 0x86e808ae10930e6e # initialize rs2
aes64dsm x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0x2c878e2faa4b18c7 # initialize rs1
li x12, 0x2cafabc35e33e334 # initialize rs2
aes64dsm x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x10, 0x5bf779ad49468937 # initialize rs1
li x13, 0xaf12bae4d04797cf # initialize rs2
aes64dsm x13, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0xffb909a148af25c4 # initialize rs1
li x14, 0x038153adc9a8a21a # initialize rs2
aes64dsm x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x6, 0x40b12d2d73613031 # initialize rs1
li x15, 0x3c6acff6479be8f7 # initialize rs2
aes64dsm x15, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0x3c465c4658414198 # initialize rs1
li x16, 0x93db510da2797cfa # initialize rs2
aes64dsm x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x12, 0x057befe8da473757 # initialize rs1
li x17, 0x3da5bc5c9a06684b # initialize rs2
aes64dsm x17, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x25, 0x04f39395345f1ff4 # initialize rs1
li x18, 0xd136d79b6ff041d7 # initialize rs2
aes64dsm x18, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x6b629ab6172d4a98 # initialize rs1
li x19, 0x57cebb99cd7f2f7c # initialize rs2
aes64dsm x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0xadb161c1983b7f75 # initialize rs1
li x20, 0x3453261739bd98f8 # initialize rs2
aes64dsm x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x10, 0x9138774b7e59b6c0 # initialize rs1
li x21, 0x21da72d10e0f36d7 # initialize rs2
aes64dsm x21, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0x8379ff287b796d36 # initialize rs1
li x22, 0xa24cb48329a3f922 # initialize rs2
aes64dsm x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x12, 0x65b681d88822f55c # initialize rs1
li x23, 0xd2c6cf887b46ce51 # initialize rs2
aes64dsm x23, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x17, 0x9856fd9f9e3576de # initialize rs1
li x24, 0x8dc2fae0c36e5d77 # initialize rs2
aes64dsm x24, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0x71a8dc1b4daf0d46 # initialize rs1
li x25, 0xef9ae09cf85ea7eb # initialize rs2
aes64dsm x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0x22ef709de35e5e29 # initialize rs1
li x26, 0x4962fd224d38ac5a # initialize rs2
aes64dsm x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0xe5aee4eef6fa4e42 # initialize rs1
li x27, 0x3a28f21f5a485e26 # initialize rs2
aes64dsm x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0x7aa43879b96b8599 # initialize rs1
li x28, 0x8ac83a6b8564d903 # initialize rs2
aes64dsm x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x25, 0xc6b6ed153521d8e9 # initialize rs1
li x29, 0x2dd8b8570604fe24 # initialize rs2
aes64dsm x29, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0xe69cac6896ac9c2a # initialize rs1
li x30, 0xc061b2fa7e3afbe1 # initialize rs2
aes64dsm x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0x25aea3eaa12b6bf5 # initialize rs1
li x31, 0xed25f29e619d8544 # initialize rs2
aes64dsm x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x5c26eadd19f84da3 # initialize rs1
li x0, 0x99d2ef4602aa6da0 # initialize rs2
aes64dsm x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5722f667ed8ea758 # initialize rs1
li x1, 0xcffc1c35e369192f # initialize rs2
aes64dsm x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1dda94d098b015d5 # initialize rs1
li x2, 0x021fd9812ef76bcd # initialize rs2
aes64dsm x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x488c5fc06f76b164 # initialize rs1
li x3, 0x2925632afee85671 # initialize rs2
aes64dsm x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6a84af2117b0b8be # initialize rs1
li x4, 0x7d055e7e6f6c36e6 # initialize rs2
aes64dsm x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0dd416355294bd27 # initialize rs1
li x5, 0x2d284de98ed83480 # initialize rs2
aes64dsm x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd63d1042ae5d4614 # initialize rs1
li x6, 0x17a42ea9cd28308d # initialize rs2
aes64dsm x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7a198077e75b2203 # initialize rs1
li x7, 0x9e1e76eadbca73f1 # initialize rs2
aes64dsm x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x958e97d3a67582f7 # initialize rs1
li x8, 0xe57c7dd6e7635c1f # initialize rs2
aes64dsm x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf38d8ebdc5597eb3 # initialize rs1
li x9, 0xd627dfed5b049279 # initialize rs2
aes64dsm x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xb0df5341ec32405e # initialize rs1
li x10, 0x25937f0be9dc8751 # initialize rs2
aes64dsm x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x22903e8731327598 # initialize rs1
li x11, 0x320396f47929ef84 # initialize rs2
aes64dsm x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xff61c33c6030705d # initialize rs1
li x12, 0x72149de3f8e917f0 # initialize rs2
aes64dsm x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xef469b10a7af5176 # initialize rs1
li x13, 0xbef10f379202484e # initialize rs2
aes64dsm x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa397343b9e12cc6d # initialize rs1
li x14, 0xc8559df78c97a4e4 # initialize rs2
aes64dsm x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb2b1c34b23f18b28 # initialize rs1
li x15, 0x2d21aeeee867704f # initialize rs2
aes64dsm x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1af50e04aea6c85c # initialize rs1
li x16, 0x9dfa207236924ce8 # initialize rs2
aes64dsm x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x42df0ab67eb5ec0c # initialize rs1
li x17, 0x28d4b83213ff7d15 # initialize rs2
aes64dsm x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xac5ab2ddf8f576d9 # initialize rs1
li x18, 0xc8dd26ad7cd66fdc # initialize rs2
aes64dsm x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x72c0c4b8df2d0105 # initialize rs1
li x19, 0xd4908ef95db87e81 # initialize rs2
aes64dsm x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe5620d4235ea910c # initialize rs1
li x20, 0x461e559270511f75 # initialize rs2
aes64dsm x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x4c0addbd590fc9bd # initialize rs1
li x21, 0xa5116bd45bc6fa38 # initialize rs2
aes64dsm x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2635294962481d62 # initialize rs1
li x22, 0xd63bceb825be2310 # initialize rs2
aes64dsm x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x986f8cdb10b2900f # initialize rs1
li x23, 0x65b6e0005bbcbc0b # initialize rs2
aes64dsm x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb71ccb5e47e5dbcc # initialize rs1
li x24, 0xe51dd8da59c99b4c # initialize rs2
aes64dsm x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd41680e4be05733c # initialize rs1
li x25, 0x7e82c2d7653a91a7 # initialize rs2
aes64dsm x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x4870ce8d4f2ee458 # initialize rs1
li x26, 0x710e7f4921a748f5 # initialize rs2
aes64dsm x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2136288ca1d58b92 # initialize rs1
li x27, 0x912f1dd2ec416ac2 # initialize rs2
aes64dsm x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x32af0ff0bb6427a3 # initialize rs1
li x28, 0x8c5af984439d1c2e # initialize rs2
aes64dsm x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6bee6c4d8a9b6ec8 # initialize rs1
li x29, 0x9591425fa160c99a # initialize rs2
aes64dsm x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xba43dc6b375dec5e # initialize rs1
li x30, 0x1eee33ca7ab43c29 # initialize rs2
aes64dsm x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xff81358766ab383a # initialize rs1
li x31, 0x541af24f2ceb9393 # initialize rs2
aes64dsm x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x15, x27 # perform first operation
aes64dsm x23, x24, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x17, x15 # perform first operation
aes64dsm x22, x6, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x22, x16 # perform first operation
aes64dsm x30, x8, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x5, x3 # perform first operation
aes64dsm x3, x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x26, x12 # perform first operation
aes64dsm x25, x19, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x1, x22 # perform first operation
aes64dsm x14, x29, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x29, x22 # perform first operation
aes64dsm x10, x25, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x10, x26 # perform first operation
aes64dsm x17, x1, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x1, x22 # perform first operation
aes64dsm x13, x15, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x24, x23 # perform first operation
aes64dsm x24, x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x5, x22 # perform first operation
aes64dsm x22, x18, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x27, x12 # perform first operation
aes64dsm x6, x25, x29 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x19, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
aes64dsm x27, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cp_sbox = 1
li x8, 0x0101010101010101 # initialize rs1
li x5, 0x0101010101010101 # initialize rs2
aes64dsm x12, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_sbox = 2
li x14, 0x0202020202020202 # initialize rs1
li x2, 0x0202020202020202 # initialize rs2
aes64dsm x18, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_sbox = 3
li x5, 0x0303030303030303 # initialize rs1
li x23, 0x0303030303030303 # initialize rs2
aes64dsm x29, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cp_sbox = 4
li x5, 0x0404040404040404 # initialize rs1
li x2, 0x0404040404040404 # initialize rs2
aes64dsm x13, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 528)

# Testcase cp_sbox = 5
li x8, 0x0505050505050505 # initialize rs1
li x28, 0x0505050505050505 # initialize rs2
aes64dsm x6, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_sbox = 6
li x16, 0x0606060606060606 # initialize rs1
li x1, 0x0606060606060606 # initialize rs2
aes64dsm x10, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cp_sbox = 7
li x31, 0x0707070707070707 # initialize rs1
li x3, 0x0707070707070707 # initialize rs2
aes64dsm x11, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cp_sbox = 8
li x5, 0x0808080808080808 # initialize rs1
li x9, 0x0808080808080808 # initialize rs2
aes64dsm x8, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_sbox = 9
li x7, 0x0909090909090909 # initialize rs1
li x22, 0x0909090909090909 # initialize rs2
aes64dsm x3, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cp_sbox = 10
li x26, 0x0a0a0a0a0a0a0a0a # initialize rs1
li x13, 0x0a0a0a0a0a0a0a0a # initialize rs2
aes64dsm x15, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cp_sbox = 11
li x23, 0x0b0b0b0b0b0b0b0b # initialize rs1
li x17, 0x0b0b0b0b0b0b0b0b # initialize rs2
aes64dsm x31, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_sbox = 12
li x16, 0x0c0c0c0c0c0c0c0c # initialize rs1
li x14, 0x0c0c0c0c0c0c0c0c # initialize rs2
aes64dsm x31, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cp_sbox = 13
li x5, 0x0d0d0d0d0d0d0d0d # initialize rs1
li x19, 0x0d0d0d0d0d0d0d0d # initialize rs2
aes64dsm x31, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cp_sbox = 14
li x8, 0x0e0e0e0e0e0e0e0e # initialize rs1
li x19, 0x0e0e0e0e0e0e0e0e # initialize rs2
aes64dsm x5, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cp_sbox = 15
li x5, 0x0f0f0f0f0f0f0f0f # initialize rs1
li x27, 0x0f0f0f0f0f0f0f0f # initialize rs2
aes64dsm x28, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cp_sbox = 16
li x23, 0x1010101010101010 # initialize rs1
li x15, 0x1010101010101010 # initialize rs2
aes64dsm x25, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cp_sbox = 17
li x31, 0x1111111111111111 # initialize rs1
li x25, 0x1111111111111111 # initialize rs2
aes64dsm x17, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cp_sbox = 18
li x15, 0x1212121212121212 # initialize rs1
li x19, 0x1212121212121212 # initialize rs2
aes64dsm x18, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cp_sbox = 19
li x9, 0x1313131313131313 # initialize rs1
li x5, 0x1313131313131313 # initialize rs2
aes64dsm x24, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cp_sbox = 20
li x9, 0x1414141414141414 # initialize rs1
li x27, 0x1414141414141414 # initialize rs2
aes64dsm x18, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_sbox = 21
li x27, 0x1515151515151515 # initialize rs1
li x1, 0x1515151515151515 # initialize rs2
aes64dsm x13, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cp_sbox = 22
li x5, 0x1616161616161616 # initialize rs1
li x21, 0x1616161616161616 # initialize rs2
aes64dsm x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cp_sbox = 23
li x30, 0x1717171717171717 # initialize rs1
li x8, 0x1717171717171717 # initialize rs2
aes64dsm x21, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_sbox = 24
li x30, 0x1818181818181818 # initialize rs1
li x9, 0x1818181818181818 # initialize rs2
aes64dsm x20, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 688)

# Testcase cp_sbox = 25
li x10, 0x1919191919191919 # initialize rs1
li x2, 0x1919191919191919 # initialize rs2
aes64dsm x17, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cp_sbox = 26
li x13, 0x1a1a1a1a1a1a1a1a # initialize rs1
li x23, 0x1a1a1a1a1a1a1a1a # initialize rs2
aes64dsm x29, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 704)

# Testcase cp_sbox = 27
li x24, 0x1b1b1b1b1b1b1b1b # initialize rs1
li x17, 0x1b1b1b1b1b1b1b1b # initialize rs2
aes64dsm x21, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cp_sbox = 28
li x14, 0x1c1c1c1c1c1c1c1c # initialize rs1
li x17, 0x1c1c1c1c1c1c1c1c # initialize rs2
aes64dsm x12, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cp_sbox = 29
li x5, 0x1d1d1d1d1d1d1d1d # initialize rs1
li x20, 0x1d1d1d1d1d1d1d1d # initialize rs2
aes64dsm x31, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cp_sbox = 30
li x2, 0x1e1e1e1e1e1e1e1e # initialize rs1
li x22, 0x1e1e1e1e1e1e1e1e # initialize rs2
aes64dsm x29, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cp_sbox = 31
li x30, 0x1f1f1f1f1f1f1f1f # initialize rs1
li x25, 0x1f1f1f1f1f1f1f1f # initialize rs2
aes64dsm x24, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 744)

# Testcase cp_sbox = 32
li x16, 0x2020202020202020 # initialize rs1
li x27, 0x2020202020202020 # initialize rs2
aes64dsm x11, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 752)

# Testcase cp_sbox = 33
li x22, 0x2121212121212121 # initialize rs1
li x27, 0x2121212121212121 # initialize rs2
aes64dsm x31, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_sbox = 34
li x13, 0x2222222222222222 # initialize rs1
li x23, 0x2222222222222222 # initialize rs2
aes64dsm x11, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cp_sbox = 35
li x11, 0x2323232323232323 # initialize rs1
li x13, 0x2323232323232323 # initialize rs2
aes64dsm x7, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_sbox = 36
li x6, 0x2424242424242424 # initialize rs1
li x13, 0x2424242424242424 # initialize rs2
aes64dsm x31, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cp_sbox = 37
li x16, 0x2525252525252525 # initialize rs1
li x30, 0x2525252525252525 # initialize rs2
aes64dsm x29, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cp_sbox = 38
li x20, 0x2626262626262626 # initialize rs1
li x19, 0x2626262626262626 # initialize rs2
aes64dsm x31, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cp_sbox = 39
li x30, 0x2727272727272727 # initialize rs1
li x26, 0x2727272727272727 # initialize rs2
aes64dsm x10, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cp_sbox = 40
li x28, 0x2828282828282828 # initialize rs1
li x24, 0x2828282828282828 # initialize rs2
aes64dsm x23, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cp_sbox = 41
li x10, 0x2929292929292929 # initialize rs1
li x28, 0x2929292929292929 # initialize rs2
aes64dsm x8, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cp_sbox = 42
li x30, 0x2a2a2a2a2a2a2a2a # initialize rs1
li x25, 0x2a2a2a2a2a2a2a2a # initialize rs2
aes64dsm x23, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_sbox = 43
li x1, 0x2b2b2b2b2b2b2b2b # initialize rs1
li x13, 0x2b2b2b2b2b2b2b2b # initialize rs2
aes64dsm x18, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cp_sbox = 44
li x20, 0x2c2c2c2c2c2c2c2c # initialize rs1
li x15, 0x2c2c2c2c2c2c2c2c # initialize rs2
aes64dsm x9, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cp_sbox = 45
li x10, 0x2d2d2d2d2d2d2d2d # initialize rs1
li x16, 0x2d2d2d2d2d2d2d2d # initialize rs2
aes64dsm x6, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cp_sbox = 46
li x14, 0x2e2e2e2e2e2e2e2e # initialize rs1
li x1, 0x2e2e2e2e2e2e2e2e # initialize rs2
aes64dsm x27, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cp_sbox = 47
li x20, 0x2f2f2f2f2f2f2f2f # initialize rs1
li x8, 0x2f2f2f2f2f2f2f2f # initialize rs2
aes64dsm x6, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cp_sbox = 48
li x8, 0x3030303030303030 # initialize rs1
li x6, 0x3030303030303030 # initialize rs2
aes64dsm x26, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cp_sbox = 49
li x15, 0x3131313131313131 # initialize rs1
li x24, 0x3131313131313131 # initialize rs2
aes64dsm x8, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cp_sbox = 50
li x11, 0x3232323232323232 # initialize rs1
li x7, 0x3232323232323232 # initialize rs2
aes64dsm x30, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

# Testcase cp_sbox = 51
li x15, 0x3333333333333333 # initialize rs1
li x7, 0x3333333333333333 # initialize rs2
aes64dsm x14, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_sbox = 52
li x22, 0x3434343434343434 # initialize rs1
li x6, 0x3434343434343434 # initialize rs2
aes64dsm x14, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cp_sbox = 53
li x20, 0x3535353535353535 # initialize rs1
li x9, 0x3535353535353535 # initialize rs2
aes64dsm x10, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cp_sbox = 54
li x21, 0x3636363636363636 # initialize rs1
li x20, 0x3636363636363636 # initialize rs2
aes64dsm x24, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cp_sbox = 55
li x29, 0x3737373737373737 # initialize rs1
li x17, 0x3737373737373737 # initialize rs2
aes64dsm x31, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cp_sbox = 56
li x6, 0x3838383838383838 # initialize rs1
li x25, 0x3838383838383838 # initialize rs2
aes64dsm x23, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cp_sbox = 57
li x21, 0x3939393939393939 # initialize rs1
li x29, 0x3939393939393939 # initialize rs2
aes64dsm x8, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cp_sbox = 58
li x2, 0x3a3a3a3a3a3a3a3a # initialize rs1
li x13, 0x3a3a3a3a3a3a3a3a # initialize rs2
aes64dsm x20, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cp_sbox = 59
li x28, 0x3b3b3b3b3b3b3b3b # initialize rs1
li x18, 0x3b3b3b3b3b3b3b3b # initialize rs2
aes64dsm x25, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cp_sbox = 60
li x25, 0x3c3c3c3c3c3c3c3c # initialize rs1
li x10, 0x3c3c3c3c3c3c3c3c # initialize rs2
aes64dsm x17, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 976)

# Testcase cp_sbox = 61
li x9, 0x3d3d3d3d3d3d3d3d # initialize rs1
li x1, 0x3d3d3d3d3d3d3d3d # initialize rs2
aes64dsm x23, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cp_sbox = 62
li x21, 0x3e3e3e3e3e3e3e3e # initialize rs1
li x28, 0x3e3e3e3e3e3e3e3e # initialize rs2
aes64dsm x29, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_sbox = 63
li x16, 0x3f3f3f3f3f3f3f3f # initialize rs1
li x19, 0x3f3f3f3f3f3f3f3f # initialize rs2
aes64dsm x12, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1000)

# Testcase cp_sbox = 64
li x8, 0x4040404040404040 # initialize rs1
li x6, 0x4040404040404040 # initialize rs2
aes64dsm x1, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cp_sbox = 65
li x27, 0x4141414141414141 # initialize rs1
li x21, 0x4141414141414141 # initialize rs2
aes64dsm x31, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cp_sbox = 66
li x11, 0x4242424242424242 # initialize rs1
li x15, 0x4242424242424242 # initialize rs2
aes64dsm x29, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1024)

# Testcase cp_sbox = 67
li x10, 0x4343434343434343 # initialize rs1
li x8, 0x4343434343434343 # initialize rs2
aes64dsm x29, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cp_sbox = 68
li x31, 0x4444444444444444 # initialize rs1
li x24, 0x4444444444444444 # initialize rs2
aes64dsm x1, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cp_sbox = 69
li x26, 0x4545454545454545 # initialize rs1
li x30, 0x4545454545454545 # initialize rs2
aes64dsm x29, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cp_sbox = 70
li x15, 0x4646464646464646 # initialize rs1
li x30, 0x4646464646464646 # initialize rs2
aes64dsm x13, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cp_sbox = 71
li x25, 0x4747474747474747 # initialize rs1
li x31, 0x4747474747474747 # initialize rs2
aes64dsm x21, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cp_sbox = 72
li x17, 0x4848484848484848 # initialize rs1
li x2, 0x4848484848484848 # initialize rs2
aes64dsm x8, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1072)

# Testcase cp_sbox = 73
li x23, 0x4949494949494949 # initialize rs1
li x29, 0x4949494949494949 # initialize rs2
aes64dsm x13, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cp_sbox = 74
li x3, 0x4a4a4a4a4a4a4a4a # initialize rs1
li x26, 0x4a4a4a4a4a4a4a4a # initialize rs2
aes64dsm x29, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cp_sbox = 75
li x16, 0x4b4b4b4b4b4b4b4b # initialize rs1
li x18, 0x4b4b4b4b4b4b4b4b # initialize rs2
aes64dsm x6, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cp_sbox = 76
li x14, 0x4c4c4c4c4c4c4c4c # initialize rs1
li x10, 0x4c4c4c4c4c4c4c4c # initialize rs2
aes64dsm x20, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cp_sbox = 77
li x24, 0x4d4d4d4d4d4d4d4d # initialize rs1
li x12, 0x4d4d4d4d4d4d4d4d # initialize rs2
aes64dsm x5, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cp_sbox = 78
li x15, 0x4e4e4e4e4e4e4e4e # initialize rs1
li x14, 0x4e4e4e4e4e4e4e4e # initialize rs2
aes64dsm x20, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cp_sbox = 79
li x21, 0x4f4f4f4f4f4f4f4f # initialize rs1
li x19, 0x4f4f4f4f4f4f4f4f # initialize rs2
aes64dsm x31, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cp_sbox = 80
li x5, 0x5050505050505050 # initialize rs1
li x28, 0x5050505050505050 # initialize rs2
aes64dsm x19, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1136)

# Testcase cp_sbox = 81
li x16, 0x5151515151515151 # initialize rs1
li x27, 0x5151515151515151 # initialize rs2
aes64dsm x14, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cp_sbox = 82
li x20, 0x5252525252525252 # initialize rs1
li x2, 0x5252525252525252 # initialize rs2
aes64dsm x22, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cp_sbox = 83
li x28, 0x5353535353535353 # initialize rs1
li x13, 0x5353535353535353 # initialize rs2
aes64dsm x7, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1160)

# Testcase cp_sbox = 84
li x1, 0x5454545454545454 # initialize rs1
li x5, 0x5454545454545454 # initialize rs2
aes64dsm x9, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cp_sbox = 85
li x27, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
aes64dsm x29, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cp_sbox = 86
li x22, 0x5656565656565656 # initialize rs1
li x10, 0x5656565656565656 # initialize rs2
aes64dsm x21, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cp_sbox = 87
li x30, 0x5757575757575757 # initialize rs1
li x18, 0x5757575757575757 # initialize rs2
aes64dsm x31, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cp_sbox = 88
li x13, 0x5858585858585858 # initialize rs1
li x26, 0x5858585858585858 # initialize rs2
aes64dsm x6, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1200)

# Testcase cp_sbox = 89
li x26, 0x5959595959595959 # initialize rs1
li x25, 0x5959595959595959 # initialize rs2
aes64dsm x7, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)

# Testcase cp_sbox = 90
li x12, 0x5a5a5a5a5a5a5a5a # initialize rs1
li x23, 0x5a5a5a5a5a5a5a5a # initialize rs2
aes64dsm x19, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cp_sbox = 91
li x31, 0x5b5b5b5b5b5b5b5b # initialize rs1
li x21, 0x5b5b5b5b5b5b5b5b # initialize rs2
aes64dsm x26, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

# Testcase cp_sbox = 92
li x3, 0x5c5c5c5c5c5c5c5c # initialize rs1
li x15, 0x5c5c5c5c5c5c5c5c # initialize rs2
aes64dsm x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cp_sbox = 93
li x20, 0x5d5d5d5d5d5d5d5d # initialize rs1
li x6, 0x5d5d5d5d5d5d5d5d # initialize rs2
aes64dsm x7, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cp_sbox = 94
li x19, 0x5e5e5e5e5e5e5e5e # initialize rs1
li x30, 0x5e5e5e5e5e5e5e5e # initialize rs2
aes64dsm x11, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cp_sbox = 95
li x17, 0x5f5f5f5f5f5f5f5f # initialize rs1
li x31, 0x5f5f5f5f5f5f5f5f # initialize rs2
aes64dsm x15, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

# Testcase cp_sbox = 96
li x30, 0x6060606060606060 # initialize rs1
li x8, 0x6060606060606060 # initialize rs2
aes64dsm x12, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1264)

# Testcase cp_sbox = 97
li x28, 0x6161616161616161 # initialize rs1
li x26, 0x6161616161616161 # initialize rs2
aes64dsm x23, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1272)

# Testcase cp_sbox = 98
li x18, 0x6262626262626262 # initialize rs1
li x11, 0x6262626262626262 # initialize rs2
aes64dsm x15, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cp_sbox = 99
li x5, 0x6363636363636363 # initialize rs1
li x2, 0x6363636363636363 # initialize rs2
aes64dsm x23, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1288)

# Testcase cp_sbox = 100
li x18, 0x6464646464646464 # initialize rs1
li x13, 0x6464646464646464 # initialize rs2
aes64dsm x2, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cp_sbox = 101
li x17, 0x6565656565656565 # initialize rs1
li x5, 0x6565656565656565 # initialize rs2
aes64dsm x27, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1304)

# Testcase cp_sbox = 102
li x28, 0x6666666666666666 # initialize rs1
li x3, 0x6666666666666666 # initialize rs2
aes64dsm x20, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1312)

# Testcase cp_sbox = 103
li x27, 0x6767676767676767 # initialize rs1
li x16, 0x6767676767676767 # initialize rs2
aes64dsm x23, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1320)

# Testcase cp_sbox = 104
li x23, 0x6868686868686868 # initialize rs1
li x5, 0x6868686868686868 # initialize rs2
aes64dsm x27, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cp_sbox = 105
li x30, 0x6969696969696969 # initialize rs1
li x19, 0x6969696969696969 # initialize rs2
aes64dsm x23, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cp_sbox = 106
li x14, 0x6a6a6a6a6a6a6a6a # initialize rs1
li x8, 0x6a6a6a6a6a6a6a6a # initialize rs2
aes64dsm x26, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cp_sbox = 107
li x16, 0x6b6b6b6b6b6b6b6b # initialize rs1
li x22, 0x6b6b6b6b6b6b6b6b # initialize rs2
aes64dsm x20, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1352)

# Testcase cp_sbox = 108
li x16, 0x6c6c6c6c6c6c6c6c # initialize rs1
li x22, 0x6c6c6c6c6c6c6c6c # initialize rs2
aes64dsm x20, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cp_sbox = 109
li x30, 0x6d6d6d6d6d6d6d6d # initialize rs1
li x24, 0x6d6d6d6d6d6d6d6d # initialize rs2
aes64dsm x7, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1368)

# Testcase cp_sbox = 110
li x29, 0x6e6e6e6e6e6e6e6e # initialize rs1
li x24, 0x6e6e6e6e6e6e6e6e # initialize rs2
aes64dsm x15, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cp_sbox = 111
li x28, 0x6f6f6f6f6f6f6f6f # initialize rs1
li x27, 0x6f6f6f6f6f6f6f6f # initialize rs2
aes64dsm x16, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1384)

# Testcase cp_sbox = 112
li x6, 0x7070707070707070 # initialize rs1
li x15, 0x7070707070707070 # initialize rs2
aes64dsm x13, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cp_sbox = 113
li x15, 0x7171717171717171 # initialize rs1
li x16, 0x7171717171717171 # initialize rs2
aes64dsm x9, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cp_sbox = 114
li x14, 0x7272727272727272 # initialize rs1
li x27, 0x7272727272727272 # initialize rs2
aes64dsm x23, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cp_sbox = 115
li x5, 0x7373737373737373 # initialize rs1
li x9, 0x7373737373737373 # initialize rs2
aes64dsm x25, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1416)

# Testcase cp_sbox = 116
li x17, 0x7474747474747474 # initialize rs1
li x23, 0x7474747474747474 # initialize rs2
aes64dsm x20, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cp_sbox = 117
li x12, 0x7575757575757575 # initialize rs1
li x21, 0x7575757575757575 # initialize rs2
aes64dsm x13, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cp_sbox = 118
li x31, 0x7676767676767676 # initialize rs1
li x26, 0x7676767676767676 # initialize rs2
aes64dsm x22, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cp_sbox = 119
li x16, 0x7777777777777777 # initialize rs1
li x5, 0x7777777777777777 # initialize rs2
aes64dsm x22, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cp_sbox = 120
li x6, 0x7878787878787878 # initialize rs1
li x24, 0x7878787878787878 # initialize rs2
aes64dsm x8, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cp_sbox = 121
li x16, 0x7979797979797979 # initialize rs1
li x3, 0x7979797979797979 # initialize rs2
aes64dsm x23, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cp_sbox = 122
li x21, 0x7a7a7a7a7a7a7a7a # initialize rs1
li x29, 0x7a7a7a7a7a7a7a7a # initialize rs2
aes64dsm x23, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cp_sbox = 123
li x11, 0x7b7b7b7b7b7b7b7b # initialize rs1
li x20, 0x7b7b7b7b7b7b7b7b # initialize rs2
aes64dsm x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1480)

# Testcase cp_sbox = 124
li x28, 0x7c7c7c7c7c7c7c7c # initialize rs1
li x24, 0x7c7c7c7c7c7c7c7c # initialize rs2
aes64dsm x16, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cp_sbox = 125
li x25, 0x7d7d7d7d7d7d7d7d # initialize rs1
li x5, 0x7d7d7d7d7d7d7d7d # initialize rs2
aes64dsm x21, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cp_sbox = 126
li x25, 0x7e7e7e7e7e7e7e7e # initialize rs1
li x2, 0x7e7e7e7e7e7e7e7e # initialize rs2
aes64dsm x19, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1504)

# Testcase cp_sbox = 127
li x12, 0x7f7f7f7f7f7f7f7f # initialize rs1
li x8, 0x7f7f7f7f7f7f7f7f # initialize rs2
aes64dsm x13, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cp_sbox = 128
li x29, 0x8080808080808080 # initialize rs1
li x10, 0x8080808080808080 # initialize rs2
aes64dsm x13, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cp_sbox = 129
li x29, 0x8181818181818181 # initialize rs1
li x25, 0x8181818181818181 # initialize rs2
aes64dsm x5, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1528)

# Testcase cp_sbox = 130
li x10, 0x8282828282828282 # initialize rs1
li x3, 0x8282828282828282 # initialize rs2
aes64dsm x8, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cp_sbox = 131
li x18, 0x8383838383838383 # initialize rs1
li x31, 0x8383838383838383 # initialize rs2
aes64dsm x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1544)

# Testcase cp_sbox = 132
li x12, 0x8484848484848484 # initialize rs1
li x1, 0x8484848484848484 # initialize rs2
aes64dsm x3, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cp_sbox = 133
li x29, 0x8585858585858585 # initialize rs1
li x12, 0x8585858585858585 # initialize rs2
aes64dsm x9, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1560)

# Testcase cp_sbox = 134
li x17, 0x8686868686868686 # initialize rs1
li x27, 0x8686868686868686 # initialize rs2
aes64dsm x24, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1568)

# Testcase cp_sbox = 135
li x9, 0x8787878787878787 # initialize rs1
li x6, 0x8787878787878787 # initialize rs2
aes64dsm x21, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1576)

# Testcase cp_sbox = 136
li x15, 0x8888888888888888 # initialize rs1
li x18, 0x8888888888888888 # initialize rs2
aes64dsm x24, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1584)

# Testcase cp_sbox = 137
li x8, 0x8989898989898989 # initialize rs1
li x11, 0x8989898989898989 # initialize rs2
aes64dsm x17, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1592)

# Testcase cp_sbox = 138
li x21, 0x8a8a8a8a8a8a8a8a # initialize rs1
li x14, 0x8a8a8a8a8a8a8a8a # initialize rs2
aes64dsm x28, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1600)

# Testcase cp_sbox = 139
li x27, 0x8b8b8b8b8b8b8b8b # initialize rs1
li x24, 0x8b8b8b8b8b8b8b8b # initialize rs2
aes64dsm x5, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1608)

# Testcase cp_sbox = 140
li x19, 0x8c8c8c8c8c8c8c8c # initialize rs1
li x16, 0x8c8c8c8c8c8c8c8c # initialize rs2
aes64dsm x25, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1616)

# Testcase cp_sbox = 141
li x3, 0x8d8d8d8d8d8d8d8d # initialize rs1
li x12, 0x8d8d8d8d8d8d8d8d # initialize rs2
aes64dsm x15, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cp_sbox = 142
li x22, 0x8e8e8e8e8e8e8e8e # initialize rs1
li x31, 0x8e8e8e8e8e8e8e8e # initialize rs2
aes64dsm x1, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1632)

# Testcase cp_sbox = 143
li x22, 0x8f8f8f8f8f8f8f8f # initialize rs1
li x9, 0x8f8f8f8f8f8f8f8f # initialize rs2
aes64dsm x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

# Testcase cp_sbox = 144
li x3, 0x9090909090909090 # initialize rs1
li x2, 0x9090909090909090 # initialize rs2
aes64dsm x13, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1648)

# Testcase cp_sbox = 145
li x15, 0x9191919191919191 # initialize rs1
li x27, 0x9191919191919191 # initialize rs2
aes64dsm x10, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1656)

# Testcase cp_sbox = 146
li x21, 0x9292929292929292 # initialize rs1
li x13, 0x9292929292929292 # initialize rs2
aes64dsm x19, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1664)

# Testcase cp_sbox = 147
li x28, 0x9393939393939393 # initialize rs1
li x16, 0x9393939393939393 # initialize rs2
aes64dsm x21, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cp_sbox = 148
li x23, 0x9494949494949494 # initialize rs1
li x14, 0x9494949494949494 # initialize rs2
aes64dsm x21, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cp_sbox = 149
li x22, 0x9595959595959595 # initialize rs1
li x8, 0x9595959595959595 # initialize rs2
aes64dsm x26, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1688)

# Testcase cp_sbox = 150
li x23, 0x9696969696969696 # initialize rs1
li x30, 0x9696969696969696 # initialize rs2
aes64dsm x13, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

# Testcase cp_sbox = 151
li x11, 0x9797979797979797 # initialize rs1
li x22, 0x9797979797979797 # initialize rs2
aes64dsm x20, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1704)

# Testcase cp_sbox = 152
li x23, 0x9898989898989898 # initialize rs1
li x25, 0x9898989898989898 # initialize rs2
aes64dsm x10, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

# Testcase cp_sbox = 153
li x15, 0x9999999999999999 # initialize rs1
li x25, 0x9999999999999999 # initialize rs2
aes64dsm x31, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1720)

# Testcase cp_sbox = 154
li x1, 0x9a9a9a9a9a9a9a9a # initialize rs1
li x25, 0x9a9a9a9a9a9a9a9a # initialize rs2
aes64dsm x28, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1728)

# Testcase cp_sbox = 155
li x21, 0x9b9b9b9b9b9b9b9b # initialize rs1
li x31, 0x9b9b9b9b9b9b9b9b # initialize rs2
aes64dsm x29, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1736)

# Testcase cp_sbox = 156
li x21, 0x9c9c9c9c9c9c9c9c # initialize rs1
li x14, 0x9c9c9c9c9c9c9c9c # initialize rs2
aes64dsm x1, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cp_sbox = 157
li x8, 0x9d9d9d9d9d9d9d9d # initialize rs1
li x22, 0x9d9d9d9d9d9d9d9d # initialize rs2
aes64dsm x2, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1752)

# Testcase cp_sbox = 158
li x9, 0x9e9e9e9e9e9e9e9e # initialize rs1
li x1, 0x9e9e9e9e9e9e9e9e # initialize rs2
aes64dsm x7, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1760)

# Testcase cp_sbox = 159
li x12, 0x9f9f9f9f9f9f9f9f # initialize rs1
li x26, 0x9f9f9f9f9f9f9f9f # initialize rs2
aes64dsm x7, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1768)

# Testcase cp_sbox = 160
li x27, 0xa0a0a0a0a0a0a0a0 # initialize rs1
li x23, 0xa0a0a0a0a0a0a0a0 # initialize rs2
aes64dsm x21, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1776)

# Testcase cp_sbox = 161
li x27, 0xa1a1a1a1a1a1a1a1 # initialize rs1
li x10, 0xa1a1a1a1a1a1a1a1 # initialize rs2
aes64dsm x15, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1784)

# Testcase cp_sbox = 162
li x19, 0xa2a2a2a2a2a2a2a2 # initialize rs1
li x29, 0xa2a2a2a2a2a2a2a2 # initialize rs2
aes64dsm x17, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 163
li x9, 0xa3a3a3a3a3a3a3a3 # initialize rs1
li x6, 0xa3a3a3a3a3a3a3a3 # initialize rs2
aes64dsm x2, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cp_sbox = 164
li x12, 0xa4a4a4a4a4a4a4a4 # initialize rs1
li x24, 0xa4a4a4a4a4a4a4a4 # initialize rs2
aes64dsm x21, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_sbox = 165
li x15, 0xa5a5a5a5a5a5a5a5 # initialize rs1
li x6, 0xa5a5a5a5a5a5a5a5 # initialize rs2
aes64dsm x26, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_sbox = 166
li x8, 0xa6a6a6a6a6a6a6a6 # initialize rs1
li x12, 0xa6a6a6a6a6a6a6a6 # initialize rs2
aes64dsm x26, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cp_sbox = 167
li x19, 0xa7a7a7a7a7a7a7a7 # initialize rs1
li x7, 0xa7a7a7a7a7a7a7a7 # initialize rs2
aes64dsm x20, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

# Testcase cp_sbox = 168
li x16, 0xa8a8a8a8a8a8a8a8 # initialize rs1
li x22, 0xa8a8a8a8a8a8a8a8 # initialize rs2
aes64dsm x20, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

# Testcase cp_sbox = 169
li x5, 0xa9a9a9a9a9a9a9a9 # initialize rs1
li x26, 0xa9a9a9a9a9a9a9a9 # initialize rs2
aes64dsm x6, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 48)

# Testcase cp_sbox = 170
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64dsm x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_sbox = 171
li x20, 0xabababababababab # initialize rs1
li x23, 0xabababababababab # initialize rs2
aes64dsm x2, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_sbox = 172
li x10, 0xacacacacacacacac # initialize rs1
li x1, 0xacacacacacacacac # initialize rs2
aes64dsm x9, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_sbox = 173
li x11, 0xadadadadadadadad # initialize rs1
li x10, 0xadadadadadadadad # initialize rs2
aes64dsm x14, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_sbox = 174
li x26, 0xaeaeaeaeaeaeaeae # initialize rs1
li x8, 0xaeaeaeaeaeaeaeae # initialize rs2
aes64dsm x15, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_sbox = 175
li x24, 0xafafafafafafafaf # initialize rs1
li x3, 0xafafafafafafafaf # initialize rs2
aes64dsm x19, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_sbox = 176
li x18, 0xb0b0b0b0b0b0b0b0 # initialize rs1
li x16, 0xb0b0b0b0b0b0b0b0 # initialize rs2
aes64dsm x24, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_sbox = 177
li x8, 0xb1b1b1b1b1b1b1b1 # initialize rs1
li x13, 0xb1b1b1b1b1b1b1b1 # initialize rs2
aes64dsm x29, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_sbox = 178
li x24, 0xb2b2b2b2b2b2b2b2 # initialize rs1
li x9, 0xb2b2b2b2b2b2b2b2 # initialize rs2
aes64dsm x19, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_sbox = 179
li x2, 0xb3b3b3b3b3b3b3b3 # initialize rs1
li x16, 0xb3b3b3b3b3b3b3b3 # initialize rs2
aes64dsm x1, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_sbox = 180
li x1, 0xb4b4b4b4b4b4b4b4 # initialize rs1
li x31, 0xb4b4b4b4b4b4b4b4 # initialize rs2
aes64dsm x10, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_sbox = 181
li x17, 0xb5b5b5b5b5b5b5b5 # initialize rs1
li x22, 0xb5b5b5b5b5b5b5b5 # initialize rs2
aes64dsm x2, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_sbox = 182
li x9, 0xb6b6b6b6b6b6b6b6 # initialize rs1
li x28, 0xb6b6b6b6b6b6b6b6 # initialize rs2
aes64dsm x24, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cp_sbox = 183
li x12, 0xb7b7b7b7b7b7b7b7 # initialize rs1
li x6, 0xb7b7b7b7b7b7b7b7 # initialize rs2
aes64dsm x22, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_sbox = 184
li x5, 0xb8b8b8b8b8b8b8b8 # initialize rs1
li x8, 0xb8b8b8b8b8b8b8b8 # initialize rs2
aes64dsm x26, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_sbox = 185
li x7, 0xb9b9b9b9b9b9b9b9 # initialize rs1
li x3, 0xb9b9b9b9b9b9b9b9 # initialize rs2
aes64dsm x13, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_sbox = 186
li x8, 0xbabababababababa # initialize rs1
li x15, 0xbabababababababa # initialize rs2
aes64dsm x21, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cp_sbox = 187
li x12, 0xbbbbbbbbbbbbbbbb # initialize rs1
li x24, 0xbbbbbbbbbbbbbbbb # initialize rs2
aes64dsm x8, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_sbox = 188
li x30, 0xbcbcbcbcbcbcbcbc # initialize rs1
li x18, 0xbcbcbcbcbcbcbcbc # initialize rs2
aes64dsm x28, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_sbox = 189
li x3, 0xbdbdbdbdbdbdbdbd # initialize rs1
li x6, 0xbdbdbdbdbdbdbdbd # initialize rs2
aes64dsm x15, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_sbox = 190
li x3, 0xbebebebebebebebe # initialize rs1
li x19, 0xbebebebebebebebe # initialize rs2
aes64dsm x9, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_sbox = 191
li x9, 0xbfbfbfbfbfbfbfbf # initialize rs1
li x18, 0xbfbfbfbfbfbfbfbf # initialize rs2
aes64dsm x31, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_sbox = 192
li x8, 0xc0c0c0c0c0c0c0c0 # initialize rs1
li x29, 0xc0c0c0c0c0c0c0c0 # initialize rs2
aes64dsm x25, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cp_sbox = 193
li x3, 0xc1c1c1c1c1c1c1c1 # initialize rs1
li x30, 0xc1c1c1c1c1c1c1c1 # initialize rs2
aes64dsm x21, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_sbox = 194
li x2, 0xc2c2c2c2c2c2c2c2 # initialize rs1
li x26, 0xc2c2c2c2c2c2c2c2 # initialize rs2
aes64dsm x15, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cp_sbox = 195
li x8, 0xc3c3c3c3c3c3c3c3 # initialize rs1
li x13, 0xc3c3c3c3c3c3c3c3 # initialize rs2
aes64dsm x1, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_sbox = 196
li x8, 0xc4c4c4c4c4c4c4c4 # initialize rs1
li x13, 0xc4c4c4c4c4c4c4c4 # initialize rs2
aes64dsm x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_sbox = 197
li x26, 0xc5c5c5c5c5c5c5c5 # initialize rs1
li x31, 0xc5c5c5c5c5c5c5c5 # initialize rs2
aes64dsm x25, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 272)

# Testcase cp_sbox = 198
li x8, 0xc6c6c6c6c6c6c6c6 # initialize rs1
li x30, 0xc6c6c6c6c6c6c6c6 # initialize rs2
aes64dsm x18, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_sbox = 199
li x18, 0xc7c7c7c7c7c7c7c7 # initialize rs1
li x23, 0xc7c7c7c7c7c7c7c7 # initialize rs2
aes64dsm x8, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_sbox = 200
li x10, 0xc8c8c8c8c8c8c8c8 # initialize rs1
li x14, 0xc8c8c8c8c8c8c8c8 # initialize rs2
aes64dsm x19, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 296)

# Testcase cp_sbox = 201
li x20, 0xc9c9c9c9c9c9c9c9 # initialize rs1
li x2, 0xc9c9c9c9c9c9c9c9 # initialize rs2
aes64dsm x7, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_sbox = 202
li x29, 0xcacacacacacacaca # initialize rs1
li x22, 0xcacacacacacacaca # initialize rs2
aes64dsm x25, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cp_sbox = 203
li x25, 0xcbcbcbcbcbcbcbcb # initialize rs1
li x12, 0xcbcbcbcbcbcbcbcb # initialize rs2
aes64dsm x7, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_sbox = 204
li x12, 0xcccccccccccccccc # initialize rs1
li x23, 0xcccccccccccccccc # initialize rs2
aes64dsm x17, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 328)

# Testcase cp_sbox = 205
li x2, 0xcdcdcdcdcdcdcdcd # initialize rs1
li x18, 0xcdcdcdcdcdcdcdcd # initialize rs2
aes64dsm x30, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_sbox = 206
li x24, 0xcececececececece # initialize rs1
li x27, 0xcececececececece # initialize rs2
aes64dsm x3, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cp_sbox = 207
li x11, 0xcfcfcfcfcfcfcfcf # initialize rs1
li x28, 0xcfcfcfcfcfcfcfcf # initialize rs2
aes64dsm x3, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 352)

# Testcase cp_sbox = 208
li x31, 0xd0d0d0d0d0d0d0d0 # initialize rs1
li x26, 0xd0d0d0d0d0d0d0d0 # initialize rs2
aes64dsm x18, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cp_sbox = 209
li x23, 0xd1d1d1d1d1d1d1d1 # initialize rs1
li x3, 0xd1d1d1d1d1d1d1d1 # initialize rs2
aes64dsm x26, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cp_sbox = 210
li x23, 0xd2d2d2d2d2d2d2d2 # initialize rs1
li x16, 0xd2d2d2d2d2d2d2d2 # initialize rs2
aes64dsm x20, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cp_sbox = 211
li x5, 0xd3d3d3d3d3d3d3d3 # initialize rs1
li x12, 0xd3d3d3d3d3d3d3d3 # initialize rs2
aes64dsm x1, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_sbox = 212
li x14, 0xd4d4d4d4d4d4d4d4 # initialize rs1
li x13, 0xd4d4d4d4d4d4d4d4 # initialize rs2
aes64dsm x24, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cp_sbox = 213
li x6, 0xd5d5d5d5d5d5d5d5 # initialize rs1
li x31, 0xd5d5d5d5d5d5d5d5 # initialize rs2
aes64dsm x26, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_sbox = 214
li x6, 0xd6d6d6d6d6d6d6d6 # initialize rs1
li x15, 0xd6d6d6d6d6d6d6d6 # initialize rs2
aes64dsm x25, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 408)

# Testcase cp_sbox = 215
li x28, 0xd7d7d7d7d7d7d7d7 # initialize rs1
li x18, 0xd7d7d7d7d7d7d7d7 # initialize rs2
aes64dsm x30, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cp_sbox = 216
li x27, 0xd8d8d8d8d8d8d8d8 # initialize rs1
li x14, 0xd8d8d8d8d8d8d8d8 # initialize rs2
aes64dsm x17, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cp_sbox = 217
li x24, 0xd9d9d9d9d9d9d9d9 # initialize rs1
li x11, 0xd9d9d9d9d9d9d9d9 # initialize rs2
aes64dsm x12, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_sbox = 218
li x28, 0xdadadadadadadada # initialize rs1
li x7, 0xdadadadadadadada # initialize rs2
aes64dsm x26, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_sbox = 219
li x21, 0xdbdbdbdbdbdbdbdb # initialize rs1
li x23, 0xdbdbdbdbdbdbdbdb # initialize rs2
aes64dsm x6, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_sbox = 220
li x2, 0xdcdcdcdcdcdcdcdc # initialize rs1
li x19, 0xdcdcdcdcdcdcdcdc # initialize rs2
aes64dsm x10, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_sbox = 221
li x2, 0xdddddddddddddddd # initialize rs1
li x5, 0xdddddddddddddddd # initialize rs2
aes64dsm x10, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_sbox = 222
li x2, 0xdededededededede # initialize rs1
li x9, 0xdededededededede # initialize rs2
aes64dsm x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 472)

# Testcase cp_sbox = 223
li x9, 0xdfdfdfdfdfdfdfdf # initialize rs1
li x17, 0xdfdfdfdfdfdfdfdf # initialize rs2
aes64dsm x8, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_sbox = 224
li x23, 0xe0e0e0e0e0e0e0e0 # initialize rs1
li x27, 0xe0e0e0e0e0e0e0e0 # initialize rs2
aes64dsm x26, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_sbox = 225
li x3, 0xe1e1e1e1e1e1e1e1 # initialize rs1
li x6, 0xe1e1e1e1e1e1e1e1 # initialize rs2
aes64dsm x29, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cp_sbox = 226
li x15, 0xe2e2e2e2e2e2e2e2 # initialize rs1
li x6, 0xe2e2e2e2e2e2e2e2 # initialize rs2
aes64dsm x21, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_sbox = 227
li x1, 0xe3e3e3e3e3e3e3e3 # initialize rs1
li x13, 0xe3e3e3e3e3e3e3e3 # initialize rs2
aes64dsm x11, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 512)

# Testcase cp_sbox = 228
li x2, 0xe4e4e4e4e4e4e4e4 # initialize rs1
li x22, 0xe4e4e4e4e4e4e4e4 # initialize rs2
aes64dsm x15, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cp_sbox = 229
li x25, 0xe5e5e5e5e5e5e5e5 # initialize rs1
li x1, 0xe5e5e5e5e5e5e5e5 # initialize rs2
aes64dsm x13, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 528)

# Testcase cp_sbox = 230
li x8, 0xe6e6e6e6e6e6e6e6 # initialize rs1
li x21, 0xe6e6e6e6e6e6e6e6 # initialize rs2
aes64dsm x30, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cp_sbox = 231
li x27, 0xe7e7e7e7e7e7e7e7 # initialize rs1
li x19, 0xe7e7e7e7e7e7e7e7 # initialize rs2
aes64dsm x26, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cp_sbox = 232
li x8, 0xe8e8e8e8e8e8e8e8 # initialize rs1
li x1, 0xe8e8e8e8e8e8e8e8 # initialize rs2
aes64dsm x31, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cp_sbox = 233
li x3, 0xe9e9e9e9e9e9e9e9 # initialize rs1
li x19, 0xe9e9e9e9e9e9e9e9 # initialize rs2
aes64dsm x24, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 560)

# Testcase cp_sbox = 234
li x7, 0xeaeaeaeaeaeaeaea # initialize rs1
li x22, 0xeaeaeaeaeaeaeaea # initialize rs2
aes64dsm x13, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cp_sbox = 235
li x26, 0xebebebebebebebeb # initialize rs1
li x22, 0xebebebebebebebeb # initialize rs2
aes64dsm x27, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_sbox = 236
li x7, 0xecececececececec # initialize rs1
li x8, 0xecececececececec # initialize rs2
aes64dsm x31, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_sbox = 237
li x22, 0xedededededededed # initialize rs1
li x6, 0xedededededededed # initialize rs2
aes64dsm x20, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cp_sbox = 238
li x17, 0xeeeeeeeeeeeeeeee # initialize rs1
li x3, 0xeeeeeeeeeeeeeeee # initialize rs2
aes64dsm x30, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cp_sbox = 239
li x11, 0xefefefefefefefef # initialize rs1
li x10, 0xefefefefefefefef # initialize rs2
aes64dsm x14, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cp_sbox = 240
li x14, 0xf0f0f0f0f0f0f0f0 # initialize rs1
li x31, 0xf0f0f0f0f0f0f0f0 # initialize rs2
aes64dsm x30, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cp_sbox = 241
li x26, 0xf1f1f1f1f1f1f1f1 # initialize rs1
li x21, 0xf1f1f1f1f1f1f1f1 # initialize rs2
aes64dsm x22, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cp_sbox = 242
li x3, 0xf2f2f2f2f2f2f2f2 # initialize rs1
li x15, 0xf2f2f2f2f2f2f2f2 # initialize rs2
aes64dsm x16, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_sbox = 243
li x11, 0xf3f3f3f3f3f3f3f3 # initialize rs1
li x12, 0xf3f3f3f3f3f3f3f3 # initialize rs2
aes64dsm x1, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cp_sbox = 244
li x11, 0xf4f4f4f4f4f4f4f4 # initialize rs1
li x6, 0xf4f4f4f4f4f4f4f4 # initialize rs2
aes64dsm x1, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cp_sbox = 245
li x30, 0xf5f5f5f5f5f5f5f5 # initialize rs1
li x10, 0xf5f5f5f5f5f5f5f5 # initialize rs2
aes64dsm x31, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cp_sbox = 246
li x8, 0xf6f6f6f6f6f6f6f6 # initialize rs1
li x24, 0xf6f6f6f6f6f6f6f6 # initialize rs2
aes64dsm x6, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cp_sbox = 247
li x29, 0xf7f7f7f7f7f7f7f7 # initialize rs1
li x11, 0xf7f7f7f7f7f7f7f7 # initialize rs2
aes64dsm x26, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cp_sbox = 248
li x13, 0xf8f8f8f8f8f8f8f8 # initialize rs1
li x26, 0xf8f8f8f8f8f8f8f8 # initialize rs2
aes64dsm x6, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 680)

# Testcase cp_sbox = 249
li x22, 0xf9f9f9f9f9f9f9f9 # initialize rs1
li x16, 0xf9f9f9f9f9f9f9f9 # initialize rs2
aes64dsm x28, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cp_sbox = 250
li x17, 0xfafafafafafafafa # initialize rs1
li x11, 0xfafafafafafafafa # initialize rs2
aes64dsm x27, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 696)

# Testcase cp_sbox = 251
li x11, 0xfbfbfbfbfbfbfbfb # initialize rs1
li x25, 0xfbfbfbfbfbfbfbfb # initialize rs2
aes64dsm x20, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cp_sbox = 252
li x20, 0xfcfcfcfcfcfcfcfc # initialize rs1
li x1, 0xfcfcfcfcfcfcfcfc # initialize rs2
aes64dsm x19, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cp_sbox = 253
li x31, 0xfdfdfdfdfdfdfdfd # initialize rs1
li x24, 0xfdfdfdfdfdfdfdfd # initialize rs2
aes64dsm x10, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cp_sbox = 254
li x22, 0xfefefefefefefefe # initialize rs1
li x11, 0xfefefefefefefefe # initialize rs2
aes64dsm x3, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cp_sbox = 255
li x20, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
aes64dsm x27, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

#.EQU SIGSIZE,6144


// ******************
// Tests from: WALLY-COV-aes64im.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xac31970da3122023 # initialize rs1
aes64im x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x12f83743ff6a04f8 # initialize rs1
aes64im x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x108188dd3c8eedef # initialize rs1
aes64im x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8a34253625868820 # initialize rs1
aes64im x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xedca039151b8dfd0 # initialize rs1
aes64im x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1963dcc6c0c4369d # initialize rs1
aes64im x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3ce2bc7fac47cd9b # initialize rs1
aes64im x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9955075896c9b3b # initialize rs1
aes64im x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbd31903ed9889f8c # initialize rs1
aes64im x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8ccc3a7daaf13cc0 # initialize rs1
aes64im x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x50f21d92815ed0eb # initialize rs1
aes64im x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x523eb4b213505dad # initialize rs1
aes64im x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe50911a4f36865d6 # initialize rs1
aes64im x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe9878884e8a1968c # initialize rs1
aes64im x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4d5050724e5208fd # initialize rs1
aes64im x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4458c4289ec1f02f # initialize rs1
aes64im x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb40853c4ad7fc34d # initialize rs1
aes64im x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe9ee81b7a3938ab5 # initialize rs1
aes64im x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x414179a988720109 # initialize rs1
aes64im x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x65923957c93062f8 # initialize rs1
aes64im x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1aa560b01e49ef0b # initialize rs1
aes64im x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3eb75c26b2e22744 # initialize rs1
aes64im x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb4c26b1393817030 # initialize rs1
aes64im x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x8c116b7fce56107b # initialize rs1
aes64im x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa0b9a818870ec5f6 # initialize rs1
aes64im x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd933ee5e47a53a81 # initialize rs1
aes64im x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa2d3e01c12c84cfa # initialize rs1
aes64im x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x968a09a23dc3488e # initialize rs1
aes64im x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6e45da1c055dad7f # initialize rs1
aes64im x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x5adbbdd248941f1b # initialize rs1
aes64im x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb8e5f55b102a5350 # initialize rs1
aes64im x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x59df0444a3c3062c # initialize rs1
aes64im x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rd (Test destination rd = x0)
li x5, 0x59e277ce10a14cbb # initialize rs1
aes64im x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xbdd737348f3cac7b # initialize rs1
aes64im x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x8fc4a31fbe9e18ba # initialize rs1
aes64im x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x851736e4e6d99333 # initialize rs1
aes64im x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xcc5d8c8b14d6abd5 # initialize rs1
aes64im x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xb1faddc872179afc # initialize rs1
aes64im x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x8599591e99d10509 # initialize rs1
aes64im x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x2ad4d754052b5a5b # initialize rs1
aes64im x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x77a0cf3687f5a814 # initialize rs1
aes64im x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x7b883a58c2f6c879 # initialize rs1
aes64im x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x994c49652740e956 # initialize rs1
aes64im x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0xb556b0242327bd92 # initialize rs1
aes64im x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xe2c37911acd91f0d # initialize rs1
aes64im x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x31, 0x2fe6fbdbd98a4089 # initialize rs1
aes64im x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5958fdec749a0741 # initialize rs1
aes64im x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x9c8bf25fd8a89daf # initialize rs1
aes64im x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x3f8dc8b601f9bd32 # initialize rs1
aes64im x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0xf0fb0d64cd50780b # initialize rs1
aes64im x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0x9e990ee380424fb9 # initialize rs1
aes64im x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0x05bee6b2269a8676 # initialize rs1
aes64im x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x38e8572626a34127 # initialize rs1
aes64im x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x4b353bd6523e97bf # initialize rs1
aes64im x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0xc84665fa4e4db449 # initialize rs1
aes64im x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0x34f2d1e0e328eeb3 # initialize rs1
aes64im x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0xbc5ce462fb564920 # initialize rs1
aes64im x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xea56b4b7754f9029 # initialize rs1
aes64im x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0x8df47ccc8fe4442d # initialize rs1
aes64im x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x4e83ce9530111af6 # initialize rs1
aes64im x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xc395b6a28df12868 # initialize rs1
aes64im x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x17f09cc0951f0e11 # initialize rs1
aes64im x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x7ab8cd9b0f4d8be7 # initialize rs1
aes64im x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x8bd8de27f596f926 # initialize rs1
aes64im x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
aes64im x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
aes64im x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x0000000000000002 # initialize rs1
aes64im x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
aes64im x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
aes64im x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
aes64im x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
aes64im x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
aes64im x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
aes64im x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
aes64im x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
aes64im x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
aes64im x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
aes64im x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
aes64im x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
aes64im x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
aes64im x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc7043785e7576202 # initialize rs1
aes64im x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd7d305ff0d37a87c # initialize rs1
aes64im x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x474663917ea7658e # initialize rs1
aes64im x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4e0b8a03730edc8b # initialize rs1
aes64im x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x44035435e26a2ba3 # initialize rs1
aes64im x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x63c622b867bf528a # initialize rs1
aes64im x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x644bdec8f7bfc443 # initialize rs1
aes64im x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8b16ee7c29abb485 # initialize rs1
aes64im x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc70d97f8add7f244 # initialize rs1
aes64im x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa4131577505948e5 # initialize rs1
aes64im x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0f68d340c5a3c94b # initialize rs1
aes64im x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7ad10d89b23010d0 # initialize rs1
aes64im x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe49ac7d30fbe93df # initialize rs1
aes64im x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1f085e3c51103fb9 # initialize rs1
aes64im x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x159f6f1f1955a6c8 # initialize rs1
aes64im x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5ab61e8cb0b13509 # initialize rs1
aes64im x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x22dca9643c13df79 # initialize rs1
aes64im x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc6ea3828b029d5df # initialize rs1
aes64im x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6b22d60bc7a3fb4a # initialize rs1
aes64im x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xff0716c025939ffb # initialize rs1
aes64im x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb43942fc36990ff7 # initialize rs1
aes64im x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x55630d7d9120d15f # initialize rs1
aes64im x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3c4318b09425520f # initialize rs1
aes64im x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa298fd81a117a845 # initialize rs1
aes64im x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcad0f51f87933ba1 # initialize rs1
aes64im x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc6669951d48ff949 # initialize rs1
aes64im x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbab26ba81bcd3f9e # initialize rs1
aes64im x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x20684911f63a9ccf # initialize rs1
aes64im x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf8e89191415773b5 # initialize rs1
aes64im x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x737544f0001111ac # initialize rs1
aes64im x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7a702b6c9bcb9fe8 # initialize rs1
aes64im x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9aa6cde1aa1ef91a # initialize rs1
aes64im x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x11, x29 # perform first operation
aes64im x17, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x31, x1 # perform first operation
aes64im x5, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x13, x18 # perform first operation
aes64im x12, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x30, x31 # perform first operation
aes64im x6, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x30, x8 # perform first operation
aes64im x5, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x21, x25 # perform first operation
aes64im x7, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x25, x13 # perform first operation
aes64im x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x13, x24 # perform first operation
aes64im x28, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x15, x23 # perform first operation
aes64im x19, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x1, x15 # perform first operation
aes64im x1, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x26, x1 # perform first operation
aes64im x1, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x25, x30 # perform first operation
aes64im x5, x29 # perform second (triggering) operation

#.EQU SIGSIZE,896
.EQU SIGSIZE,13184 #combined


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
