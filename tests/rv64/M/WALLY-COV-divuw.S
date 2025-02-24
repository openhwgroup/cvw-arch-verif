///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-divuw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.652182
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xb52085e43be09552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3ec12f9dd4c70b81 # initialize rs1
li x15, 0xd5dd6d47b608dde4 # initialize rs2
divuw x0, x2, x15 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xcf5b6f7ad4949e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xda7c2a12b3e1e086 # initialize rs1
li x10, 0xc3878c0ab2116f2c # initialize rs2
divuw x1, x29, x10 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x4753e4f7f70486c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x376f4c92c1bb9441 # initialize rs1
li x2, 0x1212b92905f6e39b # initialize rs2
divuw x2, x17, x2 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa8b12d0935c79805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0344590b2562fd97 # initialize rs1
li x21, 0xc9a39ff34e2812bc # initialize rs2
divuw x3, x5, x21 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x8ea6d7cc42de6e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x64c067cd87f2e197 # initialize rs1
li x25, 0xae9a63d62c11ea4d # initialize rs2
divuw x4, x6, x25 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xd9fa30f7ef188d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcf7e351255ad0353 # initialize rs1
li x10, 0xb7b1b9a6830d9302 # initialize rs2
divuw x5, x17, x10 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x69dd4dca5dd5abaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3ef4bcd59c2d0d93 # initialize rs1
li x3, 0xe4a8d944460487d5 # initialize rs2
divuw x6, x6, x3 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x0a402251b821aca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x01df564da575ac97 # initialize rs1
li x13, 0x8bf03ad7c1ba3af3 # initialize rs2
divuw x7, x9, x13 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd1c04955d9efc8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x12cb736f4da095db # initialize rs1
li x11, 0xb02281d58989f426 # initialize rs2
divuw x8, x22, x11 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd1c64b1676d4e7d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4d596d92a15f1358 # initialize rs1
li x3, 0x0e78473823766ee3 # initialize rs2
divuw x9, x1, x3 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2ff00488398612b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x822a96737b55e38c # initialize rs1
li x14, 0x15104fb63de74c46 # initialize rs2
divuw x10, x2, x14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x357200ab127289b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdf349c611885513e # initialize rs1
li x24, 0xd6bcd55fe6b4aca8 # initialize rs2
divuw x11, x21, x24 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x86b4762ebf4558b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe6f1124486ac5ae7 # initialize rs1
li x28, 0x6f887f5535fcf3d5 # initialize rs2
divuw x12, x24, x28 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x62f3a834a85560b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x47d8f1d7cd06f087 # initialize rs1
li x14, 0x307dd89e3691e447 # initialize rs2
divuw x13, x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1987e7c864a479d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb842d994dfc1445a # initialize rs1
li x30, 0xf29f79008cc01097 # initialize rs2
divuw x14, x2, x30 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x73a9c245d5304c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0e30edda48c7665f # initialize rs1
li x5, 0x11f78150656ef8cb # initialize rs2
divuw x15, x19, x5 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1f8c4e7b6dc4a7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8c2a6edca77754d6 # initialize rs1
li x9, 0x12936fd90216c92f # initialize rs2
divuw x16, x25, x9 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x108f8776431b83e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xda5f9e4f3f155855 # initialize rs1
li x30, 0xcbcbed3d20b4401d # initialize rs2
divuw x17, x18, x30 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x5f68319da913af83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x63c5f4e7f784c48b # initialize rs1
li x6, 0x3902cfa706bd5b05 # initialize rs2
divuw x18, x21, x6 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x25ef5b7512da046b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8b058bdeedea7064 # initialize rs1
li x17, 0x305d41565a37e6b8 # initialize rs2
divuw x19, x21, x17 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf8b9e8b794958c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa7bd548a9e63f18f # initialize rs1
li x15, 0x320cdddeffbe493f # initialize rs2
divuw x20, x1, x15 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5e60038bc0fad6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11c9de960b2746cd # initialize rs1
li x29, 0xe684d561440ba829 # initialize rs2
divuw x21, x9, x29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x78202ade4514aaad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x17737cc4cd2a06fe # initialize rs1
li x18, 0xb37246668eb877cb # initialize rs2
divuw x22, x16, x18 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x0a14ce39944e7a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3cbea11453af8b9d # initialize rs1
li x14, 0x5255d91086a7a8d2 # initialize rs2
divuw x23, x19, x14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x7ae05cfb6bf10ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdd586f18822658aa # initialize rs1
li x8, 0x5e8a242a73954e81 # initialize rs2
divuw x24, x9, x8 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xe7c1a7b2638680c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf282593e9df37e81 # initialize rs1
li x27, 0xb6651dd0c669abe0 # initialize rs2
divuw x25, x11, x27 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x00401db6d5551f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1784d53843c49629 # initialize rs1
li x22, 0x11cdef0d0bbf2591 # initialize rs2
divuw x26, x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9712eba25c53f825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2b7abab5f6e8bc56 # initialize rs1
li x30, 0x4e3eea2974ac1743 # initialize rs2
divuw x27, x19, x30 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa7ff6edbb3b6db37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb5e8abd5d3a8457c # initialize rs1
li x29, 0xa7aeb5ee1856137a # initialize rs2
divuw x28, x27, x29 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x8fb7a61c2b60189b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xda1d2cfddbee1b5a # initialize rs1
li x13, 0xa74a9fe15f8e94c2 # initialize rs2
divuw x29, x23, x13 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x558934056923ae1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1fa77dcae3b24fef # initialize rs1
li x21, 0xb5490d738e8f01bc # initialize rs2
divuw x30, x19, x21 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x79eabe535ca027d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2a7306858bca1217 # initialize rs1
li x17, 0x883020f273b58966 # initialize rs2
divuw x31, x30, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x9, 0x953dd4208aefd377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9de0fd29974c718a # initialize rs1
li x31, 0x216f37e2e8fe9ccb # initialize rs2
divuw x9, x0, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0x3f5875a1e831bfe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xca624d73ef694e73 # initialize rs1
li x30, 0x37d7967b74306941 # initialize rs2
divuw x22, x1, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0x0cadff9e2ed8b920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x877af2c147f9a7e0 # initialize rs1
li x31, 0x2e612ad4f0713719 # initialize rs2
divuw x8, x2, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0xeff3ef2120440339 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb762efa080ee5275 # initialize rs1
li x13, 0x7e58c3e780fd276f # initialize rs2
divuw x18, x3, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x24, 0x2fff96618b9820a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x943dbc055e88405a # initialize rs1
li x18, 0xcf73a587cfba4c20 # initialize rs2
divuw x24, x4, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x26, 0xa2994badcd840dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbd215690cbb54240 # initialize rs1
li x10, 0xd90338871c5009a7 # initialize rs2
divuw x26, x5, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x047164e3d9380e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x34de68e997dee5fa # initialize rs1
li x27, 0xafaf9b9b8e7198db # initialize rs2
divuw x17, x6, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x3137e9adf7f5d429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2281625924cce0ad # initialize rs1
li x21, 0x97aa5c12043922aa # initialize rs2
divuw x19, x7, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0x0895e2dd658d5d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb3b2220e046fd7ac # initialize rs1
li x3, 0xbceff47c996279a7 # initialize rs2
divuw x25, x8, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x7, 0xe65965d5663f1026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2be4f65d3f36b5b1 # initialize rs1
li x31, 0x101552bf8f42493b # initialize rs2
divuw x7, x9, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0x5c0fd29fbba86215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x609f397d97697ea7 # initialize rs1
li x6, 0x4d6d98ac5aa8741a # initialize rs2
divuw x24, x10, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x02befd0f62d166d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf09ecc2066294eba # initialize rs1
li x16, 0xbaaf183695554699 # initialize rs2
divuw x12, x11, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x48b4704f3fabec72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3de2bd14269507ad # initialize rs1
li x6, 0x172a735b9d913a41 # initialize rs2
divuw x5, x12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x9ec17872bbf02431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6e6e164d43210f56 # initialize rs1
li x27, 0x91f9e77c9394bdc8 # initialize rs2
divuw x12, x13, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0xea7b9f001ea9d819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3295f660e392b989 # initialize rs1
li x12, 0x4b81394b03990158 # initialize rs2
divuw x17, x14, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xa0a7db77be17efc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x660d813349ba1bb2 # initialize rs1
li x13, 0x9473d2538693f831 # initialize rs2
divuw x12, x15, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0xad044119eda81dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x56805b436e99d1a1 # initialize rs1
li x23, 0xc4e527414c86589d # initialize rs2
divuw x6, x16, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x13, 0xe6eb8fa8dcad42d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd553114ba28023b1 # initialize rs1
li x25, 0x1f311606cadc165f # initialize rs2
divuw x13, x17, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xabc020d84f1e8a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5f71c56f28aa4055 # initialize rs1
li x17, 0x51e7d29b9a4d5916 # initialize rs2
divuw x30, x18, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0x31315d2fc207063b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1363f3658ec059b7 # initialize rs1
li x17, 0x5a96fa9908c07db3 # initialize rs2
divuw x26, x19, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0xd3034440909110f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xec060bdf79b9fef5 # initialize rs1
li x9, 0x463ec2d9d5ef72ed # initialize rs2
divuw x1, x20, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x22, 0x40723ab337f050f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x68b2be8a13d80068 # initialize rs1
li x16, 0xecac578be7212cf8 # initialize rs2
divuw x22, x21, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0xc8ca128638750aca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbaeb20062beb490d # initialize rs1
li x23, 0x293c90d543a68fd5 # initialize rs2
divuw x12, x22, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x8b4e775f0a4d1d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0e0eee4b0ec01312 # initialize rs1
li x4, 0x136c0f5bef472c69 # initialize rs2
divuw x31, x23, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x2, 0x230581c3c4b98f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc7a25e8c177fe815 # initialize rs1
li x23, 0x717c1d1ebdeb3d0e # initialize rs2
divuw x2, x24, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0x45eb2fa1f5421e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x705a76fc75fbd02a # initialize rs1
li x16, 0x9abc46e7a3af4a2f # initialize rs2
divuw x30, x25, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x66c865955a7c3656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x98c8202d8a866637 # initialize rs1
li x7, 0xecd229adb2a92330 # initialize rs2
divuw x13, x26, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0x8c1614bc9dce3c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe6f6f2e95bfa57a8 # initialize rs1
li x19, 0x2bea947994bfa753 # initialize rs2
divuw x22, x27, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x14, 0x68e312c7c8f34dad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9793c4cd9bf3d544 # initialize rs1
li x13, 0x825b85380a383049 # initialize rs2
divuw x14, x28, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x10, 0xa3a4512646098efe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf0d09c63cef8fc61 # initialize rs1
li x20, 0x5db18c0f20f970be # initialize rs2
divuw x10, x29, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x5, 0xfefd62b4ab77607e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfff31fe1587171f2 # initialize rs1
li x24, 0x05d1d445b670ff81 # initialize rs2
divuw x5, x30, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0xa9603b24fbee5056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2f935d3e6646809c # initialize rs1
li x19, 0xfd862b6fea67290b # initialize rs2
divuw x8, x31, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0xef8e66c97ac9aa34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x42bb096bc77af960 # initialize rs1
li x0, 0x72fa7fa9d382a7e4 # initialize rs2
divuw x5, x22, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x2, 0xd3d8d88d743fdda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf8758fad7fa5e614 # initialize rs1
li x1, 0x8af784ddf2e235c7 # initialize rs2
divuw x2, x10, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0xbf37273e1c31400d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9ec6fc6a52176c9c # initialize rs1
li x2, 0x7d59fcca9d51b0cb # initialize rs2
divuw x7, x25, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x4c882bc8a34647a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x19668245e372ff8d # initialize rs1
li x3, 0x7b9440ecb042bd4c # initialize rs2
divuw x22, x10, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x28, 0x78afa23800fb6b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x44cd2a5b79e2b08f # initialize rs1
li x4, 0x5a793f94defb5008 # initialize rs2
divuw x28, x21, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x38c5c4ca7abad292 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x427cdcdc93930ab3 # initialize rs1
li x5, 0xb60481ee50a1c0c8 # initialize rs2
divuw x28, x8, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x5, 0x76f5e87b02ca619b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb062ac959620f492 # initialize rs1
li x6, 0x432b8cd668991821 # initialize rs2
divuw x5, x15, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x19, 0xa6684ae153efbb76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd6178cc211df0c87 # initialize rs1
li x7, 0x5997af0ce27d7a8f # initialize rs2
divuw x19, x29, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x6, 0x5f98b9423417fddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x37001f2095ff37c1 # initialize rs1
li x8, 0xc44764d62bad291c # initialize rs2
divuw x6, x21, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0xaf6d54c31443616f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe41473730bd96c2f # initialize rs1
li x9, 0x05a49fff26e6df90 # initialize rs2
divuw x29, x18, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x1dbc27a280e6fe05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xafe09f4cba116f38 # initialize rs1
li x10, 0x44b2bd884b69c509 # initialize rs2
divuw x6, x7, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0xe58fabb43f389cff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x20cd2a8b25c3280d # initialize rs1
li x11, 0x18439ff297e02c51 # initialize rs2
divuw x9, x23, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0x5d792b838271eb4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x92ec0240678a36c0 # initialize rs1
li x12, 0xbaf5bb480b46cacd # initialize rs2
divuw x3, x16, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0xabedfa99d6af7bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd807a8fc3243da0d # initialize rs1
li x13, 0x6980091168bd64ae # initialize rs2
divuw x16, x20, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x8f1973a7042ab5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x569ad5bda5dc01b9 # initialize rs1
li x14, 0x0c576039d10bdb75 # initialize rs2
divuw x17, x3, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0xdf0548d4cf8aaf78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x97b1be5b8160b622 # initialize rs1
li x15, 0xfe1241774115d636 # initialize rs2
divuw x27, x12, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x13, 0xb28ba0249215e7a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x86d1944fed53682c # initialize rs1
li x16, 0xf48a4ac583433cf3 # initialize rs2
divuw x13, x15, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0x74d76993a55be6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xca790ee72848bdb9 # initialize rs1
li x17, 0xdff22872c5168339 # initialize rs2
divuw x25, x2, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xdb2f5b8431631620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x62486d4441717216 # initialize rs1
li x18, 0x97e8ef7fb6303743 # initialize rs2
divuw x1, x10, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x5, 0x8c4cf6e2f30268f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaa76b4214becc245 # initialize rs1
li x19, 0x77882e3b587cff4f # initialize rs2
divuw x5, x8, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xd5bacd118be11974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xea117b41147e2c56 # initialize rs1
li x20, 0x3f20df55cec19ed7 # initialize rs2
divuw x18, x30, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x400bd5a951020704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x66f4170ca680c8b6 # initialize rs1
li x21, 0xff0c6425cd33c7aa # initialize rs2
divuw x7, x8, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0xb3693b1a83e949f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x53732d79be084909 # initialize rs1
li x22, 0x28aac177653a089a # initialize rs2
divuw x20, x11, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x9bc645526b9bf70d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6c2321c86ef5cde0 # initialize rs1
li x23, 0x72e6156d41ed68db # initialize rs2
divuw x5, x29, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x26, 0x47cb7c91c43442aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0af00f96ce9523c9 # initialize rs1
li x24, 0x06d8e0dda5121742 # initialize rs2
divuw x26, x1, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x648c728f2e087811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcf703c4e4405ee29 # initialize rs1
li x25, 0x004c320968982020 # initialize rs2
divuw x11, x16, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0x266be825467738dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcbd3174aa44fd32a # initialize rs1
li x26, 0xdf645cbc080e63f4 # initialize rs2
divuw x8, x9, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0x770b8e981be6fc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa411683a776f4271 # initialize rs1
li x27, 0xbbb5fd4ec3852719 # initialize rs2
divuw x29, x23, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x25, 0x28fa95b7ee4120fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xeb1b7e70f38ebf9e # initialize rs1
li x28, 0x7ae6cd784fc17b94 # initialize rs2
divuw x25, x29, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0xa4cec6a3e5d75023 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x70dd2617529da0c9 # initialize rs1
li x29, 0x8dc1fec808443403 # initialize rs2
divuw x23, x19, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0xe8c5956330febdad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4938f57a96789666 # initialize rs1
li x30, 0xbc41f122720d4e25 # initialize rs2
divuw x16, x19, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0xeccdb68710d26bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa622d0271dbe2885 # initialize rs1
li x31, 0x02ee39fc12b9fa18 # initialize rs2
divuw x8, x22, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x2be1be8f4640b860)
li x29, 0x840b0afe2d59bc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x840b0afe2d59bc28 # initialize rs1
li x0, 0x047da208357279e0 # initialize rs2
divuw x29, x4, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xbadbfde29d8e6f1b)
li x7, 0xbadbfde29d8e6f1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbadbfde29d8e6f1b # initialize rs1
li x15, 0xbadbfde29d8e6f1b # initialize rs2
divuw x7, x0, x15 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x56eb4652ff9ebc22)
li x15, 0xb2aba728ab5d55fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x56eb4652ff9ebc22 # initialize rs1
li x10, 0x56eb4652ff9ebc22 # initialize rs2
divuw x15, x28, x10 # perform operation

# Testcase cmp_gpr_hazard raw test
divuw x14, x8, x5 # perform first operation
divuw x10, x14, x4 # perform second operation

# Testcase cmp_gpr_hazard raw test
divuw x6, x18, x17 # perform first operation
divuw x24, x20, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
divuw x28, x22, x7 # perform first operation
divuw x28, x15, x28 # perform second operation

# Testcase cmp_gpr_hazard waw test
divuw x29, x28, x19 # perform first operation
divuw x29, x1, x26 # perform second operation

# Testcase cmp_gpr_hazard war test
divuw x28, x13, x6 # perform first operation
divuw x13, x21, x24 # perform second operation

# Testcase cmp_gpr_hazard war test
divuw x3, x26, x21 # perform first operation
divuw x21, x13, x30 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x3dc3ed8dbdeafceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x0, 0xf03d30b715f300ec # initialize rs2
divuw x16, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0x07ef9f8ee1548ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
divuw x8, x21, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x4737ef00fcb70038 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
divuw x28, x17, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x45e8fe5b01af63c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x0, 0x12f9a10a1b238dd4 # initialize rs2
divuw x15, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x865edbbc56b7c65a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
divuw x2, x5, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x55a0de790c75e0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
divuw x9, x21, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0x9b557308a980d49b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x0, 0x8c304e8bc75d6d64 # initialize rs2
divuw x22, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x26a48d7c648e6bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
divuw x11, x29, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0x0a0f5dedae930e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divuw x16, x3, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x19, 0xbb1e724b8fbfb272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000080000000 # initialize rs1
li x0, 0xc79124508f5e2b28 # initialize rs2
divuw x19, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0x4b9ed2537f4603c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000080000000 # initialize rs1
li x21, 0x0000000080000000 # initialize rs2
divuw x2, x1, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x8, 0xf61264cb03cf7dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000080000000 # initialize rs2
divuw x8, x29, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0x786e2da4729cc5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000080000001 # initialize rs1
li x0, 0x20d957d88b9e132d # initialize rs2
divuw x28, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x13, 0xc1df73f3c9083479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000001 # initialize rs1
li x27, 0x0000000080000001 # initialize rs2
divuw x13, x12, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x29, 0x04a2bf34628fe693 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000080000001 # initialize rs2
divuw x29, x17, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x8736f48611531449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000007fffffff # initialize rs1
li x0, 0x4690d5ace81e4598 # initialize rs2
divuw x24, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x8dda679882421f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x000000007fffffff # initialize rs1
li x26, 0x000000007fffffff # initialize rs2
divuw x18, x28, x26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0x3e1406957e181eef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x000000007fffffff # initialize rs2
divuw x28, x3, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x0b2f915da3f2d66b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x000000007ffffffe # initialize rs1
li x0, 0x1aafca8b23a81a92 # initialize rs2
divuw x17, x30, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0x04cb66534ea11f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x000000007ffffffe # initialize rs1
li x28, 0x000000007ffffffe # initialize rs2
divuw x30, x3, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x16, 0xaaadf76e3e0eeae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x14, 0x000000007ffffffe # initialize rs2
divuw x16, x12, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x19, 0xa4e11b6c7058b9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x0, 0xf01bf07112d45c88 # initialize rs2
divuw x19, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0xa5bd21056eb29690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
divuw x27, x4, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0xd680b4d1d26fd320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
divuw x11, x2, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x5, 0x39cf27041d030fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x0, 0x448bf3d21e788bcc # initialize rs2
divuw x5, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x6, 0xc6e7c41cfa1e3858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
divuw x6, x15, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0xf3fd0f6019567bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
divuw x19, x2, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0x877cbafcef1bcbe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000aaaaaaaa # initialize rs1
li x0, 0xe81066b40247599f # initialize rs2
divuw x14, x25, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x13, 0xefdfb390b6b96269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000aaaaaaaa # initialize rs1
li x28, 0x00000000aaaaaaaa # initialize rs2
divuw x13, x19, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x5, 0x82f4f64de9da14c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x20, 0x00000000aaaaaaaa # initialize rs2
divuw x5, x8, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x16, 0x0b9cbb64a7c764c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000055555555 # initialize rs1
li x0, 0x4ab142a2983deba6 # initialize rs2
divuw x16, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x10, 0xbccb80667497189b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000055555555 # initialize rs1
li x18, 0x0000000055555555 # initialize rs2
divuw x10, x22, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x30, 0xc1613f850073ad15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000055555555 # initialize rs2
divuw x30, x14, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x12, 0x00489ffeb7e1a7a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000063ae86f7 # initialize rs1
li x0, 0x0af44836aab0fb3a # initialize rs2
divuw x12, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x20, 0x088419ec0a8c840f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000063ae86f7 # initialize rs1
li x15, 0x0000000063ae86f7 # initialize rs2
divuw x20, x2, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x10, 0xd9ceda6ec157875e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000063ae86f7 # initialize rs2
divuw x10, x6, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x31, 0x469dbe28db74a6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x8b94d228894f27be # initialize rs2
divuw x31, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x22, 0x6f82b9cf0120c839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000e3ae86f7 # initialize rs1
li x27, 0x00000000e3ae86f7 # initialize rs2
divuw x22, x26, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x8, 0xa648b05278cf352e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000e3ae86f7 # initialize rs2
divuw x8, x24, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x6bcfcdee455e188b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x12, 0x17dda2a41d95359e # initialize rs2
divuw x3, x25, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0xf63f3ebf0737ed5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x7, 0xc093aee4f779c5bb # initialize rs2
divuw x28, x26, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x1b9afb6c4af19cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x8, 0xfeeb5ee888ea6e87 # initialize rs2
divuw x21, x4, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0xe23bc7f2966f5bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x21, 0xc6c7685b8d0a7eac # initialize rs2
divuw x1, x7, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x9309deaad234e6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x19, 0x709629273d074229 # initialize rs2
divuw x17, x1, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7c2fbbc7e79ef0be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x25, 0x762d421e5d7b613e # initialize rs2
divuw x12, x16, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0xeaf75c516ab1f86f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x18, 0x04f58ba8a75fba24 # initialize rs2
divuw x6, x15, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x30, 0x8c5906ccdb6c108b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x15, 0x30fa6ed017b03335 # initialize rs2
divuw x30, x22, x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x25, 0x6b84cca26e9fe550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x26, 0x1e578d2932a20881 # initialize rs2
divuw x25, x12, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x12, 0x89be1d010508d60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x062a5b71b79aa255 # initialize rs2
divuw x12, x25, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0x18731cdf91af9b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xbbc73968240ad14a # initialize rs2
divuw x2, x5, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x10049d48b3e52be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x25, 0x76437b0e3873be4b # initialize rs2
divuw x12, x26, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x44344bbd261c57a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x20, 0x8e64a73d0940ade9 # initialize rs2
divuw x23, x18, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x8b616be3e926c897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x26, 0xe6f14c37f4892274 # initialize rs2
divuw x17, x2, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0xa3e4728db14368c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x24, 0x4abe90c508c6e7f6 # initialize rs2
divuw x22, x15, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x30, 0x8c71fba196085270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x11, 0xfc5fb9b2a5ba56b8 # initialize rs2
divuw x30, x22, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0xc89ed0c750c84c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xca874a34238d3fa6 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
divuw x12, x27, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x0d7ad020e9b9e29d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd00a106fdd3933fa # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
divuw x15, x14, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x0f11b8fceccc8c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf4823b2f968b19ac # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
divuw x11, x28, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0xf4d79b28b3ee8508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0d95677077d8a179 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
divuw x30, x16, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x4, 0xd6d724f6dfaadf32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe0a928bc8826afb7 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
divuw x4, x8, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0x44b80a72530b0b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8e31480cf2742417 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
divuw x5, x26, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0xfdc9f2fc41ff7ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf4db9f9f753c4de9 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
divuw x20, x6, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0x7989501eb86ac595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x596a7125585f4988 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
divuw x28, x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0x74908e24e526ac1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x580e582af62d54bc # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
divuw x20, x4, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x3, 0xf998e768f6a10baa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7e2c4026a737665e # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
divuw x3, x16, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xa3cd46109316c95f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbd641f6c8b6fe65b # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x6, x31, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x3f468c4083094edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x28571d6360e74584 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
divuw x1, x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0xed96d21bcb677752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xca6db39af0e6a3d9 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divuw x10, x28, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0x8082227585dea043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe28a8b32d01477ea # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
divuw x22, x19, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x17, 0x8773dff54c61ca0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcbd50807dc67f2f4 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
divuw x17, x5, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x5, 0xaca35d584c18d2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80e598ea8d143267 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
divuw x5, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x251842aadb5d27c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
divuw x1, x17, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0xdfe97ab31513a983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
divuw x20, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0xc6be63244c7f92b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
divuw x30, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x3a55d43e72c601ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
divuw x12, x18, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x19, 0x4161061e1a2729a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
divuw x19, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x30, 0x24a39ad9c311b416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
divuw x30, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0x9ebdc67a2257fd9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
divuw x13, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x11, 0x5cd8a3d860a11d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
divuw x11, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x3, 0x6e9a793179ca93e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
divuw x3, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x6, 0x4a80a0981304ade8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
divuw x6, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x6523baadc62030b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x27, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x15, 0x5698dc6752aad4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
divuw x15, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x030743f2a4656a9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
divuw x17, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x12, 0x9b8933fb5d3fd2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
divuw x12, x9, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x29, 0x0b6753b85c7fd486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
divuw x29, x28, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x15, 0x1a8e4dba16607432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
divuw x15, x18, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x68149a49a1c518a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
divuw x11, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x172c26c65b8b406e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
divuw x16, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0xbcdde2b716853e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
divuw x27, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x11, 0x0efaff5792c86495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
divuw x11, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x15, 0xcef9f861c6dded5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divuw x15, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x15, 0xb44dc29fe5613e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
divuw x15, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x13, 0x70a7d58c3a6e1c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
divuw x13, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x48c5613921a46bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
divuw x25, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x15, 0x916cf0a480313fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
divuw x15, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x11, 0x478f2f2ac036f8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
divuw x11, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xcbf55a76594a4b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x23, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x6da18933fb77e1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
divuw x16, x14, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x12, 0x4c35e4dbb45f4d03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
divuw x12, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0xd289cb981f98fd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
divuw x2, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x29, 0x0bc83be69b6651b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
divuw x29, x9, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x39b8ef8483df5c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
divuw x23, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x8, 0xf6954ea1ed594f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
divuw x8, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x1, 0x97d36f56fb4bc61b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
divuw x1, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x8d350d44667e429c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
divuw x17, x12, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0xd61dfc9952b86bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
divuw x20, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x4, 0x67925036e169c620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
divuw x4, x2, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x30, 0xe6622159c6473494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
divuw x30, x24, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x7f83441fdd9da8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divuw x7, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x5b20ebc54cf86fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
divuw x16, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x22, 0xdee203926d05e2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
divuw x22, x17, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x16, 0x77c1dd218a3bd757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
divuw x16, x28, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xb417c56b4a89d053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x5, x17, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0xbe45bab92e4fd427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
divuw x29, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x10c352a1042f1ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
divuw x10, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0xad581d8db69c3e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
divuw x16, x11, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x10, 0x621865588c16caef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
divuw x10, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x2, 0xc40eba2c511178a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
divuw x2, x24, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x29, 0x088b20b186a5ccb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
divuw x29, x10, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x13, 0x15fc59417b1fc91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
divuw x13, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x5, 0x2468b68061e8bd95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
divuw x5, x6, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x25, 0x505916b69ed6a2ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
divuw x25, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0x19af6d060b5ce7f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
divuw x23, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x12, 0x42a3558c88f5982b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
divuw x12, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x52d9cd0c2853a52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
divuw x28, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x15, 0x5341bc06e3c2cf7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
divuw x15, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x16, 0x4675338e0d7534ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
divuw x16, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x5, 0x1ac66e191efa07b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
divuw x5, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5fe62fd943b48c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x15, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x20, 0x5df7d31d6d351831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
divuw x20, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x27c25fe77787529e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
divuw x25, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x24, 0x7b696be3211b63a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
divuw x24, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x6, 0x8ce5497faf7dd4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
divuw x6, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x26, 0x9ab10ff7fd1f357c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
divuw x26, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x23, 0x8606d111fa2847d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
divuw x23, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x18, 0xebcb06ecf7287173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
divuw x18, x8, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x0849c85573a63c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
divuw x19, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x21, 0x13fdc960054adb08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divuw x21, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x9f050e5d72ed74af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
divuw x23, x17, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x7ba08c0e774b7687 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
divuw x17, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x14, 0x647a18839df6872f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
divuw x14, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x11, 0xfd2f40fd4356a8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
divuw x11, x24, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x30, 0xd0cdf6632caeb7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
divuw x30, x4, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x17, 0x2ab953c5f17242b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
divuw x17, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x4340d9848e5eac13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x13, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x22, 0x35f1bf9736488880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
divuw x22, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x30, 0x787225e6f2474cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
divuw x30, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x21, 0x604816ce482da8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
divuw x21, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x18, 0x607e4b0be9b85dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
divuw x18, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0xd455e2ce9511fffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divuw x2, x13, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x29, 0xb509be0c50279e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
divuw x29, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x4, 0xfd1f2adfed45eaac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
divuw x4, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x19, 0x46622068911b9362 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
divuw x19, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x2d29397fcf853243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
divuw x20, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x19, 0x5d604fd52b5258de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
divuw x19, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x2020ec7f7c2752a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
divuw x6, x16, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x3bd1c234955bb61b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
divuw x8, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x28, 0x9f9f0fb6518d8335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
divuw x28, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0xa11d4652be873986 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
divuw x14, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x7, 0x06b010f0ee705df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
divuw x7, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x285ab4ec69b1358b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x25, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x532106a0259db4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
divuw x29, x8, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x27, 0x5f982574eaa71cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
divuw x27, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0x6b9bb9907142bc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
divuw x15, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x718d29d222d19794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
divuw x6, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0xd9edfa19154e096e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
divuw x14, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x6f3ba05f08a0fba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
divuw x21, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x27, 0x254d5be9e701283a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
divuw x27, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x25, 0x5c89075be5b3d6d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
divuw x25, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x28, 0x8b1302689ba8394b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
divuw x28, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0x818f9e52d5341e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
divuw x30, x16, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x4, 0x32d10b2e2d5d345a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
divuw x4, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0xa05d4c96792b4afa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
divuw x22, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0x69bff3e3552f63bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
divuw x30, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0xc6301c87dcc9b15f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
divuw x11, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x21, 0x9566e8d19cfbe15a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
divuw x21, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xff09a7c668d6eed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x12, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x22, 0xd3912d05a51146a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
divuw x22, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x23, 0x9391e1a402549ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
divuw x23, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x7e294792f0150529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
divuw x16, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x26, 0x614fa9bd768d29a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
divuw x26, x23, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x16, 0xe172035b5064fc91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
divuw x16, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x8, 0x29ca4adea0ce59b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
divuw x8, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x16, 0xe2b7524fb7fd230c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
divuw x16, x23, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x12, 0xeca104d1940cd964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
divuw x12, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x31, 0xd6d87b150ad6791f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
divuw x31, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xef4e891177561475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
divuw x29, x31, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x64915e6430f6e2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
divuw x27, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0xf056e90c0a749643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
divuw x29, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x29, 0xee5f83c4d77c43c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
divuw x29, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x20, 0x7a4ff38b549eee9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
divuw x20, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x21, 0x9312587bcbb24e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
divuw x21, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x30df6b8025f5e86b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x29, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0x3dcd1946c6c8b4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
divuw x23, x14, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x6, 0x0946ac33e0a7d7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
divuw x6, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0x21bda91511f09530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
divuw x1, x20, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x15, 0x3815ef4d2680901c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
divuw x15, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0x6773881de8054eca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
divuw x19, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0x444975c9db059a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
divuw x9, x25, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x14, 0x9683d590f5149731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
divuw x14, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x17, 0xc296e231af2dc401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
divuw x17, x29, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x23, 0x0a25a9b0ec85d895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
divuw x23, x10, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0xcd9d2e845fae724d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
divuw x1, x8, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x906286d69cbe287d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
divuw x9, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0xf1960a978da6047e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
divuw x2, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0xb8496bf4a7795e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
divuw x24, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x2c8a872b215e96fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
divuw x10, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0xbe7488f8ce22db0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
divuw x30, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x3fe7ee110acd2389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x6, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x1, 0x85a6eea6a5f81147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
divuw x1, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0x54e6b7d9dec0d68f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
divuw x23, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0xca04bc8adb2076aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
divuw x28, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x22, 0xd116103f468c38d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
divuw x22, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x1, 0x06da82b8c1ea1a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divuw x1, x20, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x27, 0x99e50387572049d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
divuw x27, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x31, 0x2ca80e902224fa5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
divuw x31, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x16, 0x4a7415ef3065ffc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
divuw x16, x28, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x8, 0x1e6fee2d2efeb923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
divuw x8, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x1, 0x8306d9d73f95e624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
divuw x1, x9, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x28, 0x25e8bda10864c24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
divuw x28, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x15, 0x2915f5dac88a6526 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
divuw x15, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x20, 0x74ded2b4c8314d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
divuw x20, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x18, 0x4b538dcdcd6e3823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
divuw x18, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x7, 0x3a7112bb355bfdb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
divuw x7, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x828ff8c4b7f60f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x19, x20, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x12, 0x1458619609c9a710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
divuw x12, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x23, 0xe7445f2bf9496a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
divuw x23, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x21, 0xcf3ee7c6ddddb619 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
divuw x21, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x21, 0xc9844437a3a17e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
divuw x21, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x26, 0xd2b4ae36a6affcae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
divuw x26, x8, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x4, 0x394cd31912092c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
divuw x4, x7, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x12, 0xac95b04fad58e55b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
divuw x12, x31, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0x3c2ad95e687774b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
divuw x16, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0x3df953c268ecf6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
divuw x22, x6, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x8, 0xcc78782d21a4aaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divuw x8, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x20, 0x385a510f708df365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
divuw x20, x25, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0x70c9717faf85af94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
divuw x17, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x22, 0xc23ab108c0886049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
divuw x22, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x8, 0xbe80812f7b3ce881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
divuw x8, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x7, 0x352638faafe97723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
divuw x7, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x47c8477c290fb2eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x7, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0x1df5e442fef3033e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
divuw x29, x26, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x23, 0x8b391db314b315ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
divuw x23, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x11, 0x47069b1421ebdd6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
divuw x11, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x9, 0x3bfbf0c5ce870971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
divuw x9, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x23, 0x1ac3f1d49ed0d8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
divuw x23, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x30, 0xc7c5d7806862b9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
divuw x30, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x2, 0x6a8c409f3224d8db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
divuw x2, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x17, 0xb1f026f125d50983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
divuw x17, x31, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0xfd69ddf997fc5a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
divuw x15, x14, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x0f1f731b5ccc9457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
divuw x30, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0xaa4e28c33d229611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
divuw x23, x26, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x18, 0x09bc3e6a478b7385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
divuw x18, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x24, 0x7877e224ab53b24a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
divuw x24, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x11, 0x475e37fb2ef8d530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
divuw x11, x12, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x19, 0xf303f633ee939870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
divuw x19, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x80f2b27c9076d51d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x15, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x12, 0xf4a2b085fcff2580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
divuw x12, x19, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x14, 0x8ae73db63ecf6480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
divuw x14, x6, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x18, 0x5a95fd3ac5837138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
divuw x18, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x5, 0xe64ef5e7ddd8d889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
divuw x5, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0xa27b2d9afd360d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
divuw x28, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x6, 0x1187dbb5d963cb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
divuw x6, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0x758acbc97dfe0d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
divuw x29, x3, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x1232e0716493b420 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
divuw x8, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x1, 0x301f1998d6f4ff11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
divuw x1, x17, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x19, 0xd401d888d9e2fa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
divuw x19, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0xdb0d16457f4a28d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
divuw x30, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0x21e53ebb5d12c161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
divuw x17, x20, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x29, 0x676a900b64dcd3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
divuw x29, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0xb461bba898b81cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
divuw x15, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x26, 0xe89b652359794851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
divuw x26, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xd839a49ef3fcca5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x19, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x31, 0xd5b8d0649d9d86ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
divuw x31, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0x851ae8bebba84ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
divuw x28, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0x653a2090b8f01ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
divuw x23, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x26, 0xa9eb11b0f62e7bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divuw x26, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x6, 0xad61b08edc7996a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
divuw x6, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0x13cb201088b0af21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
divuw x31, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0x50502ab5092357c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
divuw x11, x31, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0xd931f72ce1db1c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
divuw x3, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x25, 0x278272ac98de63ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
divuw x25, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x7, 0x7f1276529bc239be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
divuw x7, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x530af59db5cbdfc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
divuw x30, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x1, 0x51eac59275dc112d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
divuw x1, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x572c7b8fdae2f16b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
divuw x28, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x2, 0xee22d8e8cfdcc040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
divuw x2, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x15, 0xb4f5627248a31f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
divuw x15, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x1f272a932e468c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x10, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x27, 0x9e41c080da53f739 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
divuw x27, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0x7a8e8a46b28c6ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
divuw x17, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0xa3c035357c92ea0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
divuw x7, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x22, 0x0182a563778a297c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
divuw x22, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x77fcdaa48b2e4a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
divuw x17, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x11, 0xac31bfa4cc45b164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divuw x11, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x24, 0x077cecb6deb7142b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
divuw x24, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x2, 0x2f7ea6548d8f34b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
divuw x2, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0xf37671ac8ba097db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
divuw x26, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x7b6d5ad106d2c2c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
divuw x7, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x30, 0xd1ddc221cd558d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
divuw x30, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x29, 0x98f5de658045c768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
divuw x29, x11, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x20, 0x9d61088bf7450329 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
divuw x20, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x5, 0x92c85296c0426319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
divuw x5, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x25, 0x7ec572b7fb271f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
divuw x25, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x6eeb7613a33152c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x29, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x30, 0x0da4c63cec3c7534 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
divuw x30, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x29, 0xba70340707f62536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
divuw x29, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x14, 0x1e22cc9a7d90ade9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
divuw x14, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0xb75ddb7c9c3b8215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
divuw x16, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x24, 0x0b1ff7f72b0a2e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
divuw x24, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0xcab83a20559f91bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
divuw x13, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x30, 0xe4765fc1fc0e9bde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
divuw x30, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x8, 0x699fe111eb01054a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
divuw x8, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x76d3265f594a7d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
divuw x3, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x25, 0x65b83bc3e542e72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
divuw x25, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x7, 0x53edb5d94c7ef0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
divuw x7, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x450bc48cd5957476 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
divuw x27, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x1, 0x69ee05cbf84515e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
divuw x1, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0xa82aaceb1280f2be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
divuw x22, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x6, 0x8abf9a98fff0bfd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
divuw x6, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x7586cf70442ea069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
divuw x16, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x21, 0xa02ba8836f1498b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
divuw x21, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0x69b3fec2a34dadfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
divuw x3, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x13, 0x4ab0ffe67512b0d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
divuw x13, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0xa47db3e2c98d21ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
divuw x15, x14, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x23, 0x74f94835ac065fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
divuw x23, x5, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7472c178f5e30f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xdaf3ddbe828409c5 # initialize rs1
li x3, 0xb5dd4317dda00d9c # initialize rs2
divuw x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x32f42b6a5cb8d0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8798301477835bef # initialize rs1
li x21, 0xb476d4812a7ac367 # initialize rs2
divuw x1, x1, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xead8c81f4cbf312c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc3ea8aaabd5f19b3 # initialize rs1
li x13, 0x58341b6b34cca63d # initialize rs2
divuw x2, x2, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9032dfdf2d856fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xca4377e0c66fddda # initialize rs1
li x16, 0xcc4fa9cc1833662d # initialize rs2
divuw x3, x3, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x3318ca4dff05e523 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x68e297f6df327d04 # initialize rs1
li x14, 0x049cf738e7f3f430 # initialize rs2
divuw x4, x4, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x907277d650333924 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf15ce9afa9672cea # initialize rs1
li x14, 0xa1a367a2fc7cfdee # initialize rs2
divuw x5, x5, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xe87bbcf549fb91d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x56e93e0ec8c17080 # initialize rs1
li x17, 0x52b9c3cbff526a21 # initialize rs2
divuw x6, x6, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xf8c243cbe2a0c609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5149742b38820b81 # initialize rs1
li x28, 0x691a48544dced25e # initialize rs2
divuw x7, x7, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd943b9441c0784ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0ecb5cf187620bcb # initialize rs1
li x18, 0x51f8cd11152cf25e # initialize rs2
divuw x8, x8, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x75eb67748e5cd7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x113b296b66295014 # initialize rs1
li x4, 0x2fc76c37b1597e24 # initialize rs2
divuw x9, x9, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5de9cf441a668214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb6566203819d861b # initialize rs1
li x15, 0x608c0766a2eaffba # initialize rs2
divuw x10, x10, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0dde7b855c5b316b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x86e1e6167e024939 # initialize rs1
li x23, 0x2037a5e417b904fa # initialize rs2
divuw x11, x11, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6d166f0b11d96958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x54acb165ffa5ee6e # initialize rs1
li x17, 0x3cfc59fac9d19045 # initialize rs2
divuw x12, x12, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe11855875f990b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x67cff703c6f84548 # initialize rs1
li x2, 0x2fef57182808a7ce # initialize rs2
divuw x13, x13, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x01ea39431410852a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x419ef379aa0a964d # initialize rs1
li x22, 0x680d1895da84e660 # initialize rs2
divuw x14, x14, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6e03766e6a0d9d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x471097ea8907da91 # initialize rs1
li x8, 0x0671321f7287bdc9 # initialize rs2
divuw x15, x15, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7e665171f906cdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf530e9b4d12518b0 # initialize rs1
li x16, 0x09e8762bb55a4963 # initialize rs2
divuw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7595fab724af9f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x57a00542d5126154 # initialize rs1
li x18, 0xf543d1780a5b922d # initialize rs2
divuw x17, x17, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x54f5684e98113914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb0ff2a0e5c7f1e23 # initialize rs1
li x23, 0xc5878dd1f76950e3 # initialize rs2
divuw x18, x18, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x80b7e1b5c887f073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xafaaa03896fe676f # initialize rs1
li x30, 0x9bf43802e5b9e1e7 # initialize rs2
divuw x19, x19, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf7807ceb79f51b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0629baa2aad5325e # initialize rs1
li x16, 0x252969fd39435c7d # initialize rs2
divuw x20, x20, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x553fe66335d2b683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd8b19781b1441b3b # initialize rs1
li x28, 0xc4e6ff59894154cb # initialize rs2
divuw x21, x21, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf5c69ac2f047cce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb5326e19df38451b # initialize rs1
li x22, 0x2ed584397f8e26b0 # initialize rs2
divuw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfbcfa523b2f95dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe00587fd0159c2c4 # initialize rs1
li x15, 0x71b1a6c7fac5a663 # initialize rs2
divuw x23, x23, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc81ed7b69c8bbd14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6820caa1a262eb27 # initialize rs1
li x2, 0x76dd3fa4bb9872cc # initialize rs2
divuw x24, x24, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa3094f36be710625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5690328fb3cadc5e # initialize rs1
li x4, 0xb8f5c75e23b35f58 # initialize rs2
divuw x25, x25, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x77788225ad8bdb84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0975b92e6d15a057 # initialize rs1
li x13, 0x78e17815af144fee # initialize rs2
divuw x26, x26, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf63d61595bbed50f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x20495f672244d770 # initialize rs1
li x7, 0xcd82304aff68325a # initialize rs2
divuw x27, x27, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xdbf1746d31f19428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x03e3a6139934acb4 # initialize rs1
li x12, 0x58572335cdf62269 # initialize rs2
divuw x28, x28, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x12e3dae956170860 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa59fc4db8e008327 # initialize rs1
li x7, 0xb1daada0e4788f4c # initialize rs2
divuw x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7fb11a4b16799018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd72e86197f7ccf26 # initialize rs1
li x8, 0xeafbe367b6206009 # initialize rs2
divuw x30, x30, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x31b3b3112ae77358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc47c2e1737ac2119 # initialize rs1
li x30, 0xcb52e039333de64f # initialize rs2
divuw x31, x31, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x49a84415481c2331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7b23007ff52aaa3d # initialize rs1
li x0, 0xffc908b0887f5cc9 # initialize rs2
divuw x0, x19, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xa71d28d5ee01816c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6258e71e96d36a61 # initialize rs1
li x1, 0x741c14f71acf783b # initialize rs2
divuw x1, x14, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x7a214b575bdbf36a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x60f32ce07db4ab1a # initialize rs1
li x2, 0x57df16b0a334c925 # initialize rs2
divuw x2, x11, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xbd92ad5d036ebb4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1f23fa607fd15cdf # initialize rs1
li x3, 0x0e632ed5337bce43 # initialize rs2
divuw x3, x14, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xc88347a4059f8fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x19f7e8547eca5d76 # initialize rs1
li x4, 0x43d742728d76f888 # initialize rs2
divuw x4, x1, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x0470813d03a9db24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x616cb9cf945b839d # initialize rs1
li x5, 0x182508dbfa5039df # initialize rs2
divuw x5, x4, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xb0cc68eeb27be5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x309fe7bd843be808 # initialize rs1
li x6, 0x0a806cae05fcb449 # initialize rs2
divuw x6, x25, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x108f98f42cda9bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5e75cb5600300884 # initialize rs1
li x7, 0x1a7d1c7b177a10ea # initialize rs2
divuw x7, x25, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xdce6de1211e55f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x304d2b0f9af5d891 # initialize rs1
li x8, 0x161afe8d03df8711 # initialize rs2
divuw x8, x2, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x6e85073771208782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfb5606e758dfbc9b # initialize rs1
li x9, 0x9c4f00a2b6da83df # initialize rs2
divuw x9, x6, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x0af7776a25dc7411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb0f6c63469e6c9c4 # initialize rs1
li x10, 0x966615f39bb2550e # initialize rs2
divuw x10, x14, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xef75d0415d286247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5b64b52aa09f06d5 # initialize rs1
li x11, 0xf7fb8731bae2d267 # initialize rs2
divuw x11, x22, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x759ebd30c1629274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x29862603d01db2c4 # initialize rs1
li x12, 0x40bb315ee0b78983 # initialize rs2
divuw x12, x19, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x97edef869b3c6347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x761ad7b9515980ce # initialize rs1
li x13, 0xb668dcfada78b27f # initialize rs2
divuw x13, x16, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x7d469dfc8d21ffb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x57490bd5f4ce7185 # initialize rs1
li x14, 0x7a0fb5b8be6330e2 # initialize rs2
divuw x14, x26, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x48f1635a4707c0b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf52f64849af21cab # initialize rs1
li x15, 0x3e1f8264ea880f47 # initialize rs2
divuw x15, x12, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x2092764d1c9d2f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd9efb369aebc4d61 # initialize rs1
li x16, 0x0166ade39c9b06b7 # initialize rs2
divuw x16, x14, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xab40f411007b994f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6c2ac835309e9998 # initialize rs1
li x17, 0x90147d366f1c27e6 # initialize rs2
divuw x17, x4, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x1ab7b8041b606116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b8fe8689ea48e86 # initialize rs1
li x18, 0x938df2d590a12ef1 # initialize rs2
divuw x18, x8, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x2b7d31a79ff60005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x31c88c46bb75fcd5 # initialize rs1
li x19, 0x0e6d3bb731f6a15c # initialize rs2
divuw x19, x11, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x1a11d76084443c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8b4acf4773f422fb # initialize rs1
li x20, 0x28c6ff87bec259bb # initialize rs2
divuw x20, x28, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xd5df19a67f3c94d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc149b41e1121e4b5 # initialize rs1
li x21, 0x5d1872ffc007cb0c # initialize rs2
divuw x21, x24, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x1335cba24a1ed0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaee27fc44e90d941 # initialize rs1
li x22, 0x6e09b03e3edb2ee6 # initialize rs2
divuw x22, x14, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x3fc0754874f8673e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x704e4ee68ee846bd # initialize rs1
li x23, 0x7605ecf0794429ae # initialize rs2
divuw x23, x17, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x49f28c7e7e02afa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8dfcb317c9e2b093 # initialize rs1
li x24, 0xa055d91873977485 # initialize rs2
divuw x24, x6, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x9411833ae52df631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xed7def96d8ed29e8 # initialize rs1
li x25, 0x00bcf74cdb01e93e # initialize rs2
divuw x25, x21, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x99b289e5f9831f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2a9300e6f4854d4d # initialize rs1
li x26, 0x2fa60271c24d328d # initialize rs2
divuw x26, x16, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xd28180326b298e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb6042b811934a19b # initialize rs1
li x27, 0x056bb347add32bba # initialize rs2
divuw x27, x24, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xc212503f901838ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1714558a81dd0b43 # initialize rs1
li x28, 0xc0ca787a82692b6e # initialize rs2
divuw x28, x22, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xe62944420bebcec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4b0948d0ae4cc284 # initialize rs1
li x29, 0x4b226930f22d320b # initialize rs2
divuw x29, x26, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x9bbfe3eb29727882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa4cf0ce6da6a1577 # initialize rs1
li x30, 0x7ee1866cc6d4dfba # initialize rs2
divuw x30, x3, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xbd1b3149f69e66c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x841f2ebb8f11625d # initialize rs1
li x31, 0x2ab117b754e580e4 # initialize rs2
divuw x31, x26, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7ba3b31b55443bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2907a5c178f501a4 # initialize rs1
li x0, 0x0283054ad92865bf # initialize rs2
divuw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2fc8710af1ac9698 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe0668923304abe02 # initialize rs1
li x1, 0x3ec1b3c8262dff74 # initialize rs2
divuw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4429f278458c6980 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1fd2c8b00bbd7154 # initialize rs1
li x2, 0xd749ac0981da9c4e # initialize rs2
divuw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1b05698c128f74fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf076b8080d0e14c6 # initialize rs1
li x3, 0x599fe046caf5619c # initialize rs2
divuw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x00f82934a895075a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5374785278a973da # initialize rs1
li x4, 0xdd2cb80f647c769e # initialize rs2
divuw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x9def508aa83137ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3da124ae4f0475b4 # initialize rs1
li x5, 0x1d832cff8a0101a8 # initialize rs2
divuw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x172cfcf60eceab86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfcc99d877e85f7e1 # initialize rs1
li x6, 0x9c72c7d6e23fc0cb # initialize rs2
divuw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x1d3297ffb538045a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0e4a19d70e0bf060 # initialize rs1
li x7, 0x3f58b4edf80aa2f9 # initialize rs2
divuw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x129b305125082880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb8075dafaa2a1ca1 # initialize rs1
li x8, 0x28a054cf943923fc # initialize rs2
divuw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7ff920da35245a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x28abe6b2fb1792a2 # initialize rs1
li x9, 0xdcdcbbc0b5ce2123 # initialize rs2
divuw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xf00ff79a5cb311b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x37729d6068d80073 # initialize rs1
li x10, 0x1ee86f91e1c9d653 # initialize rs2
divuw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x3b7439f914b3ecc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x76e156098629ce22 # initialize rs1
li x11, 0x2e967166c44f770c # initialize rs2
divuw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x9d3428d7b3330c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x17c2f01a435b6df0 # initialize rs1
li x12, 0x42552f8e6cbf5d9a # initialize rs2
divuw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa1ece4c5149efb98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x97d2b7ad26e3211b # initialize rs1
li x13, 0x233718cc2c7747eb # initialize rs2
divuw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x433a378f98a741a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdd7e5e31c6301305 # initialize rs1
li x14, 0xdd809c01f425e9ce # initialize rs2
divuw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe6579403c63b93bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0e875a24c7985746 # initialize rs1
li x15, 0xcbd3e22fee315a48 # initialize rs2
divuw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x7fc27fd5c2e8bc8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x735bd9faf3ff3318 # initialize rs1
li x16, 0xa265576216bd3f5c # initialize rs2
divuw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe49211150fb4d6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xca87ef7352f47c55 # initialize rs1
li x17, 0x81bfc75b1df5ed21 # initialize rs2
divuw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1dca0c41ac2e53fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbadf764ce28dc3fb # initialize rs1
li x18, 0xe82e6ee5b2abe683 # initialize rs2
divuw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x4c7072e4fcbbeaf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbe8b23e9837419ab # initialize rs1
li x19, 0xe7777a15c78c27d0 # initialize rs2
divuw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xed60014feba95029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7784ce740c87cb83 # initialize rs1
li x20, 0x680fa8d0d7f73625 # initialize rs2
divuw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x4394a39e545145cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1e74d6941c945087 # initialize rs1
li x21, 0xfdac95ce9e285fcc # initialize rs2
divuw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4e0de20f27203b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc1721674b0636192 # initialize rs1
li x22, 0x1f2e5c093bf7ce03 # initialize rs2
divuw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1afac8f5912c9d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x87a15cb6bf35c444 # initialize rs1
li x23, 0xdc4e37e93e0c5bdb # initialize rs2
divuw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x955072c41e8dd08e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xeddd5e86249dafa7 # initialize rs1
li x24, 0x9acd168dbad1e0bf # initialize rs2
divuw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1f747fe3f461e5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc882b474d0f7dc92 # initialize rs1
li x25, 0x4d2c289e8a63e8ea # initialize rs2
divuw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x656eb8e9d99988a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb79a29de34b56a17 # initialize rs1
li x26, 0x76ae4d98dbf14cfa # initialize rs2
divuw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xac7397fecb4a3f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9fdb7267a9e5cfa7 # initialize rs1
li x27, 0x860cda3b6fcbc29d # initialize rs2
divuw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0ea8c45d1e902238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc477183e5019970c # initialize rs1
li x28, 0xf73454e81ba4f14c # initialize rs2
divuw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc25a4c8315534618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdcaeaa386da6b8d7 # initialize rs1
li x29, 0x0bd96b91f7fb04b8 # initialize rs2
divuw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6cff7709e24ad64b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x93b79aaf75d12c06 # initialize rs1
li x30, 0xce433916a41678ed # initialize rs2
divuw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8645987190748870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xef124074f93062f0 # initialize rs1
li x31, 0xc89af9e771523865 # initialize rs2
divuw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x30, 0x5799638ca656a04c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa41820d3ac36275a # initialize rs1
li x0, 0x7fcec0383186d806 # initialize rs2
divuw x30, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x27, 0xebfb05faa747589c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfa80dbb10150ffb1 # initialize rs1
li x1, 0x99aa064683c8b130 # initialize rs2
divuw x27, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x9, 0x82893e1bd17c2f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5c3da7bb9e9f408e # initialize rs1
li x2, 0xfcb4978e95b96a1d # initialize rs2
divuw x9, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x10, 0xb161bc1123f8a208 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80dba45453f05016 # initialize rs1
li x3, 0x99717f69d9d06b41 # initialize rs2
divuw x10, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x3, 0xb56f173f7083f19d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x53be962fad5bd488 # initialize rs1
li x4, 0xabb0e118b38a597b # initialize rs2
divuw x3, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x24, 0x38aca39adfa91ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x919d4c9cb98599ca # initialize rs1
li x5, 0x699d903dd65c5821 # initialize rs2
divuw x24, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x14, 0x43c38155817f46c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd8d9c20643384442 # initialize rs1
li x6, 0x1b1edfbe6719d140 # initialize rs2
divuw x14, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x30, 0x3d03c835e984a8e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x387489bbf1063e3e # initialize rs1
li x7, 0x85ebf0cce26328a4 # initialize rs2
divuw x30, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x14, 0x87df6a2fec14a82c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcde64143efc589a1 # initialize rs1
li x8, 0x7edca4ac0a3fe6f9 # initialize rs2
divuw x14, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x3, 0x31414133851704c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x43ba2d014908acb3 # initialize rs1
li x9, 0xa2f8e7481ec90f4d # initialize rs2
divuw x3, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x31, 0xc1c92421a558542d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1364a69a09829cae # initialize rs1
li x10, 0x0e748d72f69d1234 # initialize rs2
divuw x31, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x16, 0xb3f78e2a20f32802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd61cba057ea1cb6 # initialize rs1
li x11, 0x1942643d116fa9da # initialize rs2
divuw x16, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x13, 0xe4a2e676c8db3ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x58cba563a499adff # initialize rs1
li x12, 0xd65892bb898af6bc # initialize rs2
divuw x13, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x27, 0x24b6883aef3de6c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55b58543b56428ea # initialize rs1
li x13, 0xe765415511a67de7 # initialize rs2
divuw x27, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x3, 0xeb93094a90f2c912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc6c73413efee863b # initialize rs1
li x14, 0xca94a216658d1769 # initialize rs2
divuw x3, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8656530bc01f1128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4c875537901c842e # initialize rs1
li x15, 0xa37c5ca83b6e15df # initialize rs2
divuw x15, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x22, 0x3403778806579238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe4664e5f4568b1cb # initialize rs1
li x16, 0xd53cbdcf80e69c0f # initialize rs2
divuw x22, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x1, 0x5be1809f88f84497 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa2ccaa0f6f0feae3 # initialize rs1
li x17, 0x71b4e8390897c6f2 # initialize rs2
divuw x1, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x27, 0x8ebc295a6902a42e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc7d5327f39a5e22b # initialize rs1
li x18, 0xc332b7c9394381c2 # initialize rs2
divuw x27, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x26, 0x3a2538a7e7ab85ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x67ec2e54c6df3125 # initialize rs1
li x19, 0x16c2d51c8e34fc46 # initialize rs2
divuw x26, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x1, 0xa29ebbb858358b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x644803504d6a73f3 # initialize rs1
li x20, 0x4050855d65bb3fcd # initialize rs2
divuw x1, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x28, 0x57f1af7b177ff48f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8a1b4463c04c4b4e # initialize rs1
li x21, 0x5ae46db27fc9b6e6 # initialize rs2
divuw x28, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x8, 0x0ac84ea41d2bd866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe88e6fa277a29b15 # initialize rs1
li x22, 0x1a6c7cced4388acd # initialize rs2
divuw x8, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x19, 0xd9d1d67f42715701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe0ab13af7002078b # initialize rs1
li x23, 0x172b4b5a9a3f18fd # initialize rs2
divuw x19, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x1, 0x9fbe9a01934e37a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x716662a05e4dfaca # initialize rs1
li x24, 0x826fd3ff287ce362 # initialize rs2
divuw x1, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x31, 0xf9708a86bd003464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x92dade5d3fff0643 # initialize rs1
li x25, 0x752fe1eb2bc573a3 # initialize rs2
divuw x31, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x14, 0x4d2fffbcfdecd697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x29d9367c115336e1 # initialize rs1
li x26, 0x84335397a61da4b5 # initialize rs2
divuw x14, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xf41db1ab0d1c02bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4a1d63d7977bfb33 # initialize rs1
li x27, 0x972e7d0d1df9bf1a # initialize rs2
divuw x27, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x22, 0x7deb153a4013bfc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3d5f46a58fd5ed20 # initialize rs1
li x28, 0x8a1d7aa5808ab321 # initialize rs2
divuw x22, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x8, 0x09459f7b98792c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdf77d8a15ee19d2c # initialize rs1
li x29, 0xd3758cbe3069a8f8 # initialize rs2
divuw x8, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x11, 0xf7c5d5dadf2d1e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3797a4408ef4a954 # initialize rs1
li x30, 0xe150535375145363 # initialize rs2
divuw x11, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x24, 0x2d31b17e577ff704 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3168173b71667a59 # initialize rs1
li x31, 0x79efc5f263b9166c # initialize rs2
divuw x24, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x7924f4b3eebd7ffb)
li x21, 0x222418f2bff9eda4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7924f4b3eebd7ffb # initialize rs1
li x23, 0xfac173112649b42b # initialize rs2
divuw x21, x31, x23 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x5ec5e721c01d5fc)
li x6, 0xbd19168e4697187b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfa13a18de3fe2a04 # initialize rs1
li x27, 0xdde8329946d2d6ed # initialize rs2
divuw x6, x5, x27 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6251ddfca780b773)
li x1, 0xb095ce1ea4f3bc8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa9d680284b95b280 # initialize rs1
li x19, 0x6251ddfca780b773 # initialize rs2
divuw x1, x4, x19 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4fc77120c6df1f16)
li x7, 0x26b1f34c32bc8673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4f36349223dd018c # initialize rs1
li x17, 0xb0388edf3920e0ea # initialize rs2
divuw x7, x1, x17 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
