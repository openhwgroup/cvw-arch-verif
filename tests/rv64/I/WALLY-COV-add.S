///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-add.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.449979
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x2822061b6a8d39de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4a062f82fd334b0f # initialize rs1
li x23, 0x2eb96cfb32bbe6e2 # initialize rs2
add x0, x11, x23 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf965fb912521168f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd58e76a419156ffd # initialize rs1
li x31, 0xa0916cd2f947c218 # initialize rs2
add x1, x23, x31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x1931d2f061e4c7bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0b71e99b0c4e4f36 # initialize rs1
li x3, 0x185077dc5fdd5437 # initialize rs2
add x2, x19, x3 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x875c38e48cc478d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb4656579826d412b # initialize rs1
li x1, 0xb2deb782a297f061 # initialize rs2
add x3, x16, x1 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x7f6df2757d0829bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1ec8dd908d19eb03 # initialize rs1
li x10, 0x46d5271fe00cf147 # initialize rs2
add x4, x9, x10 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xda7819fc0263f6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8518b41ae0385ccf # initialize rs1
li x26, 0x076dda80898e1818 # initialize rs2
add x5, x13, x26 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xbf32418dadb421c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0cba8d2369da6e1e # initialize rs1
li x15, 0x13b7908938f29c1a # initialize rs2
add x6, x3, x15 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x4135779bdc4e45e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa2fbd728439c1059 # initialize rs1
li x25, 0xa05e617b07b3b012 # initialize rs2
add x7, x26, x25 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc00a1ee9477941de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x983464f93692e00f # initialize rs1
li x14, 0xaa34ce234c5c0fde # initialize rs2
add x8, x21, x14 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe5f42b4655865a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc914a407d8e40df3 # initialize rs1
li x30, 0x1238ec9e45503df5 # initialize rs2
add x9, x16, x30 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x12865616dfefbedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x39100fca7331a536 # initialize rs1
li x22, 0xf782a5ceec104397 # initialize rs2
add x10, x15, x22 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd688e760bb351c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9f3789ccc8491aae # initialize rs1
li x31, 0x34c1251ec56b4e5d # initialize rs2
add x11, x10, x31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x66737a286774c3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd37c56dc2c13f292 # initialize rs1
li x20, 0x67719155a28f4544 # initialize rs2
add x12, x9, x20 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x76559ba8a91f41a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ab9942f317dd78b # initialize rs1
li x27, 0x5eae4eb6470618d9 # initialize rs2
add x13, x9, x27 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x415ea3c4d1314ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x924ea33e4fe2bf61 # initialize rs1
li x2, 0x68765cbb066da331 # initialize rs2
add x14, x13, x2 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x55785f122105be25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x65ac706b581ec808 # initialize rs1
li x23, 0x02e251d77038513b # initialize rs2
add x15, x11, x23 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x65e81f66681c12e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x95b179beb91a677a # initialize rs1
li x19, 0xb34e2cd0a5314713 # initialize rs2
add x16, x14, x19 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x858f4f592196eff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x30925ffae15fdfbf # initialize rs1
li x3, 0xdf1aa8e9876ef977 # initialize rs2
add x17, x24, x3 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x803c318c6194ec5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x87d57cbb491b9b29 # initialize rs1
li x27, 0x54cad07e48a9746a # initialize rs2
add x18, x11, x27 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xbf7dc47504108cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd2f2cce0bc3bf74 # initialize rs1
li x30, 0xf46bb6aa23f67728 # initialize rs2
add x19, x7, x30 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb2ea3a0a658498b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7776fb2a896a14bf # initialize rs1
li x19, 0xccf1e13e80fcd4b3 # initialize rs2
add x20, x18, x19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc1a383b1e4a27403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe4fd9830439ccd1e # initialize rs1
li x17, 0xfa96b14d13df4468 # initialize rs2
add x21, x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0fa750735a097a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd8aa82ae11a19aea # initialize rs1
li x17, 0x7590b93db6ad0042 # initialize rs2
add x22, x3, x17 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x732337bc679e61a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc879f5ddb905069d # initialize rs1
li x25, 0x90430b426cbec7f9 # initialize rs2
add x23, x17, x25 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x09b16451cbbf577f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf3e55b36a9640a72 # initialize rs1
li x28, 0x7d404aaedffb9cb9 # initialize rs2
add x24, x16, x28 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7412144d7dffb3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc0898c845ff5b207 # initialize rs1
li x25, 0x599d39067ea1fd7c # initialize rs2
add x25, x30, x25 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0a2eb23e5af3814b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1804db9ecce0e812 # initialize rs1
li x27, 0x78eade2edccb00c8 # initialize rs2
add x26, x18, x27 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa736261d543c0899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x97313f4c975ae4b4 # initialize rs1
li x15, 0x5d847a2fdfc54612 # initialize rs2
add x27, x23, x15 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x3538bc754da603ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x740fec61a084ca60 # initialize rs1
li x19, 0x6bcde32db3e30563 # initialize rs2
add x28, x10, x19 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x4f7d7d3f4ec14ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x44171261727f64be # initialize rs1
li x3, 0x8e70dbae1270901f # initialize rs2
add x29, x20, x3 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x118a836e8c3bf94b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4099638376b6a26e # initialize rs1
li x1, 0x7b7504e28079a6c4 # initialize rs2
add x30, x7, x1 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x82aae68adca33e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa364367bb5135eb5 # initialize rs1
li x4, 0x9de9f92512cc3f27 # initialize rs2
add x31, x21, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x24, 0xdf4eb603caffef9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa793c1f6dade2a66 # initialize rs1
li x10, 0x2ad962ff548816cc # initialize rs2
add x24, x0, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0xcc92419316a3eadc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x99f23c94c2c63fcd # initialize rs1
li x18, 0x2529fb03c5acffef # initialize rs2
add x22, x1, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x15, 0x1a5dd5a625e8b570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x841254d283bf6b27 # initialize rs1
li x12, 0xb77d243ded02f6b9 # initialize rs2
add x15, x2, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0xbaa4037be6eb1815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x644da9ece2f02e6e # initialize rs1
li x6, 0x1630bc012c79219f # initialize rs2
add x15, x3, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x8, 0x29c6e17522a6de05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbebc950bfe1df585 # initialize rs1
li x28, 0x19fc64a1c2b49641 # initialize rs2
add x8, x4, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x26, 0x7d08b39b01a5fa0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1b420fc848e604db # initialize rs1
li x2, 0x0aa33b8bcad7fa10 # initialize rs2
add x26, x5, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x30, 0xd57ffe97d66a07e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe3400436a4a826d3 # initialize rs1
li x28, 0x2c81480707d62e90 # initialize rs2
add x30, x6, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x9, 0xe87532de673dec21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xec23c012d671a4ce # initialize rs1
li x8, 0x3e0e1916d12d7acd # initialize rs2
add x9, x7, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0x0d6381df53ba1054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x713f0974778e82c8 # initialize rs1
li x12, 0x8a9f7a06af5ac5d9 # initialize rs2
add x5, x8, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x2, 0xeed2e43384c50596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7d6c8a7e47b8de78 # initialize rs1
li x29, 0xf03031e3f3752e03 # initialize rs2
add x2, x9, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x17, 0x2d7ffd81989bdc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe4a5965920f203ed # initialize rs1
li x15, 0x82afbc36807d2d18 # initialize rs2
add x17, x10, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0xae10362699cb5a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa9742d3ed36ba8ab # initialize rs1
li x30, 0x9683926d6f89aa59 # initialize rs2
add x25, x11, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x4fd3daf9f1f4a1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb073711cfd3a4efc # initialize rs1
li x15, 0x419cc8777c36386c # initialize rs2
add x31, x12, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0x48402cc411204d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x29764d3a9f0b1829 # initialize rs1
li x25, 0x537ba84b3a50f1a6 # initialize rs2
add x26, x13, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0xdaf638a562f3f191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x055212877292b3c3 # initialize rs1
li x26, 0xc13d958efaf24725 # initialize rs2
add x28, x14, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0xb95bca0e51adc6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa2826bb853d9a905 # initialize rs1
li x13, 0x2e3d9a9a3d78ceae # initialize rs2
add x1, x15, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0x47109d02562db9bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x087227538c63ad13 # initialize rs1
li x17, 0x7a51d4b6f3a1b3f7 # initialize rs2
add x28, x16, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0x58e2b251240715cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xca4588a78df5fac1 # initialize rs1
li x16, 0x3fcb4e18f3bc0343 # initialize rs2
add x31, x17, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0xffc572c6f5b847bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcec3c176ecb8e6b1 # initialize rs1
li x11, 0x9d8c0d21f8249905 # initialize rs2
add x12, x18, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0x2018d6eb23ab85af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7841b5738b32287c # initialize rs1
li x25, 0xae229680f7edf512 # initialize rs2
add x15, x19, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x47b9dfbed0ae8b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x123e90348885ee42 # initialize rs1
li x29, 0x91034c4482f9605c # initialize rs2
add x1, x20, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x26ea5f1274ee12f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3a707ba4e6bb1d40 # initialize rs1
li x18, 0xdfbc4d977c57f041 # initialize rs2
add x26, x21, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0xc6f1b9a8c8ea5637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x010d4a13caf2962e # initialize rs1
li x24, 0x80aefb94d6939cf3 # initialize rs2
add x12, x22, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0xa549acd78a6f415b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x08b47e496995e174 # initialize rs1
li x11, 0x96f115faea715dac # initialize rs2
add x7, x23, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0x87896c38da0e2777 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc4276896b65e5bef # initialize rs1
li x14, 0x4002816e74f0a898 # initialize rs2
add x6, x24, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0x8a795734bd754e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc88df942a765e847 # initialize rs1
li x18, 0xd03cae0609d5b3f5 # initialize rs2
add x15, x25, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x10, 0xf627f8319bec817d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x23ca312c04908620 # initialize rs1
li x15, 0x17ae9edee70dceb4 # initialize rs2
add x10, x26, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x5b03dced5033f65b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb5f5a3ac26810ffc # initialize rs1
li x4, 0x6f8a956f169f314d # initialize rs2
add x3, x27, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x82c0ca5afd445572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8798fa180c303166 # initialize rs1
li x7, 0x1c66663eec92b951 # initialize rs2
add x17, x28, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x8e837b15ff38b664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x11c9f7ab2ea7597c # initialize rs1
li x2, 0x57f09be8b6a89111 # initialize rs2
add x16, x29, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0x9a9a3512a1920bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7a8432a0faaebbce # initialize rs1
li x7, 0x652507c92d220d28 # initialize rs2
add x17, x30, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x2, 0xf624274d99b011fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8e1218c99b9f7e45 # initialize rs1
li x15, 0x768f71c3eb31b165 # initialize rs2
add x2, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x8, 0xb2644dfea6431ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd7de535072e78c08 # initialize rs1
li x0, 0x6661179077c64e1d # initialize rs2
add x8, x18, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x17, 0xa0f0e882aa82fe05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2b6836a50703e47a # initialize rs1
li x1, 0x17d26e801c18407d # initialize rs2
add x17, x27, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0xd3b8b07a798d805c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x09f0966cdd4c983a # initialize rs1
li x2, 0x7e3c626ea2fe8482 # initialize rs2
add x31, x27, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0x5a8768211704179e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb9bbc9319044068a # initialize rs1
li x3, 0x42b7d0b6bb8f2ea0 # initialize rs2
add x17, x20, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x22, 0x79cc35ffdd60db8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x823196aba9760e7d # initialize rs1
li x4, 0x4571aa1193c8d14e # initialize rs2
add x22, x1, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0x3a7b3a32ec04b514 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb581a7db12cbff87 # initialize rs1
li x5, 0xef6f6375f99d884e # initialize rs2
add x2, x26, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x1, 0xbdff0f1c0755f2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd06d82efc6f45a6a # initialize rs1
li x6, 0x1acf8d1f1b8086e0 # initialize rs2
add x1, x7, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x23, 0x13144e63958762d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6fa644606cb1d669 # initialize rs1
li x7, 0xf609adf1ec093304 # initialize rs2
add x23, x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x4ce7e101d7ee4401 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbc901242948cf76f # initialize rs1
li x8, 0x9bfc1ba93d811ab1 # initialize rs2
add x2, x23, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0x9d97c687f03ffbca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7240595107ff648d # initialize rs1
li x9, 0xc851dfd7fd193f21 # initialize rs2
add x30, x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x3f0f13f9acdd00b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xad7933ed17145948 # initialize rs1
li x10, 0x05299d73b550c34f # initialize rs2
add x4, x22, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x3, 0xbf71461bc54b2369 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8e9c8eb82b1e446f # initialize rs1
li x11, 0xe7fd1bfc42761fdf # initialize rs2
add x3, x31, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x1153f1b57e0cfc66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x58d92e6c39b66f4f # initialize rs1
li x12, 0xe70e7999e5f3ba07 # initialize rs2
add x28, x3, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xd4af3c2fcb73a699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf88824c3b8a14abe # initialize rs1
li x13, 0x8f9ef91088088c6a # initialize rs2
add x25, x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0x4da64fa5b039bab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd37d48d02e985e0a # initialize rs1
li x14, 0x4f3024640eda0d5a # initialize rs2
add x18, x13, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0x0f13c260dbb3c89f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x92a052f76a9b2294 # initialize rs1
li x15, 0x656f7d1d2cf3a275 # initialize rs2
add x28, x27, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0x3a9ee298c53c53bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffa426bcc48e1ae6 # initialize rs1
li x16, 0x6f5b9325593df621 # initialize rs2
add x23, x21, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0x0955972904da7bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1a0ae83af87c5463 # initialize rs1
li x17, 0x72fcfe3a55019ebf # initialize rs2
add x25, x3, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x88e5b5e447ecfe8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x429086d7a9141cd2 # initialize rs1
li x18, 0x7520e9057de62c23 # initialize rs2
add x5, x22, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x26, 0x575e3024e638c81c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x207212c48d8f9d1e # initialize rs1
li x19, 0x7705fb52324c4831 # initialize rs2
add x26, x27, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x3508ce455c5e299c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdcc416e1e1e9986a # initialize rs1
li x20, 0xbeded92d7405a785 # initialize rs2
add x5, x4, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0x1ce8383615b6be8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3a78c9be75cccf5c # initialize rs1
li x21, 0xd82df1f9f7c2c2d4 # initialize rs2
add x8, x12, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0x345fafa2917ccf54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf7dbaba709d16224 # initialize rs1
li x22, 0x9babe29e90d93025 # initialize rs2
add x5, x8, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x4, 0xdbcae6197c983c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0b7e91df0aa252d5 # initialize rs1
li x23, 0x00a5dc08adaa7ab3 # initialize rs2
add x4, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x7, 0x6673cdf431b19c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfe7ab4d7f034d6c2 # initialize rs1
li x24, 0xed29163213599fc5 # initialize rs2
add x7, x25, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x4, 0x9199f7d3e0a957ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xec888c1ee31e28d4 # initialize rs1
li x25, 0x7c3234d901eab1a3 # initialize rs2
add x4, x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0xbc2b589d5327a585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfcb4976ca9e0fc8b # initialize rs1
li x26, 0xc1bbb61e678b0849 # initialize rs2
add x11, x27, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x3fbcc97841d0e2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4cb75983fe382262 # initialize rs1
li x27, 0x35b2003a0aaf87c5 # initialize rs2
add x5, x29, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x8, 0xfa6b8446b468c371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7c908ed96bef6559 # initialize rs1
li x28, 0x24e6d658558292a8 # initialize rs2
add x8, x22, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0xbe38a3ae1e351cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8721ae8fccf26b00 # initialize rs1
li x29, 0x653a5c9a93e4d7e4 # initialize rs2
add x26, x7, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0x285ea53c549518a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5cee9e1784713baf # initialize rs1
li x30, 0x5870130b4cc888a6 # initialize rs2
add x20, x4, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x20, 0x7aae69c655f97058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x529d20a6590f85a4 # initialize rs1
li x31, 0xc3bb63535d4dd79b # initialize rs2
add x20, x24, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x5dc8026fcd5d457f)
li x30, 0xf1a2e7eb1f97ad74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf1a2e7eb1f97ad74 # initialize rs1
li x0, 0xc6e96945f96f3cd8 # initialize rs2
add x30, x31, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xc36d567208612689)
li x15, 0xc36d567208612689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc36d567208612689 # initialize rs1
li x16, 0xc36d567208612689 # initialize rs2
add x15, x0, x16 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x251108a9f863cf0e)
li x21, 0xfbc327814c3cbd93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x251108a9f863cf0e # initialize rs1
li x3, 0x251108a9f863cf0e # initialize rs2
add x21, x25, x3 # perform operation

# Testcase cmp_gpr_hazard raw test
add x12, x23, x9 # perform first operation
add x15, x12, x2 # perform second operation

# Testcase cmp_gpr_hazard raw test
add x14, x7, x28 # perform first operation
add x4, x5, x14 # perform second operation

# Testcase cmp_gpr_hazard waw test
add x28, x25, x29 # perform first operation
add x28, x13, x14 # perform second operation

# Testcase cmp_gpr_hazard waw test
add x7, x15, x31 # perform first operation
add x7, x22, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
add x11, x21, x9 # perform first operation
add x21, x24, x13 # perform second operation

# Testcase cmp_gpr_hazard war test
add x19, x3, x14 # perform first operation
add x14, x3, x24 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0xc358739e4a875249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x0, 0x53abe2ea61ab0d66 # initialize rs2
add x3, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x3fbd177c3c97e646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
add x30, x5, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0xd0c77dd25ebb00e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
add x9, x10, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x71bb05e878ab4acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x0, 0x8cd417267d3ce13e # initialize rs2
add x5, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x06ca02debf57fc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
add x12, x9, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x614882ae4087051b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
add x25, x30, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0x983ba6f57d81fe14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
li x0, 0x47c85483a726d45a # initialize rs2
add x6, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0x5218d7fb26fee2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
add x28, x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x313eef0133d62a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
add x1, x20, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x6, 0x083ebe6a0252f4f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x0, 0x7ec01fa8ce21c2ab # initialize rs2
add x6, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x11, 0xeba5715cb2834a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x4, 0x8000000000000000 # initialize rs2
add x11, x6, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x19, 0xdba624929b73f2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
add x19, x10, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0xaff22bd3d1e3cf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x0, 0x34d8f5422047800b # initialize rs2
add x27, x29, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x9ece377d742bed26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
add x27, x31, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x14, 0x4707d3a8fa15bc82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
add x14, x13, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x18, 0x5e947b337ff91810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x0, 0x6517c66b440516c4 # initialize rs2
add x18, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x6, 0x09c663bc497022e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
add x6, x20, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x12, 0x313d6c08ca536ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
add x12, x13, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x10, 0x26586fa26e9344f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs1
li x0, 0x3fc2ff0e9fa4628c # initialize rs2
add x10, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x27, 0x129d896dbdcfc2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
add x27, x8, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x25, 0x6d6f54d1330d011a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
add x25, x28, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x7, 0xddf490a8083111d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x0, 0x9cc0e9580a5d16cc # initialize rs2
add x7, x15, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x6, 0x76e183de36cd8dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
add x6, x10, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x30, 0x6b3028b787263861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
add x30, x21, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x16, 0x4cc9bb21f611d5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x0, 0xdd802d4fc760df56 # initialize rs2
add x16, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x27, 0xc6807a0145c45093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
add x27, x14, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x13, 0xe0c545f0afcbd78f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
add x13, x28, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x17, 0x935f530a634af11d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0xca343502a05331aa # initialize rs2
add x17, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x16, 0x3cde95480d448822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
add x16, x18, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x14, 0xd38a63dd05276b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
add x14, x23, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xd97e03a9ad77b136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0xe91e4560ec3b3876 # initialize rs2
add x28, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x30, 0x89865888a23a15ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x30, x24, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x99d30d2f3c6a4ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x4, x17, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x18, 0x0a4fb42caed36bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
li x0, 0x191e68902381adc2 # initialize rs2
add x18, x19, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x26, 0x3152f0106e6bcc9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
add x26, x11, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x16, 0x43e18262b5ff75ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
add x16, x8, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x5c5a4964b1a0ec47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x0, 0x0ce80032f558b451 # initialize rs2
add x20, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x56bf532b0dafa9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
add x1, x20, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0x53d8d87cc5e64c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
add x27, x1, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x25, 0x1b68ceb2c9c9e1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x0, 0xbed03ccbb8392b2d # initialize rs2
add x25, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x390b5c752d0d0fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
add x29, x23, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x4acccfeacb87f2a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
add x8, x27, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0x3371d72698cf5313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x0, 0xd750bafb0babfa76 # initialize rs2
add x22, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x30, 0x53340bb03f102d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
add x30, x15, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x26, 0x0bb8ff27bee45224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
add x26, x31, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x22, 0xa2bc61f7b0737453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x0, 0x3028dda7d1db9d7d # initialize rs2
add x22, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x18, 0xa2bc63e3ed877b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
add x18, x6, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x22, 0x6c21e5602cb59751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
add x22, x20, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0xfafe7d3866978a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x6, 0x7d64cdc6f0d8d62c # initialize rs2
add x30, x27, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x7b0dad02f35f03e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x17, 0x9fab75ba1c0a1f47 # initialize rs2
add x24, x9, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x4e0a165fd4b99259 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x14, 0x3bc93ba7e8635ef1 # initialize rs2
add x1, x26, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0x7e31b8b8762f8725 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x13, 0x681fb8291a7f71fd # initialize rs2
add x15, x6, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0xa87cecba351575cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x1, 0xc8efdc17c928cd3a # initialize rs2
add x10, x28, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x29, 0x19615bb664d8964c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0x0c0cd9eb3bf6b5ca # initialize rs2
add x29, x19, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x19, 0x991dc01accf8b0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
li x10, 0x50ac8bf7f71aff64 # initialize rs2
add x19, x18, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x7, 0x8506808a1799f5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x19, 0x4a04d5ad2207dc5b # initialize rs2
add x7, x31, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x21, 0x0b3a2a252b159ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x10, 0x6b9c936ad74046e4 # initialize rs2
add x21, x22, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x25, 0x35857355a5c6fb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x3e7e594f35c97cc4 # initialize rs2
add x25, x30, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0x5dd0c5be1463c068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0af69800f0a067c8 # initialize rs2
add x5, x17, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x11, 0x180c95c844d9c4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x3d3a830c7b34e9b1 # initialize rs2
add x11, x26, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xf4fd05d7c3ef65c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x1, 0x9f98fb7b2130a941 # initialize rs2
add x9, x24, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xf6603b2fcf15b342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x9, 0x3d261bc1967cbacf # initialize rs2
add x11, x19, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0xf6c208706ec2b9da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x22, 0xfc64ee20d7d549dd # initialize rs2
add x24, x6, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x2ad7f5e68c522445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x24, 0x51e40e49dbce5b58 # initialize rs2
add x3, x11, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0xc8ba4336013d3b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaf1db440da1273b1 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
add x29, x30, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xd66de1705500a60b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb5be57d0d7793756 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
add x17, x31, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x925a2ba43bd15857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x33f3e223a2d47e84 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
add x2, x10, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x07b8fd37a31fe9c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3de9cf9a8369ea76 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
add x22, x4, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x5, 0x15d3437ebc82844e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbdaaddf2e1a3e6f5 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
add x5, x3, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0x087a3bb77a4950de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7e00b87b078b4f76 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
add x26, x8, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x43d679820e900aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc21f0e4e29b8a79e # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
add x31, x23, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x4, 0x4dea10c510ef1ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x33a7111085a2a77a # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
add x4, x12, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x25, 0xff0e189171bdc42f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x429fa76b0c77f00c # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
add x25, x18, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x3, 0x6d293d21a13c6d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x62ba64c073417c9b # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
add x3, x22, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5e05a6783bcfd2ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6c2b33e3ea1e3de7 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x27, x26, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x28, 0x5b87ce10a60de309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb79ab791c196555d # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
add x28, x19, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x4d7e7eba71f195ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x526228ceb9fc3f93 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
add x9, x25, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0x0b64e6021f8a8ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x20dcc8d936e2458f # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
add x1, x31, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0xf99142ba27ce09a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc366388450e2f9be # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
add x22, x6, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x8, 0x2a63e76862b07ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xde91842c4a0ce83d # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
add x8, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x18, 0x84bbb7459eb2d6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
add x18, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x075e1c3dd84fa9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
add x18, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x8, 0xc6f25c1b63a15167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
add x8, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x26, 0x087a5b25cdc784c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
add x26, x24, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x31, 0xa0d90a9ef791fe54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
add x31, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x10, 0x13ee29cd803b11ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
add x10, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x29, 0x77ab419eab9e0015 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
add x29, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x20, 0x08afc71ae05976b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
add x20, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x5, 0xe417b46670cf87e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
add x5, x23, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x22, 0x126cae24eca0037e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
add x22, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x77e463b185fd15d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x30, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x31, 0x0af93bd30ae5375f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
add x31, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x1fe171d4a5ce6aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
add x12, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x17, 0xb9ecb6bbf3e31d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
add x17, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x13, 0x369e853788cabd9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
add x13, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x19, 0x15e42bd384815ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
add x19, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0xa124c3bf369ba3bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
add x24, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x8, 0x1ae4bf5a28a4a38c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
add x8, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0xd53decede4320932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
add x14, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x4, 0xfc49cda4fd7d2f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
add x4, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x17, 0x3d93e00d273a978a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
add x17, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x12, 0x348d3be3b90afb31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
add x12, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x13, 0xb9af40735b5b9c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
add x13, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x12, 0x8f9c05a13d2e3874 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
add x12, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x28, 0x72f22b895c72d2c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
add x28, x4, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x22, 0x0c4cc1f3cff979c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
add x22, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x427e0cdb28e7b782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x12, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x21, 0xcd9d5ba9c80a58bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
add x21, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0xc98e8665acb966d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
add x27, x12, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x3470f6fc3fcf5a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
add x12, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x30, 0xccd83465b0471df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
add x30, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x20, 0x57728f6d9d188fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
add x20, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x2342165020ff56ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
add x20, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x21c5ea3ab3ec02a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
add x26, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x31, 0x3f91859e315ccc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
add x31, x12, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x22, 0x12e5b9d93a19e314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
add x22, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x19, 0xe291ac7df317c4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
add x19, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0xca7d90c6419fe612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
add x7, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x19, 0x56aa2632eb041a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
add x19, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x20, 0x2967e270db265281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
add x20, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x6, 0xc7133367e5bccf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
add x6, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x11, 0xabd4598f41250798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
add x11, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xbbce838859eaa514 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x19, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x5, 0x8e672cc9d03ddc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
add x5, x4, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0xd6533799ebcf569e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
add x18, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x781355a6cba59bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
add x28, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x4, 0x37167a2f2129dfe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
add x4, x10, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x3, 0xfca3c973972ec1ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
add x3, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x11, 0x0811cf299eee2ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
add x11, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x7, 0x171a32dc77a01a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
add x7, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x878f4325ca1d3a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
add x31, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0xedd0015bf253c1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
add x6, x18, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x4, 0x115e3e35dd770494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
add x4, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x2, 0x3c2260d421a90d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
add x2, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x2f874d4084e52734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
add x31, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x30, 0x63d5e409c049f368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
add x30, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x30, 0xd23322c44da216d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
add x30, x27, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x13, 0x10a9fdc2d9a590ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
add x13, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00562e2335015169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x23, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0x61165796c0c0ebb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
add x1, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0x87f62aff045afcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
add x6, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x10, 0xf24dfb797a16637d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
add x10, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x56bad0e1e877b1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
add x15, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0xadbd4aa13d9baee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
add x10, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x22, 0x062d90a4e9e4cb99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
add x22, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x7, 0x7ae1287662b031f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
add x7, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x6, 0xcdb101c9356e61fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
add x6, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x011ff143bdeca7d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
add x11, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x25, 0xa7fbd072ba98a1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
add x25, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x6e942d6db29e228a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
add x3, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x2, 0xad5890600ab257c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
add x2, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x11, 0xb4727c60ae2cd111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
add x11, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x26, 0x2d7b6ef286a5e452 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
add x26, x13, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x6, 0xa02c7218a708dc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
add x6, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7122176dfae8c185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x25, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x1, 0xfd3631cd135bdc4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
add x1, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x8, 0x97994857c9cbc989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add x8, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x17, 0xcf78d1423caeca41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
add x17, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x22, 0xf650b679f426b309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
add x22, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x1, 0xb1c3d9994dd32bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
add x1, x23, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x6, 0xad47016e82d93d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
add x6, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x31, 0xbd69655cfc3bb821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
add x31, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x5, 0xe81e934ba2ad3f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
add x5, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x3, 0xa9f2b69dbdbe6611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
add x3, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x14, 0xd4fb490e66d69f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
add x14, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x1d52a6a64abb7fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
add x14, x19, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x9e27f282fb977f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
add x6, x17, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0xa6a3b9007626f22d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
add x3, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x60644949424955e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
add x31, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x31, 0x59e81ebdcd01432f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f7 # initialize rs2
add x31, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xb24279ada31550cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x10, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x3, 0x0e8a6b88776209fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
add x3, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x2, 0x60a7f84ac42658cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
add x2, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x18, 0x9491da78fc5fe583 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
add x18, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0xbe1dbdad1e89c469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
add x27, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x7, 0xbfc062aa844fad62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
add x7, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x13, 0xc2e169c308ee0a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
add x13, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x4, 0xcbd93a994b6da797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
add x4, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x19, 0x93f6f11a913d3077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
add x19, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x16, 0x574d6d98f9a2355b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
add x16, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0xb3bb87dac43e3f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
add x30, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x5e9a95302db4ec1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
add x20, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0xce0d95d6509f8eab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
add x22, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x29, 0x36d6bda956145026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
add x29, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x17, 0x8fce0c49d03a7e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
add x17, x7, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x31, 0x8e11b3de1595aa85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
add x31, x9, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x59674d7911c62bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x28, x25, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xfa63c300c015e95e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
add x24, x14, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x19, 0x8aebd59adb43af63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
add x19, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x24, 0xef6dda803a042227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
add x24, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x30, 0x444fc00d696436fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
add x30, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x3, 0xfcf9a5fbbd1313f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
add x3, x24, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x11, 0x5700f32a3c3e8ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
add x11, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x12, 0xec56d5de1bacdd60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
add x12, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x22, 0x26ff5a397add74d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
add x22, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x8, 0xa26dc9805cc7bfa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
add x8, x17, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x24, 0x4ab1b86b6fe5f721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
add x24, x4, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x15, 0x698a2d9aed8ce9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
add x15, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0x456b6f0fb29dd844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
add x25, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x25, 0x24a87172aa3e7991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
add x25, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0xd70a22df78c05509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
add x26, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0x028caf1c0214e5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
add x13, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xa1613df7668680a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x13, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0x4ab62b503f61959e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
add x23, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0x4e1233e29d3234df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
add x14, x25, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x25, 0x71da143076781c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
add x25, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x22, 0x1bd92dd3ad1a9909 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
add x22, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xefd8150f571b27d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
add x16, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x28, 0x3c9c19a727bc414a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
add x28, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x19, 0x18dcea8ebef128b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
add x19, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x16, 0x9f09f682d4104642 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
add x16, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x13, 0x924ca92d77d63bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
add x13, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0x71b007ba499c195e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
add x15, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0xa3e5fd9912fd7e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
add x27, x26, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x6f645b81740130c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
add x12, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x4, 0x1c1202c49e44d96b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
add x4, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x388dfeca7dbeb550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
add x1, x16, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x29, 0xd6cf67497484002a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
add x29, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0c3fc99ef112a419 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x27, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7757dd91c527435c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
add x24, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x29, 0xfd0d898cb76bf467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
add x29, x7, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x18336cb33cffe51d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
add x1, x29, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x11, 0x1173d555233798df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
add x11, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x29, 0xae50e4f4e4f00363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
add x29, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x2, 0xd80a2a23231a9e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
add x2, x29, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x28, 0x8363337489fb9cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
add x28, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x12, 0xa76b6ec8dd2cdb15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
add x12, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x3, 0xa5de099473ebdabc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
add x3, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x16, 0x48e3d644ae325e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
add x16, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x9, 0xb651310376ecb6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
add x9, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x24, 0x7544ef0f30c94303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
add x24, x18, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x13, 0x3bf23dcf97cbdc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
add x13, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x25, 0x86bf59a0316623dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
add x25, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x7, 0x25efdd676487aeb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
add x7, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xde0e0bd76a9c796c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x1, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x26, 0xce9e9e1859646f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
add x26, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x22, 0xfe207fc72efb49ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add x22, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x23, 0x186be2ee9f94ee4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
add x23, x28, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x9, 0x1b617fc061743180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
add x9, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x20, 0xf60d059da8e8cb21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
add x20, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x9, 0x6320f9a8d3e0be87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
add x9, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x24, 0x648fe7a2af9f3e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
add x24, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x23, 0x5d83c1b4dff27d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
add x23, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x15, 0xb9ccab158b63d102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
add x15, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaa3849144dccc33e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
add x13, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0xbbc4c39836b2c0ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
add x1, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x9, 0x187d6e28aa696bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
add x9, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x31, 0x38a5bb3586d063f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
add x31, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x30, 0x22039f51223ad1e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
add x30, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x7, 0x6a8a9427d19881f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
add x7, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x106d323804dd05c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x26, x10, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x4, 0x149268c8676a310f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
add x4, x7, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x10, 0x9654e49aa3dab566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
add x10, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xbbe724e899b7e2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
add x15, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0x952c1dec09666f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
add x16, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x13, 0x264d05a0d66b0717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
add x13, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x3, 0x45276851a422546c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
add x3, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x31, 0xff2bc688d130b01b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
add x31, x3, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x3, 0xeb0219c497dc0366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
add x3, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x8, 0xad8517115ce2a62a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
add x8, x25, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x11, 0xecddbc008973f362 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
add x11, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x19, 0x39f93a05bf522f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
add x19, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x15, 0x58928fb70135abb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
add x15, x30, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x8, 0x6e5fcecc8146659e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
add x8, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x939503795aa966d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
add x16, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x24, 0x7ebbfc36ccff55d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
add x24, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x08762c7a5c451617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x13, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x12, 0xd1e850b7eb2c0884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
add x12, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x1, 0x3f64d2af4fc34eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
add x1, x23, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x8, 0xa03d3bf18db2e393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
add x8, x6, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x4, 0xe89e730e70c3e52b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
add x4, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x27, 0x4377c6ca879a4b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
add x27, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0x535061a1d35e8ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
add x17, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0x93d3d77bbbb4438f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
add x3, x30, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0x640f01640ef92165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
add x26, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x31, 0xf4c0b3bc5ec78e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
add x31, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x7, 0x53fd0a1a38091c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
add x7, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x16, 0xb37c8f5ef7b1e2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
add x16, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0xa1e89807ab3d7758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
add x13, x25, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x28, 0xbb955c9760e2daef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
add x28, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x68bdd2c9dc7bc839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
add x22, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x3, 0x76ee853571ad204f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
add x3, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xbeac8548055b28b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x11, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x18, 0xf30ac0d684e912ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
add x18, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x15, 0x7515aeeeb1e28f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
add x15, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0xa4bf8070c6b238db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
add x9, x3, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x2, 0xf41450aa2c3638b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
add x2, x10, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x16, 0x2a30fd12909d6674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
add x16, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x4, 0x94327e7afcbe6c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
add x4, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x24, 0xf75b64287cb33c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
add x24, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x8d65a589e3c6394d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
add x14, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x26, 0x9dde83a0817be81b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
add x26, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x1, 0x75fdeb42699b68ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
add x1, x9, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x6c89081df8b83fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
add x13, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0xb0f92b088bf457a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
add x7, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x4, 0x9a9f89eb7a0b085e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
add x4, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x35dabd668865d869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
add x21, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0x5efd3d8c109d704c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
add x30, x14, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfa9c7389d200250f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x22, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x11, 0x544da43de3735d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
add x11, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0xe8673a479481f3f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
add x10, x22, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0x15f1eba55ab0b516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
add x27, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x25, 0xc530421fe9262967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
add x25, x24, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x13, 0xc5fb5d8f228b9e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
add x13, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x6, 0x810f45b8cdd57058 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
add x6, x27, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x29, 0x893ba470300f6129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
add x29, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x11, 0x34a25591b695a923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
add x11, x13, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x29, 0x6ecad5f7de24e694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
add x29, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x26, 0xbd548a67d13372ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
add x26, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x31, 0x8e983bb52e8cf293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
add x31, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x29, 0x3d43a6e951023f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
add x29, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x25, 0xd3079367c4ca03cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
add x25, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x25, 0x7ca05145adbe95a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
add x25, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x13, 0x6808379bba7710ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
add x13, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x4688117da785db28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x28, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x11, 0x95ee09884c9aec82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
add x11, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0xeb1bdf4028a639bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
add x12, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x10, 0x1f04da37f84e45d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
add x10, x13, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x4e0cbe67dea02ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
add x14, x3, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x9, 0x2d14cb7576d7012e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
add x9, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x6, 0x290e1a5c8ef3e2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
add x6, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x3, 0x577760e311ac9e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
add x3, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x21, 0x12c79dfd3dfdb2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
add x21, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x13, 0xc11def8a45f934a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
add x13, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x24, 0x53a01932bb534c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
add x24, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8d0df2b960b47728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
add x17, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x4, 0x3eeb638a23099bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
add x4, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x29, 0x66894ed587e80994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
add x29, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x12, 0x8754f48e54cd29cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
add x12, x16, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x24, 0x4298fc3628103b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x3, 0x5bbc887763ae86f7 # initialize rs2
add x24, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x055c0ef5a7f2606d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
add x23, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x25, 0x6fe4510312cf26a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
add x25, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x3ba2c5de46dd6ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
add x12, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x1, 0x45d75ff248610bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
add x1, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0x0aeec25e70707bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
add x27, x10, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x11, 0x547f8ff9501ae71c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
add x11, x4, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8d40d78d0708cade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x309c6cf31683c52c # initialize rs1
li x3, 0x6af131936281801a # initialize rs2
add x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5111cad137799f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5f93a28adb3274fb # initialize rs1
li x18, 0x4b514e837b512a8a # initialize rs2
add x1, x1, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xef19f2f6b50548a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xabbe0fd3c5a3d889 # initialize rs1
li x5, 0x9d5f050fe78d370c # initialize rs2
add x2, x2, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7e049f37e07563ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7c933eb4222a0014 # initialize rs1
li x12, 0xd3e5240b7ee2e0c0 # initialize rs2
add x3, x3, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x1dc65e0a6e5fee33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x71317c8e1b21b298 # initialize rs1
li x4, 0x95d9534613e91c38 # initialize rs2
add x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x05d070088b0b92fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x623f672b4b97523b # initialize rs1
li x21, 0xd50d699578f982c8 # initialize rs2
add x5, x5, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x43623d03900cfa69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc186ac56c97b749f # initialize rs1
li x19, 0x5be1d7082cddaac3 # initialize rs2
add x6, x6, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xfe78c002126b6f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x388348e814b4b532 # initialize rs1
li x1, 0xe8f91b707035be49 # initialize rs2
add x7, x7, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2166a8c29e3a624c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b74311f9a278094 # initialize rs1
li x13, 0x9ad7bf70c3fb1f37 # initialize rs2
add x8, x8, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc85e02aafbcebedc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9999cb5f54568440 # initialize rs1
li x31, 0x193a93ceafbb6252 # initialize rs2
add x9, x9, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4296d1d432dc75bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa50851ace970d2cb # initialize rs1
li x4, 0x64b804fead804bbd # initialize rs2
add x10, x10, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x710ad03e27a648e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x195341d6a563d039 # initialize rs1
li x22, 0x78840e1bc81677f2 # initialize rs2
add x11, x11, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x62376fb90b6e8654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0024124be4514feb # initialize rs1
li x7, 0xf73b0039df1998df # initialize rs2
add x12, x12, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcb623437fdc1fd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x27aac146e9bf3adf # initialize rs1
li x25, 0xd6041a58aa972496 # initialize rs2
add x13, x13, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x029ef90ffd52adda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa58a6a180980636b # initialize rs1
li x19, 0xfeecb15fece345b2 # initialize rs2
add x14, x14, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb27d11adf1701fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9a334b5771327669 # initialize rs1
li x9, 0x91e253b31966efd3 # initialize rs2
add x15, x15, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x76dc81ae4f1f12bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe430f2cb00435531 # initialize rs1
li x27, 0x417eb28da8645cb1 # initialize rs2
add x16, x16, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xea5f193e5edd5dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3f307027acd0ed5c # initialize rs1
li x15, 0x96454152471b38d4 # initialize rs2
add x17, x17, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xffc4e6b7594e277d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x70cc798787388826 # initialize rs1
li x15, 0x927e0b06aaf709f3 # initialize rs2
add x18, x18, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xcb8629b030bea131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x094e3076b207f774 # initialize rs1
li x13, 0x5396a5dd75f5b3b0 # initialize rs2
add x19, x19, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc3976322f083da84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe0904f95f5a93183 # initialize rs1
li x23, 0xbd89e176e6419d50 # initialize rs2
add x20, x20, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x03235e41a9fc10c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x79a1c8f755f1e399 # initialize rs1
li x25, 0x677a687af1a682a7 # initialize rs2
add x21, x21, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6af0801a234b7013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf5dbaeb1a938c73d # initialize rs1
li x11, 0xac17937ef9750c41 # initialize rs2
add x22, x22, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdb1549b115ae6bd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x267ba470375cf6e0 # initialize rs1
li x8, 0xf0b35db661fe9dc2 # initialize rs2
add x23, x23, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f0297030fd99036 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x977c246d2dab1f85 # initialize rs1
li x30, 0x131e13cc5aa9420e # initialize rs2
add x24, x24, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x35ebe77d97dd98a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc19229988b389cb9 # initialize rs1
li x19, 0xfed95099caf06a40 # initialize rs2
add x25, x25, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2d7b83957dc78475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9ce4c5369330276b # initialize rs1
li x14, 0x6cbdefd4e81d25e2 # initialize rs2
add x26, x26, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd2248b10320f2ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x79a3928614f2fa3a # initialize rs1
li x25, 0x5a2c4d4c129f35f7 # initialize rs2
add x27, x27, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0f9c5e83fe380d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7f3d2cd37e86c853 # initialize rs1
li x14, 0x71b2a3af84ab411f # initialize rs2
add x28, x28, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x261c882d4d74e85b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfcfb3a434bb68fce # initialize rs1
li x11, 0x80f63d897d359eaf # initialize rs2
add x29, x29, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x87c7ccd90ebbcf16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa00c549219566aeb # initialize rs1
li x17, 0xe4dc2aa681c3b89a # initialize rs2
add x30, x30, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xefd1dd46f6923b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe11e738426a025e1 # initialize rs1
li x25, 0x9b91ec3e1af4e55f # initialize rs2
add x31, x31, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x796643633cb4df66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7922495ca32612dc # initialize rs1
li x0, 0xf9c0cdf39e9d70ba # initialize rs2
add x0, x31, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xf1faf984ca60a306 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb76ac2af005a413a # initialize rs1
li x1, 0x82908cca87742898 # initialize rs2
add x1, x17, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x4dbf4d76c3065b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x84416d68cabda506 # initialize rs1
li x2, 0xc3ff7ebe1628b57b # initialize rs2
add x2, x30, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xcac5f0bf2293934a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x36209fee60518e0a # initialize rs1
li x3, 0xcfc3535f35195faf # initialize rs2
add x3, x21, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x985ae1bbb6d72f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6c0eb2300e321d4f # initialize rs1
li x4, 0xa85595e1c13b124a # initialize rs2
add x4, x30, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x237f5b184c968464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x653e242ac91d763c # initialize rs1
li x5, 0x3c06088ea6367c20 # initialize rs2
add x5, x23, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xba64e6b73dfd7f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0838794780065bd7 # initialize rs1
li x6, 0xf733281068ed65d8 # initialize rs2
add x6, x16, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xe3d551868f60163f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x362c748efd458cd8 # initialize rs1
li x7, 0x6af19bc90a4edde4 # initialize rs2
add x7, x19, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x29558014ea642aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x746d25d277e3ccd8 # initialize rs1
li x8, 0x0ec3440d8378f044 # initialize rs2
add x8, x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x4342863bf7c06797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xab35da51a2714e91 # initialize rs1
li x9, 0xbf145b33e9ff6c2f # initialize rs2
add x9, x9, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xd64756f35f21ad8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc016db34d8576916 # initialize rs1
li x10, 0xb79d231be7e6eab5 # initialize rs2
add x10, x11, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x46fe2ca1b4ca755b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6189e9c37d7e26e9 # initialize rs1
li x11, 0x51026f4ba6c48033 # initialize rs2
add x11, x17, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x5dab6a60d9062bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1c69df63d9c105aa # initialize rs1
li x12, 0x1c61066585f52f58 # initialize rs2
add x12, x10, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xab79678c83487b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc59d2f04ad36b5c7 # initialize rs1
li x13, 0x1b7102802be1e3e1 # initialize rs2
add x13, x9, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xfa8bb2194c01ba24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8ce114232fe501f4 # initialize rs1
li x14, 0x98fb6c528b4f0639 # initialize rs2
add x14, x7, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xe5dd08757fd69937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x31b5ff0e3f8c5ab0 # initialize rs1
li x15, 0x0a91fc74508937ff # initialize rs2
add x15, x10, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x08b858cf238837ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x708f159455534e11 # initialize rs1
li x16, 0xdb43817d3030e5a8 # initialize rs2
add x16, x17, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x8d145e03940561f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x722a7531103c637b # initialize rs1
li x17, 0xeff823b4d5407f50 # initialize rs2
add x17, x8, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x5d99a991bcae88a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x23d17bbbb7e707f2 # initialize rs1
li x18, 0xfc42f2145c672a00 # initialize rs2
add x18, x16, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x26157173968624e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf8ff41e010ea2b42 # initialize rs1
li x19, 0x159c4437439b7fab # initialize rs2
add x19, x17, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x6673564a47bab3a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xada5e6a8ed062d00 # initialize rs1
li x20, 0xf33d290c917fedca # initialize rs2
add x20, x31, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xb55254b513f7d094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x006616d0f0c4e9dd # initialize rs1
li x21, 0x181ea2ffc3e52592 # initialize rs2
add x21, x24, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x5e7adf1670b05700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf5edce02de6e53e1 # initialize rs1
li x22, 0x12f6e9dd723c026c # initialize rs2
add x22, x7, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x418da08f22812402 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaef2ee4f031410e4 # initialize rs1
li x23, 0x68310b86302dd884 # initialize rs2
add x23, x17, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0xcbf5d4f4f21e777e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x89618fd65d86c661 # initialize rs1
li x24, 0xfce0c85672be3a1d # initialize rs2
add x24, x2, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x6fb71f5f9f56a504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x83dc24d890d26729 # initialize rs1
li x25, 0x2ececcd511f5f331 # initialize rs2
add x25, x4, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x604233d7aeb1375b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0053f38172cb60e2 # initialize rs1
li x26, 0xd8d05415ec08a6a8 # initialize rs2
add x26, x2, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xb25456fe1565baae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2a577fdfa0fa97fd # initialize rs1
li x27, 0x624f056f9e5fab0c # initialize rs2
add x27, x28, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xa923e3ceaae3499e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xae6feaff7fbe5fc9 # initialize rs1
li x28, 0x4a75c5c98c0fa65f # initialize rs2
add x28, x13, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xa084d782d9a78a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x85c397b145807d80 # initialize rs1
li x29, 0x668db36ac6f26fb9 # initialize rs2
add x29, x21, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x2aaf00df87cd7ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe250e7efb5dc3288 # initialize rs1
li x30, 0x10a9328634a1c29b # initialize rs2
add x30, x10, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x0d2c349ba3993487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64d5aa7b6aa8746d # initialize rs1
li x31, 0x320b490907acb995 # initialize rs2
add x31, x8, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x893e145abc1e8812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7248472bbf2f95b5 # initialize rs1
li x0, 0x987720c776e9d176 # initialize rs2
add x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xbf343915b0046cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x776e47f847716a2b # initialize rs1
li x1, 0x876ed12f3b3f8c05 # initialize rs2
add x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe77fb794bf66b902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xbc4cb08255f20376 # initialize rs1
li x2, 0x57a2811578e757fc # initialize rs2
add x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x70bd7615aa69e9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x259d9e01d923548f # initialize rs1
li x3, 0xd04cc90bdc785190 # initialize rs2
add x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x7210f4571df19ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb37434d3b3f3f889 # initialize rs1
li x4, 0x7f44ce0d3fdb00fb # initialize rs2
add x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x3fd74b3dbb211862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x25ae1228c8040ed0 # initialize rs1
li x5, 0x7fe86759834524c2 # initialize rs2
add x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x9644ff14bacb6594 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x84395feb38bac3f4 # initialize rs1
li x6, 0x67af1084cf3c8d00 # initialize rs2
add x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x28f0062ab20753b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x948ed8b7232b1cfd # initialize rs1
li x7, 0xfafda79aa7539e22 # initialize rs2
add x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x63cfc3dc7e6f0ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0f19445cef3ccb22 # initialize rs1
li x8, 0x31ae508d3f60eefb # initialize rs2
add x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x675776103bfa8cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0cf154d1782d2662 # initialize rs1
li x9, 0x487e52088dc6899d # initialize rs2
add x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2bbbdb2ac0c06204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7c4ace35d84b471e # initialize rs1
li x10, 0x5188158726bff03c # initialize rs2
add x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x108eb77c1fb133c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe4108a39a26518be # initialize rs1
li x11, 0xdd2748de51cd97ef # initialize rs2
add x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x57d8673673fc0ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xea72eda68077aa81 # initialize rs1
li x12, 0xb28d74ca66bb4d83 # initialize rs2
add x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe99cd6f64ce032bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbc1cd8226e34ef1b # initialize rs1
li x13, 0x7b28c71abed33821 # initialize rs2
add x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe7bedf2d80066a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3b20c3008c7cc190 # initialize rs1
li x14, 0x6998b84742dc5ae9 # initialize rs2
add x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc6089fa86dc75041 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x44855bd16b0d32f8 # initialize rs1
li x15, 0x168cfefe93b901e2 # initialize rs2
add x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xbcd4e3b3c9abf3d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe98164fb32085476 # initialize rs1
li x16, 0xadfdc3516c878095 # initialize rs2
add x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xb6f60f84d795e0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaa918f168cb5440e # initialize rs1
li x17, 0x5c1c1852abcbad1f # initialize rs2
add x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x37cd0942fa6310bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5483fe6c70708aae # initialize rs1
li x18, 0x311f17cf1a132f3f # initialize rs2
add x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5649d2842115bd8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xadbf369d3f1a611c # initialize rs1
li x19, 0x6591b0f6d54ea833 # initialize rs2
add x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc64f9b5f58c05ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd8d0299cecb16714 # initialize rs1
li x20, 0x09c0927a9d480bb7 # initialize rs2
add x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xb7ec1bb0eaf64b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x32483c8401cb2280 # initialize rs1
li x21, 0xae047edbd106f8d8 # initialize rs2
add x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe781a04bebc26a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9b2933deacaae4a7 # initialize rs1
li x22, 0x7e83df5e15ac6c0c # initialize rs2
add x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x0eb33a0e661fb455 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x66beae12cea7da1b # initialize rs1
li x23, 0xe363be7b4121f9d0 # initialize rs2
add x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x6bcb2619144f1098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc3b7494712a88173 # initialize rs1
li x24, 0xd3b27c7aa27d9473 # initialize rs2
add x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8ef6245b359ba4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x18f04965908fbccd # initialize rs1
li x25, 0x30634210a0b9df7b # initialize rs2
add x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xb4c1bea3e4ee54a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6b92dd191f496d78 # initialize rs1
li x26, 0x606b59861448b061 # initialize rs2
add x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x18a5e12378b94afa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5eb8acd234bf20d3 # initialize rs1
li x27, 0xf422ad6f858306b7 # initialize rs2
add x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xbe8aea83713dd21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3fc6f3926a6886a5 # initialize rs1
li x28, 0x25577ffafa8d6cd1 # initialize rs2
add x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb26010bd6ddf8488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3ca2b9bc261b3c5f # initialize rs1
li x29, 0xb1da8620ee65417e # initialize rs2
add x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x47a9b307ed756bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x06fb05c33389e65a # initialize rs1
li x30, 0xa8dd98a7c6495619 # initialize rs2
add x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xbf71523bbd96713e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcfcadf6e40057868 # initialize rs1
li x31, 0x7c5c97179d65f8c5 # initialize rs2
add x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x1, 0x6a66da99ed219deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd2b24d4eb318eb1d # initialize rs1
li x0, 0x377fa76a69fdbd2b # initialize rs2
add x1, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x21, 0xf2355da008941ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5861454f6ccb3702 # initialize rs1
li x1, 0x1f9be690cb496c8c # initialize rs2
add x21, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x1, 0x76253d1e698c8f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfb218390a895dae1 # initialize rs1
li x2, 0x7ee8242b69ec2e60 # initialize rs2
add x1, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x9, 0x8298562f2d1117bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfdcf6be71c76bef0 # initialize rs1
li x3, 0x1b19d33056378384 # initialize rs2
add x9, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x14, 0x8d9bbfd3f934b2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc9ae1e41b43bce33 # initialize rs1
li x4, 0x56611510d02f9be8 # initialize rs2
add x14, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x1, 0x5eda1b27ca8d876e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe0141e5a02f729b2 # initialize rs1
li x5, 0xc9d573db211fc800 # initialize rs2
add x1, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x4, 0x699e593fcf3e228e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb16299ba93d6feda # initialize rs1
li x6, 0x6a23197914829bf3 # initialize rs2
add x4, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x14, 0x0ec0a853dfe1ca1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7f13c04f48d3a441 # initialize rs1
li x7, 0xa10760e3ee48301c # initialize rs2
add x14, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x19, 0x013912bcb095e5e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd44e63fcc4d48c9a # initialize rs1
li x8, 0xf99977c4fd4d15ee # initialize rs2
add x19, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x24, 0xb06c0860d675803e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x79568bf9bbc10168 # initialize rs1
li x9, 0x1daed8579a930ee1 # initialize rs2
add x24, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x13, 0x871182ad4851b712 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x580ee0b134d66d75 # initialize rs1
li x10, 0x1f1cf25b954a331a # initialize rs2
add x13, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x18, 0xc658e2de1dcff666 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd5845b7aaf6670c4 # initialize rs1
li x11, 0x40679e691226b10d # initialize rs2
add x18, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x21, 0x1d2c79ba6363e6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3e8db80307599db1 # initialize rs1
li x12, 0x09544614043fd2e2 # initialize rs2
add x21, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x6, 0x00abbfdcc1e2d99b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6eb725e2ad5789de # initialize rs1
li x13, 0x05dbcd4ca134b506 # initialize rs2
add x6, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x4, 0x02cdb77783371df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4ce02af5ed46d707 # initialize rs1
li x14, 0xb6e3036533db0159 # initialize rs2
add x4, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x1, 0xf63a47ce2654d87b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7c2813086708ca56 # initialize rs1
li x15, 0x75509e392daeff20 # initialize rs2
add x1, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x28, 0x9a306d9f0fe97ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xee0decc3f4728660 # initialize rs1
li x16, 0x941a880edee3cb1a # initialize rs2
add x28, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x5, 0x64c8a36a12a5e3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x467055384b3ff83a # initialize rs1
li x17, 0xa33a19380353dcdb # initialize rs2
add x5, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x29, 0xe8878af35287901a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb2ac664ed26fc27a # initialize rs1
li x18, 0x5a6888e21e85789a # initialize rs2
add x29, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x3, 0x4513e6bde4a67006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf5a62df0c85e1021 # initialize rs1
li x19, 0x711c40efbe9996f9 # initialize rs2
add x3, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x13, 0xa247f3aacc4d4d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x58fc0762b75df72a # initialize rs1
li x20, 0x42c11ee42d49fcfd # initialize rs2
add x13, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x10, 0x3c85576525990022 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x06ed48ae975650c8 # initialize rs1
li x21, 0xdd77d83de01bc247 # initialize rs2
add x10, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x31, 0xd2550bc7c5eaf162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8a3279f639a6cadf # initialize rs1
li x22, 0x395016473fbdfcd3 # initialize rs2
add x31, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x8, 0x7b82e33e726328f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc0eb2ffaabc64688 # initialize rs1
li x23, 0x15aea4384aefb087 # initialize rs2
add x8, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x2, 0xcc9ff816ac594f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x116feaaa4180a420 # initialize rs1
li x24, 0xcc5e6f74a632fe26 # initialize rs2
add x2, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x26, 0x83416bdb5d77994d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8dd5a2e10afcce97 # initialize rs1
li x25, 0x85ffd4078a5aefeb # initialize rs2
add x26, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x30, 0x2be6067d7b180a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe53f72a3c8b17b17 # initialize rs1
li x26, 0x115635e60b8d17bd # initialize rs2
add x30, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x7, 0xcc8052f9d67762e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x70878a20e09d3786 # initialize rs1
li x27, 0x15cf587e6a84e76c # initialize rs2
add x7, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x14, 0x9a31bc5757d0dbf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4b7755120522a311 # initialize rs1
li x28, 0x3b24ae614f0a9504 # initialize rs2
add x14, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x14, 0x466d192881f4f3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffc20108e4cd94f1 # initialize rs1
li x29, 0xed422af185e438c4 # initialize rs2
add x14, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x11, 0x5f5462a412ffdba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaff493840f6126a3 # initialize rs1
li x30, 0x9251cbf2cf4cfa16 # initialize rs2
add x11, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x13, 0x7c132d54d1ef43d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3597f3d9ca41cfc7 # initialize rs1
li x31, 0x4ca6ad5cf3f25b8f # initialize rs2
add x13, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x6b374c84e791b84b)
li x30, 0xf60236870cca1fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6b374c84e791b84b # initialize rs1
li x8, 0x8fea1db90852cce7 # initialize rs2
add x30, x12, x8 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x49b4b2121a4e7e2b)
li x3, 0xa90f4247d4d7cea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb64b4dede5b181d5 # initialize rs1
li x26, 0xd2f68cbd02fafe07 # initialize rs2
add x3, x24, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x7a45fc199c6a38d6)
li x25, 0x361af880cf0be50e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x88068de47bf565d4 # initialize rs1
li x4, 0x7a45fc199c6a38d6 # initialize rs2
add x25, x16, x4 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x34a5d513ba2cd8a9)
li x8, 0x494a3aabb125afad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2d30630978d1cc4a # initialize rs1
li x25, 0xcb5a2aec45d32757 # initialize rs2
add x8, x18, x25 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
