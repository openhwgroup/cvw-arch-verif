///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-rem.S
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
li x0, 0x81dccc260f38e676 # initialize rs1
li x7, 0xcaf5e63bb4ff9709 # initialize rs2
rem x21, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x4eb4663fff5d6a09 # initialize rs1
li x9, 0x8a75c3d268c20fb2 # initialize rs2
rem x24, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf76ab10e1621a056 # initialize rs1
li x6, 0x98d261f4389d6df9 # initialize rs2
rem x9, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x06d4a2323e97b175 # initialize rs1
li x11, 0xc2427a2255299316 # initialize rs2
rem x29, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3c78dc3dff10743c # initialize rs1
li x22, 0xb2de2cc7766117e0 # initialize rs2
rem x15, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x060cfc3748f8d105 # initialize rs1
li x20, 0x8482dcdb37af45cd # initialize rs2
rem x22, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x605b4efde7b9a38a # initialize rs1
li x19, 0x5bf2d9f0a88a06b1 # initialize rs2
rem x5, x6, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x51f4b97636a9facb # initialize rs1
li x2, 0x9223f737039c2d70 # initialize rs2
rem x14, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x4bbc25a90b5791ab # initialize rs1
li x13, 0xd9826d712eca551c # initialize rs2
rem x23, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x71c13ddcfc8be394 # initialize rs1
li x1, 0x7781bfa8f5adccd1 # initialize rs2
rem x27, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xabb906304bbd17c3 # initialize rs1
li x8, 0x4b3245575b937d68 # initialize rs2
rem x17, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc46ea8f90d11a2a6 # initialize rs1
li x30, 0x98ab8ce6bf881026 # initialize rs2
rem x12, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x82ad98ffed65c3d7 # initialize rs1
li x7, 0xc6c65cafc3b6160d # initialize rs2
rem x23, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x1c99343bc4985814 # initialize rs1
li x22, 0x1702ce209ed5ca73 # initialize rs2
rem x14, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc543b74cb9eedd4f # initialize rs1
li x15, 0xfe4a34c622281c5d # initialize rs2
rem x19, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7bf7644053f060e4 # initialize rs1
li x19, 0x5f710f62a2ae4863 # initialize rs2
rem x8, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x54d2ab93557443c6 # initialize rs1
li x19, 0x8a7e30f86071bb20 # initialize rs2
rem x21, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xaa8ee0771de44ef7 # initialize rs1
li x8, 0x02fb2b7000fae8b9 # initialize rs2
rem x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa72a0f3913f00a2e # initialize rs1
li x31, 0xb62248e4b137b25d # initialize rs2
rem x8, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb05b961fe41a06ac # initialize rs1
li x2, 0xe036f61afd7fd1c1 # initialize rs2
rem x31, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x5ae57f0b3ee00b64 # initialize rs1
li x6, 0x14a7e3fbad13e3ca # initialize rs2
rem x26, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x51654ee00b7c0789 # initialize rs1
li x8, 0x71f3608fff1adc69 # initialize rs2
rem x13, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x34a5d742a2e7add8 # initialize rs1
li x27, 0x568a5fff3261bcb3 # initialize rs2
rem x21, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x18125b2be36a5145 # initialize rs1
li x15, 0x69a99ca60d9aa726 # initialize rs2
rem x10, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5ddde2a6aedb8124 # initialize rs1
li x12, 0x5a801ce6f495543d # initialize rs2
rem x27, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb53333d5bf2d00bf # initialize rs1
li x26, 0x26234fd23d813d5e # initialize rs2
rem x2, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x084eea115904d409 # initialize rs1
li x5, 0x1e10d522ee647a28 # initialize rs2
rem x16, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x427d9d47a83448e4 # initialize rs1
li x3, 0x9015561c94facc58 # initialize rs2
rem x18, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x616e9619827fc1fb # initialize rs1
li x19, 0x8f95d19b0e0f94fe # initialize rs2
rem x23, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1b4e79ef1447c2a8 # initialize rs1
li x10, 0x959d811fdae99cbf # initialize rs2
rem x24, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xbe37ebe4bbdddc00 # initialize rs1
li x28, 0x2cef89c6e65209b2 # initialize rs2
rem x9, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbdcc3155948a1c95 # initialize rs1
li x25, 0x43a17f6b026f4b19 # initialize rs2
rem x15, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x11, 0x2658d53ba32db064 # initialize rs1
li x0, 0x79e127bcc7401a15 # initialize rs2
rem x25, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0xfec40f5b57ce5e6e # initialize rs1
li x1, 0x39cb64e0ed32fd35 # initialize rs2
rem x17, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0x4f8e02a3c770f957 # initialize rs1
li x2, 0xb7adfa3eefd81299 # initialize rs2
rem x9, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0xf5bb1f47caf783f7 # initialize rs1
li x3, 0x4ab25433e39fb3a6 # initialize rs2
rem x30, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x41d0eb2eb9829b73 # initialize rs1
li x4, 0x1a328517be4cab87 # initialize rs2
rem x31, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x1d5876dd9dcc9587 # initialize rs1
li x5, 0xd2be9c6c4bb89b66 # initialize rs2
rem x24, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xd9f7b52e124279a6 # initialize rs1
li x6, 0x4b60296d0d747e70 # initialize rs2
rem x5, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xe8aa2ae1125c63ad # initialize rs1
li x7, 0x56895a90d9cfa6ef # initialize rs2
rem x5, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x6, 0x1762346ce63eb023 # initialize rs1
li x8, 0x8874837a56257cb4 # initialize rs2
rem x27, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0x4acf84197dab1411 # initialize rs1
li x9, 0x228ed7995c9d971d # initialize rs2
rem x12, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0x3389b1fc17af85dd # initialize rs1
li x10, 0x9735649fdcef6962 # initialize rs2
rem x16, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0x84fa15ea422f1e42 # initialize rs1
li x11, 0x72742da40d5558db # initialize rs2
rem x20, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x23, 0x4e3e833cdc6977ce # initialize rs1
li x12, 0x4b8786a0a41b3e88 # initialize rs2
rem x21, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0x2d1bbe536201e6a4 # initialize rs1
li x13, 0x13144d914dbfcda7 # initialize rs2
rem x8, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0x2ce333ae45284cbd # initialize rs1
li x14, 0xc41bae30e1e9ed04 # initialize rs2
rem x21, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0x133ddf024d0a7ec7 # initialize rs1
li x15, 0x53a4da78790689e1 # initialize rs2
rem x2, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0xe130354be3420798 # initialize rs1
li x16, 0xfc153a6018b7d5ba # initialize rs2
rem x29, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0xe290e7fe007e674f # initialize rs1
li x17, 0xe8cf359ae404ee79 # initialize rs2
rem x1, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x28, 0xb57ca50cee422263 # initialize rs1
li x18, 0xde965cbd6362671a # initialize rs2
rem x26, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0x61b446757d3c71a0 # initialize rs1
li x19, 0x8f189f435ca5637a # initialize rs2
rem x27, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0xf737b66dd5211819 # initialize rs1
li x20, 0xd72ae2cb6091afa5 # initialize rs2
rem x23, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x5, 0x5feb0099da26798f # initialize rs1
li x21, 0x95069ed7e43ea7e9 # initialize rs2
rem x11, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0x6e3e5ee3f8493213 # initialize rs1
li x22, 0xd6e45910d36c15f9 # initialize rs2
rem x17, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0x5a88a16dfde5b700 # initialize rs1
li x23, 0x1dfcaa1436d398a1 # initialize rs2
rem x19, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0x006d96a026ff9ecb # initialize rs1
li x24, 0xb475c7c8ecd2a817 # initialize rs2
rem x16, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x8567909fa2a6912a # initialize rs1
li x25, 0x1c5554bb804e09b4 # initialize rs2
rem x17, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0x21277fb9f160c2ef # initialize rs1
li x26, 0xc0af4b243dbe44e3 # initialize rs2
rem x20, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x31a2eb39c875d75f # initialize rs1
li x27, 0x827ef060935afc49 # initialize rs2
rem x18, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0x44fb7c6a6c631ec8 # initialize rs1
li x28, 0xe19b1e0f3107a03e # initialize rs2
rem x18, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x17, 0xd766e41debc2db23 # initialize rs1
li x29, 0xa4f4448b85fa3858 # initialize rs2
rem x10, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x06cb8155c04d4509 # initialize rs1
li x30, 0xc5616460759e1df4 # initialize rs2
rem x12, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x1ec0729406c77a37 # initialize rs1
li x31, 0x08e470b7dd22949a # initialize rs2
rem x16, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0x745f5bae86eef14b # initialize rs1
li x20, 0xc581320938923f54 # initialize rs2
rem x0, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x18, 0xc672468c7ead324a # initialize rs1
li x8, 0x8bfdc246aa40397e # initialize rs2
rem x1, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x1f98c1e8b755f756 # initialize rs1
li x30, 0x6c00bea67fcdede1 # initialize rs2
rem x2, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0x249354bdbd324e88 # initialize rs1
li x2, 0xf345b5da82a74703 # initialize rs2
rem x3, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x94fed5840d344b6a # initialize rs1
li x20, 0xd6a9196864f1d2ee # initialize rs2
rem x4, x22, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x534c1f4080d6fefb # initialize rs1
li x13, 0x8d1b097fa4f04cf6 # initialize rs2
rem x5, x27, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xfcbf4bdcaecc3448 # initialize rs1
li x2, 0x13217119a0709ed6 # initialize rs2
rem x6, x9, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x2510019fd13f7a56 # initialize rs1
li x28, 0x2e1af825e1c14654 # initialize rs2
rem x7, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x4405e7cd9e60f46f # initialize rs1
li x3, 0x95fd6ccbfda6e203 # initialize rs2
rem x8, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x3d594c6ec45b30b7 # initialize rs1
li x11, 0x8a991f8f378efefe # initialize rs2
rem x9, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x8bbb998fe5585bd1 # initialize rs1
li x17, 0x254ef081ac21d796 # initialize rs2
rem x10, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0xe66ac92bc6c7ebaf # initialize rs1
li x29, 0x5b94cb9829f8329c # initialize rs2
rem x11, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x31, 0x8a6e04117d545171 # initialize rs1
li x7, 0x1a367857681c7466 # initialize rs2
rem x12, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x28cb9240e600ebf4 # initialize rs1
li x9, 0x2b274dbf4ca6465d # initialize rs2
rem x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x8ff75674098130d7 # initialize rs1
li x18, 0x16a9f920f86f5de9 # initialize rs2
rem x14, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x6, 0xb33599d2d82e279f # initialize rs1
li x8, 0x0091b18864da0579 # initialize rs2
rem x15, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x3292990fdabc647c # initialize rs1
li x16, 0x9414419ea9e85614 # initialize rs2
rem x16, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0x292760dadb3aa975 # initialize rs1
li x12, 0xce6482796ce06f58 # initialize rs2
rem x17, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xbeb2afc90a344078 # initialize rs1
li x13, 0xfdd22031531f1667 # initialize rs2
rem x18, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x595df06864bf821a # initialize rs1
li x7, 0xf7c5a1e862381526 # initialize rs2
rem x19, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0xc47ea6e78d42f6aa # initialize rs1
li x9, 0x3c15041814e48f86 # initialize rs2
rem x20, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0x9ac12adc28da762e # initialize rs1
li x22, 0xaeb19973315cd305 # initialize rs2
rem x21, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x3e884c07409648a6 # initialize rs1
li x30, 0x9e163c81e2d6f0ae # initialize rs2
rem x22, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0xef8ec3f141fc89dc # initialize rs1
li x16, 0x65c6c2da6ad316d8 # initialize rs2
rem x23, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0xd599e8fb81b29331 # initialize rs1
li x26, 0x1086aaa468569de1 # initialize rs2
rem x24, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x1f4b1155aca7c9e4 # initialize rs1
li x9, 0x3759e0d1140fafbc # initialize rs2
rem x25, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x0e11f833865c5ca7 # initialize rs1
li x7, 0xb9f0c366edff49a0 # initialize rs2
rem x26, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x37ef0c0b22700cf6 # initialize rs1
li x28, 0x8dc252e911a1af40 # initialize rs2
rem x27, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x633806d42cd1f792 # initialize rs1
li x19, 0x62254cf4a1afb0a7 # initialize rs2
rem x28, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x3f38dffbb7002aac # initialize rs1
li x28, 0x6b067efbc44b3307 # initialize rs2
rem x29, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x72bb9682203e2d4b # initialize rs1
li x26, 0xa936bbe8004ff1ff # initialize rs2
rem x30, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0xf40507e78c4307e0 # initialize rs1
li x24, 0xc7b184f178f7e68b # initialize rs2
rem x31, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
li x8, 0x7f8302ebae1af0db # initialize rs2
rem x12, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x26, 0x0000000000000001 # initialize rs1
li x31, 0x5dc7caa985b7682e # initialize rs2
rem x5, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x6, 0x3da974e922c5199b # initialize rs2
rem x12, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x4fc320ff3f25b65e # initialize rs2
rem x18, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x29, 0x9f315e073f898e75 # initialize rs2
rem x11, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x9, 0x0b1cd77b526472b8 # initialize rs2
rem x3, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7c724e9104a38208 # initialize rs2
rem x28, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x31, 0x8b64bb991e87f085 # initialize rs2
rem x2, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
li x5, 0xf14b472686e64684 # initialize rs2
rem x17, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x06c33d0a1949c09d # initialize rs2
rem x31, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x955d7dd8c0db84e2 # initialize rs2
rem x14, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x21, 0x6e385c2f60828b67 # initialize rs2
rem x15, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x5, 0xc9205e1b98ae3909 # initialize rs2
rem x2, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x8, 0x68d4c76e11f5b25e # initialize rs2
rem x18, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
li x14, 0x60c6b38ec75e8f45 # initialize rs2
rem x24, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x25, 0x0e27a96ca6fe722b # initialize rs2
rem x10, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x9c9610a0aa57f60a # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
rem x3, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x48fa943941485df8 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
rem x5, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x1e8b74a08d35f698 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
rem x28, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x5, 0x645a14f25becc8fa # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rem x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x7, 0x6bd133858034150d # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rem x16, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0xef876a2c9bdb8c69 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
rem x8, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x23, 0x4d6d80340a0d53db # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
rem x12, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x14, 0x3e65c0e3dfb690b9 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
rem x24, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0x78f5f68e9bf8c145 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
rem x30, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x23, 0xdfdfb7e104daebb4 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
rem x5, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xc204a9b8b1d84882 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x25, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x30b11bee533c3738 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
rem x10, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x5ecbda5b1564c016 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
rem x22, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x13, 0xfcaba06e8cecea74 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
rem x24, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x8a6d53021a300744 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
rem x26, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x9, 0x297a23e3ed3dada9 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
rem x6, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x6, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
rem x7, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x24, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
rem x15, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
rem x17, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x18, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rem x17, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x26, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
rem x22, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rem x24, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
rem x23, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
rem x20, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
rem x13, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
rem x31, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x21, 0x0000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rem x9, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rem x6, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
rem x11, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x19, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
rem x9, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x12, 0x0000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
rem x10, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
rem x14, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x13, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
rem x23, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
rem x29, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x16, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
rem x30, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x16, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
rem x20, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
rem x20, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
rem x13, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
rem x24, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
rem x18, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
rem x5, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x2, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x12, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rem x25, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
rem x3, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
rem x19, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x20, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rem x1, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x18, 0x0000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
rem x7, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
rem x11, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
rem x1, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
rem x18, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x31, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
rem x8, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
rem x26, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
rem x18, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rem x8, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
rem x17, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
rem x16, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000000000002 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
rem x10, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x13, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
rem x27, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rem x2, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
rem x18, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x28, 0x0000000000000002 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
rem x11, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x0000000000000002 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
rem x1, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x18, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
rem x15, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x26, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
rem x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x5, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
rem x24, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
rem x30, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x28, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
rem x15, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
rem x23, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x8, 0x8000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
rem x18, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
rem x30, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
rem x6, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x8000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
rem x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x15, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x25, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
rem x18, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
rem x12, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
rem x21, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x13, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
rem x22, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x30, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rem x8, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
rem x25, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
rem x21, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x7, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rem x31, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x30, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
rem x5, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
rem x6, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
rem x3, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rem x16, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
rem x26, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
rem x2, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x2, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
rem x8, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x15, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x15, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
rem x2, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
rem x31, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
rem x13, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x27, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
rem x5, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
rem x29, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x29, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
rem x26, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x23, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
rem x17, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x9, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
rem x7, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
rem x17, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
rem x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
rem x27, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
rem x5, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
rem x27, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
rem x5, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x7fffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
rem x28, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x7fffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x23, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x22, 0x7fffffffffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
rem x11, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
rem x31, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x16, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
rem x30, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x2, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
rem x25, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
rem x19, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
rem x6, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x13, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
rem x18, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rem x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
rem x31, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
rem x26, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
rem x20, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rem x11, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
rem x24, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
rem x6, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
rem x19, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x27, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
rem x15, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
rem x20, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
rem x10, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
rem x1, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
rem x23, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
rem x6, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x12, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
rem x19, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rem x5, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x26, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
rem x17, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rem x11, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
rem x30, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
rem x16, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
rem x2, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
rem x18, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
rem x31, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xffffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x20, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
rem x22, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
rem x26, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
rem x11, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rem x10, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x25, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
rem x1, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x22, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
rem x31, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x18, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
rem x6, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x17, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rem x31, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
rem x15, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rem x15, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
rem x20, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rem x9, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
rem x16, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rem x25, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0xfffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
rem x18, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfffffffffffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x14, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x13, 0xfffffffffffffffe # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
rem x17, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
rem x27, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
rem x18, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
rem x21, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
rem x2, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rem x12, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
rem x7, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
rem x11, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
rem x13, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
rem x13, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
rem x24, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
rem x1, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
rem x25, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
rem x7, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
rem x17, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x5, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
rem x30, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
rem x17, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
rem x20, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
rem x16, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rem x11, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
rem x13, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
rem x9, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
rem x17, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
rem x22, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rem x29, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
rem x10, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
rem x17, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
rem x17, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
rem x2, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
rem x18, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x3, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
rem x13, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
rem x25, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rem x20, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
rem x15, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rem x3, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
rem x26, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x26, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rem x8, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
rem x8, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x10, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
rem x27, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x1, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
rem x2, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
rem x10, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
rem x16, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
rem x11, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
rem x18, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x24, 0x5555555555555555 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
rem x25, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5555555555555555 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x9, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
rem x1, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
rem x3, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
rem x11, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
rem x19, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x21, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
rem x25, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x1, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
rem x15, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
rem x10, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
rem x3, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x9, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
rem x25, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x22, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
rem x28, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
rem x10, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
rem x30, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
rem x21, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x00000000ffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
rem x15, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0x00000000ffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
rem x14, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x00000000ffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x30, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
rem x22, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rem x1, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
rem x26, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x18, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rem x14, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x6, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
rem x7, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rem x8, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
rem x13, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
rem x24, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x15, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
rem x2, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x17, 0x00000000fffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
rem x11, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x00000000fffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
rem x9, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
rem x17, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
rem x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
rem x7, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0x00000000fffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
rem x21, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x10, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x5, 0x00000000fffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
rem x20, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rem x16, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
rem x17, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x6, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rem x26, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x12, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
rem x16, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x11, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
rem x10, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x10, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
rem x6, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x25, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rem x30, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x14, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
rem x29, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x15, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
rem x18, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
rem x25, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rem x2, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
rem x20, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
rem x14, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
rem x22, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x16, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
rem x17, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x5, 0x0000000100000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
rem x25, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
rem x26, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x29, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
rem x18, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x10, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
rem x28, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
rem x22, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x23, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
rem x7, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
rem x8, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x15, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
rem x18, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x25, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
rem x7, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
rem x8, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
rem x26, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
rem x10, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rem x8, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
rem x19, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
rem x14, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x6, 0x0000000100000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
rem x19, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
rem x6, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
rem x31, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x14, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
rem x11, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
rem x9, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x6ae9013c603fb414 # initialize rs1
li x0, 0x4e3cffb7e59f9697 # initialize rs2
rem x29, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc49409eb6f12a189 # initialize rs1
li x1, 0x5173bd23c54324ae # initialize rs2
rem x3, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xce264fdf3986cd7e # initialize rs1
li x2, 0xa5c453e2aef4618a # initialize rs2
rem x25, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x88bcc15d91d503a6 # initialize rs1
li x3, 0x541599c9f62d3bd8 # initialize rs2
rem x9, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe61b1e8617fe201a # initialize rs1
li x4, 0x1e915a224b4306a5 # initialize rs2
rem x11, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa20f3273bbc800dc # initialize rs1
li x5, 0x54bf7b6c552f09d3 # initialize rs2
rem x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe0845e19871a7538 # initialize rs1
li x6, 0x140026621466f81c # initialize rs2
rem x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4c430e8761079954 # initialize rs1
li x7, 0x2608e6a403ec9d10 # initialize rs2
rem x30, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbd649e40f0d1c4b7 # initialize rs1
li x8, 0xd0bebd4e005cfed8 # initialize rs2
rem x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x01d6838b48452c02 # initialize rs1
li x9, 0x458515c335656d45 # initialize rs2
rem x26, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd7d69359aae32b83 # initialize rs1
li x10, 0xe8c885b9edd7e1c2 # initialize rs2
rem x1, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x86a72a2ad26e537d # initialize rs1
li x11, 0x43ff4e1e40ec3043 # initialize rs2
rem x15, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf3fce3479f3c2172 # initialize rs1
li x12, 0x7b4da2d656db71f7 # initialize rs2
rem x22, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2321b7c7b092380b # initialize rs1
li x13, 0xf655ac847c0d19fd # initialize rs2
rem x3, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1fdb580703f878fb # initialize rs1
li x14, 0x802ca0ebaed4d9e2 # initialize rs2
rem x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xea7b39dce0c5afcf # initialize rs1
li x15, 0xc04f6766663a6265 # initialize rs2
rem x16, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xed5ea94d99b0f17e # initialize rs1
li x16, 0x7e0161b2e671976f # initialize rs2
rem x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xdb52effca31f7a1e # initialize rs1
li x17, 0x9eb0c31b05799b55 # initialize rs2
rem x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x926714087d15862c # initialize rs1
li x18, 0xf2924059aaaa43a4 # initialize rs2
rem x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x3b1f9b1a9b55e3fd # initialize rs1
li x19, 0x5c14f9d8813a5d9a # initialize rs2
rem x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x8193c294ad2a0a54 # initialize rs1
li x20, 0x41cd75120002cfbd # initialize rs2
rem x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x47db60af63bd49a6 # initialize rs1
li x21, 0xd9cd0893e98bc312 # initialize rs2
rem x10, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xee5cc2446073c437 # initialize rs1
li x22, 0x5ad311658638b5b9 # initialize rs2
rem x11, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2ea11cb4bd161ee2 # initialize rs1
li x23, 0x58aa3ccec57c99b5 # initialize rs2
rem x11, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc0b2531a41fb3687 # initialize rs1
li x24, 0x8df79db8618e0be5 # initialize rs2
rem x22, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf50904d4c49acfb2 # initialize rs1
li x25, 0xf523c6b72382507c # initialize rs2
rem x11, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x4f093e8864ef13d6 # initialize rs1
li x26, 0x13b080b11c96e97c # initialize rs2
rem x25, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xf69bc55f289a2290 # initialize rs1
li x27, 0x99723d2a8add507a # initialize rs2
rem x20, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf7b1319b506c37a8 # initialize rs1
li x28, 0xc03f9fb67d7fbb34 # initialize rs2
rem x18, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x5d722eddb9709c6d # initialize rs1
li x29, 0x8913e84ad58677cf # initialize rs2
rem x11, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa01975c686ad9938 # initialize rs1
li x30, 0x95131839f564e6d1 # initialize rs2
rem x1, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x1951781ec9cf1fc1 # initialize rs1
li x31, 0x912d28635734da12 # initialize rs2
rem x17, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x2ec06de37bc395b5 # initialize rs1
li x21, 0x1fb30f62f20e8439 # initialize rs2
rem x0, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe56ab3b7c8e6f5fe # initialize rs1
li x3, 0xfeb298a28dc10052 # initialize rs2
rem x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7949a1fb88d4fc95 # initialize rs1
li x26, 0x61a44eb4149087c0 # initialize rs2
rem x2, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7fa0b456d9fb940b # initialize rs1
li x2, 0xa76cb0baaab59314 # initialize rs2
rem x3, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe9f20eb2e5986ed3 # initialize rs1
li x19, 0xba2278ab09f22554 # initialize rs2
rem x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7981a5c51a92f187 # initialize rs1
li x23, 0xb7643d80968d83a2 # initialize rs2
rem x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5c529124552ec86a # initialize rs1
li x27, 0xd8c5518815e98f56 # initialize rs2
rem x6, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xebe88eedc540d80c # initialize rs1
li x11, 0xbed9c1defe83c211 # initialize rs2
rem x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x45cdd3065230b45a # initialize rs1
li x23, 0x41fac73ab848b817 # initialize rs2
rem x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7f585257f0dc003d # initialize rs1
li x24, 0x59acf9e673ae9757 # initialize rs2
rem x9, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x90e97f05a551e228 # initialize rs1
li x15, 0xd4c51f3a307a7aaf # initialize rs2
rem x10, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd8382df5c9b29058 # initialize rs1
li x3, 0xbb982fa8e9949016 # initialize rs2
rem x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe1075c0d327c8f21 # initialize rs1
li x11, 0xba6e3ea352213a48 # initialize rs2
rem x12, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5810438dd696e711 # initialize rs1
li x8, 0xcd5f258d5d1b43de # initialize rs2
rem x13, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xddb2ae7b870731c9 # initialize rs1
li x29, 0x212fe99e7ac4fdb6 # initialize rs2
rem x14, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x78e5fc03265c8ef5 # initialize rs1
li x26, 0xef4bfb2460647aae # initialize rs2
rem x15, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x91ce4cca43f9c3b3 # initialize rs1
li x17, 0x651d4bcadda10059 # initialize rs2
rem x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7304a0b3a7d8f44b # initialize rs1
li x28, 0xb083f7612459911a # initialize rs2
rem x17, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf44a896a55f870f6 # initialize rs1
li x2, 0x5efb1a4beb7a50a7 # initialize rs2
rem x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf22e4cebe197e362 # initialize rs1
li x17, 0x570deac579cb2cd2 # initialize rs2
rem x19, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb48e0448336d83e2 # initialize rs1
li x23, 0xd34456957db201b3 # initialize rs2
rem x20, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2fe5f72fd71f7b6c # initialize rs1
li x11, 0x095e0f8fb7e18aa8 # initialize rs2
rem x21, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf7c10851b8d2d0eb # initialize rs1
li x16, 0xab5c53c258e355a2 # initialize rs2
rem x22, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0f913239368fe02d # initialize rs1
li x12, 0xb6f3a26f8dd6d76f # initialize rs2
rem x23, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x56498dcfadf60532 # initialize rs1
li x18, 0x37e08c46477d8712 # initialize rs2
rem x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x23730f3690c1f467 # initialize rs1
li x12, 0xe89d449bca254a6c # initialize rs2
rem x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xaa03039ddbdcbc70 # initialize rs1
li x27, 0x2487649339ed6f5f # initialize rs2
rem x26, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5563e1ef0bd5c585 # initialize rs1
li x9, 0x6f7eb2c21f8375cd # initialize rs2
rem x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x853269f71debd070 # initialize rs1
li x22, 0x1e1268832278ad63 # initialize rs2
rem x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x366d4535f9c046a3 # initialize rs1
li x16, 0x4969ac78ea801f3d # initialize rs2
rem x29, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf37b1039aa38e18e # initialize rs1
li x6, 0xe54054726953dadc # initialize rs2
rem x30, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6fa34350230f999f # initialize rs1
li x3, 0x8350e89bacf44c56 # initialize rs2
rem x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x27, 0xcdf7d0b8924a8956 # initialize rs1
li x0, 0x8f008b674429ac5d # initialize rs2
rem x0, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x3ddf5334dce47268 # initialize rs1
li x1, 0x61aec2d377a95304 # initialize rs2
rem x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0x4dcf76ee8f859c02 # initialize rs1
li x2, 0x3fcd698242f57af1 # initialize rs2
rem x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x11, 0xd5bf81bed424b725 # initialize rs1
li x3, 0xc6fc426aa54e0af7 # initialize rs2
rem x3, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xe8093c225150262f # initialize rs1
li x4, 0xfc554e7fd9ab036e # initialize rs2
rem x4, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x08bf7668287616b3 # initialize rs1
li x5, 0xd5b04d791af43e27 # initialize rs2
rem x5, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x7c2e037e2dff75b9 # initialize rs1
li x6, 0xd75bb1bf80e50099 # initialize rs2
rem x6, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0xb4b022f991e81a7c # initialize rs1
li x7, 0xd0f80c381e57f9d4 # initialize rs2
rem x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x3fa37deea6e0552a # initialize rs1
li x8, 0xfc8184c5329ca42c # initialize rs2
rem x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x6, 0xa1ebe51347fa7bb8 # initialize rs1
li x9, 0x816bcceedfeeb3d3 # initialize rs2
rem x9, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x1, 0x7dc9d57fe624aff6 # initialize rs1
li x10, 0x2efb1f5d9dc73bda # initialize rs2
rem x10, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x16, 0x5388ca5561d94072 # initialize rs1
li x11, 0xa13bed52d7dae0fa # initialize rs2
rem x11, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0xbc9f0d0d9ec1dc70 # initialize rs1
li x12, 0xf02055948d16e092 # initialize rs2
rem x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x30, 0xde0d78481fb78df1 # initialize rs1
li x13, 0x4885986be4f94e21 # initialize rs2
rem x13, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x12, 0x3550d04a8dfbefa3 # initialize rs1
li x14, 0x16c64021068a526d # initialize rs2
rem x14, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0x89294583e004c34b # initialize rs1
li x15, 0x7e0c8fe1299dfdc5 # initialize rs2
rem x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0xeb3f7008e0792b24 # initialize rs1
li x16, 0x02d567145c313315 # initialize rs2
rem x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0x04db641f5607644b # initialize rs1
li x17, 0x9ff24c34dc7757db # initialize rs2
rem x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x25, 0x6e6b48a9a6b09fe6 # initialize rs1
li x18, 0x0ceaad1310d1cb62 # initialize rs2
rem x18, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0x4a9c88450edcd9c1 # initialize rs1
li x19, 0xa471a673c336558c # initialize rs2
rem x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x18, 0x1f524c26de15a546 # initialize rs1
li x20, 0xf0b7b17312ba471b # initialize rs2
rem x20, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0x4bc21d1063370a5b # initialize rs1
li x21, 0x90c81985b57f0068 # initialize rs2
rem x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x14, 0xddac59071f4f1cd0 # initialize rs1
li x22, 0x50ba9575a0de2c77 # initialize rs2
rem x22, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x13, 0x6fddac1d01e03e82 # initialize rs1
li x23, 0x9bd83728c8249df1 # initialize rs2
rem x23, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x19, 0xa5251fc0440444f0 # initialize rs1
li x24, 0x12ed3d0b37ad3f5c # initialize rs2
rem x24, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x30, 0x1bd3307b407833de # initialize rs1
li x25, 0x97215bce1b8947a3 # initialize rs2
rem x25, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x16, 0x30868b45850d8ad2 # initialize rs1
li x26, 0x1e7cf2252b00ec89 # initialize rs2
rem x26, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x23, 0x65187d306e82e015 # initialize rs1
li x27, 0xcd0f034d34ce6a6e # initialize rs2
rem x27, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0x7d7d959d736a05f3 # initialize rs1
li x28, 0xa31fce254c087e64 # initialize rs2
rem x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x86e52f1ef192bbd6 # initialize rs1
li x29, 0xaf9590ea3f1c0625 # initialize rs2
rem x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x5ede150c626159c6 # initialize rs1
li x30, 0xbdf0cc2a3bd47a4d # initialize rs2
rem x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x9, 0x4affdd4f020217e8 # initialize rs1
li x31, 0xf14b352bcabef52a # initialize rs2
rem x31, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xb8abacc80728221a # initialize rs1
li x0, 0xe11445d07901f904 # initialize rs2
rem x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4558c034f45bf0b4 # initialize rs1
li x1, 0x7b491f2708c3e975 # initialize rs2
rem x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1dd2a37c8ca38d09 # initialize rs1
li x2, 0xbb2700f270cc7837 # initialize rs2
rem x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x500a1df5c751a153 # initialize rs1
li x3, 0x977d301ea6c7e4bd # initialize rs2
rem x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf6cdbef990daa858 # initialize rs1
li x4, 0xfdf25564c3087e5e # initialize rs2
rem x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbcdbc1e3f93bf011 # initialize rs1
li x5, 0xd20e6d3b915a6efd # initialize rs2
rem x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x37c66c5e10f41070 # initialize rs1
li x6, 0xaafebce287b2685f # initialize rs2
rem x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x29520deef5909780 # initialize rs1
li x7, 0x4a964dcc2b7ceb47 # initialize rs2
rem x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6598d3b9e926e407 # initialize rs1
li x8, 0x0d02daa3189d176d # initialize rs2
rem x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x14052745f3357588 # initialize rs1
li x9, 0xd676cbc9d10cd225 # initialize rs2
rem x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf16ec5d8087b68d8 # initialize rs1
li x10, 0x915c4b26a33d5aac # initialize rs2
rem x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9d7b1c3ff88a0409 # initialize rs1
li x11, 0x55c03ab86e43a6b6 # initialize rs2
rem x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xfbd6ece04df67f2f # initialize rs1
li x12, 0x02bd49c14465a87a # initialize rs2
rem x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xcc41acf338a92f55 # initialize rs1
li x13, 0x6994164983e6ff65 # initialize rs2
rem x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x2787642b17f55fce # initialize rs1
li x14, 0x722036effa1e89de # initialize rs2
rem x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1f3818b3cf5c24e0 # initialize rs1
li x15, 0xa4c6885981084d58 # initialize rs2
rem x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1f3fc1e977f9c0be # initialize rs1
li x16, 0x867cd03f8740962e # initialize rs2
rem x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x06097f8b42dde748 # initialize rs1
li x17, 0x467a1a0318316c13 # initialize rs2
rem x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x9e23a5abed139ea6 # initialize rs1
li x18, 0xe5bc8c723e01e689 # initialize rs2
rem x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6ea2206fac59d2fb # initialize rs1
li x19, 0xb37a50e40c4bf501 # initialize rs2
rem x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x39c3a9bc4c19b019 # initialize rs1
li x20, 0x36749f90b87e010c # initialize rs2
rem x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x9b9e9330899872bb # initialize rs1
li x21, 0x18b3a2fbdd57868c # initialize rs2
rem x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x851c7d968a488b79 # initialize rs1
li x22, 0xe2272726d7cc1ba4 # initialize rs2
rem x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x02cecb016560d8ae # initialize rs1
li x23, 0x4396f86434fbdd5b # initialize rs2
rem x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x8856f28e558e0b30 # initialize rs1
li x24, 0x2b37b91183b322ef # initialize rs2
rem x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x577c8541e2d87a04 # initialize rs1
li x25, 0x140797c7c1a191c0 # initialize rs2
rem x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd15e21704d71b136 # initialize rs1
li x26, 0x0935ba301f456c18 # initialize rs2
rem x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe583c82a71707dae # initialize rs1
li x27, 0x1ac4dc27a6379b1a # initialize rs2
rem x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x92dd01a9cf289467 # initialize rs1
li x28, 0x3aec675e498f71c4 # initialize rs2
rem x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb21df2988587f525 # initialize rs1
li x29, 0x84579fffc76194b8 # initialize rs2
rem x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa09d0219f1a7dc59 # initialize rs1
li x30, 0xedc2a251342e9c58 # initialize rs2
rem x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x472e194caf6add92 # initialize rs1
li x31, 0xef086094cab28a3f # initialize rs2
rem x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x25, x1 # perform first operation
rem x22, x28, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x13, x11 # perform first operation
rem x15, x31, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x28, x3 # perform first operation
rem x17, x31, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x14, x15 # perform first operation
rem x16, x24, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x17, x19 # perform first operation
rem x19, x26, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x25, x9 # perform first operation
rem x28, x15, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x10, x17 # perform first operation
rem x28, x30, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x7, x22 # perform first operation
rem x25, x17, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x9, x8 # perform first operation
rem x30, x2, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x31, x13 # perform first operation
rem x31, x22, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x19, x17 # perform first operation
rem x17, x14, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x24, x25 # perform first operation
rem x1, x18, x6 # perform second (triggering) operation

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
