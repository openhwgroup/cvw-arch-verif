///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-mulhu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.665232
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x8d8143a6d2c610ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x388938a106be83b9 # initialize rs1
li x22, 0xb1fc521f1e13b958 # initialize rs2
mulhu x0, x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xebe95bea69e30a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcefc1e4e78439659 # initialize rs1
li x28, 0x65574fa3e686bbf9 # initialize rs2
mulhu x1, x29, x28 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8505ca4960b80105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1ec38e68d9c24565 # initialize rs1
li x7, 0x77841351361584d4 # initialize rs2
mulhu x2, x2, x7 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xd236c2a5703c184b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa153bcaa8a1fd020 # initialize rs1
li x5, 0x058daa6edd5e5965 # initialize rs2
mulhu x3, x21, x5 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x03291e267ad269b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa45a9422e5878cb3 # initialize rs1
li x19, 0xf0c4837e624d98fb # initialize rs2
mulhu x4, x3, x19 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x14d77814104b30f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7b0dbd7f555102e0 # initialize rs1
li x21, 0x9e9f3f5be8700408 # initialize rs2
mulhu x5, x31, x21 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb5ba30c2e06181ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1b031d7891b225cf # initialize rs1
li x31, 0x2a076be4127a48aa # initialize rs2
mulhu x6, x29, x31 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x624d04020eea44b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x69a7b4a2d5ac92ff # initialize rs1
li x3, 0x1c99a5c0453059bf # initialize rs2
mulhu x7, x9, x3 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x72069c83c1198e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa2da1f749bdd88a2 # initialize rs1
li x13, 0xabd2490fe44e6aa1 # initialize rs2
mulhu x8, x15, x13 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x38c20e28b1a6709a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f2526c03749dd15 # initialize rs1
li x27, 0xf0e94bfc293a3b14 # initialize rs2
mulhu x9, x8, x27 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x67cd0eb436df972c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5210d5e6ea38c2f2 # initialize rs1
li x17, 0x7b5c679d4125ebf9 # initialize rs2
mulhu x10, x26, x17 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x86eb5204055f0b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x497b2dd6f824528c # initialize rs1
li x30, 0xac7454d7386eb8f7 # initialize rs2
mulhu x11, x24, x30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x147ec1ef5d1a0aed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0927a9f4535e608d # initialize rs1
li x19, 0x0e7a860555061bf9 # initialize rs2
mulhu x12, x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x865fa75e1bf5b313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x99322b8d77712748 # initialize rs1
li x4, 0x2a9736ad1f8c8f33 # initialize rs2
mulhu x13, x1, x4 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xab9aa53a86a76232 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6e9d9a0c27b48e78 # initialize rs1
li x29, 0x1e1491aeedb6bceb # initialize rs2
mulhu x14, x27, x29 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa57bc3a6cc9cbd40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaeb50d576d2b815d # initialize rs1
li x8, 0x11b9a6876537e055 # initialize rs2
mulhu x15, x9, x8 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x79fb388d445ceb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb354fb0d537595ea # initialize rs1
li x9, 0x7ccd01467a1a0350 # initialize rs2
mulhu x16, x28, x9 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xad680f25b4fc8d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x528aa49c19945ef9 # initialize rs1
li x12, 0xfff31620dcd92577 # initialize rs2
mulhu x17, x22, x12 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x091412e4f4f25e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbc862f918bcd8854 # initialize rs1
li x31, 0x59864be87d400ac7 # initialize rs2
mulhu x18, x25, x31 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8109d8623c49ec86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd216ba5d268ada47 # initialize rs1
li x14, 0x397b9e4b75143c96 # initialize rs2
mulhu x19, x28, x14 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc267fcdef0a7c2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x520c51b94fbe6fa3 # initialize rs1
li x23, 0xbc4a9a85e46b990b # initialize rs2
mulhu x20, x9, x23 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x52a841fd3b7a82dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf2d36a8be6dd3f70 # initialize rs1
li x14, 0x30c6de87e32e9ceb # initialize rs2
mulhu x21, x28, x14 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xef6759824ffdec21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9405678a18ec093b # initialize rs1
li x5, 0x7c5f8da4dc47a07b # initialize rs2
mulhu x22, x14, x5 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x196a8f8308f74cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x445375a784884135 # initialize rs1
li x29, 0x2128c1ec5dd5336e # initialize rs2
mulhu x23, x6, x29 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x26fe82e284b8183f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0683d9ba6c38e5d1 # initialize rs1
li x21, 0x88ffb7c7b0ecb880 # initialize rs2
mulhu x24, x16, x21 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xc0dc646df9d9fed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x71837f141d8c4dcd # initialize rs1
li x22, 0xc9c4f6aed0844086 # initialize rs2
mulhu x25, x13, x22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2b805d7363432ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9cd431dc41a25987 # initialize rs1
li x1, 0x2547e82db99a9d3d # initialize rs2
mulhu x26, x4, x1 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x4030854fc0d90e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x78b49d461dbcccaa # initialize rs1
li x6, 0x88e344bb0adea227 # initialize rs2
mulhu x27, x5, x6 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x75d4ba8a081f9d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2a28d79871daf403 # initialize rs1
li x14, 0xf1bce799b20f311e # initialize rs2
mulhu x28, x1, x14 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x0c25f59f72789eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x099f5742d9c84599 # initialize rs1
li x9, 0xc7bee71008f97223 # initialize rs2
mulhu x29, x22, x9 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x957aca716875bb55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcf972f26c44735c5 # initialize rs1
li x2, 0xb3f1ea3f5514342e # initialize rs2
mulhu x30, x11, x2 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x63ba4a976f2d6511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe85284d824c12a6a # initialize rs1
li x11, 0x4ad9ea77470fd703 # initialize rs2
mulhu x31, x28, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x11, 0xa44eefa2f489c17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6e621849e94a379a # initialize rs1
li x2, 0x6c0090cfd34ffa3f # initialize rs2
mulhu x11, x0, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x6059af0c7e959757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xde002f2c9d241f96 # initialize rs1
li x19, 0x084d9c675586a675 # initialize rs2
mulhu x26, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0x9ed1cc337adb28c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbca67d4311a756a7 # initialize rs1
li x15, 0xccc39255825f0332 # initialize rs2
mulhu x8, x2, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x22, 0x415fab56c9bddf68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3a72ab4678b89998 # initialize rs1
li x9, 0x82d83d1789ce7fa1 # initialize rs2
mulhu x22, x3, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x28, 0xef10ccb8eede3bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x233a7765b1793e4b # initialize rs1
li x1, 0xdeaa72d73f96c70e # initialize rs2
mulhu x28, x4, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x11, 0x364023b8214740fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa4218a5e51dc7ad0 # initialize rs1
li x16, 0xb5740014cddad075 # initialize rs2
mulhu x11, x5, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x20, 0x451197530c6dba0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc7bdd0e34d8e8535 # initialize rs1
li x8, 0x4b299db7f336b3d4 # initialize rs2
mulhu x20, x6, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x12, 0x20eb1cf6329aabc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x791875235466b38e # initialize rs1
li x23, 0xafc5950b3a810fae # initialize rs2
mulhu x12, x7, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x3, 0x1ce4792d772b32e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2f1260f633ac67e7 # initialize rs1
li x17, 0x9db2b9995d10265d # initialize rs2
mulhu x3, x8, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x818d398990af7d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x01086c215e678c32 # initialize rs1
li x30, 0xf314b8351487f3e7 # initialize rs2
mulhu x29, x9, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xe09e080cec8ed400 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc4576634270a4b1f # initialize rs1
li x11, 0xb5d3f3b05c4f0d84 # initialize rs2
mulhu x21, x10, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0x0f7d0dc707c70d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1414435b8375bd53 # initialize rs1
li x29, 0x61d6ba0fe0eb6af3 # initialize rs2
mulhu x16, x11, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0x2982f44964753b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d3d62714a803526 # initialize rs1
li x25, 0xb5fde5f34d081bd9 # initialize rs2
mulhu x2, x12, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x43e471802747bddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa239e2e0977a386f # initialize rs1
li x28, 0xbe0cd28f90890b8c # initialize rs2
mulhu x7, x13, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x25, 0xbfc0d9d80a1125e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc1b7e2dd5724e250 # initialize rs1
li x9, 0xebad907e1b95b04e # initialize rs2
mulhu x25, x14, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x5b9eaf0998b39d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x69ba6d1434a21fd5 # initialize rs1
li x12, 0x193539e18a4e0563 # initialize rs2
mulhu x18, x15, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x11, 0x061f19135d1d0a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x576bdca542eaffba # initialize rs1
li x20, 0x7ecb216a47d059d3 # initialize rs2
mulhu x11, x16, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x23, 0x5997739b0ed61b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x488e872fc622f6bd # initialize rs1
li x24, 0xc43c1cd2239f6686 # initialize rs2
mulhu x23, x17, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0x1c0b1a2d42bb657a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x376ab1f61defe3e2 # initialize rs1
li x31, 0x09b55b97ffa07cd5 # initialize rs2
mulhu x10, x18, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0x224beff1b92ab36c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbd2905b8d17c2228 # initialize rs1
li x29, 0x31f0648108fa9674 # initialize rs2
mulhu x16, x19, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x0c0a49407796f8ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3897d8f264de2d12 # initialize rs1
li x5, 0x536e5133b9332526 # initialize rs2
mulhu x23, x20, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0xa394fc67ddbe4d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x01fb7cad090f7823 # initialize rs1
li x15, 0xe0790b40acbbe448 # initialize rs2
mulhu x30, x21, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0xde6ba13b41899c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1ee2130e1309ccdf # initialize rs1
li x2, 0x1d737e64ad95eb7a # initialize rs2
mulhu x11, x22, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0x24bbe2f39dbf0fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc2ec0de20812b146 # initialize rs1
li x9, 0x44a7831d698d4bdd # initialize rs2
mulhu x15, x23, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0x9a3b073260a48b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa27eadc188d79cc1 # initialize rs1
li x6, 0x01b55bbc04d5c732 # initialize rs2
mulhu x20, x24, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x22, 0xfa38545ede293900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7191f316fe32f43e # initialize rs1
li x14, 0x222fa10271388f08 # initialize rs2
mulhu x22, x25, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x5, 0x1eb3fc37ff87096e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd24b28f0386dd591 # initialize rs1
li x10, 0xd192b815f4b15250 # initialize rs2
mulhu x5, x26, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x37d081ccc8e6e741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3cf5b62583a9cc47 # initialize rs1
li x23, 0x0d5e61d1ca213341 # initialize rs2
mulhu x12, x27, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0xe14d80957b310a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0f4c2fe34405bd5e # initialize rs1
li x24, 0xb8168b760374009a # initialize rs2
mulhu x21, x28, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x14, 0x2eee23068da1107f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x39502fa304c437a0 # initialize rs1
li x9, 0x51efd696d989b443 # initialize rs2
mulhu x14, x29, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0x33e16455988872b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8e19a009ac129fad # initialize rs1
li x27, 0x7282e20c03910c97 # initialize rs2
mulhu x22, x30, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x33791520d8aa44c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7baa652e2ff4cb02 # initialize rs1
li x14, 0x856351aeaa4d3455 # initialize rs2
mulhu x13, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x8, 0xc388fbf4e77bd40e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcd2f08937577be54 # initialize rs1
li x0, 0xdfc9d7899b71a228 # initialize rs2
mulhu x8, x12, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0xb57c65a8d9c1153c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x744b768bb715529f # initialize rs1
li x1, 0x772e71a4a9054bfc # initialize rs2
mulhu x26, x24, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x9a4ea0047f71b622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10dd9e5bc07c9b6b # initialize rs1
li x2, 0x35bf35d4b415f29f # initialize rs2
mulhu x31, x1, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0xcf3c4119d4c45e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x79b2e445d83b965b # initialize rs1
li x3, 0xbfd5daf5cdf11b99 # initialize rs2
mulhu x7, x18, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x16, 0x48a3dff37b2cfe7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x974db7803016e5b5 # initialize rs1
li x4, 0x9f27ebbf84f9c691 # initialize rs2
mulhu x16, x28, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0xbda4f3292cc1c654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1a3a9c066127d0d0 # initialize rs1
li x5, 0x29c1b4218e2aebdd # initialize rs2
mulhu x14, x2, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x18, 0x05281e0bf47c32df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x37c82ce121158651 # initialize rs1
li x6, 0xac4b6e44e66be09b # initialize rs2
mulhu x18, x3, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x27, 0xb90566ac85591de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x14e2662a79d9571f # initialize rs1
li x7, 0x16e4a8730d6a138a # initialize rs2
mulhu x27, x23, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0x0fd740356ac0b6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xecbc15f1e960dac9 # initialize rs1
li x8, 0x7e77ae3a4df49167 # initialize rs2
mulhu x9, x3, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x18d61e083069ea38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb1121dec1a96439c # initialize rs1
li x9, 0x2f3f005f35d3c4f0 # initialize rs2
mulhu x3, x27, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0xbb7cf4e9db81accf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb930a524a6bbe846 # initialize rs1
li x10, 0x9f8fcf6a5ff97c1d # initialize rs2
mulhu x16, x20, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x18, 0x29006e4405082a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8d5789da74a544f9 # initialize rs1
li x11, 0x910af51183491b97 # initialize rs2
mulhu x18, x4, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x6790b251e2b35fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x96e0d74e485b375c # initialize rs1
li x12, 0x4d3d71aceafec8d6 # initialize rs2
mulhu x29, x3, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0xb7e0a1915209b14f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x06ecb2f4e159758d # initialize rs1
li x13, 0x42b12d8fa323ee34 # initialize rs2
mulhu x6, x31, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x20, 0xedd7395ac92c03aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6a377935f1807323 # initialize rs1
li x14, 0x31112a32cf191f58 # initialize rs2
mulhu x20, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x03ef26d17119b78b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x44469e9eb0231e33 # initialize rs1
li x15, 0x322b0bc2f1faa53e # initialize rs2
mulhu x10, x16, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x32d8f2ed02aa46b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4b91b2f1747891cb # initialize rs1
li x16, 0x3818bb52b5132cda # initialize rs2
mulhu x2, x11, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0xc5dd9fc8ba55f4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1b21b91819ee6d91 # initialize rs1
li x17, 0x8f26e784a68917e1 # initialize rs2
mulhu x28, x8, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0x6b479a24b1ae0d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x52c7dea39eaba6f9 # initialize rs1
li x18, 0x83adb2f05c03bcf1 # initialize rs2
mulhu x3, x5, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x30, 0x6bddcdacaf731220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x81c263d13d379705 # initialize rs1
li x19, 0xb0f18c43fc2c785c # initialize rs2
mulhu x30, x24, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x146280643063345b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6811657581876774 # initialize rs1
li x20, 0xcd49479b0e1a7786 # initialize rs2
mulhu x17, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xbf762ae57d1564aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2b4c5cfe19fbd411 # initialize rs1
li x21, 0x412088ee5338e2e6 # initialize rs2
mulhu x16, x8, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x576e1fb26abbbe0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2e1339a8545dbd33 # initialize rs1
li x22, 0xbfb236e67d9f9e4e # initialize rs2
mulhu x24, x4, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0xc6a45e06154b14f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd388961ebcb9317f # initialize rs1
li x23, 0x0d0b3a73a956d45d # initialize rs2
mulhu x3, x1, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0x21da603822b9c5fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5f444384496bab8e # initialize rs1
li x24, 0x107912a87d78adf7 # initialize rs2
mulhu x1, x3, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x85aa2492f45cbaf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xea32942133029521 # initialize rs1
li x25, 0xa195ebe3781cc8d2 # initialize rs2
mulhu x5, x30, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0xe255f2dd15a91aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x518d2eea4d8fb039 # initialize rs1
li x26, 0xf41da26884ce696a # initialize rs2
mulhu x13, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x19, 0x864ac513537ee6ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x968ccfa8fcb63d60 # initialize rs1
li x27, 0xe39fb88ed7cd5af5 # initialize rs2
mulhu x19, x8, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0xc7fdeaf580f4f9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x663e8388316df06c # initialize rs1
li x28, 0xf1262075c84fb7c4 # initialize rs2
mulhu x7, x15, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0x1977d55d0b560da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55f41b91f848a96d # initialize rs1
li x29, 0xbeee2513fa1f05f2 # initialize rs2
mulhu x11, x16, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x59ece1617ebed20f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x45ee722e1d4a3bdf # initialize rs1
li x30, 0xf356350de8d6cfbc # initialize rs2
mulhu x4, x1, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x6b57629534b8143a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc8aaa9732ea6e019 # initialize rs1
li x31, 0x7d6e3a41aa2adf9c # initialize rs2
mulhu x30, x5, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x66367adffbe5d85f)
li x7, 0x78cf930c6571456c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x78cf930c6571456c # initialize rs1
li x0, 0x76eb25aca82fb234 # initialize rs2
mulhu x7, x27, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x8bae5d4d9c54f95e)
li x22, 0x8bae5d4d9c54f95e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8bae5d4d9c54f95e # initialize rs1
li x26, 0x8bae5d4d9c54f95e # initialize rs2
mulhu x22, x0, x26 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xb5eed124892fa055)
li x21, 0x891f023a6436a2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb5eed124892fa055 # initialize rs1
li x3, 0xb5eed124892fa055 # initialize rs2
mulhu x21, x2, x3 # perform operation

# Testcase cmp_gpr_hazard raw test
mulhu x11, x14, x17 # perform first operation
mulhu x17, x11, x18 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulhu x18, x27, x8 # perform first operation
mulhu x14, x3, x18 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhu x18, x17, x26 # perform first operation
mulhu x18, x29, x8 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhu x4, x14, x2 # perform first operation
mulhu x4, x23, x20 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhu x3, x1, x22 # perform first operation
mulhu x1, x2, x29 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhu x1, x28, x17 # perform first operation
mulhu x17, x18, x17 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0xfe3587bab3ce81a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x04cbee58ca57d537 # initialize rs2
mulhu x10, x3, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x030316c364c888fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x16, 0x1cb5bd9fac48ac59 # initialize rs2
mulhu x10, x15, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x057b6e90b711dfe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x29, 0xd7010756644dac98 # initialize rs2
mulhu x7, x15, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0xdd8e67399d681607 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x18, 0xcd5cfcf394c76d0a # initialize rs2
mulhu x28, x2, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0xa08c30ffe3a56863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x14, 0x20f531a19557423f # initialize rs2
mulhu x16, x21, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x30, 0xcaf6e440e50b7b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x9, 0x9d367db3bfd868e7 # initialize rs2
mulhu x30, x11, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0xf8272a2d5cde13dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x4, 0x1003f8c4ff87a0aa # initialize rs2
mulhu x25, x16, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x7, 0xf9191a76115807f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x19, 0x5e8d75fafedeb874 # initialize rs2
mulhu x7, x12, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0xf99efcac624dc6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x10, 0x081c7b8e9c15fc2c # initialize rs2
mulhu x30, x3, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x2, 0xbfcadf5eb7875e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x4ae22098a5604ab6 # initialize rs2
mulhu x2, x18, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xe4fe6b7f42ccbfe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xe03d4b985011b119 # initialize rs2
mulhu x9, x30, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x95f6cd9905073e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x31, 0x39984442e11d4143 # initialize rs2
mulhu x16, x18, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x825d3aad098817a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x23, 0xa2d1273873807620 # initialize rs2
mulhu x30, x17, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0xaa65de9a6615736e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x1, 0x45b3c83db62c01bb # initialize rs2
mulhu x31, x20, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0c9b103bbbeceead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x3, 0xa1b8f603ce7136e7 # initialize rs2
mulhu x21, x7, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0xdc649b8bf3655a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x28, 0x750a243c14536d9b # initialize rs2
mulhu x23, x8, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0x1c0fe37ca1724801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2c09d2d03f823745 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mulhu x30, x24, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0xfefc98d8ab291ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7f6fdccf60bad063 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
mulhu x3, x22, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x9794dcc88da33300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0265a5a5be052dad # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulhu x3, x9, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x4, 0x4d5a5812b95d9090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb1a530d2c7e3df33 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
mulhu x4, x27, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0x1100f896649e8694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbf4bfce680e5b67e # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mulhu x24, x1, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x624b627e86d0f855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe10967efd79ef64e # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
mulhu x17, x13, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0xe3451b033e963379 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x393e1f3871a33691 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x30, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0x5cb2ec0c6c2171f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb1833a29db8c1641 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulhu x22, x2, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x30, 0x601f8cc397ff81f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4564e5f717d11ee0 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mulhu x30, x31, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x17, 0xf044f30bbe45cfab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd5baf7b843dd06bf # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
mulhu x17, x5, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8ee7aa4544a29ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaceee1fbe96f04ed # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x21, x17, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x6435e8477324d2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x037aafe6a278bbf0 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
mulhu x11, x30, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0x79322c114c05f922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x63672b29b243a15f # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mulhu x25, x7, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x3310f0a3f272e197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf2e1546441627b00 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
mulhu x7, x16, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0xddb89384c3738378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6a70039b86dc1056 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulhu x8, x24, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x398a427b069949f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf30835bf3814cdf6 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
mulhu x17, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0x0bfbf2544f713209 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
mulhu x17, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x14, 0x0b9b79e3fb48ecaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhu x14, x11, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0xb0ba2069a94e702a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulhu x11, x10, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x4, 0xc9c312cf1a770bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulhu x4, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x24, 0x2339af136dfd809b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulhu x24, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x30, 0x438913df7ad02e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulhu x30, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x4a076526254cefd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
mulhu x16, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x05c878761b7148c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mulhu x6, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x3, 0xcc84d49ab61fec42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulhu x3, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x21, 0x630fa432206af9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
mulhu x21, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8f3a695e5a354d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x21, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x2, 0x91586551fb586f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulhu x2, x4, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x9a5d5eadf699f5db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulhu x8, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x21, 0x885a85bd0db010e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulhu x21, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x26, 0x3980751ee8d7b4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mulhu x26, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x2, 0x262f19741f88e1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
mulhu x2, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x6, 0xdf68ea5c00617434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulhu x6, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0xe40f8df452ad908c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
mulhu x27, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x10, 0x8832b0230dce943a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mulhu x10, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x1aa6c6d7b83043a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhu x6, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x4, 0x0524acac8ae88424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
mulhu x4, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x24, 0x6a9e3da637709023 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mulhu x24, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x21, 0x7f3a9ed5630fea90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhu x21, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x4d827627bad99ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
mulhu x30, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x16, 0x5027ca2dd74d3e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulhu x16, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x9, 0xe09a8de8701db6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
mulhu x9, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x639035be1acd3192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x5, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0xaf3da5553b16308e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulhu x13, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x08b93560a62121d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulhu x8, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0x039bfa3bdedfe9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mulhu x16, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x7bdcd716a2cd2a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhu x9, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x17, 0x1c87fdf670b7628b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
mulhu x17, x9, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x8, 0xf4af73027dbf0ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mulhu x8, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0xa40c5381ddaeb6f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
mulhu x13, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0x99261d4375c8fed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
mulhu x10, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x15, 0xe7cff0cc52efbb67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulhu x15, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0xc08bf25308273439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
mulhu x17, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x6307aae4358612d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhu x7, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x22, 0xc9e6ea48a4102178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulhu x22, x19, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0xde4d80eeed780984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulhu x23, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x4, 0xd4c355a2844c8236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulhu x4, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x12, 0x33f7ecf75534a215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
mulhu x12, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x13beb4863e89286c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x27, 0xd21e11263c65daa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
mulhu x27, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x2bab3544a82b3f5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
mulhu x6, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x76e6be6c283ca413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
mulhu x20, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x1, 0x423a4baf7655e76e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulhu x1, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x504da36dadc11a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhu x31, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0xcf5a989b7252cf42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhu x1, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x5, 0x6b545fd4a9fc1a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulhu x5, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x2, 0x6cbd1b43d0db7c66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhu x2, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x23, 0x8ce7ecb177910c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulhu x23, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0xd681181b28fe7238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
mulhu x30, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0xb40ceddaab4cee73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
mulhu x19, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x20, 0x9d2978628778be4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mulhu x20, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x5, 0x2f5a75f531c256c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
mulhu x5, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x3, 0x31838391faa0b253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulhu x3, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x6, 0x40d847b9fb6938d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
mulhu x6, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x79c59a29e6556cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x21, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x14, 0x4b2cbd021c951694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulhu x14, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0xf88c6ac02322778c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhu x16, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x19, 0x0b54935f7999ea65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulhu x19, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x27, 0x596577df6056ffe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulhu x27, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0xf149e99956158edf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulhu x15, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x31, 0x440337cb2f13f5de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulhu x31, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x27, 0xc4ef103b8bb049e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
mulhu x27, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x1, 0xe89ee9f5cb71f35d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhu x1, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x5, 0x42f31a6b6b66a8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulhu x5, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x25, 0x2658c75e30fb5de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
mulhu x25, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x27, 0x286396f1b95b06e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
mulhu x27, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x24, 0xa5fd1345f55b6059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
mulhu x24, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x30, 0xe691f0b1dc4738f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhu x30, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x11, 0x868ab7908fa983b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
mulhu x11, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x5, 0x48a01e7257c2efc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
mulhu x5, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xcc8ac258a55f4f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x14, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x22, 0x7e00bf1e60cdb465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulhu x22, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0xc58fcad97a3ae2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mulhu x20, x12, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x18, 0xcf97968f3be87e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
mulhu x18, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x57ed00038278ceab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulhu x11, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0xcda4a1e716140a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
mulhu x11, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0x8ef7a57cd9826002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhu x9, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x2053ec15cf71de91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulhu x8, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x14, 0x8bc5134a2468a237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulhu x14, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x8, 0x383dd8007598b1ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulhu x8, x5, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0xc15b4b3dfd2c8393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
mulhu x25, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x67fa392843851ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulhu x30, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xeef75d420953dc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
mulhu x17, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0xeab2e4270f8c9c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhu x8, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x240dc6921a5684f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulhu x26, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x15, 0xd82e889920c38553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
mulhu x15, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x48baf605e87f69de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x4, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x8, 0xfa49cb1ebe8eddf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
mulhu x8, x4, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x21, 0x5438b6f599fbdb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulhu x21, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x29, 0xcac558fde98e0477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mulhu x29, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x5, 0x9b3f067af9d2f49a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulhu x5, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x27, 0xa52b5ee509830d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
mulhu x27, x12, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x2de96995716e4fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mulhu x1, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x3cacbd6941430263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
mulhu x1, x23, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0xcd69a5e30e66f3f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
mulhu x12, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0xceb4554da731436a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhu x29, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0x8733d9be2201ed8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
mulhu x25, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0xe37fa1f7620c360d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulhu x27, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x9af78505eb197789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulhu x17, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0xb7004b057f7a4d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulhu x3, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x3782111f2597d474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulhu x31, x30, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x17, 0x313ce2220090099b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
mulhu x17, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xe63c41041f90d333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x6, x11, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0xf683c21b34aceabc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulhu x26, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0xab47e2809cc12a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulhu x1, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x4, 0x9983d892f0b5317d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulhu x4, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x53d1873674c2354d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulhu x7, x22, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x21, 0x53f5fafd9a71e775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhu x21, x11, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x31, 0x40145d456a5e29a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhu x31, x18, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x18, 0x8808a0ec62648eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhu x18, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x21, 0x1618ac8afded5e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulhu x21, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x25, 0x9ef061f93b0fb237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mulhu x25, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x6, 0xd0c49d47a8e40d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
mulhu x6, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x28, 0x081e1699b55a8fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mulhu x28, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x2b5d5599e63ca85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x22, 0x71888ed234b8c631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
mulhu x22, x26, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x2fee448c7602d334 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulhu x21, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x20, 0xf198eeec3bd4ffd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
mulhu x20, x25, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xc0baa6be52d2e68d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x23, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x2, 0xae58f7f873289ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
mulhu x2, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x5, 0x06ce16acbd71e20b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhu x5, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x5, 0xb4783e0b79e5dd57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulhu x5, x6, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x10, 0xbf01cd5b760db980 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mulhu x10, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x18, 0x21ebe98eb1b8ea6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
mulhu x18, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x7, 0x20ad2df2177ac82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
mulhu x7, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x19, 0x8d33005777ad5710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
mulhu x19, x29, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x4, 0x0bb9f2ba57a20742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulhu x4, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0xd7edb6684cb6e971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
mulhu x14, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0xfabd353d4f420b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulhu x31, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x8, 0x5ea70e153fcf1491 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhu x8, x23, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x7ab1126f1c4e9287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x9, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xcdc325a8a33c9340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mulhu x15, x16, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0xa9b91899d9c2d44d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulhu x19, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x13, 0xeee9da8ad507f0e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
mulhu x13, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfddb02781360e824 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x22, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xef850cdfaa4a40f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulhu x25, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x14, 0x2ab89ca732994dff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x14, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x14, 0xf69adad911bbfb54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulhu x14, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x17, 0x9e59b537ebd466be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
mulhu x17, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x19, 0xb8e977d3c601d728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
mulhu x19, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x3, 0xa737efca4ffac8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhu x3, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x6, 0x8f829c3203a94b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
mulhu x6, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x13, 0x8dbc4ee88d19f8e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mulhu x13, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x1, 0x62824f6bbd36044b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulhu x1, x15, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x27, 0xb7f9771877ec70d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
mulhu x27, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x28, 0x0453693601a8bd19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulhu x28, x5, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x7, 0x6900d64d109a3fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
mulhu x7, x30, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x26, 0x5af4ad38dcd4448e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhu x26, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x12, 0x97e78576f59a7210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhu x12, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x8, 0x1fe7e1c1a0fb944d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
mulhu x8, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x1f7602550e19c6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x29, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x25, 0x0d701912bb3d46fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulhu x25, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x22, 0x7a5de69a459d7829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhu x22, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x9, 0xde02234e19e32a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulhu x9, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x21, 0x45137975994b17f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mulhu x21, x10, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x13, 0x0ef29aca1a35f1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
mulhu x13, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x8, 0x021e784f40ec1668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
mulhu x8, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x2, 0x3e4f9b326c184170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
mulhu x2, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x22, 0x779f5ef41d2c6466 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhu x22, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x21, 0x1206955d6c31786c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhu x21, x29, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x30, 0x3dbbe80428209cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulhu x30, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0x9cd1fe9abd0e8129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulhu x2, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x19, 0xddaecb17ea68e22d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
mulhu x19, x7, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x19, 0x4b65c96e9fb4a50c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulhu x19, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x23, 0x0fd65b1af4b31c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulhu x23, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x8, 0x4e7a7c90b9f7c199 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
mulhu x8, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x12bca891966b235e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x19, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x22, 0x32d579d5cd2494a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulhu x22, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaa60fbbb30de5415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
mulhu x9, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x12, 0xb5da71c2f0676cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulhu x12, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0x20ca99f52fc6a87d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulhu x16, x11, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x27, 0x5172401b53116d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
mulhu x27, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x26, 0x212b445b5b35e9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
mulhu x26, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x31, 0x62a619a1e8bd3856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
mulhu x31, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x7, 0xea206e77069975bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulhu x7, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x18, 0xa46638ac2dd0eeb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulhu x18, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x6, 0x4dd009af61084d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mulhu x6, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x29, 0xde4d3c09a5c5bbfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
mulhu x29, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x6, 0x38d3de0357487ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
mulhu x6, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x8, 0x52203d807a2de7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
mulhu x8, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x12, 0x2624a83e8a3d18f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mulhu x12, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x11, 0x234e4e726a6ccec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
mulhu x11, x14, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0dd8f1e04d760611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x31, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x23, 0xfddd067c7df6b140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
mulhu x23, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x3, 0x9f9b74ba517fe95a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x3, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x12, 0xa1b05e858ce2a43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulhu x12, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x3, 0x58460ef67d203c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulhu x3, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x12, 0x134bffd971d3e50c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulhu x12, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xe52436cf1dcc5db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mulhu x29, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xb17df1e17ac1c9ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulhu x1, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x45e41d193782d43b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulhu x9, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x10, 0x51a79534343a6c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
mulhu x10, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x10, 0x4e4757e393ce4087 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mulhu x10, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x1de75c3a5af077da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhu x17, x31, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0xe9d6ab22399eaabb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
mulhu x1, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x10, 0xe4f2ed7f09343c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulhu x10, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x20, 0xfda41728b2d5cb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhu x20, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x10, 0xe26ad479f6123647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
mulhu x10, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x342ec09fb823c340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x5, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x24, 0x9a9d8a8a02ce22cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
mulhu x24, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x0e9d07d9fd10381f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x25, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x6, 0x53204db1d9446c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mulhu x6, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x5, 0x0265e6654fa44c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulhu x5, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0xfb722731e226336b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mulhu x30, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0xde416ee6316a0776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhu x25, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0x76552c74236c1f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
mulhu x1, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0xb08be1df9320a6ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
mulhu x9, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x19, 0xd513a19bb9089630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
mulhu x19, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x18, 0x9ca42702b26ef9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
mulhu x18, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x3, 0xc37b05a084fa7643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
mulhu x3, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0xefb0ec0bbfa986d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhu x7, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x7, 0x43a1e8609472dcaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
mulhu x7, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x16, 0x5beb39267e04eee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
mulhu x16, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0x1949171ec5da1b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
mulhu x30, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x40f4e556526c3128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x21, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0x38a3a5192ee1205e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhu x8, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x14, 0x4b2b8a8ff026f720 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x14, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0xb2d8b00424b06cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulhu x20, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x23, 0xd36eb0e2644d6613 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhu x23, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x27, 0xe6bcad0e9e8321ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mulhu x27, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x4, 0x9df06530484efc49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhu x4, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x8, 0xce2b4d4addd1176f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhu x8, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x11, 0x971203097b3c46e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulhu x11, x4, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x25, 0x47deef999b75d411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mulhu x25, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x31, 0xc1d04420e0c6735f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulhu x31, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x1, 0x5dee33391c9ebab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x1, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0xca4ab3427f0c7444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhu x31, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x19, 0xc57fd1e696ef650d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mulhu x19, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x20, 0x4c1e2cca33fdf9b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
mulhu x20, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x7, 0xc2e00a644ccc9456 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
mulhu x7, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0c0a22aef0131076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x30, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0xbf9024c3f7d6c194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
mulhu x28, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x10, 0x7ae1386e6d034562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mulhu x10, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x6, 0x4028b63f6b6ba8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
mulhu x6, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x29, 0x7f1ca7ff11a4344e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
mulhu x29, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x7, 0x7ff25e64d0d8cdb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mulhu x7, x2, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0x6b36cf6ebce03f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
mulhu x30, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0x99ad7846e2284f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
mulhu x6, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x12, 0xbb524bcb6cfe459a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
mulhu x12, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x5, 0x2e107a7d7ca725b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhu x5, x22, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x29, 0xfb6e91d35319cc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulhu x29, x6, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x20, 0xc340c19192f1b449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
mulhu x20, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8975f393b6773026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x13, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x19, 0xae26297a136c92c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulhu x19, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x12, 0x32103328d0d9c898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
mulhu x12, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x7, 0x2b19c8cdb4fc01d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
mulhu x7, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x9a4a12dfcbcb9382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x18, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x3, 0x6667791d9c8d9595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
mulhu x3, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0x19729fc57d8fb9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x3, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0xa774cc465ddfbb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhu x28, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0xdedf86262faa4272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhu x27, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x1f5996be0b4e42cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mulhu x13, x26, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xde4a1355cea68c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x41c99893be06ce58 # initialize rs1
li x16, 0x6660d8c0390fca63 # initialize rs2
mulhu x0, x0, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x4d1d128c36486c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf1497c135adc9a1f # initialize rs1
li x23, 0x9820d437085f9002 # initialize rs2
mulhu x1, x1, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x31f55ddd553aeac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xba165dd63864fdc0 # initialize rs1
li x28, 0x1290fac529cadb72 # initialize rs2
mulhu x2, x2, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf4adc8bf04e94e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7cab35d14e56de7c # initialize rs1
li x22, 0x74add62ecf2d8d06 # initialize rs2
mulhu x3, x3, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x50a512605d94a68f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe0ac687362803a46 # initialize rs1
li x8, 0xda28a5406f435144 # initialize rs2
mulhu x4, x4, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x592e8ba74c97ea21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2db8ee7301911d98 # initialize rs1
li x15, 0xbe6a97a489926cf3 # initialize rs2
mulhu x5, x5, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xc48b63e55994fc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbb810a809272b775 # initialize rs1
li x2, 0xc78745425c8546d7 # initialize rs2
mulhu x6, x6, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x02047ab2086abba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x09ee581f8b0df7d2 # initialize rs1
li x8, 0xeb8686cd48738e3f # initialize rs2
mulhu x7, x7, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x803399bf93ff8f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9f24d7690f07f7bc # initialize rs1
li x14, 0xfda0a6a623499c42 # initialize rs2
mulhu x8, x8, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb90e2076a61bfec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf1d41d44058aa808 # initialize rs1
li x8, 0x45cbfef46551d14e # initialize rs2
mulhu x9, x9, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe9d91dafac8b5e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x53d036c8517289a7 # initialize rs1
li x10, 0x037abd7355135a07 # initialize rs2
mulhu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdd62e2c6aee4fb07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb11e5292acbf23bb # initialize rs1
li x12, 0xd8f5d44c5c71ffee # initialize rs2
mulhu x11, x11, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6063b06e4e2916c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc6d43bf35ac73e46 # initialize rs1
li x14, 0x9bfcfd2e43958918 # initialize rs2
mulhu x12, x12, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x78d087072ff2e03c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x345678f90cc50061 # initialize rs1
li x28, 0xa93b8bef4641e1fd # initialize rs2
mulhu x13, x13, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xeac1a868d35d5f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7a6705201c52b062 # initialize rs1
li x22, 0xe351dd81aa3eff5c # initialize rs2
mulhu x14, x14, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd71077f772a86fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb699cd225fa890d8 # initialize rs1
li x8, 0x5c2f7891edb90ec9 # initialize rs2
mulhu x15, x15, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x04825a577607006a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3f122bcc32b399a8 # initialize rs1
li x19, 0x7b0321f310ec07d2 # initialize rs2
mulhu x16, x16, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7bd638cc5f0f5bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x34b0a374d5d9edd8 # initialize rs1
li x14, 0x4037d209bceb59ec # initialize rs2
mulhu x17, x17, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd84b585939848d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9ccea8d7d7c4aacb # initialize rs1
li x9, 0x3236d46acbe5d02b # initialize rs2
mulhu x18, x18, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb4af7682c7e74143 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd0762fcd9872c481 # initialize rs1
li x13, 0x90ef3b8903fc5ca1 # initialize rs2
mulhu x19, x19, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x25574123f0ce6f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf14db386700adc18 # initialize rs1
li x27, 0xd8967439e1cfa721 # initialize rs2
mulhu x20, x20, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x0d6c761f79d5d011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8b1ebe15fd5044f7 # initialize rs1
li x24, 0xb40ff6d574d9123c # initialize rs2
mulhu x21, x21, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x722be1f5a61fd682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc2cdbe668a891d38 # initialize rs1
li x11, 0x4743ac22d36e4d2a # initialize rs2
mulhu x22, x22, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x65da12c7186f625d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe304f16babfc9f05 # initialize rs1
li x29, 0x5f950da75dd2dbee # initialize rs2
mulhu x23, x23, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa2416f77a46f0fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf369196cb1e9fefb # initialize rs1
li x4, 0x16caf0a24407b420 # initialize rs2
mulhu x24, x24, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x51fdd97c4c2e4297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fe3c438863387f7 # initialize rs1
li x12, 0x973fb591122ce3f1 # initialize rs2
mulhu x25, x25, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdae4644f9eb16cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x97467830971a6a1d # initialize rs1
li x11, 0x654094c7c340ad2c # initialize rs2
mulhu x26, x26, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe9f957bad72bcb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x60cfaeb16a2b5ffb # initialize rs1
li x24, 0x9cfb1ce931b35314 # initialize rs2
mulhu x27, x27, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7460121b703a01b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x28663fbe677972f8 # initialize rs1
li x8, 0x29792705610ee548 # initialize rs2
mulhu x28, x28, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0dda716a7833cebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb9e854ef866eca14 # initialize rs1
li x17, 0xfe7df66e51608196 # initialize rs2
mulhu x29, x29, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x95a02bf19ea06081 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1b1f1a4f851c1278 # initialize rs1
li x18, 0x6bfcf678cba863a2 # initialize rs2
mulhu x30, x30, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x26c8ff863d501bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc4e9c0cdb67819f4 # initialize rs1
li x5, 0xa4ebb9225b5219d0 # initialize rs2
mulhu x31, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x5fe807464ee1b1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x348aff4f1cff5c52 # initialize rs1
li x0, 0x67275a994976772c # initialize rs2
mulhu x0, x5, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xd4ddceb6d5bab24f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x57402a63323e961a # initialize rs1
li x1, 0xe8a9dfe1aa786bc3 # initialize rs2
mulhu x1, x26, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x2b28ab01e631c8d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc401d05f7b2cb056 # initialize rs1
li x2, 0xd83d63347fd5707b # initialize rs2
mulhu x2, x3, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xafe5749106c67645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe84bffb159873c0a # initialize rs1
li x3, 0xd89ff46f61948cf8 # initialize rs2
mulhu x3, x26, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x0756d06d7d8fcd53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdb13685ad19363bd # initialize rs1
li x4, 0xb27720e5e6a8a32f # initialize rs2
mulhu x4, x15, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x01e39b433c01afe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1b96dfa0dd752ca3 # initialize rs1
li x5, 0x7332a3fa2c1f2ebe # initialize rs2
mulhu x5, x15, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x9e5ffda9647ecc11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0d5ae592b6ccd9bc # initialize rs1
li x6, 0x3df76e8f6e8294ec # initialize rs2
mulhu x6, x25, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xa764234eade03bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x68c9daebf36a1914 # initialize rs1
li x7, 0xc1433a73e18c20f6 # initialize rs2
mulhu x7, x31, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x4590c9502692d42a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xefa94661ebd39c9a # initialize rs1
li x8, 0x970293be37ab3292 # initialize rs2
mulhu x8, x1, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xcb3468a7f4e822c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd4e7e99370880f51 # initialize rs1
li x9, 0xdfb151a9222eed74 # initialize rs2
mulhu x9, x15, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xeb72e946f99921b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xde99c7548d9705b8 # initialize rs1
li x10, 0x3b17b3411aa40845 # initialize rs2
mulhu x10, x4, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x6b61196a421389bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6f74e6f97529380e # initialize rs1
li x11, 0x1c15f355631fd411 # initialize rs2
mulhu x11, x10, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x5f0ad64fcb27d131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8155d98a9a35810b # initialize rs1
li x12, 0x6c54183066afc26a # initialize rs2
mulhu x12, x25, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xfcedd3f60876cd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6c416c347c7e8739 # initialize rs1
li x13, 0xcb89b80c60995c5b # initialize rs2
mulhu x13, x5, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xf07f01e82b9c17cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe7d45aef63a51d0d # initialize rs1
li x14, 0x7572b18ac9a8c202 # initialize rs2
mulhu x14, x22, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x96654c31b85aa7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9a5cf0cd0c191b42 # initialize rs1
li x15, 0xf8334ddad06e0d15 # initialize rs2
mulhu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x624424e28268e053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe9b3271a8c0029f3 # initialize rs1
li x16, 0x6fec22633e92109a # initialize rs2
mulhu x16, x8, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x69f23472072250e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4c12858a2c4ca80c # initialize rs1
li x17, 0x5039e50a67ba5559 # initialize rs2
mulhu x17, x12, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x22bdb058edba1db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x52f25405d91fb7f5 # initialize rs1
li x18, 0x290a1eb2aa74a701 # initialize rs2
mulhu x18, x30, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x04835d8caba490f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6cca131f28c53c1f # initialize rs1
li x19, 0xe2d88f71f07e317a # initialize rs2
mulhu x19, x16, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa288e1bf3fe082d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfad1abd8f3760021 # initialize rs1
li x20, 0x311d75d1f936f636 # initialize rs2
mulhu x20, x21, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x3f6fb16ab28f19a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7eec0b1a0cf9ef7b # initialize rs1
li x21, 0xdebf23fff06911a7 # initialize rs2
mulhu x21, x3, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x12496cb1eca9a3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4bfafbda06ccc5ba # initialize rs1
li x22, 0x0e8ed10504fb408c # initialize rs2
mulhu x22, x19, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xac153aead3f16c7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe33207d1e2701bd5 # initialize rs1
li x23, 0xc4c79b26396dc772 # initialize rs2
mulhu x23, x17, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xddbcc605cb6e24d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x18848fac0a4211eb # initialize rs1
li x24, 0x0c8f990ab3ff4720 # initialize rs2
mulhu x24, x30, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x166be2943b0e0305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x39ec8e61dfa24e28 # initialize rs1
li x25, 0xb8aebe14b70ac0a5 # initialize rs2
mulhu x25, x2, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xdb334fc3c6f47514 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9cec1f58baa4830a # initialize rs1
li x26, 0x410778c54ef0b213 # initialize rs2
mulhu x26, x17, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x004dd63c9b32bfbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x255c0abb3ae9be24 # initialize rs1
li x27, 0x8a7e86748eee9047 # initialize rs2
mulhu x27, x3, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xdb954e9bbb6be2c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5cfc57c56b57d76e # initialize rs1
li x28, 0x3fc10fc69f902d54 # initialize rs2
mulhu x28, x2, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x6e912a825a3f3ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x748469361100d8df # initialize rs1
li x29, 0x55244282ac5d2766 # initialize rs2
mulhu x29, x31, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x033ab0d3a4db5a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x86f9cf4f909a529e # initialize rs1
li x30, 0xebde8c46ab05bc99 # initialize rs2
mulhu x30, x9, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x4fd9d4225be01415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc62fdf864d528ffa # initialize rs1
li x31, 0x71531d3fbda4ff03 # initialize rs2
mulhu x31, x11, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x8231f6ff963ef09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5e8eae8cfce09ae3 # initialize rs1
li x0, 0x45a6d633590a3efc # initialize rs2
mulhu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6362b0ac3d2ad73e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7c18f16e1c578f9d # initialize rs1
li x1, 0x9542f38a5dfcefa9 # initialize rs2
mulhu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd905968830671ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x874c9c2b92b758a9 # initialize rs1
li x2, 0x3d44a7e04a164bbd # initialize rs2
mulhu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x14db8151159c12e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdb8b27bf8121d39f # initialize rs1
li x3, 0x47767f9d7734c8d7 # initialize rs2
mulhu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xcaa0943151329964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa30f7457641f502e # initialize rs1
li x4, 0xf6fba53a006362c0 # initialize rs2
mulhu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x8e0282745d99c539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1804587e134d1a63 # initialize rs1
li x5, 0x3fe4975e1b5ca504 # initialize rs2
mulhu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xb1c0cd7cac1994a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa5ea5f3e6d5e2072 # initialize rs1
li x6, 0xa3407724a24a630e # initialize rs2
mulhu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0xe112a0775996821b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x66646d88f4e6c654 # initialize rs1
li x7, 0x5c21a855b5f7bdaa # initialize rs2
mulhu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x7f56a9a28df845ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf5b242b29695b524 # initialize rs1
li x8, 0x0c352d31a55068c5 # initialize rs2
mulhu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb5819108cb8f10e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x745c4cc6e7566fe2 # initialize rs1
li x9, 0xe7adb5bc47ef62db # initialize rs2
mulhu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x323b7c0b6f99b85c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x40e8a0b747946085 # initialize rs1
li x10, 0xf519bfacbd9ad461 # initialize rs2
mulhu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xde635462dfb4aa6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xac0a52f0fae82e29 # initialize rs1
li x11, 0x89b1eabd33439f0d # initialize rs2
mulhu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa323e915df04c7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x661ec7fe38ee5a5d # initialize rs1
li x12, 0x7130a36324eb576e # initialize rs2
mulhu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7e03617e0731f893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x26271f819320ce29 # initialize rs1
li x13, 0x6d45f02e03c65b3d # initialize rs2
mulhu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe93626232c87d0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x39548899bcd47045 # initialize rs1
li x14, 0x85d20d87df7fb764 # initialize rs2
mulhu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x31cc387552a987d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa16f8250cf204b11 # initialize rs1
li x15, 0xfd59112d2e02a75b # initialize rs2
mulhu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xfdc99bcbaf097e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x07128cd0e95fdbcf # initialize rs1
li x16, 0x37f0c3271f05a76d # initialize rs2
mulhu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x6e629c06ea609f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x69dcd62a380f634c # initialize rs1
li x17, 0x6716ef8bdd9025c0 # initialize rs2
mulhu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x332cff1f3ee62805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x83e1fb85d5bfe460 # initialize rs1
li x18, 0x74958a9cf4102a71 # initialize rs2
mulhu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe36a223bc66876cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1b6c6340a3cb2f00 # initialize rs1
li x19, 0x8fbcf2f2f4e5f10b # initialize rs2
mulhu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd08d74ad132131b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa79eee2c284b76a6 # initialize rs1
li x20, 0x52a71accd8a3e1ae # initialize rs2
mulhu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x140ea885a95391e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2bc2b8652548fb38 # initialize rs1
li x21, 0xcc0ffc9ebcdf0920 # initialize rs2
mulhu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa26adbbbb2b5f8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x06c015d686d2d468 # initialize rs1
li x22, 0x01cd0de6c5e065e5 # initialize rs2
mulhu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x11e8aa40a8532b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaa640bb656656f10 # initialize rs1
li x23, 0xaa3fc777be09fafc # initialize rs2
mulhu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x1cc054bd41d67225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf6397a94e66147fe # initialize rs1
li x24, 0x46c1f62747084966 # initialize rs2
mulhu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xbcbded083032a122 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4813f72eda102f6d # initialize rs1
li x25, 0xb323cb2651a946d2 # initialize rs2
mulhu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x23d88db0071760a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x978f06f430e3f8e2 # initialize rs1
li x26, 0x800c5c16ae40e9b7 # initialize rs2
mulhu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd2880b5fe6da1a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x289dbc606c93ecf8 # initialize rs1
li x27, 0x110ab3cf349aceea # initialize rs2
mulhu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0edccb943c4d9f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2779451ec3416717 # initialize rs1
li x28, 0x6293e7e513cf994e # initialize rs2
mulhu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc01fced0913b0132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x10c5358b8ed1dcb7 # initialize rs1
li x29, 0x9ca06ac5a4328430 # initialize rs2
mulhu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x711f1031749b124f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x197d683ddcd37b7d # initialize rs1
li x30, 0xe2ab4f92427c3542 # initialize rs2
mulhu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8cb617a4d0e00cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x916995c9ee5b75fc # initialize rs1
li x31, 0x31ed4cefae84b886 # initialize rs2
mulhu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x28, 0xdea22582af702570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9bb67913706721d6 # initialize rs1
li x0, 0x3ebc9874ed2cc0d3 # initialize rs2
mulhu x28, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x27, 0x53184ed9a37e9b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x71b5e405e331f9f4 # initialize rs1
li x1, 0xe5f68ce7af74fdee # initialize rs2
mulhu x27, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x29, 0xb94aee19d0ab6424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf43b255ef743cc20 # initialize rs1
li x2, 0x476e35d1eb7b8b05 # initialize rs2
mulhu x29, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x24, 0xb29c52bb53cb165a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc72b5e32e66036c2 # initialize rs1
li x3, 0xfb08b5fee968688e # initialize rs2
mulhu x24, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x18, 0x864d9decab88daca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdbf4e011c666f6f5 # initialize rs1
li x4, 0x11d7a0975842ab08 # initialize rs2
mulhu x18, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x30, 0x260eb9d2965f93c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2630ecb493955207 # initialize rs1
li x5, 0xd27b04a4211707b1 # initialize rs2
mulhu x30, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x10, 0x9272a4ffaa639800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4bae1707dd38e6b9 # initialize rs1
li x6, 0xd6a06b51270dfe13 # initialize rs2
mulhu x10, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x23, 0xdeaa4da9e0645a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x836bb7b613c7afde # initialize rs1
li x7, 0x7cd164fbb4d0b221 # initialize rs2
mulhu x23, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x3, 0x4b348937e51b19ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3b494b94c78b2e33 # initialize rs1
li x8, 0x20539ea6a9412888 # initialize rs2
mulhu x3, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x31, 0xb7d5ca827378192d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x700db44af48fd359 # initialize rs1
li x9, 0x53a4553c531879d2 # initialize rs2
mulhu x31, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x11, 0xc814624fd968b1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xebc91ecbae349b4c # initialize rs1
li x10, 0x8503ff7f0a4b9a1c # initialize rs2
mulhu x11, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x31, 0xefde70aa2439c973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x927454f03cd29437 # initialize rs1
li x11, 0x403d0d25503e7866 # initialize rs2
mulhu x31, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x18, 0xff90a9ceb0171302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcb2aefa4ab3f80e1 # initialize rs1
li x12, 0xc3360276a6fd660c # initialize rs2
mulhu x18, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x16, 0x053faaf55f428e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e4a120bdd197a6f # initialize rs1
li x13, 0xf974388242e68ee5 # initialize rs2
mulhu x16, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x6, 0xf38c2990ad9376a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7b5981fc8206ab2a # initialize rs1
li x14, 0xd7947ff92936f70c # initialize rs2
mulhu x6, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x14, 0x879f6c519e2d6892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x343754eebc1a814d # initialize rs1
li x15, 0x178bee6b57ba1776 # initialize rs2
mulhu x14, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x1, 0x5495814ba8b0c31e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xed05be15d13a5765 # initialize rs1
li x16, 0x791e2a22bf0789ba # initialize rs2
mulhu x1, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x11, 0x586be667e9b7138c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80f79c5355d2bd27 # initialize rs1
li x17, 0xa418cf0d3edd6688 # initialize rs2
mulhu x11, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x12, 0xc0df67e5b04c0072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2519824af5ed06f1 # initialize rs1
li x18, 0xa6de258aec1e8d9c # initialize rs2
mulhu x12, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x24, 0xa88c2d2567c319cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3d104588563357a4 # initialize rs1
li x19, 0x01a7f4a0a39ab451 # initialize rs2
mulhu x24, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x29, 0xe5e7aaf8670a597a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3221ad05ad850334 # initialize rs1
li x20, 0x674e32759cd27ae6 # initialize rs2
mulhu x29, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x20, 0x9361f91f7d137756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbf3cb59853f4a1c3 # initialize rs1
li x21, 0xc9e5ffb8699a43af # initialize rs2
mulhu x20, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x18, 0x0c4212c8553b8fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x82deb798ed95ef34 # initialize rs1
li x22, 0xaf8ba44e78f3f186 # initialize rs2
mulhu x18, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x12, 0x56e0f4d57289ee06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2f972b6fbf65dcbc # initialize rs1
li x23, 0x8087b3df8f25e44b # initialize rs2
mulhu x12, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x5, 0x5015c74279876a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4d6a1af4a6f5f19d # initialize rs1
li x24, 0xfbb5b62849526c30 # initialize rs2
mulhu x5, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x7, 0x1b737e996228d0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x54968dd071b42092 # initialize rs1
li x25, 0xcd864bbfb2951ac0 # initialize rs2
mulhu x7, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x16, 0x2d6b0f224b7cbe68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xafc36d5f4b2a941a # initialize rs1
li x26, 0xb669371f2b1ccdb6 # initialize rs2
mulhu x16, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x22, 0x317b2f73b482e710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3248cc78364c116d # initialize rs1
li x27, 0x29446983d006cd5a # initialize rs2
mulhu x22, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x16, 0x2b98a61df3e4cc4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfcd4582aa0e3e82a # initialize rs1
li x28, 0x926f8e266942dce9 # initialize rs2
mulhu x16, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x23, 0x32dcb8f62473bc2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0fa3d1e282a51360 # initialize rs1
li x29, 0x7be661a7d2f98e4f # initialize rs2
mulhu x23, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x663f49943859b9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8b2f726e774edd17 # initialize rs1
li x30, 0xaba7450b8f3261ec # initialize rs2
mulhu x30, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x24, 0xa07107b6aee3570f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x57756c0f227e7bcb # initialize rs1
li x31, 0xe67cc6696812147c # initialize rs2
mulhu x24, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x224eaa05f3bcee0e)
li x9, 0x3864393db96c8e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x224eaa05f3bcee0e # initialize rs1
li x24, 0xca8cd0ebdd141453 # initialize rs2
mulhu x9, x27, x24 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2453e9d8c7e3e34c)
li x10, 0x4ab5939fea341c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdbac1627381c1cb4 # initialize rs1
li x19, 0x6c782a1f154a2391 # initialize rs2
mulhu x10, x2, x19 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x77aec37c027b58f3)
li x8, 0x1382c18bcb9a5a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0db618392d4ef4b0 # initialize rs1
li x30, 0x77aec37c027b58f3 # initialize rs2
mulhu x8, x20, x30 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x111506454f871c43)
li x8, 0xb33b1c391f21f3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x24bf6fa33389f1a4 # initialize rs1
li x11, 0xeeeaf9bab078e3bd # initialize rs2
mulhu x8, x2, x11 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
