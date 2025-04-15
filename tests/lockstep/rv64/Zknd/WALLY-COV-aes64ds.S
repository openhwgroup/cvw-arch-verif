///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknd/WALLY-COV-aes64ds.S
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

.EQU SIGSIZE,6144


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
