///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-and.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.456656
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x0392c35174d0306a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3d3ae5ede8416992 # initialize rs1
li x9, 0x4ce87fd0871964f6 # initialize rs2
and x0, x4, x9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x50b3f95a9e3d4605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2df0cffb31777643 # initialize rs1
li x22, 0xf3c9b8e9a7933e06 # initialize rs2
and x1, x27, x22 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3e24f1d8897e0e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x953748a7e9fdc58f # initialize rs1
li x20, 0x0dbae1f68a204ce6 # initialize rs2
and x2, x8, x20 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1d40f95740d7b5b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5767251922590821 # initialize rs1
li x28, 0x0d6cd8c958c58498 # initialize rs2
and x3, x2, x28 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xab5cce9c4d0bcbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x60da03106f294c77 # initialize rs1
li x30, 0x6dd23255177e4410 # initialize rs2
and x4, x19, x30 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x413d79be495f8733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5178352af1596cca # initialize rs1
li x31, 0x7b13dd44fdd6eeb1 # initialize rs2
and x5, x2, x31 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4e2ee0f49f363f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf719ef8b5442ad13 # initialize rs1
li x3, 0x3f410f1a8daa966a # initialize rs2
and x6, x26, x3 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xf31ac1dd69c3f8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb0eb4935b8f62fbb # initialize rs1
li x5, 0x7129a0e1b26ed42d # initialize rs2
and x7, x2, x5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xfee80d17dde113e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x31e5e7d46f023194 # initialize rs1
li x28, 0xb443dc8e80cf8321 # initialize rs2
and x8, x14, x28 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x55a5df1300dce5e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc10ae88e27c30bfc # initialize rs1
li x24, 0x6180f878ef1ecd5c # initialize rs2
and x9, x17, x24 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xee2f17e54f5ca9db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x473168a7af726d78 # initialize rs1
li x23, 0xfe36d3451f127ed9 # initialize rs2
and x10, x21, x23 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x247f5a843c48a394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9a5f5ddc75e4ff90 # initialize rs1
li x12, 0x55b495203179c5ad # initialize rs2
and x11, x23, x12 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7bcd9e3f98ee84c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x516aea7f01c5411a # initialize rs1
li x13, 0x862a217a6fe00d88 # initialize rs2
and x12, x25, x13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd2c65fee4ebc6224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4b5dfb32a8d3ef6d # initialize rs1
li x31, 0x0eeeded73d128512 # initialize rs2
and x13, x10, x31 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1acf04c90b17b669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7042b9fece13d5a8 # initialize rs1
li x6, 0x70c54abf33089634 # initialize rs2
and x14, x16, x6 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x82235fd45313aa4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x439c2375d0c22c18 # initialize rs1
li x9, 0xea4c8c311d153401 # initialize rs2
and x15, x29, x9 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x71f16fc6accbfff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x41d5d66ade9d341a # initialize rs1
li x11, 0x78b279337ee88edc # initialize rs2
and x16, x13, x11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x12269acc60282b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3ba13d10dfeec00f # initialize rs1
li x6, 0x61b05b6f8a216554 # initialize rs2
and x17, x7, x6 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x68b8d6b127e38e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa550a57335599169 # initialize rs1
li x24, 0xab13ce325ba09443 # initialize rs2
and x18, x31, x24 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6a5e767f32104b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x45ed006d29095882 # initialize rs1
li x13, 0xc92ed35fbab8afb3 # initialize rs2
and x19, x20, x13 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x88240a1ad7ea5c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf0299a8e95adc883 # initialize rs1
li x15, 0xbfa444c0a2f70db0 # initialize rs2
and x20, x22, x15 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x037835874339b93f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x703e58058d6e8fa2 # initialize rs1
li x2, 0x47e91a1790825e07 # initialize rs2
and x21, x8, x2 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x811e3548408e972d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x135e594a1fef9c94 # initialize rs1
li x23, 0xe5aa47d498db9994 # initialize rs2
and x22, x2, x23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1f0a1e0ca0d22715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x005a17e683793b07 # initialize rs1
li x31, 0x6b9ecdfa8044a097 # initialize rs2
and x23, x15, x31 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0ac46199f98fbf11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb958f303e6240d02 # initialize rs1
li x14, 0xa5c41746d734eddd # initialize rs2
and x24, x18, x14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6dbf3981d7dbf8e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc485f1e56d00c4ce # initialize rs1
li x11, 0xe65690d973acc34a # initialize rs2
and x25, x31, x11 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0839b527fdcedf9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x84c6bd5ce9a6c225 # initialize rs1
li x10, 0xbdf9115a594f8902 # initialize rs2
and x26, x22, x10 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x625eb1152cf81779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x01e40aeed4efc2a1 # initialize rs1
li x14, 0x2b53103ea52eb766 # initialize rs2
and x27, x29, x14 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb7ccdca9362bbf51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb3f27fd154310bb3 # initialize rs1
li x21, 0xdd00407bc8cb3483 # initialize rs2
and x28, x13, x21 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6c03c3ea7f569fba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe91a97361dbcb5c0 # initialize rs1
li x20, 0x4cb86426ae5c72fa # initialize rs2
and x29, x11, x20 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x10982641f412f1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2283ddf9318c298e # initialize rs1
li x11, 0x9f7ec382554ab594 # initialize rs2
and x30, x25, x11 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xdf065614a265ce19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4e1f41ea74a24e19 # initialize rs1
li x18, 0x703b88f91d43db51 # initialize rs2
and x31, x30, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0xff3e38387d5c8596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7cbda26c4261fa11 # initialize rs1
li x6, 0xdc8452867259d9e8 # initialize rs2
and x4, x0, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x12, 0x3c9a4ef239fc1d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x47345ce4b4ffc24b # initialize rs1
li x9, 0x3a17bd242bbfa2dd # initialize rs2
and x12, x1, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0xa6e361e132ce3527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1b532fcff40a9e93 # initialize rs1
li x8, 0x40e82ba8deae705f # initialize rs2
and x10, x2, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0x1455f266cdae064d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7a01e3a5b7faedf6 # initialize rs1
li x4, 0x7458c02d49c4ccaa # initialize rs2
and x25, x3, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x8, 0xb1a0dba5f5a04d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x899a759d7507f0c2 # initialize rs1
li x21, 0x57ef2f0bcc8d5434 # initialize rs2
and x8, x4, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x15, 0xaca06d5fb3ed8fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x69d7ee444c1c19ef # initialize rs1
li x4, 0xe55dd912800fc314 # initialize rs2
and x15, x5, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x14, 0x7bc3bcae2755dfd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x40a7b918ab62a87b # initialize rs1
li x15, 0xb3d3c37a9c80b408 # initialize rs2
and x14, x6, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0xa5f11aa16c075981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x59709f53820cecdf # initialize rs1
li x11, 0xc860485c70b503ec # initialize rs2
and x24, x7, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xf724eba968f148de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f3fa99096c35f20 # initialize rs1
li x7, 0x77bd7bbadce8dd32 # initialize rs2
and x10, x8, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0x9322c5e0dab81ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc2ecef371df53a38 # initialize rs1
li x8, 0x87310b35b0d5644f # initialize rs2
and x23, x9, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x0ce9b05cddd0b36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x267fa03d78fc94d6 # initialize rs1
li x16, 0xfb4a35a7c569fd3b # initialize rs2
and x13, x10, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0xa074cdfc8f0575cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfe13119db7920335 # initialize rs1
li x1, 0x428981327f7c4217 # initialize rs2
and x15, x11, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0xe6ac38bc0b6cb776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc97e2647f79366fa # initialize rs1
li x2, 0xaba08f50fc7e0bb8 # initialize rs2
and x19, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x031f40a7ac24c995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2f0857797f986314 # initialize rs1
li x1, 0xc970a32c4a106a1c # initialize rs2
and x30, x13, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0xcabd4967ea4f5480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3490b7d3be4d64ff # initialize rs1
li x26, 0x6e6cabedab85e773 # initialize rs2
and x8, x14, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0xe98cadbc23696238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x94d2788ece223b1a # initialize rs1
li x5, 0xc25e7fe4c953f551 # initialize rs2
and x6, x15, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x4d91287d3971c99b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0b18faeb78e3388d # initialize rs1
li x10, 0x53d1f7051bfa2eed # initialize rs2
and x18, x16, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x79eab0688e3e7fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x016c5e2947af3b7e # initialize rs1
li x21, 0x232fed1f6a6aabb7 # initialize rs2
and x26, x17, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x29, 0xad66a811855d8619 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4dc63f8dd943c665 # initialize rs1
li x21, 0x220e85800f790431 # initialize rs2
and x29, x18, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0xc44deb2af64595f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x10a7834d4e309f93 # initialize rs1
li x10, 0x77a58d8c3c69e5e6 # initialize rs2
and x8, x19, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xba16dc5a4179bf86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3fad1c3d57406821 # initialize rs1
li x4, 0x101cbe89b7c1456f # initialize rs2
and x16, x20, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0x6e7c74e2bb059a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8fc078a446fb2e6d # initialize rs1
li x26, 0xd118af1aca6974bd # initialize rs2
and x9, x21, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0xef8b34678bcd7ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe40cd8b18dfa0655 # initialize rs1
li x13, 0x557c9c72415e1a3c # initialize rs2
and x11, x22, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0x11c4b88a021b9572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf8504d26d70ca124 # initialize rs1
li x9, 0x753e7418e2ef95aa # initialize rs2
and x1, x23, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0xca6951bfdd651bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbdaa223419f46640 # initialize rs1
li x23, 0xb92550d10cf885ff # initialize rs2
and x18, x24, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x13, 0x43f2223c93d6ee75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0c72061d64afa9e1 # initialize rs1
li x1, 0x434db71a70e9cb89 # initialize rs2
and x13, x25, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x19, 0xa00f2d05f0728ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1778f21f1041b470 # initialize rs1
li x7, 0x284c63c7592d0eef # initialize rs2
and x19, x26, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x5f3e4f6e46e492d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb7f88910c964d1f4 # initialize rs1
li x29, 0x6515e20369d5cf34 # initialize rs2
and x21, x27, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0xb81489ffaa127ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd9e72c790d81b113 # initialize rs1
li x20, 0xcb97866fd8725601 # initialize rs2
and x19, x28, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x9, 0xdd321632506dfe73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb0dc860ed84e75ef # initialize rs1
li x30, 0x9bade3c2d075488f # initialize rs2
and x9, x29, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x24, 0xec29fff946d79d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x617c579e4ed68e68 # initialize rs1
li x18, 0x02552061ae557f40 # initialize rs2
and x24, x30, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x26, 0x8ba11db5c427bd27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9c1d11fd0d8ddcf5 # initialize rs1
li x13, 0x08a65ecab774f091 # initialize rs2
and x26, x31, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x167f89b7a060e956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5e337afa718b9901 # initialize rs1
li x0, 0x58aeb02dddac12a8 # initialize rs2
and x2, x10, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x58297d9cd514573b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x462d3ef6097094fa # initialize rs1
li x1, 0x6641605cf43327c1 # initialize rs2
and x28, x25, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0xecf513c6d8efaf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd7a69daf09c6fb1a # initialize rs1
li x2, 0x44fc6a0386bdb67e # initialize rs2
and x1, x25, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x9890826b8457170d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcc0631cc90c80c3d # initialize rs1
li x3, 0xdc3c37faae72c915 # initialize rs2
and x14, x31, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x7, 0x8e366383370fb395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1b16ee11bbf1de42 # initialize rs1
li x4, 0xb74d0cbc893f1e62 # initialize rs2
and x7, x18, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x11, 0x679ea677c080fb9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa6cc8b9806667522 # initialize rs1
li x5, 0x4e0fe8857de2a4b3 # initialize rs2
and x11, x20, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x8, 0x0189ac3174264b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x202d75d6039f0dbc # initialize rs1
li x6, 0x0b18e157fbbe6721 # initialize rs2
and x8, x4, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x16, 0xf83ed54d33650630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb800d63f61c478a8 # initialize rs1
li x7, 0x0f235c6b865cbceb # initialize rs2
and x16, x5, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x1eee0495ea2a8e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf6ca2f12aa387300 # initialize rs1
li x8, 0x92d81f3f2692479f # initialize rs2
and x13, x6, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x8e705138b3f0006e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd1fdb39973df5665 # initialize rs1
li x9, 0x646490981971e6e4 # initialize rs2
and x16, x22, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0x3dac4dec38ccee63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2aa98b109dc618f6 # initialize rs1
li x10, 0x529aec985b20da30 # initialize rs2
and x7, x13, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0xd047a03d3d458d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7aa3cc41eddb684b # initialize rs1
li x11, 0x2cf6b1bfb844be26 # initialize rs2
and x25, x24, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x9a667ce383b799ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x119347b40e4e4e4b # initialize rs1
li x12, 0x35dca137230ba698 # initialize rs2
and x1, x14, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0x686b71f5805ec18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7b8de048d3557a15 # initialize rs1
li x13, 0x2e155e8a75cfb6db # initialize rs2
and x5, x21, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0x8c3fa5e272094d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6d955c9cac500aa8 # initialize rs1
li x14, 0xb3ea1a6e0b9e1eb6 # initialize rs2
and x22, x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x02625d7511f6ca5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8154b249789de849 # initialize rs1
li x15, 0x9c0340e7f549b175 # initialize rs2
and x20, x26, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0xb97fd93073a5b093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x86cd281aec074e7f # initialize rs1
li x16, 0x598b7c24b2d2c315 # initialize rs2
and x24, x1, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x233099e24fa35d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfc1d9e3908e9d0db # initialize rs1
li x17, 0xf3ce29e7abd12ee3 # initialize rs2
and x23, x24, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0x3f2ff2ae8a6f64e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd28edfff531c8eb7 # initialize rs1
li x18, 0xd5f910533e377cda # initialize rs2
and x20, x26, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x4, 0x6b138906179aad24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xeaeffeb4aaf96be4 # initialize rs1
li x19, 0x06235e8c0ea3ec77 # initialize rs2
and x4, x27, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0x00b26b35a09a77c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x925770e3d8356454 # initialize rs1
li x20, 0x5683697a31b005ae # initialize rs2
and x9, x19, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x1, 0xfd451880f05ee3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf02533c84a2b7d6f # initialize rs1
li x21, 0xdf8b2067df358cab # initialize rs2
and x1, x6, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0xf16cb706dacc2d8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb1dcae855688ef38 # initialize rs1
li x22, 0xeadaef4a957b224e # initialize rs2
and x19, x12, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x4, 0xeedae5746be6ccf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa8eda4e08579b2b0 # initialize rs1
li x23, 0x1d8835c49083ed85 # initialize rs2
and x4, x7, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0x0f45fdf33d9dd048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x13c689bcb3c6d91e # initialize rs1
li x24, 0x37dad81bcec994e0 # initialize rs2
and x5, x3, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0x080cf694b6985ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x516ca510c1c42c6b # initialize rs1
li x25, 0xf860ebacff222914 # initialize rs2
and x23, x26, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0x5d19511c01469c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x753fe23b7a572aae # initialize rs1
li x26, 0x2f9a151aa9b21bb8 # initialize rs2
and x23, x15, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x312d7a9f5bd1c730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7c7df008a98f92cb # initialize rs1
li x27, 0x2c362b50d0991b0a # initialize rs2
and x9, x3, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xc38a25e53d25eac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa2f7babfb72cf836 # initialize rs1
li x28, 0x74b6b93fe612e36d # initialize rs2
and x11, x18, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x89622ebd2285cba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6e2ce76526d1fd58 # initialize rs1
li x29, 0xb084905374a15fdd # initialize rs2
and x3, x26, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0x0d4f5bbe8ec47374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5be515c363f575ca # initialize rs1
li x30, 0x2d37248809b85263 # initialize rs2
and x6, x9, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x6b1fa71c953506c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4e7a468d2a7eee5e # initialize rs1
li x31, 0x47aca95020d687e4 # initialize rs2
and x9, x17, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x7e0c7295d7aacca8)
li x25, 0x3376327bafdfad34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3376327bafdfad34 # initialize rs1
li x0, 0x321e87164bb20dbd # initialize rs2
and x25, x5, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x3fe97b838dd2f28b)
li x11, 0x3fe97b838dd2f28b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3fe97b838dd2f28b # initialize rs1
li x17, 0x3fe97b838dd2f28b # initialize rs2
and x11, x0, x17 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xa0bff6dcc406c8b1)
li x11, 0xeec4066946cc35bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa0bff6dcc406c8b1 # initialize rs1
li x5, 0xa0bff6dcc406c8b1 # initialize rs2
and x11, x22, x5 # perform operation

# Testcase cmp_gpr_hazard raw test
and x22, x18, x9 # perform first operation
and x25, x22, x2 # perform second operation

# Testcase cmp_gpr_hazard raw test
and x17, x9, x24 # perform first operation
and x16, x25, x17 # perform second operation

# Testcase cmp_gpr_hazard waw test
and x13, x2, x29 # perform first operation
and x13, x20, x18 # perform second operation

# Testcase cmp_gpr_hazard waw test
and x11, x23, x13 # perform first operation
and x11, x15, x9 # perform second operation

# Testcase cmp_gpr_hazard war test
and x19, x10, x12 # perform first operation
and x10, x23, x20 # perform second operation

# Testcase cmp_gpr_hazard war test
and x30, x31, x20 # perform first operation
and x20, x1, x10 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x9b3002fe2acf1662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x0, 0xbf7c59ba9720258b # initialize rs2
and x9, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0x95f595284a101b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
and x2, x13, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xaa6ea12710afe691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
and x24, x29, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0x8ec7030a66ab5062 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x0, 0x90ad252b11f8dd94 # initialize rs2
and x22, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0x4bc557fe343a6ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
and x21, x27, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0x084303abfe35caef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
and x29, x9, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x7d787216efd35a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x0, 0x35ebb61b2a446c4d # initialize rs2
and x21, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x4e070b79cfcb3508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
and x13, x15, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xb34f21e04079035d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
and x10, x7, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x3, 0xebe7ad2dc5b6ed23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x0, 0xaa3d7f4cbb562520 # initialize rs2
and x3, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x28, 0x54e5bc940aad9ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
and x28, x4, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0xe4b8f8561ab066e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
and x10, x4, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0xb72c5e9ef62063fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x0, 0x89232aa32c330bfc # initialize rs2
and x27, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x29, 0x421ef6863a82ff67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
and x29, x23, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x8, 0x921ce5676ba6cef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
and x8, x11, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x5, 0x2e550d9270ead1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x0, 0xa385e96b42ccc8fa # initialize rs2
and x5, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x31, 0xf2a3237a42978399 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
and x31, x21, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x30, 0x6d2cbcc1930c12a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
and x30, x29, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x13, 0x3dc035eca1618352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x0, 0xb21b0cbe43aa1bcf # initialize rs2
and x13, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x9, 0xb512c1ebd00bdcee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
and x9, x28, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0x7347f2e8c749a87d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
and x15, x4, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x31, 0x760cb46c2a054334 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x0, 0x1ddcbda8225c7bec # initialize rs2
and x31, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x18, 0x314faf1e7530c01a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
and x18, x5, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x29, 0xa465b10864771da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
and x29, x11, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x8, 0xe9c1eab2266af34c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x0, 0x8a0050d136e659ee # initialize rs2
and x8, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x21, 0xa34d10d75ad3518c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
and x21, x19, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x21, 0xd3086792c4512a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
and x21, x26, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x14, 0xd349c6d4bf84c12d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0xc69f4b50e5bccfd3 # initialize rs2
and x14, x7, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x6, 0x4d181ee1ca74299e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
and x6, x13, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0x8dbf5d26d51f9804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
and x10, x16, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xbc6009a3445fda05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0xf00761010ee96d48 # initialize rs2
and x16, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x86cadcdfbc5e0943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x13, x17, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xab25a6de0a82bc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x26, x19, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x8, 0x258a88a7d3c8fbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x0, 0xe5e5e12a54fc75be # initialize rs2
and x8, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x22, 0xb3e84697159c6d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
and x22, x16, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x31, 0xf40fe044d370dd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
and x31, x2, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x7ceae845bfbc486b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x0, 0x5306e2c035446671 # initialize rs2
and x17, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0xc755ab9028697982 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
and x20, x29, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x976c80fb265f524a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
and x11, x28, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0x51df6ff6aead54db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x0, 0xf5b1970de93fba6f # initialize rs2
and x14, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0xf4158ddc33c39b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
and x31, x21, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0xfb17ef98a570dee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
and x12, x10, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x10, 0xedaf897b5d947cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x0, 0x30d60849d679ab1c # initialize rs2
and x10, x4, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0xc1c208cc8acc2596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
and x5, x13, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x10, 0x95c10702fdaa0e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
and x10, x19, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x26, 0xac3b1c2f3f28468f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x0, 0xfe137c46cd1a9c1c # initialize rs2
and x26, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x29, 0xc71381aa8778ff45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
and x29, x21, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x25, 0xb1a6077b064b067f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
and x25, x9, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x1a1b776002a58b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x31, 0x8bb55345656b209a # initialize rs2
and x8, x30, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x2da7d9793df05984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x26, 0xd87a03a4f043543c # initialize rs2
and x1, x12, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x4, 0x2248fed64c79b5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x9, 0x57c83ff65be3269c # initialize rs2
and x4, x14, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x17, 0xd75ef6d71c76825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x27, 0xd18329f8414e9921 # initialize rs2
and x17, x12, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0x98be74bfc0f76242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x23, 0xc80615f45dee40a4 # initialize rs2
and x30, x7, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0xca7170605a4d0097 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0x52c1f5f132fcfa7a # initialize rs2
and x2, x24, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x024cf7a6b653f4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x24, 0xc633dd28ba0d1f41 # initialize rs2
and x6, x17, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0x8f3df7efc0b7d8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x25, 0x38a476c6dd5a8292 # initialize rs2
and x15, x6, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x19, 0xb310dadd9f2a244e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x18, 0x3b37f018a38babb8 # initialize rs2
and x19, x1, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x28, 0x2e06eef5cfc85a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x407a050e36667b7f # initialize rs2
and x28, x17, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x798d4502224d13f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xb39ad61074e7eb6f # initialize rs2
and x31, x4, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x4, 0x3d337c632f02cea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x27, 0x5261c238046bbe38 # initialize rs2
and x4, x23, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x6e647afe99a45dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x22, 0x495b8fff08b9595a # initialize rs2
and x19, x7, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0xd145d65f0d731a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x28, 0xf8ed2269a83b9855 # initialize rs2
and x3, x15, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0ff0e0256adb1644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
li x2, 0x37c7fed88d2b609a # initialize rs2
and x9, x22, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0xc90fe093bf68e0b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x0d60ac1fcd12cb5b # initialize rs2
and x13, x22, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x989cbf1a085f4caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2f4fa705f8c99023 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
and x10, x27, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x87e5f18daa783b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd31b6b61b88d8773 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
and x22, x12, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x9f1194c7d14a49fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa02577dc3a35bd9c # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
and x12, x3, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x7, 0x9c57846a4da44e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x617df4b4721157cf # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
and x7, x1, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x15, 0xfd4ba3013fc4b593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x20213bb374c96d18 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
and x15, x13, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x20, 0xd0596ab454d3e23d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd974029e0554be03 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
and x20, x24, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x27, 0x2e41c0689e0cf3ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4d01980a77b616bc # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
and x27, x11, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0x87e2259e896e19c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbd8e1db19f572eac # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
and x8, x14, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0x6a3bf1e8efd942ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x633ebb349ad23c94 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
and x15, x16, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x16, 0xd461b8fb4cbc079e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfcc751341b5fd7a0 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
and x16, x26, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x36ec42d587d8edff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9b6d73203b897667 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x31, x24, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x8, 0x600f0f0fb1929665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4f213169e2a510e9 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
and x8, x9, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x70d337a55024fa34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3cd7cb4c4ae89f99 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
and x28, x24, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x0257bcb874dca3b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x71b1dde0f98e7443 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
and x23, x13, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x28, 0xe464d23116725348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfe7f3b046e985d79 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
and x28, x1, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x55ff7941d4103a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x742eb65b99fb088e # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
and x31, x23, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x1abaa1d97b516f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
and x30, x12, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x4, 0x7e7f89a438bde15b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
and x4, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0x67390f960a90401c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
and x22, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x1b88574616286338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
and x12, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x688ffed42693e813 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
and x3, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0xe49c6867f1f16487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
and x8, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x14, 0x119305b5cc1e8636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
and x14, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x26, 0x6c6f7608b43d9906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
and x26, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x15, 0x4fd98e7428961cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
and x15, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x16, 0x56c6edcb5ff635d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
and x16, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x9d263ed1a012b87e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x9, x17, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x29, 0xf120d94f36e3152d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
and x29, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x0b18753df7698201 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
and x15, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0x701fd34a1b6c2440 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
and x8, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0xc632c120730aa2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
and x7, x27, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x22, 0xd14caf7660be2fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
and x22, x10, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0xdd261feb894c41f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
and x10, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x89b3537f9e813573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
and x14, x25, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x3206e9e5c196645e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
and x30, x15, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x23, 0x73438c7f7c6f324b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
and x23, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0xc7f938eee8966edf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
and x2, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x10, 0xc77cbf27237d2124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
and x10, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x13, 0x28b95d0e5108f3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
and x13, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x6, 0x30aa456f6eec58a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
and x6, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x9, 0xb61a4b8123e01df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
and x9, x24, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x13, 0xfe1f2729f0985c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
and x13, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x20459b10cb9ffaba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x30, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x19, 0xa048c8cf0a9d6d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
and x19, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x29, 0xb8ea18f72f986b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
and x29, x20, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x0dab40842d034cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
and x28, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x15, 0x10bc79ec1038f498 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
and x15, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x18, 0x7ca56b5731bbb4f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
and x18, x22, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x25, 0xf8388654c5f71382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
and x25, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0xb425d9af0f439939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
and x27, x18, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0xa65e44cb9736fae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
and x20, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x2, 0xfcf4b287c326a3b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
and x2, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x30, 0xfd6a54354f46916d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
and x30, x15, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x29, 0xa235b3ac07a82de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
and x29, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0xc06ce843a718418e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
and x17, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0x3d271f5f9a4feb4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
and x2, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x8, 0x54133c3427131fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
and x8, x25, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x27, 0xf5b4aa755be6fcf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
and x27, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x81736304ddf91075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x4, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x6, 0x28fb889f6746ce0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
and x6, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x3e115cfbce323e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
and x8, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x2e6bd093b5449957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
and x30, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x26, 0x543cb8f67e8c9b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
and x26, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0xd2f5aa054b9ae63d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
and x21, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x21, 0xecc1465a111ea55f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
and x21, x10, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x29, 0xe4571beee0249e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
and x29, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x24, 0xf50505dfccc64d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
and x24, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x13, 0x4095c194aec5c752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
and x13, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x31, 0xb60c2f02cc8cb0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
and x31, x9, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x22, 0xea6ffe9520476aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
and x22, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x1, 0xacd1d64b1e826e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
and x1, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8d8be0bc1afc9b7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
and x27, x15, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x15, 0x4ba25d9d1a4f98bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
and x15, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x17, 0x8ef8043c65af6648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
and x17, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xa030100a0260682a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x31, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x26, 0x6307ee0e911587fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
and x26, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x14, 0xb1ca1830fd583f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
and x14, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x16, 0x3e13c3ea14077659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
and x16, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x1, 0x1c3e4c6c1e5720a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
and x1, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x8, 0xcd27a14fa4a3032a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
and x8, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x21, 0xd05fd068463d6556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
and x21, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0xa27d2de578e638d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
and x3, x29, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x1, 0xf6ab1e064f67519b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
and x1, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x37276bd904c97cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
and x11, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0xfbc0e41e806ecac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
and x23, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x8, 0xbe095f8be80be439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
and x8, x17, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x10, 0xe84824bc2315cbc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
and x10, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x11, 0x397a984786d53974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
and x11, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x27, 0x5bcaa46ca00e6ee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
and x27, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x15, 0x8a6e2f50bd89a530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
and x15, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xa282ec748592dde6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x9, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x7c8b2862dbf3f7f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
and x12, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x18, 0x868863e66a2b36f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
and x18, x11, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x18, 0x7f3084e24a9b4178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
and x18, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x24, 0xf367458ff7c383fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
and x24, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x4, 0x095b9ebaa4cb6938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
and x4, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x18, 0xabf21e43e42950e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
and x18, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x13, 0x27a3ef21ea9a7911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
and x13, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x7, 0x3feb05155089a94b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
and x7, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x19, 0x03772199c4992095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
and x19, x6, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0xac8eb16aa5957de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
and x7, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x670499466c45af02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
and x5, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x112d4fdf79b305a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
and x12, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xffd34ba8a66f7532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
and x27, x30, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0x1cf0d944b4b04bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
and x12, x11, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x8, 0xf1062bbb62bd8187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
and x8, x7, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xf1001ea8acc8d7d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x17, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x5, 0x3df8def68472b5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
and x5, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x27, 0xdfc0d3372875e8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
and x27, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x28, 0xe57e73eef3c7be64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
and x28, x31, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x5, 0x8eb3c41802eefdfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
and x5, x3, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0x2a797a0408024cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
and x23, x20, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0xa17b220ff85e0fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
and x1, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x15, 0x62b1b86ff6088298 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
and x15, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0xf85245d592a8c14a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
and x20, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xb2051bcbcd48c848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
and x3, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x6, 0x3ea87b8ffbbef5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
and x6, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0xf5ae52d3e793dae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
and x12, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x1, 0xdd0d363ea229241c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
and x1, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x11, 0xb61d8b9b42bc6503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
and x11, x27, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0xf972954df8554997 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
and x9, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x2, 0x7e6eb0c4ff8a60a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
and x2, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x6892327733bdffd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x12, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x5, 0x6112031018657a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
and x5, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x84083e061e3efe15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
and x15, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x11, 0x088ef869587ed8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
and x11, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x26, 0x14b7c9934cc6b3ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
and x26, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x22, 0xc5b82156e96581f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
and x22, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x25, 0x8641da78494c4b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
and x25, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x12, 0x907575a683f616a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
and x12, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x2, 0x8d3ddd69ebb3e575 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
and x2, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x15, 0xafbb001d13220917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
and x15, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x11, 0x1e81cea0e5d3e61e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
and x11, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x31, 0x34182f549b608788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
and x31, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0xffc0b102014ed170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
and x18, x1, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0x39e82c2787e6f7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
and x3, x16, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0xd1128aa782ad666e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
and x6, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0x6ba20bab7069bb22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
and x13, x15, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xb2b8069f97198a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x13, x17, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x24, 0x41fe881d839a8a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
and x24, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x24, 0x0624bc82a731129e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
and x24, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x31, 0x84209f543c379f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
and x31, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x28, 0x1af414e7bcff9849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
and x28, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x18, 0x6bd7ef4d2a16b4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
and x18, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x13, 0x108a0d4d001faa3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
and x13, x24, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x1, 0x8248e914e7020459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
and x1, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x15, 0xfc33287242388bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
and x15, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xf7c4ddfb1019ae40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
and x18, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0x42b37829d14ff21c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
and x24, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0xdbae981a6aa6b5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
and x27, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x21, 0xa46084ca6a3ab14a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
and x21, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x25, 0xc0cd1da33632b307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
and x25, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x3, 0xcc3fc3bf5a17102e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
and x3, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x27, 0x24b6ad1db3680503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
and x27, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x4895d0c516e441a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x22, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0x5ff318ccea431328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
and x17, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x24, 0x18b41cfb3f7f0aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
and x24, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x3, 0x37f9d81837bf86ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
and x3, x1, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x4, 0xbc6a8560c21f887e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
and x4, x13, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x2, 0xb7463383f82a0381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
and x2, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x9, 0x1d040f74115ee4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
and x9, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x21, 0x1574e36c5b11c309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
and x21, x16, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x2, 0xadeb5d03627127bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
and x2, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x20, 0x4cd192b410359150 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
and x20, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x6, 0x92ce24abd0fa30e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
and x6, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x21, 0xa0a80792a096cbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
and x21, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x8, 0xa4c26f6bca57464c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
and x8, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x26, 0xe5c18a02693602b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
and x26, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x3, 0x0910885d047c676e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
and x3, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x29, 0x9e85e0f3608a863e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
and x29, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x2db0e7b944765d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x2, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x12, 0x8312ca5a1d575771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
and x12, x9, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x2, 0x19c744ea17f61065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
and x2, x31, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x15, 0x94f2892c70e6fcb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
and x15, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x1, 0x679f1fdc1802fbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
and x1, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x22, 0x8d33abf9f7303201 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
and x22, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0x0b8ceb103473fedc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
and x31, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x6, 0x8285b97421bcbb14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
and x6, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0x2a59183997cb2560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
and x16, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x9, 0x79bf5768d6fb3ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
and x9, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x17, 0xc94c97a652b10c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
and x17, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x6, 0xfce047e6def26e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
and x6, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x13, 0x6f2e8392a41d2443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
and x13, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0x6bfa8a8da102605c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
and x3, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x5, 0x59cb87d654ed41b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
and x5, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x29, 0x2b8aba44f4c0edaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
and x29, x23, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x1c60469d9e14d2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x19, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x8, 0x1181d51c86c4c213 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
and x8, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x7, 0x644c51556667ecf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
and x7, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xca8c883b48dab96d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
and x13, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x8, 0x0bfe8e43678352d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
and x8, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x1, 0x0e6c337fdde614f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
and x1, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x22, 0xa20a1f6276646bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
and x22, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5753d73c89cc449f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
and x27, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0x5e7be0dc22b4690d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
and x28, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x24, 0x7a7e67b092eaf779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
and x24, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x27, 0xbdf1b3c50322c9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
and x27, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x9, 0x8debc674fa2b0c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
and x9, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x26, 0xc4d8070c2515c9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
and x26, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x31, 0xcf256383eefa9268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
and x31, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x4db2298e220a685a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
and x22, x18, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x16, 0x562a7ed8e72b19d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
and x16, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x0d937ab1a86ad725 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x4, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x13, 0x0b12ec46d530b3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
and x13, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x12, 0xc61bce55a1e9ec8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
and x12, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x12, 0x3c5fb65603d6a861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
and x12, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0x18f03cb691231c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
and x27, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x12, 0xa83b46965049aa2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
and x12, x19, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0xaee609c570f521de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
and x31, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0xcb3d7bceab31695d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
and x28, x19, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0xe5c64c4db2e3f443 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
and x22, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x16, 0xf81db3f89d04db08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
and x16, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x12, 0xc976b58220200e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
and x12, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x8d9702082f41a279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
and x12, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0xd1b144e035365a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
and x19, x21, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x15, 0x55215bf4e9794dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
and x15, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x16, 0x52a40032af95efc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
and x16, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x3, 0xac9e62c98d64d6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
and x3, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x99f52a098e9b5275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x30, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x25, 0xbf5a2ae6e3f04bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
and x25, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xdf29e8e537ec70ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
and x7, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0x51d4521ce6c69ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
and x14, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x9, 0x662a41705f5b96e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
and x9, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x27, 0xd24efa64267089e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
and x27, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x48eca62b0c310160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
and x19, x2, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x22, 0x284edfdc1dff6cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
and x22, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0x1d1154192bcf05d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
and x21, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x8, 0xd63dd243ee8bf2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
and x8, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x25, 0x96532c46459c1e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
and x25, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x27, 0xa92830052bbf8c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
and x27, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x3a47891350d82d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
and x19, x10, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x3e61ec280d096c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
and x17, x28, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0xb46a2a6c83021b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
and x22, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0xa0b0daedcf4cfefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
and x31, x26, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xc38576f6636cc8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x28, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x16, 0x2fefbce9580a16a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
and x16, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x02e477f1e15380be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
and x6, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0x1db432c1aa2eefdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
and x28, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x7daa3e6c4be24c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
and x29, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x21, 0x754a8eceeac473e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
and x21, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x1, 0x2869aa3c582de134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
and x1, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0xb3d8b6a111006ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
and x2, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x11, 0xfede73d06ec06644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
and x11, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x27, 0xf2e0a33c448b0612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
and x27, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x8417979e09166979 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
and x7, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x8, 0xe1d196fc28f89652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
and x8, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x4aa413dd6f2b7732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
and x18, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x27, 0x6202cd03e4dfe42c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
and x27, x5, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x17, 0xe38415f7ea86bf4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
and x17, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x30, 0x4337071667dc8833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
and x30, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0ca909522264d32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x25, x9, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x6, 0x3cb014d58b505586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
and x6, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x6, 0x07b181e236b9dc99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
and x6, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0xbbe1d6c673119df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
and x26, x2, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x17, 0x7325710435c92631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
and x17, x1, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x30, 0xc2dd114569cf6859 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
and x30, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x5b15232afa85207f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
and x13, x30, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x11, 0xf64786a146f1c3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
and x11, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0x35ef04ec20e34fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
and x30, x16, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x12, 0x9b695ae349070394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
and x12, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0xe33c48e6e1278ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
and x28, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x21, 0x291880244c5df9cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
and x21, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x5641dd51b330d34d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
and x29, x18, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x15, 0x573c3f638502061f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
and x15, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x12, 0x1a52a8cdca56ba4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
and x12, x6, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x26, 0x71437a966b654576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x1, 0x5bbc887763ae86f7 # initialize rs2
and x26, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xec8012ef5c828671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
and x9, x18, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x5, 0x9c4a2c041f99d121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
and x5, x16, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x25, 0xe27848f4ff6e66ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
and x25, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x21, 0xa2b7129c5092ee9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
and x21, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x4, 0x4bc65956fb220b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
and x4, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x8, 0x673121d864ee627d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
and x8, x9, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6dc6b056e1066e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbe13ed5d2f12b27f # initialize rs1
li x11, 0x45bfd03a79afb7da # initialize rs2
and x0, x0, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe2e35d71adf486c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9bb74585ccbc816e # initialize rs1
li x15, 0xa42fdadf0c3efdf3 # initialize rs2
and x1, x1, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x32fd7dcdc6ae2786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2b15b4e848f38104 # initialize rs1
li x13, 0x690cce49d27b4647 # initialize rs2
and x2, x2, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x87869643b4398930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb154fdd061cb1d57 # initialize rs1
li x26, 0x73796ed0776fad6e # initialize rs2
and x3, x3, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x87f336a65ca71c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc21ddb8d6d7dc44e # initialize rs1
li x12, 0x9309942aad2a8793 # initialize rs2
and x4, x4, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xf06037204f301ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe759b48b83d21083 # initialize rs1
li x19, 0xa8b9f3c3cd0463ac # initialize rs2
and x5, x5, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x7aae3869cfedbcad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x119b391838c57217 # initialize rs1
li x13, 0x313df4b454e48f22 # initialize rs2
and x6, x6, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x7b57cd1fff9ab6da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xff7ec24616626a7b # initialize rs1
li x25, 0x12fab4b3f1234e2a # initialize rs2
and x7, x7, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3f0aa5c7c67ced3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x36386c4397a41280 # initialize rs1
li x23, 0x19726a4b0a3a6adc # initialize rs2
and x8, x8, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5e6cdacc882de9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x152f33a4b1490983 # initialize rs1
li x4, 0x88c7606b2fee42b4 # initialize rs2
and x9, x9, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2aa17539aa93a509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x18a888fcf10f6026 # initialize rs1
li x21, 0xb2edd524e4b2a086 # initialize rs2
and x10, x10, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xfba56500921af885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8854eae79b5f7e42 # initialize rs1
li x9, 0x5658a9f9c6963c1d # initialize rs2
and x11, x11, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb80c194285788d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9ea7bea9cc4ab758 # initialize rs1
li x20, 0xdfa081acc5838585 # initialize rs2
and x12, x12, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcfda35f891fc9574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe8bb4fef2594d8a4 # initialize rs1
li x3, 0x6d724189fac547d3 # initialize rs2
and x13, x13, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0348c097eef5de8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x75ebf77a90746179 # initialize rs1
li x17, 0xd0d6fc101f8af00e # initialize rs2
and x14, x14, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x50d7c0df4a1f4056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x94e7477551505de2 # initialize rs1
li x24, 0x66ee6f19cf4e81f9 # initialize rs2
and x15, x15, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb8ced6113c4412cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8f031ac72e916505 # initialize rs1
li x13, 0x39102c1f3392aa8c # initialize rs2
and x16, x16, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb9a29849cbef75d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3629b4910a8cf300 # initialize rs1
li x5, 0x29fe75bfc98f26d7 # initialize rs2
and x17, x17, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x76a26cf3b4053e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9dd8e439411e67b5 # initialize rs1
li x24, 0xe92c5790618e953f # initialize rs2
and x18, x18, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbcb55f71ce0f5644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x471f8363d9ff43af # initialize rs1
li x12, 0x1c1a36cdc1259fdc # initialize rs2
and x19, x19, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc4eeb5934f401053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9813ebdaa5bcaeff # initialize rs1
li x20, 0x774f3fe8b6821cc6 # initialize rs2
and x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6b3f0a108cb83de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x76989b3c24b61dcf # initialize rs1
li x21, 0x051cd4f641b56864 # initialize rs2
and x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x40b836887ab70c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x888f562737e114e8 # initialize rs1
li x9, 0x0e2eef11c4a2c3d4 # initialize rs2
and x22, x22, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfa12a549999db743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9cd8d28d066a0966 # initialize rs1
li x13, 0x4f60189c8f3eb4b3 # initialize rs2
and x23, x23, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0f8e57cee2747842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x57f0d5e1d3911b11 # initialize rs1
li x22, 0x2499c92a302051c7 # initialize rs2
and x24, x24, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x413b0c745b53c4f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3ebbf12787bbeb22 # initialize rs1
li x1, 0xeacf8fe9894fe38e # initialize rs2
and x25, x25, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa485fc5c2a3dba84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe9933a30f9cd362b # initialize rs1
li x12, 0x22e5b55fedc83472 # initialize rs2
and x26, x26, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0043c7297ed7d69f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x53ed421e4d35b4e3 # initialize rs1
li x5, 0xdd7ba496d1d7909c # initialize rs2
and x27, x27, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2f1e77fa7ea93f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa936f413322a0473 # initialize rs1
li x22, 0x68fdb9e8bfc690c5 # initialize rs2
and x28, x28, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xce9f357ca3897617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x099d6918fe6703ad # initialize rs1
li x12, 0x99e5a2bf668ec9a4 # initialize rs2
and x29, x29, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf338a691e37bf294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x91a272b31999ae27 # initialize rs1
li x11, 0xb76dff83e2f8eb15 # initialize rs2
and x30, x30, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd7333142a41e008a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaeba4c0ac9016e24 # initialize rs1
li x6, 0xaa6fcdab26ba639b # initialize rs2
and x31, x31, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x4f6fe739d45dc9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4a31a9cd0761de90 # initialize rs1
li x0, 0x09da1acc500bbd19 # initialize rs2
and x0, x22, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x6d65bb1b53a76c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x87273b52899b089f # initialize rs1
li x1, 0xc80b842bee93904c # initialize rs2
and x1, x30, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xaf28b69ec5997262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc6d3aca4ed38917b # initialize rs1
li x2, 0x0856ce3e927ba26a # initialize rs2
and x2, x16, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xa0a445314b8faba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3d91f0fde0fa24c8 # initialize rs1
li x3, 0x948ba17f5e5474c3 # initialize rs2
and x3, x1, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x87d040ab7dba9028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2d73796261caebc1 # initialize rs1
li x4, 0xe09338260ef99880 # initialize rs2
and x4, x21, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x2f8559d5247ee079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdd643a10d627cab1 # initialize rs1
li x5, 0xa5d8849a3650f9fc # initialize rs2
and x5, x17, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xf91c8e8479fb0078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf87b7096c776f372 # initialize rs1
li x6, 0x3e92482577a702f4 # initialize rs2
and x6, x11, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xe6e1df652dfe2a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe5979e5ee882b2ed # initialize rs1
li x7, 0xa7b5e92aca601856 # initialize rs2
and x7, x6, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xa1bad899cbdb3572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7cb649af970f6528 # initialize rs1
li x8, 0xd5307c420aabef1d # initialize rs2
and x8, x26, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xcf0cc14d490c97e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf4fe88a0ba48cf97 # initialize rs1
li x9, 0x6ece4132797f9a12 # initialize rs2
and x9, x28, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x733cce4427233dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6a5521a112a7702e # initialize rs1
li x10, 0x39ee295475817348 # initialize rs2
and x10, x7, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x25ff75bb9f1ede0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa3b37ae166280a00 # initialize rs1
li x11, 0x19859a915407cd32 # initialize rs2
and x11, x10, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xdb7c911f9f1650da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x32b670d51fd7e902 # initialize rs1
li x12, 0xa5423090a821fe2e # initialize rs2
and x12, x27, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x45629f9d2b8bfc26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xab1ea4a4d2964ec9 # initialize rs1
li x13, 0xfc988a1a7ebb3435 # initialize rs2
and x13, x12, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x260a88732e7f3947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x35663a5594cbcb2f # initialize rs1
li x14, 0x52b4c1afc1cf9676 # initialize rs2
and x14, x5, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xda7140c3e96d1b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbb3e082fc20c2aa3 # initialize rs1
li x15, 0x259f862419ce077b # initialize rs2
and x15, x3, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x5726010f2603b479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80f4c32f9cb47bdd # initialize rs1
li x16, 0xd5bb200d867cfece # initialize rs2
and x16, x15, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x45a48ccb342e39c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x14d3d826b82db4cb # initialize rs1
li x17, 0x1fe7cdb491afdb7b # initialize rs2
and x17, x2, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd890deb8bc1cf095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x86ca6fa0d6c213ff # initialize rs1
li x18, 0x22fce06fa19c8cf6 # initialize rs2
and x18, x10, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xf714787747a9b3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa29994080f3d8685 # initialize rs1
li x19, 0xbf5d6ee75863beeb # initialize rs2
and x19, x9, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa98a7ba5e5a8054f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0267261c895064d9 # initialize rs1
li x20, 0x2ab609fa4c70eaff # initialize rs2
and x20, x24, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x360032de4e75e8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9e5cccfeb972b0e7 # initialize rs1
li x21, 0x6d2f10a473c5c0fc # initialize rs2
and x21, x6, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xce03aa0e9faae040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x82c23223f094476e # initialize rs1
li x22, 0xb2bc58bac557cdfb # initialize rs2
and x22, x4, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x1f6f780a0b2dbbbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4f8bf4da8d28cfcc # initialize rs1
li x23, 0xe0e45109dae83b0b # initialize rs2
and x23, x23, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x2a545e21675c3722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe00d6c6b73bcb2c7 # initialize rs1
li x24, 0x56f6286e18c933a5 # initialize rs2
and x24, x9, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x5fc9ca094c3654ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x74f5d99e0f57ec77 # initialize rs1
li x25, 0xbe5c9b98273d28e8 # initialize rs2
and x25, x8, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x8a54e5590097b8e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd614259e0f592514 # initialize rs1
li x26, 0x53bb7f6388c6253d # initialize rs2
and x26, x2, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x7175b88f687f20fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe99a9ce18cf2a68c # initialize rs1
li x27, 0xee3197cad9fe55c3 # initialize rs2
and x27, x22, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xb31d41c09922baf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8df1d5e6b62fcc04 # initialize rs1
li x28, 0x387588e04c9b3f22 # initialize rs2
and x28, x12, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x6d6698d81b6a5f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa566282a646bca53 # initialize rs1
li x29, 0x80e6401afab6a388 # initialize rs2
and x29, x7, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x92fce1c49dcc9df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x76a26fb29fdbf3d3 # initialize rs1
li x30, 0xb0735c5b02672beb # initialize rs2
and x30, x10, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x83aa149f2bf64872 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x11d76c551d436dfd # initialize rs1
li x31, 0x48a341e30d465cc6 # initialize rs2
and x31, x11, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6295cd12679c6e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x330c04d1e7b121e1 # initialize rs1
li x0, 0x6b19871aa7608d20 # initialize rs2
and x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x32aa303deb328f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcb72235fa6508f73 # initialize rs1
li x1, 0x3dc8a1e80dcb6e1e # initialize rs2
and x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x502eacc9e2225ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2357a9eca0b3d3fe # initialize rs1
li x2, 0x33593a3c590870a8 # initialize rs2
and x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf8a6c1fd23a5fd93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1249dd5bd139458a # initialize rs1
li x3, 0x55cf208f65549528 # initialize rs2
and x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xc363199008435db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x61996cd88705b8a4 # initialize rs1
li x4, 0xc15575babed384c4 # initialize rs2
and x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x35e9b4dc3031dba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x81cb8cebde5a6165 # initialize rs1
li x5, 0x5e561f84d614bda4 # initialize rs2
and x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xdb655b1b89bc208e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x75fca233f5cd9a4a # initialize rs1
li x6, 0x814287523fcfd21d # initialize rs2
and x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x1d0aa8280a478d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa092eff04428e9f6 # initialize rs1
li x7, 0xdc6449bd823e17b3 # initialize rs2
and x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe96b1046906289b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaf394f66aae6b17d # initialize rs1
li x8, 0x01686a20e634f951 # initialize rs2
and x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x311a12d54d7a450b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x493fa42e37329822 # initialize rs1
li x9, 0x8d0112a7f136d80f # initialize rs2
and x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x125f00044dc7837d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0ac6d95dcdd55457 # initialize rs1
li x10, 0xe14bdafc59aa3d84 # initialize rs2
and x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x3705c29d9787e238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe6b710a99082e5f6 # initialize rs1
li x11, 0xd0603dafc96cc4e0 # initialize rs2
and x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc2f1de1d08e527f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4e3a4d660d398c5d # initialize rs1
li x12, 0x6679b9657a05b4f9 # initialize rs2
and x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x82651dc57acf38cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x90f630674e18a9f8 # initialize rs1
li x13, 0x670a26eeaa9e3f76 # initialize rs2
and x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd12e16e102c568d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfe490a68df61614e # initialize rs1
li x14, 0xefd384873089e3cc # initialize rs2
and x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xfce652e07ab9d4db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x01b36b2881e5ebd8 # initialize rs1
li x15, 0xe89af73da8c1b021 # initialize rs2
and x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x754641849cc79149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbffa6a0d5a456e1f # initialize rs1
li x16, 0x91b405498328f49f # initialize rs2
and x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xcffabaca9bf06234 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x48373b04bafd0bfa # initialize rs1
li x17, 0xcb482f96112d7cf0 # initialize rs2
and x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x355dfee88704ae57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5e80a29d87340dd0 # initialize rs1
li x18, 0x46a8decf165a9043 # initialize rs2
and x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9b35f27df91c620c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x09c6f45bea628cd9 # initialize rs1
li x19, 0x8e6ec60df636ec57 # initialize rs2
and x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd18a0e418a41659e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8de5b080b822b87e # initialize rs1
li x20, 0xdcdfcb3b33a8ab31 # initialize rs2
and x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x5984edf4fb594441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb235d48f5999bd08 # initialize rs1
li x21, 0xd3daa453d0da4425 # initialize rs2
and x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xdec1f35fee7cff47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x057eb25f3889ea24 # initialize rs1
li x22, 0xb672341babe71b1b # initialize rs2
and x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x2bc8cde3a0e13daf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4e114692401064e5 # initialize rs1
li x23, 0x0444b135763ca2ed # initialize rs2
and x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb412289cc97ac407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0a86f18b40856bbb # initialize rs1
li x24, 0x2bd941d5029521a4 # initialize rs2
and x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc7f5a99d3d75a40a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6f357a347a2b8234 # initialize rs1
li x25, 0xc98444072cb65113 # initialize rs2
and x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x8142654900d1ce88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x550d548ae31f0684 # initialize rs1
li x26, 0xd639735d550fe6e4 # initialize rs2
and x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x792fd1cdf39d580f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x266dff99eccbdbc7 # initialize rs1
li x27, 0xe83a50b4f0f4b1f7 # initialize rs2
and x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x1d8fe49c6b1cc829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7642f48348c1c63a # initialize rs1
li x28, 0xe303d95af958430c # initialize rs2
and x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x9d783030ed78f7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x14f2000c534b7084 # initialize rs1
li x29, 0x5580bb91679cf8a6 # initialize rs2
and x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb92dfad101e995d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9184a62f606f5b1 # initialize rs1
li x30, 0xa95a83fe3a247b8e # initialize rs2
and x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xb62c3dd833747b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb7e95d32b7a73234 # initialize rs1
li x31, 0xa65d88fbe09ae1f2 # initialize rs2
and x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x3, 0x453c91f2cea75938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xdb62b686b67b97c4 # initialize rs1
li x0, 0xfcf7559d1dfafa19 # initialize rs2
and x3, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x27, 0x6ae77f00b52a13f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x99f827140aca015c # initialize rs1
li x1, 0xf1f09c588b627160 # initialize rs2
and x27, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x8, 0x0b3a4d1fbf88bfe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x68ce9728737f499c # initialize rs1
li x2, 0xdb6bd2ee27dcd85d # initialize rs2
and x8, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x13, 0x91404f578da17d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x83eaf9afa7c23301 # initialize rs1
li x3, 0x961dbced39c9e217 # initialize rs2
and x13, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x9, 0x9501c116442d29ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa5875fd23edb01c6 # initialize rs1
li x4, 0xc0223ad03c73d7e6 # initialize rs2
and x9, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x16, 0x3ccc0329756848bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x22a118343d53a455 # initialize rs1
li x5, 0xf8842c7944c20190 # initialize rs2
and x16, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x10, 0x3fa69ca569868545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6252edd524d8bf93 # initialize rs1
li x6, 0x9dcefbf49901ec2e # initialize rs2
and x10, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x8, 0x7fddb5b63690886e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6be54da1c46f4a6a # initialize rs1
li x7, 0xcb6d99ecb81ccb53 # initialize rs2
and x8, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x16, 0x68096b78ae189c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa640fbb524b5651f # initialize rs1
li x8, 0xbf99dae51260c6ae # initialize rs2
and x16, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x28, 0x5b9d81dd90970307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4007b2094aa8a68c # initialize rs1
li x9, 0xa3b641a158c63c55 # initialize rs2
and x28, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x22, 0x1c35b41f7ece6822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6ea308552e4679d8 # initialize rs1
li x10, 0x3779580690299a3c # initialize rs2
and x22, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x15, 0x61f6c6a76c71b2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf417a485a87db2c5 # initialize rs1
li x11, 0xb2897fec108076f5 # initialize rs2
and x15, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x16, 0xc75217e4dad81d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x79f892c671e4a78f # initialize rs1
li x12, 0xfdac014c8f7878c1 # initialize rs2
and x16, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x21, 0xe6585883aefa2875 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x292e86d16e4a1dcf # initialize rs1
li x13, 0x1c5cd8cb1de6b4c5 # initialize rs2
and x21, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x16, 0x2b0f59699efed44e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x63855ea55ca61990 # initialize rs1
li x14, 0xea5a967126efb94f # initialize rs2
and x16, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xaba0c691f0a2cacd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4a341ff8a4bebcdc # initialize rs1
li x15, 0xfe5895d836ceb63d # initialize rs2
and x15, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x5, 0xe3a6365481fa92bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe8090f69cbdcf875 # initialize rs1
li x16, 0x8a4eca9f3c9cac97 # initialize rs2
and x5, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x30, 0x1748f7af36fb8324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa81f4ed8fa80b91c # initialize rs1
li x17, 0x8f79609dfa36689e # initialize rs2
and x30, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x2, 0x07d3ef60e9aa8636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x27a9afd3717514d9 # initialize rs1
li x18, 0x11f5644d6f513e6b # initialize rs2
and x2, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x14, 0x35eadc8010dd12fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xae592945eae4176b # initialize rs1
li x19, 0xecd20add1026641c # initialize rs2
and x14, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x29, 0x4c8cab194f708889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7cee6120ba8631f6 # initialize rs1
li x20, 0x71889bb57445c656 # initialize rs2
and x29, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x7, 0x680ef29d481bc123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1aac3de1c31f188c # initialize rs1
li x21, 0x4f4d93196ff9e60c # initialize rs2
and x7, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x10, 0x8c3eaec720e9ecef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa8f272a7a7832583 # initialize rs1
li x22, 0xbddd35f03f10ae45 # initialize rs2
and x10, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x19, 0xa778daea751e9651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd1179c99c1a99285 # initialize rs1
li x23, 0x05ec88db0afb9e6f # initialize rs2
and x19, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x3, 0xa2edc409fa5f8046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf90f96dc42b71386 # initialize rs1
li x24, 0xf38d7470441aefe8 # initialize rs2
and x3, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x15, 0xdae6a2b14170dd06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9ca1d1d7e88acad0 # initialize rs1
li x25, 0x2b073db4dacf4920 # initialize rs2
and x15, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x19, 0xaf71a91f7c2d16be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4bf736189abaae1c # initialize rs1
li x26, 0x10ef20dac79ccc0b # initialize rs2
and x19, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x4, 0xce0a63cb9cf74c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x59e912e219aa5a2f # initialize rs1
li x27, 0x074bddcc6f3a0fa1 # initialize rs2
and x4, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x7, 0xd357224bb510c31d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1e6209b6b7b31c61 # initialize rs1
li x28, 0x80966bfbec0b68f9 # initialize rs2
and x7, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x26, 0x227b399efa4e79de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x233416e7dd357186 # initialize rs1
li x29, 0x3f1b1503385b5b9a # initialize rs2
and x26, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x14, 0x6f5c0244b320eb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7b114eae27f461f4 # initialize rs1
li x30, 0x4aac8e6d676f450e # initialize rs2
and x14, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x13, 0x6702ea78b8d94fee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x503a067233bcd51f # initialize rs1
li x31, 0xb9cf33a4d57a138a # initialize rs2
and x13, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x543f96ce4fdfa9da)
li x1, 0x7e41834a06b78c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x543f96ce4fdfa9da # initialize rs1
li x5, 0x5c6ebf4e8060c41d # initialize rs2
and x1, x31, x5 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x490fa78d0cbe6a12)
li x26, 0x18ff229601a5635d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb6f05872f34195ee # initialize rs1
li x19, 0x23d2a2694ee29cc3 # initialize rs2
and x26, x29, x19 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0xdcf8785f7d23f67)
li x20, 0x86d4c76526edc844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8df37fee4ba69db4 # initialize rs1
li x19, 0x0dcf8785f7d23f67 # initialize rs2
and x20, x12, x19 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x71fde7f6e7758c07)
li x30, 0xee43360f702691ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3d7501b658cb0f89 # initialize rs1
li x9, 0x8e021809188a73f9 # initialize rs2
and x30, x26, x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
