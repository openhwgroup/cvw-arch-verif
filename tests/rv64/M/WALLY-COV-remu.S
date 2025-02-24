///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-remu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.673126
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xe8c6867fbfd62869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xea5f50f648022d1b # initialize rs1
li x31, 0x0ee086b784225781 # initialize rs2
remu x0, x11, x31 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x05c2f8fc3da3e685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd81052fbfba658e1 # initialize rs1
li x10, 0xc002c104064bf4ef # initialize rs2
remu x1, x23, x10 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x1d0b1698c7f70099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xee93197924015786 # initialize rs1
li x8, 0x4aabf8a9b265b8f1 # initialize rs2
remu x2, x28, x8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc2494e81707c5928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x09110d3efc405e05 # initialize rs1
li x24, 0x18e4e62f33eb29f9 # initialize rs2
remu x3, x9, x24 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x305d48e141689b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xddf8de7ed2db8a05 # initialize rs1
li x17, 0x9c484bc554575e92 # initialize rs2
remu x4, x8, x17 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xab655118fc0acae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x98f08213b5383a66 # initialize rs1
li x27, 0x574430bdf9e1cc13 # initialize rs2
remu x5, x8, x27 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf3c9ef78a7c38f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x548da3988847d84b # initialize rs1
li x11, 0xaa6e6bd62eedd24a # initialize rs2
remu x6, x21, x11 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb35f7754d14dba12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb88639d52fae24c5 # initialize rs1
li x21, 0x2bebc1124afa62ad # initialize rs2
remu x7, x16, x21 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8e53423b35e17a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb7de0ac4c0dff883 # initialize rs1
li x24, 0xe25fb39d63f24966 # initialize rs2
remu x8, x18, x24 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe5b7f4adbe6c73eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa18df968a271861a # initialize rs1
li x5, 0x3fe0f79a8713faca # initialize rs2
remu x9, x29, x5 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfb0425e70a8c8a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8b6157ddafc870bf # initialize rs1
li x25, 0xd25611e1c648d8a9 # initialize rs2
remu x10, x20, x25 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe7374c39b5ef0515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xddd5fec3f153b920 # initialize rs1
li x5, 0x717aeafe63ee6739 # initialize rs2
remu x11, x15, x5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xab1f1032bc309c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x17586c22120e4f57 # initialize rs1
li x3, 0x3b68ef0e8ff84229 # initialize rs2
remu x12, x4, x3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9746cb0175d2cd55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x10d1c2c3b30ac845 # initialize rs1
li x24, 0x900921a7ec57d64e # initialize rs2
remu x13, x11, x24 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x08c39d04a61beb6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6323bd2146322131 # initialize rs1
li x13, 0x51e792d144264b22 # initialize rs2
remu x14, x22, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2bd20cbe5b3962a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9aef1b42a88efa50 # initialize rs1
li x23, 0xc78b73713de68cf6 # initialize rs2
remu x15, x22, x23 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x85a72fdecb454aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xba033f5f5fccc3c1 # initialize rs1
li x23, 0x8137052d72a558e0 # initialize rs2
remu x16, x18, x23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x35c99bca0553108c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7e0f7704859105d9 # initialize rs1
li x5, 0xe127be2b177d8be2 # initialize rs2
remu x17, x21, x5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xbfcbc44ebd6ad7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf3088a44ff85c4b0 # initialize rs1
li x22, 0xfd8fcf5c61b6e956 # initialize rs2
remu x18, x24, x22 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x5b4452f5f3c4648f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4e1f889fbfcbfca5 # initialize rs1
li x14, 0xbb0305214af9f626 # initialize rs2
remu x19, x5, x14 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x2a5616df183a85bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xed9729a452872746 # initialize rs1
li x15, 0xa740e6f8ce63802b # initialize rs2
remu x20, x28, x15 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xcb36deb74de29745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xcf6deb25fe639896 # initialize rs1
li x22, 0x1a73439dd3fb248a # initialize rs2
remu x21, x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4099d4880a254221 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6cced778b0e22ec3 # initialize rs1
li x8, 0xeae2aa7bda7ff05a # initialize rs2
remu x22, x4, x8 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa485656686e4dd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa5a59404002ebe97 # initialize rs1
li x15, 0x6cca62b84c30ef1b # initialize rs2
remu x23, x19, x15 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x131b44418ea253a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x052db81a819a2085 # initialize rs1
li x8, 0xdc9bddd51622d1e5 # initialize rs2
remu x24, x22, x8 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd89b6e04eca261a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc083f33ef44dab90 # initialize rs1
li x31, 0x51b80a2fbd2e2d88 # initialize rs2
remu x25, x7, x31 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9562607972b7bdd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2a45c342eec62b77 # initialize rs1
li x2, 0x4b46e4b847b82be2 # initialize rs2
remu x26, x20, x2 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7b23984fca0e8285 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb4e174ab4599cf83 # initialize rs1
li x13, 0x82bb935f6f2def07 # initialize rs2
remu x27, x25, x13 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x39aa6761ac055d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8ca04513fded048c # initialize rs1
li x25, 0xc29bdab27c25dfe3 # initialize rs2
remu x28, x3, x25 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1ffe0571c10a9e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf9e7bd26f5d53e0d # initialize rs1
li x9, 0x33fd2049e9f2ef05 # initialize rs2
remu x29, x30, x9 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xfdad5f2c42e8474a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd36580cb9998c282 # initialize rs1
li x3, 0xcd9490aea5747187 # initialize rs2
remu x30, x31, x3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x52bd59076106407b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9eaff96813789029 # initialize rs1
li x3, 0x4ea0abfd79bd639e # initialize rs2
remu x31, x20, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x15, 0xf6e469830c90d636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xdc4adae4d029e0ba # initialize rs1
li x3, 0x1cf3ffbf90241236 # initialize rs2
remu x15, x0, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0xfca2a46d0bdafb57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4d0af2d9f53ae907 # initialize rs1
li x31, 0xc2ca4ca14502f715 # initialize rs2
remu x20, x1, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x506514c88c3e1d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbedd95d5050b8c54 # initialize rs1
li x31, 0x5db7fd3fd3bb87af # initialize rs2
remu x23, x2, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0x4c40a6e97a527599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf668716ca54ee7bd # initialize rs1
li x11, 0xc907a7d6fb2eb171 # initialize rs2
remu x29, x3, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x31, 0x5644238f73bdd6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8289849ff203215a # initialize rs1
li x17, 0xc6b79cee68957d1f # initialize rs2
remu x31, x4, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x16, 0x404b6737355af953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6dfdea1ccce43ac7 # initialize rs1
li x17, 0x91ee5809f45c0202 # initialize rs2
remu x16, x5, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x23, 0x60fa4ad1eb3bfe96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdd8f64d3cd791033 # initialize rs1
li x30, 0x96822561cbf5c0ff # initialize rs2
remu x23, x6, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0xfe148583704be074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc8c70732512ce48d # initialize rs1
li x26, 0x250bd04ee1e704a9 # initialize rs2
remu x5, x7, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0xb3341bade225807a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbfd739694038053e # initialize rs1
li x18, 0x872d4556d5592a59 # initialize rs2
remu x19, x8, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0x9ad1c4e09bc8ae83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8d9eeae5b83d061f # initialize rs1
li x18, 0x8e2d1e21c08ff216 # initialize rs2
remu x20, x9, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x8aaf3b43184010a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0dc0c0b53043ee37 # initialize rs1
li x22, 0x3b79b6da8f0beba7 # initialize rs2
remu x12, x10, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x20, 0x275183bd8c10f0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1261f5103afdc595 # initialize rs1
li x31, 0xbcf576e44fdaf0cb # initialize rs2
remu x20, x11, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x16, 0x77eed28197e730f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xda32865ae16da4e1 # initialize rs1
li x3, 0xbb8a1e8bfc0592a1 # initialize rs2
remu x16, x12, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x6, 0x578a7028227717e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x421b0540d30e303d # initialize rs1
li x3, 0xbfc7eba315efacb8 # initialize rs2
remu x6, x13, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0x6178b8b6eb58f578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9554791952de737d # initialize rs1
li x15, 0xb6d4edee764a133b # initialize rs2
remu x27, x14, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0xf05a5c58ec0a5e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x49d74ca3c5472bb3 # initialize rs1
li x9, 0xf8455ef1b8fb8141 # initialize rs2
remu x30, x15, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0x55e768938263f87f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa0ac3ca612eb8ad0 # initialize rs1
li x3, 0xb37ebb4feddeffcf # initialize rs2
remu x31, x16, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x25, 0xef16c1f9213e9e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7093f4d5d400edec # initialize rs1
li x19, 0xff14f41bba7e2b37 # initialize rs2
remu x25, x17, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x11, 0xd8ddc0d122bda2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe35f0bf78ee2755f # initialize rs1
li x29, 0xe2f34fb27323e17a # initialize rs2
remu x11, x18, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x31, 0xdee351569b2347e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x603abcf56979c434 # initialize rs1
li x26, 0xa6a7e09ff41f6d41 # initialize rs2
remu x31, x19, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x31, 0xf0f18dee84387ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x349001f1c63e8d57 # initialize rs1
li x27, 0xa7a3bc83e76b38f8 # initialize rs2
remu x31, x20, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x15, 0x27e3967f39ccc1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa01000da83e2b7cb # initialize rs1
li x9, 0xe6c991dcb00dd8a9 # initialize rs2
remu x15, x21, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0x4df02d75e6cfa135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbb13a6023bde0a96 # initialize rs1
li x3, 0x1fdc28af7d45da73 # initialize rs2
remu x8, x22, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x18, 0x989a39161304341e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6bb02d50e33015df # initialize rs1
li x26, 0x7a5d75a5c58e5ac5 # initialize rs2
remu x18, x23, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0xa5aa34a98f51b8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd041673e625c16e1 # initialize rs1
li x2, 0x53c83dfdc7593900 # initialize rs2
remu x10, x24, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x24, 0x591bc37bfffebe8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa7742f36df94252d # initialize rs1
li x30, 0x34eebe38db34b145 # initialize rs2
remu x24, x25, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x3b3972ff5b5ff470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7492ee426b00327f # initialize rs1
li x15, 0xa450152461b17bfc # initialize rs2
remu x21, x26, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x26a40bdceca7b85d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8b9d56240afa396c # initialize rs1
li x2, 0xa78a81d07325a4d0 # initialize rs2
remu x12, x27, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0x9998a7ad675d198e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d4c20f7f4cba389 # initialize rs1
li x27, 0x4360fd20349bf886 # initialize rs2
remu x10, x28, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x30cbcc2310eaf0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd1d4b0422e799fb5 # initialize rs1
li x25, 0x548da08da5f38d8d # initialize rs2
remu x5, x29, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0xaf3337824c11c03d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdabb10a79dbebecf # initialize rs1
li x18, 0xe5f9e92e8903e66a # initialize rs2
remu x17, x30, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0x573c195aaf242d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0df1b00abb4be0ec # initialize rs1
li x20, 0xea8f72ea4ac4b7aa # initialize rs2
remu x30, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x11, 0x94d19105cca21834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x66f1e93b2e3e8921 # initialize rs1
li x0, 0xa9fe79a45a0c31eb # initialize rs2
remu x11, x1, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0x7f3155545b9e2f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3adfb69f546e65db # initialize rs1
li x1, 0x2a5728ebfb2b967f # initialize rs2
remu x3, x30, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xd88185c0326c614c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4cf317c7c1cee919 # initialize rs1
li x2, 0x807c814b898e6be3 # initialize rs2
remu x28, x15, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0xe0108f9a76377d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa6940345ac6de9d6 # initialize rs1
li x3, 0x704e57b6c42c79e3 # initialize rs2
remu x13, x31, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x23, 0x6393d4d6d838225c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1ab1efbe7ed37ebd # initialize rs1
li x4, 0xf0186909af04d0de # initialize rs2
remu x23, x17, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0x528542aa986aafca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd1374506f96bc0ae # initialize rs1
li x5, 0xd8e093ec83154d6c # initialize rs2
remu x14, x19, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x18, 0x2aee5d9b9c7978ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x96dfe5d10763b49b # initialize rs1
li x6, 0x8212953da9addb3c # initialize rs2
remu x18, x19, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x25, 0xae918823781ea8ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb460b2842c8db311 # initialize rs1
li x7, 0x4b113b46c872832f # initialize rs2
remu x25, x5, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0xd9c6fca5c520f80e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd25e218b8186cf5c # initialize rs1
li x8, 0x0e795bc5677db099 # initialize rs2
remu x27, x31, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xd3f73730d6409e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0fd7303aab0da76a # initialize rs1
li x9, 0x6bb87c72c14db1cf # initialize rs2
remu x14, x24, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x450efd4db0931fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10f5f5c7f1274788 # initialize rs1
li x10, 0xf7ae08a2f3fd304e # initialize rs2
remu x5, x1, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x4, 0x6cd666026f1332ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x02e64be050d0458c # initialize rs1
li x11, 0x9b7e5a6a5af9d4c1 # initialize rs2
remu x4, x23, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0x831acdbfc73cc7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe79508fd70cc57bf # initialize rs1
li x12, 0xb7476b0d33750652 # initialize rs2
remu x3, x31, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xc414893ed5dd8446 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x02d94faaa898ffe0 # initialize rs1
li x13, 0xb4caefe66a3a6360 # initialize rs2
remu x11, x4, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x20, 0x865802486786ee26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb9f2ca357b1cc1dc # initialize rs1
li x14, 0x1c8713acb156e5a3 # initialize rs2
remu x20, x12, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x7b2bdb51fd6df356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x15ad7d599924bbbb # initialize rs1
li x15, 0x8022451bd71442cb # initialize rs2
remu x8, x29, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0x50422b5298459942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb14ff0742259726f # initialize rs1
li x16, 0xe090af31c2c67f66 # initialize rs2
remu x3, x15, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0x264a3f411006ec13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1e5d17068a552bdd # initialize rs1
li x17, 0x686731f298fc4a47 # initialize rs2
remu x14, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0x959aacdc09241cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb698f80f5862b67b # initialize rs1
li x18, 0xd589e9f9f98222a1 # initialize rs2
remu x9, x28, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x5, 0xe1a5583c16ceb9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80531b7d0153bef6 # initialize rs1
li x19, 0xd45843dbe3a9e5ec # initialize rs2
remu x5, x24, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0xb525fc1f5b0f28d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9cbc4e6767b7e123 # initialize rs1
li x20, 0xcc0b960422f244be # initialize rs2
remu x28, x5, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0x5766fa023368e9ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x53505697717dc91f # initialize rs1
li x21, 0xc5493c4cb6ceaed5 # initialize rs2
remu x31, x17, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x93d42ddc74085937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55ef4088d116ef7b # initialize rs1
li x22, 0x831691f49bf0f98b # initialize rs2
remu x10, x13, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0x9601ba1991418448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x993165f48e4e728e # initialize rs1
li x23, 0xd97f72089405c153 # initialize rs2
remu x9, x20, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0x9ee8088baa47290c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcbb5c2820deeb5b7 # initialize rs1
li x24, 0xf54299fd0b27406c # initialize rs2
remu x17, x23, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0xb5169fd4267e11b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x36cddf2e5aab59b8 # initialize rs1
li x25, 0xdbcab36875bd317b # initialize rs2
remu x24, x17, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x12, 0x0d2686ed1989df58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0a89cefbebf7cd11 # initialize rs1
li x26, 0x597343eb857ac7ad # initialize rs2
remu x12, x9, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x4, 0x4217b48649abb0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4734fc15b5d482ba # initialize rs1
li x27, 0x14004d44790022ae # initialize rs2
remu x4, x3, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0x408c558199593872 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x97c27d9786d1a796 # initialize rs1
li x28, 0xb64569913da0c999 # initialize rs2
remu x7, x6, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x0f2effbb3d983c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9053e71d95b05770 # initialize rs1
li x29, 0x6b2a5c25047d79d6 # initialize rs2
remu x27, x28, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0xf02f07897f9e2190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x06e256edb9122ba6 # initialize rs1
li x30, 0x410ed547600600b7 # initialize rs2
remu x20, x1, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0x7a5e66f357deac8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf15c3340b223f411 # initialize rs1
li x31, 0x3762c22490eac734 # initialize rs2
remu x5, x16, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x3a7d079f0e6570c7)
li x8, 0xdbea52ebc3b3fdaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdbea52ebc3b3fdaa # initialize rs1
li x0, 0xaaf8cad5d39bfc15 # initialize rs2
remu x8, x7, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x2d18dd472a3ffe3f)
li x29, 0x2d18dd472a3ffe3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2d18dd472a3ffe3f # initialize rs1
li x8, 0x2d18dd472a3ffe3f # initialize rs2
remu x29, x0, x8 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xa13b78e481503ec7)
li x8, 0x34b319b86b6783ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa13b78e481503ec7 # initialize rs1
li x5, 0xa13b78e481503ec7 # initialize rs2
remu x8, x11, x5 # perform operation

# Testcase cmp_gpr_hazard raw test
remu x7, x23, x21 # perform first operation
remu x31, x7, x27 # perform second operation

# Testcase cmp_gpr_hazard raw test
remu x18, x26, x27 # perform first operation
remu x16, x26, x18 # perform second operation

# Testcase cmp_gpr_hazard waw test
remu x12, x31, x9 # perform first operation
remu x12, x19, x31 # perform second operation

# Testcase cmp_gpr_hazard waw test
remu x24, x26, x22 # perform first operation
remu x24, x16, x30 # perform second operation

# Testcase cmp_gpr_hazard war test
remu x26, x17, x24 # perform first operation
remu x17, x11, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
remu x1, x20, x10 # perform first operation
remu x10, x28, x24 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0xe3bc6f055f592827 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x0, 0x1bf6be5f875c1609 # initialize rs2
remu x23, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x316a94f74b148bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
remu x26, x17, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0xe5d08ac02be630ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
remu x2, x17, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0xa12bb0951c1a0580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x0, 0x00ff28283185dbe0 # initialize rs2
remu x16, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xb8d2ce11ef21b5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remu x5, x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0x15f2845e8f6752c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
remu x13, x24, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0x60c216ea425063ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x0, 0x35771c67eaffba0b # initialize rs2
remu x24, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x82c9686dda4760bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
remu x4, x6, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x54fe28e6d8f87f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
remu x5, x8, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x25, 0xc4c6e43b04b62bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x0, 0x9a8edbdb63fea4b5 # initialize rs2
remu x25, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x8, 0x97a733bb2d49f8d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
remu x8, x25, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x9, 0x78096e7f3558e0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
remu x9, x3, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x7, 0x4d5cf97f3b207e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x0, 0x97195aacb01b823e # initialize rs2
remu x7, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0x765e2bc0588210be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
remu x15, x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x30, 0xee221c52fd0f233f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
remu x30, x3, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x13, 0xffeb6c7e8ef24ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x0, 0x7dd607f87d688ab4 # initialize rs2
remu x13, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x5, 0x0001c6ba9b6ced14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
remu x5, x17, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x17, 0x4b4b4eba146e8480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remu x17, x2, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x23, 0xead2f9c3e9e0358f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x0, 0x3840a972ce4d893e # initialize rs2
remu x23, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x23, 0xa05ce6cf86782d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
remu x23, x29, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x28, 0x6c67a121b71d2f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remu x28, x7, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x24, 0xc6dc80b372d3bd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x0, 0x4bb7cf0bfd2d1fb6 # initialize rs2
remu x24, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x19, 0x0bbaf25f10f18f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remu x19, x28, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x2, 0xea843f46135d2a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
remu x2, x25, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x30, 0x056e589b59a32bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x0, 0x56ba75cb62befa13 # initialize rs2
remu x30, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x2, 0xf260582209bbf108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
remu x2, x14, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x24, 0x236ffead3febf178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remu x24, x23, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x16, 0x6fa0089972a7f8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x92ce6e7bb04f3450 # initialize rs2
remu x16, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x29, 0xc9bfe8ded1b56086 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
remu x29, x11, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x8, 0x8444116b92658b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
remu x8, x10, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xccb1a9254f6b3786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0xc51e0ddae1eb37df # initialize rs2
remu x5, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x24, 0xb34c346eeb917038 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x24, x18, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xd2622e525023df6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x25, x28, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x20, 0xd8b440e79cb11831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x0, 0x64b1f5a839d14bbc # initialize rs2
remu x20, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x8, 0xfb72fab3698ae6fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
remu x8, x18, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x17, 0x78c512b6b8c82acf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remu x17, x18, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x1c7bc0a24d245354 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x0, 0xf8f971a782115a9e # initialize rs2
remu x3, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x4, 0x8980102cf198b69b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
remu x4, x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x3fedf2f360d4deae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
remu x13, x20, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xa9e8a505ade7f553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x0, 0xcebac59746bc0da9 # initialize rs2
remu x1, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x16, 0xa19e3bc6d0996306 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
remu x16, x24, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x6dc3038d0ba7ace6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
remu x8, x12, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x4, 0x6e26da10612b6f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x0, 0xb96cb4c7c5c3e625 # initialize rs2
remu x4, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x9, 0xf0cea9b1e90bc4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
remu x9, x7, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0xf1e0c989352552b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
remu x27, x24, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x17, 0xf3ac260fe820d76b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x0, 0x707e4d9d70915800 # initialize rs2
remu x17, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x8, 0xba1460aaebe43ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
remu x8, x15, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x20, 0x0192cbd5539915e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
remu x20, x6, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0xbb3df5537aefeaad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x23, 0xe833fa323b1709dd # initialize rs2
remu x17, x27, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x25, 0x7e0e8637757f1077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x4, 0xb1994d6176282baa # initialize rs2
remu x25, x5, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0xcc4bed8784eae034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x4, 0x0613d1941fd2e7f6 # initialize rs2
remu x24, x1, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x1676869cc95f2ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x29, 0xaab791897ce24583 # initialize rs2
remu x30, x27, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x29, 0xb12ef6327feaa761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x17, 0x2163affc7d7cbd8c # initialize rs2
remu x29, x22, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x28, 0xdb199d7075ebfb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x13, 0x766bce2d0f779fa6 # initialize rs2
remu x28, x3, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x492b4d3fe044d20b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0d23f928e1b42ecc # initialize rs2
remu x15, x18, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0x68e5cd11cddb21d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0xae1f3e297563de48 # initialize rs2
remu x3, x5, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xb2b72e6222fe3520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x16, 0x56188cd0a9e98c92 # initialize rs2
remu x8, x21, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x18, 0xa14fad6e4cb23604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x37f7194c74fb7bc9 # initialize rs2
remu x18, x6, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xf0123a3fcda0e2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xdce19c3ef82b4ff0 # initialize rs2
remu x10, x5, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0xca13e1bf8501e963 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x11, 0xf125116803b8df67 # initialize rs2
remu x13, x10, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x25, 0x1dcfbe972edbc7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x30, 0x7a93a2c76c9e14c9 # initialize rs2
remu x25, x20, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x8be9ec81e75a82b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x17, 0x832f52a42806dcaa # initialize rs2
remu x9, x24, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x3c2292a5ce19f659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x9, 0x0d9b61db58779524 # initialize rs2
remu x14, x12, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x12911817c33c83e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x17, 0xedb8d9b63d39ee31 # initialize rs2
remu x20, x24, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x972d252b61a37ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaa2d2b19a52d765c # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
remu x7, x21, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x719637e2cd691b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa99ad93e45c55bae # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
remu x16, x17, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0x3b02b3278fdbe7bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x48977f7c752ec239 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
remu x27, x2, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x7, 0x85f1f7792af16e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00915e72c86b38ad # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
remu x7, x6, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x24, 0xaa1ea693d4df75b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfda626f6b93a72ac # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x24, x4, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x21, 0x7adb61203f7a03f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd6d006112eefbf28 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remu x21, x29, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x8684b5fcf5b74c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5c7c741a631ec2e8 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
remu x2, x28, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0x3e78db70d77efe60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa8c2ba4f9b6c1947 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remu x20, x3, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x9a6c26024a32b389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0bb90d993249e164 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remu x24, x27, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x30, 0x6540aedf75710161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xde7f6441ce408038 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
remu x30, x22, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0acddf276fba66f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x928b367cb855be33 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x27, x16, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x40760c7327ffd9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3ba7e6bce7e98039 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
remu x10, x12, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0xe630cd7f8180934f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0ba4b5e840a66a89 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remu x31, x12, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0xa23bb319f5d0bd5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ff94f65db9b4230 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
remu x12, x17, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x96e121dcf01a0ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc38e00b1b0630846 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
remu x9, x24, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x9, 0xe557a584811e2d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd1aac2147d07f03d # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
remu x9, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x4fa6c6ccb3403f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
remu x30, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0xff87a023e194a7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
remu x30, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0xeb705534e6f3d5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
remu x25, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x21, 0xaa157fd139f37f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
remu x21, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0x501c0ff33fe66adc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
remu x23, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0xdd2024e959ccae94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remu x21, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x8, 0x91de6711c4dd3f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
remu x8, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x2, 0xb0deb9ae10cd1b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
remu x2, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x3, 0xbdea1a68ce34e9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
remu x3, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x7, 0x9fe7b731c3973cba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
remu x7, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x31f5901c8cb30f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x28, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x8, 0xb60c84d69534860f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
remu x8, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0x7a50bea290f24a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
remu x26, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x028067a5499e914a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
remu x24, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x46a77183647e2bef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
remu x11, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x12, 0x0378d62872b31581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
remu x12, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x6, 0x2d34da07b35373a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
remu x6, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0xec8f0b02a6435d83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
remu x30, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x2e478d752445272b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
remu x28, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x7, 0xb6e04c31d70fe321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
remu x7, x18, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x7, 0x73397a702b051b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
remu x7, x18, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x22, 0xa3c2a2dc8b50fdb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remu x22, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x8, 0xb1e1a148ee38eff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
remu x8, x28, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x26, 0xe96d066f86ecaa46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
remu x26, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x1, 0x943b9738e0c4715a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
remu x1, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x29, 0x546ddc9da2fd1831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
remu x29, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xb1a91eb38f65da14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x12, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x7, 0x9280021d00858fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
remu x7, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x1e85651bd62e8ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
remu x10, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x24, 0x7931e8beac3daf3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
remu x24, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x2ae64dd769831ade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
remu x18, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x22, 0xbf8c5aaebfd53767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
remu x22, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x071906b990129059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
remu x28, x24, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0xb62dd82d0487a690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
remu x17, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x5, 0xf68d8546ecb0b841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
remu x5, x19, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x6, 0x0b4dc46d03056b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
remu x6, x18, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x11, 0x74e257b1ae859a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
remu x11, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x3319de1ba3e90a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remu x25, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x13, 0xd59c94a0c9c7b7af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
remu x13, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x17, 0xd39ca569f1d5635e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
remu x17, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0xad984f7bfc7fb9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
remu x7, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x14, 0x8b8a16e9c2006892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
remu x14, x9, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x96be7b463597c97f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x22, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x27, 0x1e615c03e4caa7df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
remu x27, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x26, 0xf0463bc5f3c88832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
remu x26, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x31, 0x27705dbf2a434b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
remu x31, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x24, 0x43079a176803dee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
remu x24, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x18, 0x5eddbc42e2ade53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
remu x18, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x21, 0xc96e19012a1f9ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
remu x21, x28, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0xfb7ea00898b1c50c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
remu x8, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x5, 0x49a176affc9ad967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remu x5, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x13, 0xb2736463b8bd03b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
remu x13, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x298eb0ae47eef59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
remu x10, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x9, 0xaec5db263144ee96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
remu x9, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x463543d24394ca21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
remu x2, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x29, 0xf3d18b24a7c45be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
remu x29, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x4, 0xf16f7bea1eb072d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
remu x4, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x7, 0x041b80733886c29a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
remu x7, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x4d521770eaf86353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x5, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x31, 0x63727326aa236e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
remu x31, x22, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x30, 0x1a35a7084093ab2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
remu x30, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x048794272946a6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
remu x7, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x17, 0x1dfb6d3a4dab0496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
remu x17, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x2, 0x547d6d67b9cf9698 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
remu x2, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x154233a0acbbf871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
remu x18, x16, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x26, 0x6241635b070000d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
remu x26, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x8, 0x88f99c501e965369 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
remu x8, x5, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x12, 0x3725dd92290057be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
remu x12, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x8, 0x802c36c983e47096 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
remu x8, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x29, 0xb6a2f007aa8718c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
remu x29, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x22, 0xfdd0088a41d5f8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
remu x22, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x22, 0xa137a877580d635e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
remu x22, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x5a0047f07cfe6a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
remu x23, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x13, 0xe44963e7ee52e0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
remu x13, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x1845751039a56451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x6, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x16, 0x5d4117bd36da135f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
remu x16, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x7, 0x063d36d514a4704c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
remu x7, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x22, 0xe8616a0470d026ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
remu x22, x9, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x21, 0x7b7a31de65a39b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
remu x21, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x31, 0xffc57bb02cb6dcdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
remu x31, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x88f4ccc886bf5ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
remu x1, x3, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x21, 0x692ec335e2974653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
remu x21, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x4, 0x24b368949d4ea7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
remu x4, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xcb240ccca291360d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remu x23, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x11, 0xb2c45119007f381c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
remu x11, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x23858223a4816b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
remu x1, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x90f570917becda6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
remu x20, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0x1b3f97b979440f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
remu x21, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0x5f523d8eac6a03d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
remu x12, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x18, 0x1a762ab33795e3ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
remu x18, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x15b5c220e2d09b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x30, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xeb5617d67e5115f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
remu x24, x3, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x6, 0xe8f88a10318c7cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
remu x6, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x31, 0x85adeff34fdbd495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
remu x31, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x23, 0xb91e7a55695a2255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
remu x23, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0xfdb11146dbab13be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
remu x23, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x12, 0xff20f59152b3a198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
remu x12, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x0ae7560fb88edc2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
remu x18, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x25, 0x8bb37d2413986ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
remu x25, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x4, 0x9e5fbea02f143405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
remu x4, x23, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0xdced1a68025751b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
remu x21, x2, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x3da867b70ff20cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remu x18, x31, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x7acbd3ae82db26f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remu x22, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0x735288ba1f86ef86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
remu x24, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x83f174c0699d24a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
remu x22, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x13, 0x1d76545cfe751739 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
remu x13, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x4bea7056462665f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x22, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0x8bc8d2d9b30108a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remu x12, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x20, 0x7a81fc8507a21998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
remu x20, x3, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x525952edd5fea31d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
remu x16, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x30, 0x15ebf12e51ed0a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
remu x30, x22, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x6, 0x508a89c92e8ea97a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
remu x6, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x14, 0x050c4f2c1930e5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
remu x14, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xcf3a6c47dc42a577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
remu x21, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x10, 0x9b75e45301ed8ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
remu x10, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x4, 0x37df2dd97cc6bdff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
remu x4, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x4d082146b35cc553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
remu x28, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x67919142a11e3d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remu x12, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0xbf3f7c413f915597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
remu x29, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0x2ae7c2b4f011f9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
remu x2, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x4, 0x961b5b945b587397 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remu x4, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x21, 0x1f95310e7d3233bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
remu x21, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x104ae420537e4a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x14, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x18, 0x807424a6abfd971c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
remu x18, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xd37fa81abc00785a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
remu x27, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0x7c8470be8feb017f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
remu x1, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x27, 0xfabf4a60f5df524c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
remu x27, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x9, 0x01bc4654689b01bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
remu x9, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x10, 0x1fe6592cec1cace4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remu x10, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x17, 0xaa1a4d2fd4f38d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
remu x17, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x26, 0x1ba8c208ef4a60ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
remu x26, x25, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0xa2512d49257e8bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
remu x8, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0xdcbf8474605fb30d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
remu x23, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x3f6149d7066baead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remu x23, x3, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0xc6bfbfda58086c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
remu x14, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfbd57291d6a81a02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
remu x21, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x0a1a81916bc9aa76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
remu x6, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0x8b7f00fa15210785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
remu x30, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x4182f9943f76e88c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x4, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x13, 0x97ff33f8b270071b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
remu x13, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x7, 0x0469a3deb4cd340b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
remu x7, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x20, 0x193a48cb5a77f77f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
remu x20, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfbd5d3a1bfd92086 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
remu x28, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x10, 0xf3888f813bad5d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
remu x10, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x13, 0x67c8467280893046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
remu x13, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x12, 0xbdf146b6423f31a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
remu x12, x17, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x23, 0x8be0f8e179f1b04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
remu x23, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x5, 0xbfb194e3752cf492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
remu x5, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x15, 0x753f585321345328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
remu x15, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x18, 0x4044d85c545538ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
remu x18, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x7, 0xb127a67f60f8c0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
remu x7, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x31, 0x0fa142e99823252a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
remu x31, x10, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x17, 0xa42afb623043112a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
remu x17, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x5, 0x33243e0b85543cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
remu x5, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x5056576d138c0e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x16, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x26, 0xcb5fb73448157c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
remu x26, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x14, 0xbf6387c3c1e25cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
remu x14, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x1, 0x4001054be48c52e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
remu x1, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x19, 0x9f175cd3313bd0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
remu x19, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x9, 0x275de0d8402bd326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remu x9, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x10, 0xed0d62b0fe8559e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
remu x10, x21, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x27, 0x7aeff8b9f3946e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
remu x27, x1, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x17, 0x24d2be89c11adade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
remu x17, x3, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x31, 0xd37398b55e297b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
remu x31, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x27, 0x9f87ceca1b5b7b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x27, x10, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0x4bea60e5ec3b5ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
remu x26, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0x0a9ef46d59bc718f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
remu x26, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x5, 0x3999524f8fe6218f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
remu x5, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x20, 0x185ea67f10a3e83e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
remu x20, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x18, 0x6530ce7fced0a85c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
remu x18, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x062e84e0e577ce34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x23, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x27, 0xd4131acc67d04721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
remu x27, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x12, 0x90df9106c2c4b5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remu x12, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x6, 0x838d8d07a56e50b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remu x6, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x12, 0xa9382bbe0b7e95bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
remu x12, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x1, 0x6fea905917a5ffbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remu x1, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x17, 0xba1b9ace9bb5c4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
remu x17, x23, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x7, 0x7fbae17e0c969859 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
remu x7, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x1, 0x279a70ea6bb7f028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
remu x1, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x81953995e57ce9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
remu x31, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x263858667d625f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
remu x19, x21, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x5, 0xe4bcc9c002ddef53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
remu x5, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x16, 0xfa33566b07b21b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
remu x16, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x3, 0x6f67449423da6fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
remu x3, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x14, 0xd533f19163a009ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
remu x14, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x15, 0xef52a6104187ae20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
remu x15, x18, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xb14a364c79ac5f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x13, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x28, 0xfc9c55b721108ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
remu x28, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x28, 0x5b3223179d2bcd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
remu x28, x12, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x23, 0x5f79108fe3e412f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
remu x23, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x11, 0x1601171a365cad19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
remu x11, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x31, 0xaa9d6ee0e79eadf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
remu x31, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0xfb5cfc75b06f3ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remu x2, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0x145703b8e0a219ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
remu x26, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x10, 0x382ac1f027dac162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
remu x10, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x11, 0x776fc047b594db7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
remu x11, x24, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x30, 0x681841a22c70dc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
remu x30, x7, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x25, 0x36d29912224a074f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
remu x25, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x4027c33ef93de0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
remu x31, x20, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x16, 0x087568530da7edd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
remu x16, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xf90a42f66532d063 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remu x3, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x20, 0xb2727325eed0be15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
remu x20, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x9352fe5a39f61e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x23, x31, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x15, 0x95f65fd1a7c21661 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
remu x15, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0xe0085c8ef422be84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
remu x17, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x10, 0x1f4ba9765e556a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
remu x10, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x4, 0x2e22841d0fb0bed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
remu x4, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x10, 0x3a5e2a583f706d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
remu x10, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0x4d5981fd4241b583 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
remu x6, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x8d51942836f220c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
remu x21, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0xf19b3708c584f206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
remu x28, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x19, 0xd81cbb2f67136e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
remu x19, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x15, 0x3c1c333578c6cfb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
remu x15, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x24, 0xd3aeead6c80833ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remu x24, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x2746230ec5cef343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
remu x20, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0xe40b769c468b6aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
remu x19, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x12, 0x951a286df622fa67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
remu x12, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x9, 0x6412fae3f5fd085c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
remu x9, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xe4a2e1c6fc6f1119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x22, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x14, 0x87402d42adaccad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
remu x14, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0x2eb3ca64c2dc5315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
remu x12, x23, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0x400c68350634dc7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
remu x10, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x5dbd83b474df659e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
remu x31, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0xaae108eaec36af39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
remu x1, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x4, 0xf8c7cc5205f8e8da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
remu x4, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x81b8964003216f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
remu x20, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x13, 0xe5d793fa1e8e9a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
remu x13, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x35a05ef36e02814c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
remu x22, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0xea723652102b5aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x23, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x18, 0x8b8d3f5997b6d240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remu x18, x28, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x211e836c569ad4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
remu x3, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0xfbdee3c9409bfd79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
remu x16, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x9, 0x4dae1fbc2149340d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
remu x9, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x1, 0xd95651396c0161b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
remu x1, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0xd45911925964680c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x4, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x5, 0x58552cce9b691764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
remu x5, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x26, 0x735749ad9997e701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
remu x26, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x1, 0xc200afb56921fce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
remu x1, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0x85a6860e391961fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
remu x16, x23, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x8, 0x52c258c6eea781cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
remu x8, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x3, 0x8a50a65fc4826add # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
remu x3, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x11, 0x6daa94471ced69bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
remu x11, x23, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0xe6c978e31e120aed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
remu x9, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x7, 0xf9385e3ffa76e7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
remu x7, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x16, 0xef80ea213eb7a2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remu x16, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x1, 0x3b6bfab28379b8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
remu x1, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x8, 0x447b8e6eafac235f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
remu x8, x5, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x12, 0xf4db128c789a3686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
remu x12, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x23, 0xc9e527de70543c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
remu x23, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x5, 0xcf36608c41a74bda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
remu x5, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xc0877725fb1f4072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
remu x22, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x12, 0x3b05d112fae370ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remu x12, x13, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x25, 0x88c2c167771a3198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
remu x25, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x27, 0xc394935262dc586b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
remu x27, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x17, 0x28d06ee68c842aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
remu x17, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x17, 0x6353b7a55d4fc784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
remu x17, x8, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfcce60c412848ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x11610852c6ff7e84 # initialize rs1
li x6, 0x227de09f1ea8b415 # initialize rs2
remu x0, x0, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x781c3a912a8f5eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x15778b37bdf8f5df # initialize rs1
li x2, 0xe17f690392e867ce # initialize rs2
remu x1, x1, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb9f4d451243af756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2bf4ffb13d0f890b # initialize rs1
li x11, 0x932825a410a86279 # initialize rs2
remu x2, x2, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5c244152a724e87a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55dc082b7bbe9e95 # initialize rs1
li x24, 0x836c53af02c0b3b9 # initialize rs2
remu x3, x3, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x8c44c005961feda5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6e466361bb1330bd # initialize rs1
li x1, 0x316ad524816795a3 # initialize rs2
remu x4, x4, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xd3b98c05766acd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa55e0b3310e0a5b6 # initialize rs1
li x24, 0xae26844bf6fc69d0 # initialize rs2
remu x5, x5, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x8af084ef3e5bc207 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfda187e963c44f60 # initialize rs1
li x28, 0xcbec5b8e4e2cb097 # initialize rs2
remu x6, x6, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xfff5d6ead0063398 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb88fdc231655a0d9 # initialize rs1
li x30, 0x382bb94bc1936b06 # initialize rs2
remu x7, x7, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x5fc33a70cded7df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x88f9ca2432a07edf # initialize rs1
li x15, 0x4259fa73ac08de46 # initialize rs2
remu x8, x8, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2032af806873d2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf60b449dab38b28a # initialize rs1
li x20, 0x3ba20480dc3d9138 # initialize rs2
remu x9, x9, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xedde118f4aea0305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffc814b96b04578 # initialize rs1
li x18, 0xc165d5ebc6634542 # initialize rs2
remu x10, x10, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x45d25fabd320140b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x38e0f8085d88346d # initialize rs1
li x27, 0x3cb6b2d517c81e58 # initialize rs2
remu x11, x11, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x846fac5c5e6c7f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8dcb938f57eb0631 # initialize rs1
li x5, 0xa8f22e7b430f0fb8 # initialize rs2
remu x12, x12, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0a00967452d05683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8639502360262096 # initialize rs1
li x2, 0x5ab42e443f600b56 # initialize rs2
remu x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xfbdb6533a884a1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x454649ee6bff79a1 # initialize rs1
li x25, 0xcc3a3e5471203157 # initialize rs2
remu x14, x14, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0718cae3bb4c5f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4cf4e24c034b13ec # initialize rs1
li x22, 0xfe96304272f76f4c # initialize rs2
remu x15, x15, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4a9356a65301fa80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf384207888d6ac6d # initialize rs1
li x7, 0x2a9f1e83bf7d4e8e # initialize rs2
remu x16, x16, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3597451ddae9e427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaac81d5ea485e154 # initialize rs1
li x22, 0x3931d79935d960d0 # initialize rs2
remu x17, x17, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x43ac3d8ffd41bb0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x357b786df3132850 # initialize rs1
li x25, 0x991b1667149bb775 # initialize rs2
remu x18, x18, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb1dba826762e9798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5d56c928c24d3c2a # initialize rs1
li x4, 0xa8ed494f1fecfbcf # initialize rs2
remu x19, x19, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf8f8b5ee538a7ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xca0f098f2daf666f # initialize rs1
li x17, 0x38e0c4f735b4a918 # initialize rs2
remu x20, x20, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8c617cee957041b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x40906c82a8a342dc # initialize rs1
li x4, 0xbba941b5f6a696ac # initialize rs2
remu x21, x21, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb5d63558f271a302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6cfc19cd3c202c7a # initialize rs1
li x5, 0x9917f8ce34118f35 # initialize rs2
remu x22, x22, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x42f4d88e74ffde25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x866bf2d07631605a # initialize rs1
li x4, 0x148cb33ae6f6e4dc # initialize rs2
remu x23, x23, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x375762a551b19f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3af7e88ac6a7893f # initialize rs1
li x4, 0x2a23977aa0fb519e # initialize rs2
remu x24, x24, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8c47c65d4d937186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbbfad020ddce8d03 # initialize rs1
li x16, 0x98b7ae6c2a226701 # initialize rs2
remu x25, x25, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0e380ce11b8a8eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd542994c8d07063a # initialize rs1
li x27, 0xb9d91286cce1587d # initialize rs2
remu x26, x26, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9d18e32a11a55ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9f281927e4dcef39 # initialize rs1
li x1, 0x57d9b2d11a385d33 # initialize rs2
remu x27, x27, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6b32c01a1858509d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x304f4da0c480d589 # initialize rs1
li x23, 0x629c2a948e8bb7a6 # initialize rs2
remu x28, x28, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xce496a632f740293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2804514c1fc17cc9 # initialize rs1
li x3, 0x2bcf9724d70067c2 # initialize rs2
remu x29, x29, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa243ec23a05f6986 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa927e37d2bd92490 # initialize rs1
li x9, 0x6775bafa399c6edc # initialize rs2
remu x30, x30, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x042277d90842533c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4a41128063b14fd0 # initialize rs1
li x3, 0x54929dac04d8a1c0 # initialize rs2
remu x31, x31, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x5d7cb5fa9835cf5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd3e8d2d73a78e6d7 # initialize rs1
li x0, 0xd8049bbe1002669c # initialize rs2
remu x0, x2, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xa24b89aeb396f9f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb4e75e10568a6eaf # initialize rs1
li x1, 0xf5982a605a1c6747 # initialize rs2
remu x1, x4, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x1d029b26eca5948f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb26d6a6998fc62af # initialize rs1
li x2, 0x63d8c27974aca604 # initialize rs2
remu x2, x25, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xb9ac102c23df66ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8327b7b9bc76a1b9 # initialize rs1
li x3, 0x64883474e0351405 # initialize rs2
remu x3, x25, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xaee7db4ac8ebccdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x304512cc374368ba # initialize rs1
li x4, 0xefc50e019cb5544f # initialize rs2
remu x4, x17, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x9ccd063695775a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xff422435097aa62c # initialize rs1
li x5, 0x63e4b9e24eb7951a # initialize rs2
remu x5, x2, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x647ad3630c898bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x735efb95694b2c73 # initialize rs1
li x6, 0xc356b024e11d505a # initialize rs2
remu x6, x18, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x089cb2a8e173207b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x902723d13e782972 # initialize rs1
li x7, 0xac02de9e44bf1ed0 # initialize rs2
remu x7, x11, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x1851145bbdc8eb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd4bc3aea8547f312 # initialize rs1
li x8, 0x75b97cd11ab54de3 # initialize rs2
remu x8, x12, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x2b266f70f70776eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd217c55cbd6f635a # initialize rs1
li x9, 0xd2ed8cc7e31ca9d1 # initialize rs2
remu x9, x1, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xa75506ce58e1e695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6203bb2291c524e8 # initialize rs1
li x10, 0xf617fa6a96fa27ab # initialize rs2
remu x10, x9, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x896bdd4b627b13d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1257b6cafbc5a628 # initialize rs1
li x11, 0xde97a5ef944e598f # initialize rs2
remu x11, x3, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x671292e91e101377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x003892d44688e9cb # initialize rs1
li x12, 0xa4eae11cc30cee66 # initialize rs2
remu x12, x22, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xc6aa64ad4170514c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfee4723e6b0d0548 # initialize rs1
li x13, 0x9ecbc2e67c551883 # initialize rs2
remu x13, x19, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x6b4224eb990d7189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbfce730d5ad90b86 # initialize rs1
li x14, 0xa09e81d247d48dfa # initialize rs2
remu x14, x2, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xe63bdbe44e216e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6fc1d4af96f6dbfc # initialize rs1
li x15, 0xd4d0cf83b99d8d64 # initialize rs2
remu x15, x11, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x8f5b0da585668176 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdb9abb83c4e52b3e # initialize rs1
li x16, 0xcdc4886d0c1bfd3c # initialize rs2
remu x16, x19, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x1fbcab0f13d08736 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9c8639d15d9e1a51 # initialize rs1
li x17, 0xa8c7399533fb8709 # initialize rs2
remu x17, x20, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd4eddcece5a5c253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x818548be53ae8e4f # initialize rs1
li x18, 0x6e528ddc6c96c868 # initialize rs2
remu x18, x11, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x9cb78ddfb6b63915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb0ece6667d352873 # initialize rs1
li x19, 0xc16ef6ca520a4cac # initialize rs2
remu x19, x9, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xe7c3173132a420c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf3d27d4850dbfd42 # initialize rs1
li x20, 0x1f6b2093eb66e448 # initialize rs2
remu x20, x5, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xee2e3515ee631bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x724cf127ace5c5fb # initialize rs1
li x21, 0x38a8252d146c79fa # initialize rs2
remu x21, x11, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x563b19dfe3b160a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe342267a5112d255 # initialize rs1
li x22, 0x8220f0e0d8a1ca0f # initialize rs2
remu x22, x10, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xdc18c3c00d434a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x13e838785473291d # initialize rs1
li x23, 0x916be376c2a14702 # initialize rs2
remu x23, x28, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x448507a5627d0387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5e399ac949c5768f # initialize rs1
li x24, 0x659ffbf1829b588c # initialize rs2
remu x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x3f7ce7ba2953437c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8a5a51b2b3e6292b # initialize rs1
li x25, 0xe58bd1dcd38f1fa8 # initialize rs2
remu x25, x20, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x9d03daef78018172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x51181f35252b7897 # initialize rs1
li x26, 0xea6ad40cc466ba6b # initialize rs2
remu x26, x30, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x44af74b74cc330da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x92039f558a393876 # initialize rs1
li x27, 0xddea591cb8c366f1 # initialize rs2
remu x27, x20, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xc03639b26fb25761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xda511d66117e0a4e # initialize rs1
li x28, 0x8ffb61e3dbfa62d3 # initialize rs2
remu x28, x17, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xd2520acbbd57d0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1a637982e229f5de # initialize rs1
li x29, 0xc5c1a3ff04e2dc3a # initialize rs2
remu x29, x28, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x1940dc56d4b6f1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x209a3c3846c8c666 # initialize rs1
li x30, 0x333267e565895b62 # initialize rs2
remu x30, x17, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xa149872232ae11a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2b294c5e63199332 # initialize rs1
li x31, 0x60828a0cfb7b1927 # initialize rs2
remu x31, x21, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x5755df540c0ff394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf4ab428a1a969196 # initialize rs1
li x0, 0x1c2ba91e820e6558 # initialize rs2
remu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x18e7fe303072b920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x79dd1ec9020db666 # initialize rs1
li x1, 0x92c22773155de912 # initialize rs2
remu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x378327ce927f9f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x243ee0911fa82449 # initialize rs1
li x2, 0x96c82df75e4f0177 # initialize rs2
remu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x2512b0202dd00db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1177a7da64ef388d # initialize rs1
li x3, 0x2284b786f8c6dbfa # initialize rs2
remu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x1f04d489d6836d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5ef1311c9aedd22d # initialize rs1
li x4, 0x580618a4b49aefb2 # initialize rs2
remu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xdc3fc2db9e6ac4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5f42f17ba9bbee1a # initialize rs1
li x5, 0x80c23795538b75b2 # initialize rs2
remu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x861f38ee7acba859 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8eeddd0697b1d394 # initialize rs1
li x6, 0x943d14581f87704f # initialize rs2
remu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x2d393abbfb596fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4cbc438e69810325 # initialize rs1
li x7, 0xd61fe0a34a6f267b # initialize rs2
remu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x11b9bccb47b4228c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc2f44a05d7a88e71 # initialize rs1
li x8, 0x91105a13b8c0e146 # initialize rs2
remu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x57e93988be9a9115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb99a93ab42a82371 # initialize rs1
li x9, 0xa1c9bde9672e86bf # initialize rs2
remu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0aea2b2578bfd0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8bc8728bd7596793 # initialize rs1
li x10, 0x3a7f5581a8f0b904 # initialize rs2
remu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2a8d8562c18ad40a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x572f2a32b2a60f03 # initialize rs1
li x11, 0x9fdd4941db7d7170 # initialize rs2
remu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe3495123ca6b82b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbf8478cc223e73ff # initialize rs1
li x12, 0xe4a4939d219a3a21 # initialize rs2
remu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa5b131734c99b601 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe3143c2d37ee99d5 # initialize rs1
li x13, 0x4050caa3d8edece0 # initialize rs2
remu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x94a98d96ac042812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x14600343ef8c19ad # initialize rs1
li x14, 0x7d11d0d60c74f9ef # initialize rs2
remu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3ee3b558d363251d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9ce88b41814e87e1 # initialize rs1
li x15, 0x76829bedccc94ca1 # initialize rs2
remu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6691922b7538225e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4bd91f3e2f458b7e # initialize rs1
li x16, 0xc20c2a3037352298 # initialize rs2
remu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf6e0e95b9892df9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd6e293af7f174aeb # initialize rs1
li x17, 0xd2781e3eef35a056 # initialize rs2
remu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6ca7671fdb53f767 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf9816f9a89cea77a # initialize rs1
li x18, 0x63d74ce1f18f4cee # initialize rs2
remu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9cd17153e2167abd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x63d84023fe3c36bc # initialize rs1
li x19, 0xee646e1196930055 # initialize rs2
remu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe2b5c87200f78926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x38b345177ea27966 # initialize rs1
li x20, 0xf66e7d5aa6dffe30 # initialize rs2
remu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xb9297a5a45f79a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1498191b2a1e08d8 # initialize rs1
li x21, 0xb31fa2a469545b59 # initialize rs2
remu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc9297095602b13aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaf7510f467bebc2c # initialize rs1
li x22, 0x58f19acd83b96d4a # initialize rs2
remu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x968d01aa828692f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa1c0e8d29d5f9396 # initialize rs1
li x23, 0x37a4e654f0b09bba # initialize rs2
remu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xdce181ff53475b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x37e7f127131cd2e0 # initialize rs1
li x24, 0xc974a535d3a75e69 # initialize rs2
remu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8a0c3b85e8c3da52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0bfb4425b96683e0 # initialize rs1
li x25, 0x3caddfcac9451f88 # initialize rs2
remu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1a081f2c65e6947a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2b74abb218ac2e5a # initialize rs1
li x26, 0xee15bdd0223ff1f5 # initialize rs2
remu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc5e05560be22dace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5f712e01a57f77d0 # initialize rs1
li x27, 0x3c7cb3b2c143d75b # initialize rs2
remu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5ea61b43b01856e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfaae0020ad906a06 # initialize rs1
li x28, 0x3b72bbd40583ca8e # initialize rs2
remu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xda9e4da2d35f55d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2e5541470731193a # initialize rs1
li x29, 0x38f1a74d7cebb854 # initialize rs2
remu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd62e025eaf530621 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8ea0b47275843ff5 # initialize rs1
li x30, 0x296bf869ea871d4b # initialize rs2
remu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe7b19b2f29f8f854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2e836bc219492e95 # initialize rs1
li x31, 0xa02563d92fd6d2b1 # initialize rs2
remu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x30, 0x6f5e9294e62ccf3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4a7ffbc7ac85f154 # initialize rs1
li x0, 0x7dcb1ec474e28a31 # initialize rs2
remu x30, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x27, 0x70b2c365632479f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe1ac1571f8546bee # initialize rs1
li x1, 0xc5c48a8eeef5b908 # initialize rs2
remu x27, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x8, 0x89504eb8725d6169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3d1eadbafa581057 # initialize rs1
li x2, 0x2193da078a7ada04 # initialize rs2
remu x8, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x16, 0xd2a7040545e64781 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x556454deb1fe1e11 # initialize rs1
li x3, 0x133b3b2c2d08c939 # initialize rs2
remu x16, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x30, 0xf710876b6199f4f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x335778a0faee1b82 # initialize rs1
li x4, 0x64ab926c82625a56 # initialize rs2
remu x30, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x29, 0xaaf1892565cd64c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x94ef319912aead42 # initialize rs1
li x5, 0xbfbc7f6625691459 # initialize rs2
remu x29, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x3, 0xaea15720b01bc6c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe86861acef40e234 # initialize rs1
li x6, 0x52b8941de3c2ed03 # initialize rs2
remu x3, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x15, 0xfc719606eecb212b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0c7bb36eaa6efb2c # initialize rs1
li x7, 0x00764c131155ae61 # initialize rs2
remu x15, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x17, 0x18d6ceda976254b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x19941e342a8aaadf # initialize rs1
li x8, 0x3d66c1560af27e62 # initialize rs2
remu x17, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x17, 0x6502a0835e6c9453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc97baa03d6b728c5 # initialize rs1
li x9, 0xcee02474f19a8c54 # initialize rs2
remu x17, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x12, 0x5f2a1bc2408ff299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x27878a580e4b62f5 # initialize rs1
li x10, 0x1ca6a503b8cc48ad # initialize rs2
remu x12, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x1, 0xcad2c66535bdf5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a56b5a1515a39bf # initialize rs1
li x11, 0x3bd3d2d1ac6ad3dc # initialize rs2
remu x1, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x10, 0x4607607a5ce2f376 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x78fb6dd6501810b3 # initialize rs1
li x12, 0x746af90790990b4e # initialize rs2
remu x10, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0x593b585028ed48e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd5c6911b45a2b02f # initialize rs1
li x13, 0xf55023235288f3a0 # initialize rs2
remu x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x28, 0xd14a9c9cd3378a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xee8a782125b5f6bb # initialize rs1
li x14, 0xa60a0edcf62209a0 # initialize rs2
remu x28, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x2, 0x4ee4412ea358f237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0e40253bc240dbbd # initialize rs1
li x15, 0x38aa68030fc2f6d1 # initialize rs2
remu x2, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x19, 0x4ce259edb1257478 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe21f1fd3dcceb89d # initialize rs1
li x16, 0xa819c4bbde5c5dcb # initialize rs2
remu x19, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x31, 0xc0f616e70cc19e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x76d225838e2fcee4 # initialize rs1
li x17, 0xfb778811ab432d12 # initialize rs2
remu x31, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x16, 0x3f1783fb888b1437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4ad5b0adcbd44444 # initialize rs1
li x18, 0x1fdbcdab8360a1fb # initialize rs2
remu x16, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x22, 0x3d83d89190448f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x61e92eb7b1722043 # initialize rs1
li x19, 0xacfed6f2a87c1419 # initialize rs2
remu x22, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x27, 0x2a705dd77a552cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe36503806f3e8c93 # initialize rs1
li x20, 0xf90eb73cdb018a07 # initialize rs2
remu x27, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x1, 0xacb9368004e36b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe4ddaeabbb4b0274 # initialize rs1
li x21, 0xb868dfd876ec117a # initialize rs2
remu x1, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x9, 0xe814abcd01d94e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x930bbb15acfd97fe # initialize rs1
li x22, 0x1eccaf2f60a6178f # initialize rs2
remu x9, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x21, 0x19dbb59a580ee776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe5087b9fd3b370e1 # initialize rs1
li x23, 0xbc3ff4a8c630ebd8 # initialize rs2
remu x21, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x29, 0xb4becfe9729420e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa309ddbddb568edd # initialize rs1
li x24, 0x707d3ad06b34d45e # initialize rs2
remu x29, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x6, 0x77cb554bdae06d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x862d80da88062d6f # initialize rs1
li x25, 0xcddb99b8087c22bb # initialize rs2
remu x6, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x30, 0x63e4de8f3fa83d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7a18f1bb4db32dcf # initialize rs1
li x26, 0x9f7ce9c860479264 # initialize rs2
remu x30, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x31, 0x8c7d615ce0d60f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd4d793b941b61128 # initialize rs1
li x27, 0xe2c0fe02b9567d23 # initialize rs2
remu x31, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x6, 0x52cff729cb7bc0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa91ee4b4f27f9622 # initialize rs1
li x28, 0xf93a2ddcb65dc846 # initialize rs2
remu x6, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x12, 0xf07228b0ca63a13d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3ecee389fa87ab0c # initialize rs1
li x29, 0x8e12558d9a84da0f # initialize rs2
remu x12, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x2, 0x634883540cc40b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x88d5f1f9df321dc6 # initialize rs1
li x30, 0xe724e0f701c56cfd # initialize rs2
remu x2, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x21, 0x9439682b703a2e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x671a898ac2a4bb75 # initialize rs1
li x31, 0xeb0a66ff1d6567a8 # initialize rs2
remu x21, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x20c6fd9c54b95823)
li x7, 0x9225ec038f7997a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x20c6fd9c54b95823 # initialize rs1
li x12, 0xf933273930ba3e4a # initialize rs2
remu x7, x4, x12 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2dd6b65e070b916e)
li x19, 0xdcc418469fa2259a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd22949a1f8f46e92 # initialize rs1
li x28, 0x2cc52326b3804432 # initialize rs2
remu x19, x8, x28 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0xf1a09f963d516fa)
li x13, 0xd9c77239848c3b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb82cd6b540b048b4 # initialize rs1
li x4, 0x0f1a09f963d516fa # initialize rs2
remu x13, x5, x4 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x79466899dcd294b5)
li x7, 0x1c0842a8099da312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3fe85358bed6fece # initialize rs1
li x26, 0x86b99766232d6b4b # initialize rs2
remu x7, x29, x26 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
