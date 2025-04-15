///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-minu.S
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
li x0, 0xfef30bc948a4bbbe # initialize rs1
li x7, 0x37a91d792c9f8bb3 # initialize rs2
minu x8, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd3a2d6434b8e69af # initialize rs1
li x11, 0xfa445412f7e4ed35 # initialize rs2
minu x31, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x32f6e39572bf8406 # initialize rs1
li x15, 0x6bcfeec49838cd34 # initialize rs2
minu x30, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x232b259be5648dd7 # initialize rs1
li x1, 0x2f93c96ea39d812c # initialize rs2
minu x24, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd18e71b476d5aebb # initialize rs1
li x2, 0x62bbcf7ec9c55dc7 # initialize rs2
minu x17, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x56161d0b2c085910 # initialize rs1
li x1, 0x16bff8c20feb7608 # initialize rs2
minu x30, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3f61ea56ade5263d # initialize rs1
li x1, 0xe4391d0d7f404851 # initialize rs2
minu x24, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x420ef8cc4fd40b6a # initialize rs1
li x26, 0x444c9e51909658cc # initialize rs2
minu x1, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3f70382f32cffd46 # initialize rs1
li x26, 0x576805690d9a90a5 # initialize rs2
minu x9, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6a7e60600eee711a # initialize rs1
li x27, 0x94759e5ef1caa946 # initialize rs2
minu x22, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x74979592090ff447 # initialize rs1
li x16, 0x2c2f9927eb81ed62 # initialize rs2
minu x7, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x4a253dfd0d50795d # initialize rs1
li x12, 0xa532966aefda2cbf # initialize rs2
minu x21, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x5bd62ddacf000e69 # initialize rs1
li x23, 0x783fdd9d3453e8a3 # initialize rs2
minu x15, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4e74105e499bbda5 # initialize rs1
li x21, 0xfa79eafe9d7c0186 # initialize rs2
minu x17, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7c58e3e46395a482 # initialize rs1
li x30, 0x463619255ffb367a # initialize rs2
minu x1, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4976a9cadacb5f5b # initialize rs1
li x6, 0xfffe3476b7c22299 # initialize rs2
minu x11, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0178249fddb6f8ce # initialize rs1
li x22, 0x0064119413168b04 # initialize rs2
minu x13, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe1cb1b79e0363dfa # initialize rs1
li x1, 0xc7f5811b5450ca5c # initialize rs2
minu x24, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xf90400ad0c6c6473 # initialize rs1
li x30, 0xa01857b82b9d7665 # initialize rs2
minu x11, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x6c7c2a79068e004b # initialize rs1
li x13, 0x8583ca24757ebed4 # initialize rs2
minu x18, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf12f46ddbdba5da6 # initialize rs1
li x1, 0xd3a7634d5b418ba7 # initialize rs2
minu x17, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xded2c4aca4e4e6d9 # initialize rs1
li x5, 0xdfecf88e950c8df6 # initialize rs2
minu x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5a4a3817d9a6c10f # initialize rs1
li x25, 0x3b1c544b9e3a9bfc # initialize rs2
minu x29, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xee6e92e0215a3b68 # initialize rs1
li x6, 0x0686011c709f6454 # initialize rs2
minu x20, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x91fcf9f885adbf1e # initialize rs1
li x9, 0xcb1e2eb6c391af26 # initialize rs2
minu x8, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xfedb468842db2bc2 # initialize rs1
li x31, 0xe555254fda919912 # initialize rs2
minu x12, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x363ca279cbe39ea8 # initialize rs1
li x6, 0x0d36612af96e2d36 # initialize rs2
minu x16, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x402522f7c89df35f # initialize rs1
li x16, 0x11227d431a76130c # initialize rs2
minu x11, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x70af40882852c477 # initialize rs1
li x20, 0x7b45bdae46988636 # initialize rs2
minu x18, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9088ad47edb09b5f # initialize rs1
li x8, 0xe177309d7b386fed # initialize rs2
minu x9, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x771cc248f8817cdd # initialize rs1
li x31, 0x9a931475eb6045c5 # initialize rs2
minu x8, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xfaccb96466801cd1 # initialize rs1
li x27, 0x6b1481ebbee268c6 # initialize rs2
minu x5, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x9122a3e262df1f84 # initialize rs1
li x0, 0x8ea6fa88862b78e4 # initialize rs2
minu x7, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0x43b8498b2c435bc4 # initialize rs1
li x1, 0x330aaf4b31b00207 # initialize rs2
minu x21, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0xe16ae0c9226faf54 # initialize rs1
li x2, 0x4832f3b5c804cfce # initialize rs2
minu x26, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x5f4dfeb2f924e658 # initialize rs1
li x3, 0xd326d1166792393d # initialize rs2
minu x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x8ddb7ffb723dd1fe # initialize rs1
li x4, 0x00a4de44f3639517 # initialize rs2
minu x6, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x83c618b8df4c0120 # initialize rs1
li x5, 0x81628a772d2bba2b # initialize rs2
minu x18, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x1714dc0e0cc97ec2 # initialize rs1
li x6, 0x5a71f1398c08425f # initialize rs2
minu x19, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x7b1faaf0b4b9afba # initialize rs1
li x7, 0x916cdca5efde9434 # initialize rs2
minu x24, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0x82bcbe73123e8826 # initialize rs1
li x8, 0xf21d405f37363a42 # initialize rs2
minu x15, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0xac306d337b279200 # initialize rs1
li x9, 0x4987579772d0ccab # initialize rs2
minu x1, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0xcdceeef09686b3d5 # initialize rs1
li x10, 0x15bdf556b37653a7 # initialize rs2
minu x22, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x960011a5a6b69065 # initialize rs1
li x11, 0xf1239094605370d8 # initialize rs2
minu x26, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x23, 0x48d8ac9c560e4868 # initialize rs1
li x12, 0xb33160b5570d9d5e # initialize rs2
minu x29, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x00a3a8d1e27b8f60 # initialize rs1
li x13, 0xf46649c97b1777e1 # initialize rs2
minu x5, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x2ab67153bbe46604 # initialize rs1
li x14, 0x521bb87f88403ebf # initialize rs2
minu x9, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0x474e72c5a17ca6a4 # initialize rs1
li x15, 0x44ce6fade7156fe6 # initialize rs2
minu x7, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0x975dd74955d52905 # initialize rs1
li x16, 0x329c0d06cd582102 # initialize rs2
minu x13, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x27, 0xd687149f4ebc5014 # initialize rs1
li x17, 0xd6b178c8e04b2379 # initialize rs2
minu x15, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0x7696cb220b132087 # initialize rs1
li x18, 0x5a53d455d65b9b62 # initialize rs2
minu x16, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xd4ec3ffdbf3da19c # initialize rs1
li x19, 0x520a1c792e0b6d83 # initialize rs2
minu x3, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x10, 0x70a02dc5f1f940e1 # initialize rs1
li x20, 0x00eb960baaf5474e # initialize rs2
minu x7, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x6735582aaecf9a91 # initialize rs1
li x21, 0xc8e2a2168f85407f # initialize rs2
minu x7, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0x300109c861166fff # initialize rs1
li x22, 0xa68c12bf56a70b5b # initialize rs2
minu x2, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x24, 0x69ac2fd9d9424632 # initialize rs1
li x23, 0xf66f8642cd55e6d1 # initialize rs2
minu x8, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x30, 0xe88b8e64f7a2c929 # initialize rs1
li x24, 0x076a5e9fcf198062 # initialize rs2
minu x29, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x6be42666f698eb8b # initialize rs1
li x25, 0xd698b3e65eedc25f # initialize rs2
minu x16, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x67683e84c88fbeb0 # initialize rs1
li x26, 0xd7558f1aa3ac14e4 # initialize rs2
minu x12, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x31, 0xb467194fef3b42ec # initialize rs1
li x27, 0x7f3cc3eefb1f85a8 # initialize rs2
minu x16, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0xc66906bc85628751 # initialize rs1
li x28, 0x9a89b0bae3789f99 # initialize rs2
minu x21, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xd5ee08fae1f46199 # initialize rs1
li x29, 0x8659ff8bcb0bd97f # initialize rs2
minu x8, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0x310d38f1506ec0ea # initialize rs1
li x30, 0xca7025ceaa9f74ab # initialize rs2
minu x10, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0xd436a0b8102f6afd # initialize rs1
li x31, 0x2db18055fdcd8d4c # initialize rs2
minu x12, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x810e3fdfd81c9df2 # initialize rs1
li x28, 0x6eb7bf57febaccb9 # initialize rs2
minu x0, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0xc4408dbfe384c39e # initialize rs1
li x15, 0x0764d23fbcc79df7 # initialize rs2
minu x1, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x4a927bea594882db # initialize rs1
li x18, 0xb11294c9c757c039 # initialize rs2
minu x2, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0xf0a9ddc20172ba7e # initialize rs1
li x20, 0x51d1fe962653d223 # initialize rs2
minu x3, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xe8982c7980a7692d # initialize rs1
li x31, 0x5d6811015436e00f # initialize rs2
minu x4, x18, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xfa623ee43928c332 # initialize rs1
li x19, 0x7cb9c9adc786f12d # initialize rs2
minu x5, x31, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x02b972efe28b2111 # initialize rs1
li x15, 0x47c96cce3150c164 # initialize rs2
minu x6, x9, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xc02cddff8909f527 # initialize rs1
li x4, 0xb6414b9da6aa604f # initialize rs2
minu x7, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0xd58915942b9f8fbb # initialize rs1
li x31, 0x45f80a3ee9c65f17 # initialize rs2
minu x8, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xf96f34b9ae4a16ba # initialize rs1
li x28, 0x2fa40d9d05c974b1 # initialize rs2
minu x9, x15, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x4, 0x0d7160610894e89d # initialize rs1
li x24, 0x04513edce9d0f262 # initialize rs2
minu x10, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x828f9c5c62c8073f # initialize rs1
li x8, 0xc8ceea88920acc23 # initialize rs2
minu x11, x2, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0xc3aea4b36cf7e492 # initialize rs1
li x27, 0xa74344ccc665e690 # initialize rs2
minu x12, x25, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x1b8af9acfd1d26d1 # initialize rs1
li x11, 0x8da860a9b1ece221 # initialize rs2
minu x13, x22, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0x24819b08e4a34c2e # initialize rs1
li x1, 0xcda1bbc6314faf85 # initialize rs2
minu x14, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x2d3e74d35e848caf # initialize rs1
li x9, 0x76b79ee54e9588af # initialize rs2
minu x15, x17, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0xa541ad68632572f2 # initialize rs1
li x7, 0x00af98bf3f04e5ff # initialize rs2
minu x16, x15, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0xb678cb2fb6dc5fb0 # initialize rs1
li x6, 0xdd2a43ec164f42b4 # initialize rs2
minu x17, x31, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x4, 0x83d2f4e385d3fcb1 # initialize rs1
li x13, 0xbd1a19c934685255 # initialize rs2
minu x18, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0xb1fa10760ae8fadc # initialize rs1
li x9, 0x1d6202580232b6f6 # initialize rs2
minu x19, x20, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0xa465188e99648055 # initialize rs1
li x19, 0x9c403d6e2a036ac4 # initialize rs2
minu x20, x25, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x858b8f50c8ccae6c # initialize rs1
li x22, 0x8f611ddab33da3c1 # initialize rs2
minu x21, x21, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0x2eb06cbedc61eca0 # initialize rs1
li x12, 0x1f33a3df67a145d2 # initialize rs2
minu x22, x8, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0xa3e62524326bddca # initialize rs1
li x4, 0x6895f1ad952f1ae0 # initialize rs2
minu x23, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0x6d3cbc4b819fa790 # initialize rs1
li x10, 0xecc4b668615ae8f5 # initialize rs2
minu x24, x21, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x14ea184d4a11fe72 # initialize rs1
li x7, 0x7f0703f204137f1d # initialize rs2
minu x25, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x842b8a4e69680516 # initialize rs1
li x31, 0x6982ebb1183a8751 # initialize rs2
minu x26, x26, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0x1ccd06de9b4af86c # initialize rs1
li x28, 0xa40f786a7dea0a2b # initialize rs2
minu x27, x10, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x128cab443dd68b07 # initialize rs1
li x20, 0x4e2d975f3a132b24 # initialize rs2
minu x28, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x258b69aceb07ede2 # initialize rs1
li x9, 0xcf66e287bb02e490 # initialize rs2
minu x29, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0xae8e0a4dca7d4e2d # initialize rs1
li x13, 0x3d854e8543b69467 # initialize rs2
minu x30, x26, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x08e328989dab7831 # initialize rs1
li x21, 0xbded4f5ef5e98af0 # initialize rs2
minu x31, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x7, 0x5309c12dc7bd179d # initialize rs2
minu x14, x23, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0000000000000001 # initialize rs1
li x10, 0xe215c3d42550eefa # initialize rs2
minu x9, x23, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x18, 0x925d6f522409c856 # initialize rs2
minu x28, x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x21, 0x1bc19655351a89c1 # initialize rs2
minu x17, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x26, 0xc462680d697ab1a2 # initialize rs2
minu x31, x10, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x18, 0x9f607f8a19d5166f # initialize rs2
minu x19, x17, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x23, 0x2d83bbbc435cfe5a # initialize rs2
minu x1, x12, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x27, 0x1ec9c48b32f73f55 # initialize rs2
minu x13, x26, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x17, 0x8cba14ed6832d073 # initialize rs2
minu x28, x6, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x4, 0x998498366459c795 # initialize rs2
minu x12, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xd3ca74dd9fb57ca2 # initialize rs2
minu x4, x20, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs1
li x10, 0x9960bb881f0876d1 # initialize rs2
minu x22, x9, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x941f30d7aa42aa05 # initialize rs2
minu x30, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x4, 0x00000000fffffffe # initialize rs1
li x18, 0x7a8194ccb5059285 # initialize rs2
minu x20, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs1
li x26, 0xbaeed45c381b434b # initialize rs2
minu x6, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x7, 0x773f340379145765 # initialize rs2
minu x3, x9, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x4dfc0c65b0f51907 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
minu x27, x8, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xc494d07c4122a2f2 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
minu x2, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x8320dcb8892d7ef6 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
minu x30, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x18, 0x8b847c0225a4f215 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
minu x17, x18, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x30, 0x86b6133ff18ea8a1 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
minu x8, x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x0aaf00c53f2e4929 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
minu x26, x18, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x21, 0x94f461f11c102ada # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
minu x19, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0x867463a32ecb6a17 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
minu x7, x31, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x87293e42bd6eba50 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
minu x29, x16, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x2, 0xa521764bd253ed9f # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
minu x18, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x3ef77a95257148e9 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x26, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0xed5cbfc2368d85b2 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
minu x10, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0x35a99fda89c3a31a # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
minu x11, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x436743aa468d62d2 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
minu x30, x19, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x0a6e8263b5efbf16 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
minu x8, x2, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0xf627239e3baab851 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
minu x20, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
minu x30, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
minu x28, x11, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
minu x26, x1, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x22, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
minu x8, x22, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x13, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
minu x4, x13, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
minu x15, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000000 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
minu x2, x20, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x27, 0x0000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
minu x26, x27, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
minu x8, x16, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
minu x31, x26, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x28, x30, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x28, 0x0000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
minu x22, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
minu x19, x10, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x0000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
minu x31, x6, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x4, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
minu x12, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x30, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
minu x21, x30, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x15, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
minu x3, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
minu x8, x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
minu x16, x28, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x13, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
minu x30, x13, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x27, 0x0000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
minu x13, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
minu x6, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
minu x30, x11, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
minu x19, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
minu x29, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
minu x18, x13, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x27, x31, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x28, 0x0000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
minu x25, x28, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
minu x6, x19, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x4, 0x0000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
minu x19, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x31, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
minu x20, x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
minu x11, x12, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x4, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
minu x17, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x8, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
minu x19, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
minu x10, x3, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
minu x18, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x29, 0x0000000000000002 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
minu x22, x29, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
minu x23, x6, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000002 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
minu x15, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
minu x26, x28, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000002 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
minu x6, x31, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000002 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
minu x17, x28, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000002 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x18, x11, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x24, 0x0000000000000002 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
minu x25, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
minu x11, x29, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
minu x22, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
minu x27, x21, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
minu x11, x30, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x20, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
minu x7, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x6, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
minu x13, x6, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x17, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
minu x19, x17, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
minu x30, x27, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
minu x13, x12, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
minu x26, x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x4, 0x8000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
minu x22, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x4, 0x8000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
minu x25, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
minu x16, x22, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
minu x10, x6, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x8000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x25, x30, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x11, 0x8000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
minu x4, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x4, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
minu x3, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
minu x26, x22, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0x8000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
minu x17, x19, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x11, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
minu x8, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x28, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
minu x9, x28, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x17, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
minu x31, x17, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x18, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
minu x21, x18, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x3, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
minu x18, x3, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
minu x18, x16, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
minu x2, x16, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
minu x4, x16, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
minu x12, x1, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
minu x10, x14, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x8000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
minu x1, x20, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x8000000000000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x2, x29, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x13, 0x8000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
minu x26, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
minu x30, x27, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
minu x4, x10, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
minu x8, x6, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x26, 0x8000000000000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
minu x3, x26, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x23, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
minu x16, x23, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
minu x26, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x19, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
minu x7, x19, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
minu x24, x8, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x15, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
minu x6, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
minu x1, x11, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
minu x24, x9, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
minu x13, x11, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
minu x20, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0x7fffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
minu x25, x14, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x7fffffffffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x13, x28, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x3, 0x7fffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
minu x15, x3, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
minu x30, x13, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
minu x13, x24, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x13, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
minu x7, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x15, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
minu x17, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x31, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
minu x30, x31, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x13, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
minu x9, x13, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
minu x10, x29, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
minu x12, x18, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
minu x7, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
minu x1, x23, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x4, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
minu x2, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x25, 0x7ffffffffffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
minu x28, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
minu x31, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
minu x27, x18, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x24, x11, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0x7ffffffffffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
minu x28, x9, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
minu x29, x12, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
minu x23, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
minu x10, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
minu x2, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x8, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
minu x12, x8, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
minu x15, x26, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x11, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
minu x7, x11, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x29, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
minu x14, x29, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x2, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
minu x30, x2, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
minu x29, x2, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0xffffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
minu x30, x31, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
minu x17, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
minu x22, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0xffffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
minu x29, x18, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xffffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x4, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x10, 0xffffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
minu x30, x10, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
minu x10, x16, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
minu x15, x17, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x26, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
minu x14, x26, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
minu x22, x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
minu x2, x7, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x1, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
minu x10, x1, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x16, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
minu x3, x16, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0xfffffffffffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
minu x21, x2, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
minu x28, x2, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
minu x22, x2, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
minu x20, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
minu x20, x26, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
minu x27, x26, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0xfffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
minu x16, x11, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x15, x12, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
minu x14, x30, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
minu x24, x16, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
minu x24, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
minu x24, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x26, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
minu x21, x26, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
minu x27, x9, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
minu x31, x16, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
minu x25, x24, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
minu x31, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
minu x13, x7, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x4, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
minu x21, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
minu x31, x27, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
minu x20, x25, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
minu x12, x3, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
minu x24, x20, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x11, x8, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
minu x4, x8, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
minu x17, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
minu x11, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
minu x22, x31, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
minu x30, x17, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
minu x24, x11, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
minu x22, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
minu x13, x27, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
minu x16, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
minu x24, x22, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
minu x12, x10, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
minu x23, x6, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
minu x6, x30, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
minu x1, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
minu x31, x17, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x13, x2, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
minu x31, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
minu x20, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
minu x27, x12, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
minu x31, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
minu x11, x8, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x19, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
minu x22, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x4, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
minu x17, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x14, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
minu x10, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
minu x18, x15, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x4, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
minu x30, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x28, 0x5555555555555555 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
minu x31, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x21, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
minu x2, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
minu x7, x15, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
minu x24, x14, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
minu x29, x15, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x5555555555555555 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x10, x26, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
minu x8, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
minu x28, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x10, 0x5555555555555555 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
minu x3, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x1, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
minu x21, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x20, 0x5555555555555555 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
minu x16, x20, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x4, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
minu x22, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
minu x12, x18, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
minu x7, x2, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x2, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
minu x8, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x11, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
minu x21, x11, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x00000000ffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
minu x2, x14, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
minu x23, x21, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
minu x7, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
minu x19, x21, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x4, 0x00000000ffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
minu x17, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000ffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x1, x22, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x26, 0x00000000ffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
minu x13, x26, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
minu x25, x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
minu x1, x9, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x7, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
minu x8, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x9, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
minu x2, x9, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x24, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
minu x4, x24, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
minu x15, x17, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
minu x21, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x8, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
minu x21, x8, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x29, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
minu x27, x29, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x22, 0x00000000fffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
minu x9, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
minu x21, x20, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
minu x20, x17, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
minu x1, x7, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
minu x17, x20, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000fffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x14, x1, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
minu x18, x31, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
minu x9, x26, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
minu x6, x3, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x17, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
minu x14, x17, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x28, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
minu x8, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x26, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
minu x8, x26, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
minu x21, x13, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
minu x16, x29, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x2, 0x0000000100000000 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
minu x18, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x27, 0x0000000100000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
minu x19, x27, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
minu x11, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000100000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
minu x10, x17, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
minu x29, x24, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
minu x23, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000100000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
minu x31, x17, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000100000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x27, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x30, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
minu x9, x30, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
minu x7, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x10, 0x0000000100000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
minu x8, x10, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
minu x24, x8, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x23, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
minu x10, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x20, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
minu x13, x20, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
minu x20, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x31, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
minu x23, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x4, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
minu x2, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
minu x29, x14, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000001 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
minu x11, x13, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
minu x24, x19, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
minu x29, x1, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
minu x3, x14, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000100000001 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
minu x9, x1, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000100000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
minu x19, x11, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x29, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
minu x2, x29, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
minu x8, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
minu x21, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x18, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
minu x6, x18, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
minu x18, x7, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x4f7b9fe0b9a70e1a # initialize rs1
li x0, 0xfdbbb01090ab3365 # initialize rs2
minu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x3d6db5d8017d4771 # initialize rs1
li x1, 0xf868dd134db869e4 # initialize rs2
minu x16, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd3a334e7192d4fc7 # initialize rs1
li x2, 0x3b902022d75ff009 # initialize rs2
minu x30, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc477c3073abf7952 # initialize rs1
li x3, 0x9d57883a05733fa4 # initialize rs2
minu x11, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x8aeb1dccd049b68e # initialize rs1
li x4, 0xcd5cd21833b696c6 # initialize rs2
minu x31, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2094f19e38b10fdd # initialize rs1
li x5, 0xb02c6398ccd50748 # initialize rs2
minu x28, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6f58e1b6c9c62f2c # initialize rs1
li x6, 0x9d8d1f89bbb7a9fa # initialize rs2
minu x31, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4ee6e961b50e4b57 # initialize rs1
li x7, 0xd7940905bb95572a # initialize rs2
minu x4, x7, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1ede37be54ee9ca2 # initialize rs1
li x8, 0xc8010033c1c10020 # initialize rs2
minu x23, x8, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8e260f49bd4307c3 # initialize rs1
li x9, 0xf9ae176ef2c62303 # initialize rs2
minu x23, x9, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa75a369973334d02 # initialize rs1
li x10, 0xb91cb5cd2f250026 # initialize rs2
minu x11, x10, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb52f74b63e23b1c1 # initialize rs1
li x11, 0x4a1bd93ef38252f8 # initialize rs2
minu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x153e2a866717dc38 # initialize rs1
li x12, 0x9f24ac342414f011 # initialize rs2
minu x13, x12, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x106e52eadd25639a # initialize rs1
li x13, 0x2e4f13aa0c804f81 # initialize rs2
minu x28, x13, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1e8db60349f819cc # initialize rs1
li x14, 0x3762db643c4494f4 # initialize rs2
minu x8, x14, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x28b05b54a4354f6e # initialize rs1
li x15, 0xf83f3b7100aabdc5 # initialize rs2
minu x8, x15, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x7f5c44ca57336f50 # initialize rs1
li x16, 0x8f0737d7ad85bdc9 # initialize rs2
minu x11, x16, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x358e71214cfbdcb2 # initialize rs1
li x17, 0x8d22069a9c75b010 # initialize rs2
minu x11, x17, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x16b109d499e5c9ee # initialize rs1
li x18, 0x0c85a4c2683833de # initialize rs2
minu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x30608b83d42f8611 # initialize rs1
li x19, 0x181c88be570e541e # initialize rs2
minu x25, x19, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb30f08937027f1e6 # initialize rs1
li x20, 0x93e3c1655dbbd984 # initialize rs2
minu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7c83a3f4be018e67 # initialize rs1
li x21, 0xe9be653f8c28889f # initialize rs2
minu x14, x21, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa631ada0d3ed7644 # initialize rs1
li x22, 0x7674aefcb7695ca4 # initialize rs2
minu x21, x22, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xcf830288be699161 # initialize rs1
li x23, 0x5767c335982e7995 # initialize rs2
minu x1, x23, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xa223e15c74316eca # initialize rs1
li x24, 0x41efb99086b9654c # initialize rs2
minu x31, x24, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x164c0ff05eee6b8f # initialize rs1
li x25, 0xde7888b575e8b5a2 # initialize rs2
minu x24, x25, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8ff1d3f92aee19b7 # initialize rs1
li x26, 0xb599e15099125465 # initialize rs2
minu x14, x26, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x023214c76efadd20 # initialize rs1
li x27, 0x178d95bb11079ad7 # initialize rs2
minu x21, x27, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xedbcddb2e6b9d7bc # initialize rs1
li x28, 0x783a09add53cf00c # initialize rs2
minu x20, x28, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdb50f55d60dced38 # initialize rs1
li x29, 0xee2a992fbd5829a7 # initialize rs2
minu x20, x29, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf8e53a7d3c1ef867 # initialize rs1
li x30, 0x2bee134fd5c731c1 # initialize rs2
minu x15, x30, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x74a9b7bc5182aa04 # initialize rs1
li x31, 0xc2e0ba0c42583ca0 # initialize rs2
minu x8, x31, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x64365ca46d8e42d8 # initialize rs1
li x19, 0xc326e3fe2eb9071f # initialize rs2
minu x0, x0, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x514a6016c25201e4 # initialize rs1
li x28, 0x2439418dcf747c1e # initialize rs2
minu x1, x1, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7f5cb9b116182537 # initialize rs1
li x28, 0xe180de2361940a3d # initialize rs2
minu x2, x2, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1f4cf08c5271a471 # initialize rs1
li x28, 0xa65ee189b2dc5501 # initialize rs2
minu x3, x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x273686cc3fa86d09 # initialize rs1
li x9, 0x0053c31e380fc215 # initialize rs2
minu x4, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8923806c94f26a0a # initialize rs1
li x4, 0x1e229489c5525a41 # initialize rs2
minu x5, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcbe95caa7d5e05c7 # initialize rs1
li x21, 0x6557291acadc36ec # initialize rs2
minu x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x80ea7d1d7a262d51 # initialize rs1
li x4, 0xfd7f88b261a6d34a # initialize rs2
minu x7, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf97ff39ec23dcb84 # initialize rs1
li x9, 0x81779117cacf6a60 # initialize rs2
minu x8, x8, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf629414408ca879f # initialize rs1
li x12, 0x4aafb7e3df0358de # initialize rs2
minu x9, x9, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5602a5426ae6d043 # initialize rs1
li x20, 0xfe6cbdd8136bfeb5 # initialize rs2
minu x10, x10, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2c2e7acabe11009a # initialize rs1
li x25, 0x8384a4b8cc2cdc0f # initialize rs2
minu x11, x11, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc1dd014eccd06063 # initialize rs1
li x17, 0x9fd0b2077a301c4d # initialize rs2
minu x12, x12, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x42cdd55f7b276614 # initialize rs1
li x10, 0x0d8e8b789a588941 # initialize rs2
minu x13, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x57d3438be1a8c06a # initialize rs1
li x12, 0x648e92b61b8a8e53 # initialize rs2
minu x14, x14, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8b0b608ca7b4d3fc # initialize rs1
li x10, 0x5ff70fc93652a517 # initialize rs2
minu x15, x15, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xde2464d47d376d9f # initialize rs1
li x4, 0x6226bcc760983225 # initialize rs2
minu x16, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xecbfc40a57c1bc98 # initialize rs1
li x4, 0x46ac7ef87d7506e8 # initialize rs2
minu x17, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5282d0fa29d157c4 # initialize rs1
li x31, 0x29b96726a9f3487b # initialize rs2
minu x18, x18, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x40263745a231617b # initialize rs1
li x27, 0x94877693f7fb9d87 # initialize rs2
minu x19, x19, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb35c16f9cfdcc49e # initialize rs1
li x22, 0x3eda018dc6db623f # initialize rs2
minu x20, x20, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd9726248bb648680 # initialize rs1
li x8, 0xe097661f4c07cc32 # initialize rs2
minu x21, x21, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x04f6019d122a2dac # initialize rs1
li x12, 0x961cd7497545407f # initialize rs2
minu x22, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xee85c842faa6c090 # initialize rs1
li x30, 0x4ae64274a62a7136 # initialize rs2
minu x23, x23, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x286d1b4c246e35ea # initialize rs1
li x10, 0xa8f19f58bec613f4 # initialize rs2
minu x24, x24, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc31c22a87534185e # initialize rs1
li x18, 0xad8b7fa02db8bfe4 # initialize rs2
minu x25, x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8173814f981dd319 # initialize rs1
li x4, 0xa293166e7774b0bd # initialize rs2
minu x26, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xab146aebc168a807 # initialize rs1
li x26, 0x5e4a5f352dea3589 # initialize rs2
minu x27, x27, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x616e3de30ea61470 # initialize rs1
li x1, 0xaee8f69cc9546fd5 # initialize rs2
minu x28, x28, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4f4e819a28b53bb7 # initialize rs1
li x24, 0xd785a09b423be1b1 # initialize rs2
minu x29, x29, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2607d42c9946fdd9 # initialize rs1
li x3, 0x8c8ba0a356c913e9 # initialize rs2
minu x30, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7a56db6ce16bde8a # initialize rs1
li x4, 0x0e876daf0854a496 # initialize rs2
minu x31, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xaa685624155124eb # initialize rs1
li x0, 0xe01fdc66cb47537a # initialize rs2
minu x0, x11, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x3, 0xb1a00deca60d6cf3 # initialize rs1
li x1, 0xdbd27ca81d312874 # initialize rs2
minu x1, x3, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0xdf92b9deef094eb5 # initialize rs1
li x2, 0xba157c8bf720efa1 # initialize rs2
minu x2, x9, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0xd9229738516d2451 # initialize rs1
li x3, 0xd0f84c72508ee411 # initialize rs2
minu x3, x27, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x27, 0xedb18a54ebe42b3d # initialize rs1
li x4, 0x5f50f4c5b3a0832f # initialize rs2
minu x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xc483dd863c666ec7 # initialize rs1
li x5, 0xd083aff47005a39c # initialize rs2
minu x5, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x83d9d75185492f4f # initialize rs1
li x6, 0x739989ba5fe7b8a4 # initialize rs2
minu x6, x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xf00cf09cafea42a1 # initialize rs1
li x7, 0x1cd1da06a6b70dfa # initialize rs2
minu x7, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0x6f58b84761f3e541 # initialize rs1
li x8, 0x95f3970bf8e4415e # initialize rs2
minu x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0xbdbf883987e005a1 # initialize rs1
li x9, 0xd5172fa8662f4f96 # initialize rs2
minu x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x24, 0x00dd8913219f4bec # initialize rs1
li x10, 0x85e54a9c4ae25d84 # initialize rs2
minu x10, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0x2ac33d5c400e719e # initialize rs1
li x11, 0x5b633fe5dedbbe38 # initialize rs2
minu x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x25, 0xfdb3aa5f5939b0a6 # initialize rs1
li x12, 0x98054c69f0f666df # initialize rs2
minu x12, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x8, 0xcd9f5918fe150f9f # initialize rs1
li x13, 0x647b65772b91b751 # initialize rs2
minu x13, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0x06d5c16f7fdc6ca7 # initialize rs1
li x14, 0xc01467956e422fff # initialize rs2
minu x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x17cfaf7567b8caaf # initialize rs1
li x15, 0x1b30ed9328fd2bda # initialize rs2
minu x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x30, 0xedaaacd1d2b61717 # initialize rs1
li x16, 0x4574c3d5b667475d # initialize rs2
minu x16, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0x9348122f693364c0 # initialize rs1
li x17, 0xccad32007ecb3c37 # initialize rs2
minu x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0xc7c40c43907be507 # initialize rs1
li x18, 0xc8aa380ec5436452 # initialize rs2
minu x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0x90200bd61fdad8ce # initialize rs1
li x19, 0x89160dbdfb5c419c # initialize rs2
minu x19, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x7a305848f2c26fb6 # initialize rs1
li x20, 0xf409e3d925e9ac81 # initialize rs2
minu x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0xa33718362b4f9e40 # initialize rs1
li x21, 0x4f65ab64634f6dbc # initialize rs2
minu x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0x9e7122101e55c38b # initialize rs1
li x22, 0x3287702b6ac33a2a # initialize rs2
minu x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x04d477a7e661aa76 # initialize rs1
li x23, 0x65c6f0489feaaaf8 # initialize rs2
minu x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x16, 0xa88d47f42eb94398 # initialize rs1
li x24, 0x1faa213a311e7598 # initialize rs2
minu x24, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x21, 0x4b7ca02b8fee9c94 # initialize rs1
li x25, 0xfc0faba420fbc58c # initialize rs2
minu x25, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0xa1ad4b10eab5568a # initialize rs1
li x26, 0xf8577cfb52cce0df # initialize rs2
minu x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0x59178d598f3cc2f9 # initialize rs1
li x27, 0x964a826214161779 # initialize rs2
minu x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xe75b6ba4cdf97656 # initialize rs1
li x28, 0x25a65570f21ad408 # initialize rs2
minu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x25, 0x2993c4b41b7b5276 # initialize rs1
li x29, 0x8accb326d4486f61 # initialize rs2
minu x29, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x22, 0xf5a73aa6c06f82a9 # initialize rs1
li x30, 0x55d1a34236b0da23 # initialize rs2
minu x30, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x15, 0x9da790f80f33d4aa # initialize rs1
li x31, 0x17a23a6bea2213d4 # initialize rs2
minu x31, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x728c58e98f56f590 # initialize rs1
li x0, 0xec64d9c9bf927163 # initialize rs2
minu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x594f4c7a533d03d5 # initialize rs1
li x1, 0xe653f6c9f5218c2f # initialize rs2
minu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x727aed77ae03c91b # initialize rs1
li x2, 0xf3feac4d5f2a6fcd # initialize rs2
minu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xc173c1e3ba7abda8 # initialize rs1
li x3, 0xaac7495f2de55b3e # initialize rs2
minu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8f7390c584b0f9ed # initialize rs1
li x4, 0x81da5ccc4dc2082c # initialize rs2
minu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79052874680234b6 # initialize rs1
li x5, 0x3f759a56d0e20c12 # initialize rs2
minu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5cd30cae40e24fe1 # initialize rs1
li x6, 0x403c3782a11b8b98 # initialize rs2
minu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x71e48098423963d2 # initialize rs1
li x7, 0x301c3156d4a419cf # initialize rs2
minu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3a79031a661b75b9 # initialize rs1
li x8, 0xd196d190ad7e1bbe # initialize rs2
minu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x821442df63be7afe # initialize rs1
li x9, 0xf973e7b436c64cab # initialize rs2
minu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xb079fc537b7f661e # initialize rs1
li x10, 0xaf3bd2953c04952e # initialize rs2
minu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb78aa217fba3181d # initialize rs1
li x11, 0x142427e605d92dff # initialize rs2
minu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x99fd2fef240979ba # initialize rs1
li x12, 0xf84c414e38c84da4 # initialize rs2
minu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc555ebe2a36852f7 # initialize rs1
li x13, 0x5234a5e6d91a08a5 # initialize rs2
minu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x88b2dfcc84dfa825 # initialize rs1
li x14, 0x009877b177693c04 # initialize rs2
minu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3a62cf15ac0ac176 # initialize rs1
li x15, 0x250e5b9ef775ad92 # initialize rs2
minu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x768f66424510a95c # initialize rs1
li x16, 0xe85d39ef395a5b26 # initialize rs2
minu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xacef106897b8b886 # initialize rs1
li x17, 0xc7d88cad79a6974b # initialize rs2
minu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x40bb30bb52119209 # initialize rs1
li x18, 0xdd774563907e3728 # initialize rs2
minu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7b9e589b1ed8569b # initialize rs1
li x19, 0x843b0c25094384c0 # initialize rs2
minu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x54d9aaf54eeba255 # initialize rs1
li x20, 0x2aa650bb41ef01bb # initialize rs2
minu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x1aac07323680139f # initialize rs1
li x21, 0xd5d1fbd783d59c24 # initialize rs2
minu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfdfe054981058184 # initialize rs1
li x22, 0x70d85d7045ad2222 # initialize rs2
minu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xdac86aa67f88594a # initialize rs1
li x23, 0xe333d7c69f267147 # initialize rs2
minu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x2d297e86015fd0b3 # initialize rs1
li x24, 0x828899558d661139 # initialize rs2
minu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x26bf0ada57fa20fd # initialize rs1
li x25, 0x43928ea4d41fd590 # initialize rs2
minu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x611bf8fef1a40411 # initialize rs1
li x26, 0x1681aa218060ca12 # initialize rs2
minu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca2d229d7c77f521 # initialize rs1
li x27, 0x828dcc94e0c0d232 # initialize rs2
minu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xfaee4ea023749ea6 # initialize rs1
li x28, 0x38d6c6fe3701fec0 # initialize rs2
minu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5deb429b2a53d420 # initialize rs1
li x29, 0x9b85898fd4a8cc0e # initialize rs2
minu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb1aa31f015401115 # initialize rs1
li x30, 0xdecbd4ad6f847a89 # initialize rs2
minu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x63093ace0762a457 # initialize rs1
li x31, 0x8cd06bfeb7a2211c # initialize rs2
minu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x26, x21 # perform first operation
minu x29, x12, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x25, x23 # perform first operation
minu x8, x20, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x5, x13 # perform first operation
minu x6, x8, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x19, x26 # perform first operation
minu x16, x25, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x30, x18 # perform first operation
minu x30, x21, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x18, x9 # perform first operation
minu x18, x23, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x24, x31 # perform first operation
minu x27, x3, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x31, x11 # perform first operation
minu x22, x29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x16, x6 # perform first operation
minu x31, x14, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x12, x1 # perform first operation
minu x12, x6, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x1, x2 # perform first operation
minu x2, x16, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x9, x22 # perform first operation
minu x11, x24, x14 # perform second (triggering) operation

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
