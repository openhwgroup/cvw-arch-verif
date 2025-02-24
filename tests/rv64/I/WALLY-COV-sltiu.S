///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sltiu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.499909
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xc85b1f042f9d039d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4f9bdd29eec7717a # initialize rs1
sltiu x0, x14, -184 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xebaf1c8bcf4b6b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x128b70cf6cee2f29 # initialize rs1
sltiu x1, x9, 459 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x7e8873bcbe2478d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd6b9ae40a406709c # initialize rs1
sltiu x2, x17, -883 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x37d049d0aa488ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x98e1b8ae9fc01f75 # initialize rs1
sltiu x3, x21, 1714 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x7c0a4c7dae0efd66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1d8350b87fd04a58 # initialize rs1
sltiu x4, x21, -1558 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x4b3299382b832a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x97d9b1adefe9cb44 # initialize rs1
sltiu x5, x4, -29 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xd3dc0a8788e2686b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3af5f723fa670beb # initialize rs1
sltiu x6, x17, -1840 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xadd1f919a4a189fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfed939e236c998b3 # initialize rs1
sltiu x7, x5, -178 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x98f671938cec15c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x269534abb48474d2 # initialize rs1
sltiu x8, x1, 1490 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x192477f3781c080a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x319e8f27d281fe6c # initialize rs1
sltiu x9, x6, -875 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb1348dd7286e8ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6cad74125719b098 # initialize rs1
sltiu x10, x1, 1202 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5ad4159be6b53302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5d83712897df1a7e # initialize rs1
sltiu x11, x14, -1799 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xeae1b2b4b681340a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x98fd0a4902950ff7 # initialize rs1
sltiu x12, x13, 940 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f52ac7997a4b84d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc982c483d9669ea1 # initialize rs1
sltiu x13, x26, 841 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8ec8d2afa9a7c646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3845d8cb369e262c # initialize rs1
sltiu x14, x24, 1141 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x936ced63fa5f8bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x509987b75231de43 # initialize rs1
sltiu x15, x31, 1622 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xdd2d40c0b13ae34d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe7c770c3bdd468f0 # initialize rs1
sltiu x16, x14, -1530 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xf2532cf339279083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd3aff919492fb25f # initialize rs1
sltiu x17, x24, 1731 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x59b5f69a9de1afa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9a612ceaa01b2d2b # initialize rs1
sltiu x18, x21, 1232 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xf4cf921625d7ca8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbdc47c5e7eb76e5d # initialize rs1
sltiu x19, x10, 894 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x93d580e5f2d37836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6631b70c0406703f # initialize rs1
sltiu x20, x17, -1395 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xfd9888450af1acea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x955adf9ca02ed58c # initialize rs1
sltiu x21, x15, 583 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc85c533613cd6aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x57e5c7ebd07cc985 # initialize rs1
sltiu x22, x21, 239 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x702cdb7fffc7629b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x69754752095cb73e # initialize rs1
sltiu x23, x7, 1860 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x1aaa8585515449f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x731d155f15bba5b5 # initialize rs1
sltiu x24, x24, 1777 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb3d7d330af9c8387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2fd54a1d59c14f27 # initialize rs1
sltiu x25, x11, 263 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x55a783c23591f5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xec8cda96d56836e4 # initialize rs1
sltiu x26, x28, -1590 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xfb12f9fbf67a38c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x06eb622ff50af3d4 # initialize rs1
sltiu x27, x15, -1765 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2b5255ccd7fdd05b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x025084f695612757 # initialize rs1
sltiu x28, x14, -624 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1ecf32a1bd645e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x461755b3e585d87e # initialize rs1
sltiu x29, x11, 1464 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x55569c5d8d80c23e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x70e030db35d22204 # initialize rs1
sltiu x30, x10, 1236 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x39bb90b7083bfca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x270d63d1e055cbd4 # initialize rs1
sltiu x31, x7, -1182 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x31, 0x53c6df064fee1f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb2c55a94178bfd34 # initialize rs1
sltiu x31, x0, -1059 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x15, 0x9bad1c2b8e329cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x36251c539e4cacff # initialize rs1
sltiu x15, x1, 1701 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x27, 0x3190d6b7327336e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x81ebb22261765a37 # initialize rs1
sltiu x27, x2, -648 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0x315f4eae0c0c809f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3e158093f0754505 # initialize rs1
sltiu x21, x3, -1706 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x0b504e9113c69cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x98247f6ebceffd70 # initialize rs1
sltiu x11, x4, -1361 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x6, 0x87d0b9afa9d59c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcb58bb6256b3f9ed # initialize rs1
sltiu x6, x5, -658 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0x8fa07caaa5a08baa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x56dcf3d35aedf3d4 # initialize rs1
sltiu x8, x6, -396 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x27, 0x6b65af0211bebdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8d30549a62055e18 # initialize rs1
sltiu x27, x7, 1063 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0x90210beb15d2eef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5b1ca4c65c1e7bd3 # initialize rs1
sltiu x1, x8, -1484 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x70e3ee3a2ab441ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2f2782c35a9d6923 # initialize rs1
sltiu x11, x9, 97 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0xcfb7cc31d3b71e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x417a69b064bb8011 # initialize rs1
sltiu x19, x10, 270 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0xc8d4daff7e756c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8d94f06931dd9495 # initialize rs1
sltiu x12, x11, 1006 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x619ad634612c9d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4956c6c9298a2688 # initialize rs1
sltiu x11, x12, -896 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x5f019623c5bcad88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf3a9e0a2fa233f9c # initialize rs1
sltiu x25, x13, 1360 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x13c783a7acf434e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf878e05629f60fa7 # initialize rs1
sltiu x13, x14, -146 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x6eeaf4d27ab8615d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbf74173a43aefb7e # initialize rs1
sltiu x16, x15, 1649 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0x80354fc739d45f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5fb9e943d9c1fd6f # initialize rs1
sltiu x7, x16, 1342 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x12, 0x3897a2bdd53960a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x137e311b2ddfadb2 # initialize rs1
sltiu x12, x17, 332 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x21, 0x42e4c64e90ab487f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa898ad0fa5c716dc # initialize rs1
sltiu x21, x18, 1023 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x31, 0x1284bfbc45004325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe56b29ba5620ddba # initialize rs1
sltiu x31, x19, -942 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x3437402b4b7cc126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa2210d0001e220c9 # initialize rs1
sltiu x2, x20, -325 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x2, 0x636f82433d36142f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3c1d9830d12687f4 # initialize rs1
sltiu x2, x21, -1080 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x26, 0xa26f884ac9b67b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x273e59ea73903410 # initialize rs1
sltiu x26, x22, -4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0x22ec88427b6747db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x932923747e3ed83f # initialize rs1
sltiu x6, x23, 569 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0x246a5cd46d489287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x97b702db838e6307 # initialize rs1
sltiu x19, x24, -177 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x38bc4c2c9976495f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd019d642a3db6924 # initialize rs1
sltiu x29, x25, -523 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0xfc8459cefbf9b363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ff53381618cb4d3 # initialize rs1
sltiu x11, x26, 353 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0x1804e8a47e877b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd15dea355e989cfb # initialize rs1
sltiu x9, x27, 1003 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x8, 0x067feb5793a111fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x44c1c360142a54c2 # initialize rs1
sltiu x8, x28, -1178 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0xc6ca74f01cc67945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4a258e3e8b0b82e4 # initialize rs1
sltiu x1, x29, -1528 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0x5c62af289861c8f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfed7b55577e70dc7 # initialize rs1
sltiu x12, x30, 1904 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0x732e9850eb9fa795 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x91fcb0a2a380daca # initialize rs1
sltiu x30, x31, 94 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xea45c36a7fa257b3)
li x8, 0x3934c5c160a52cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3934c5c160a52cd6 # initialize rs1
sltiu x8, x16, 28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x67f5bb1c28253004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
sltiu x26, x30, -854 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0xf668db2c4ff2a8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
sltiu x17, x3, -79 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x439e6a2c87811284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
sltiu x27, x19, -1742 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x7dd17a3ca4312961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
sltiu x27, x26, 679 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0x6ca5e8b8924f16f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
sltiu x30, x29, -632 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0xe8936332fc9e99ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
sltiu x25, x20, 605 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x5aebd52eafd0189e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
sltiu x8, x25, 211 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xf9f162281cbc61c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
sltiu x11, x13, -115 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x2, 0x7077a0e2f62c2e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
sltiu x2, x14, 687 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x22, 0xab03f906ff360425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
sltiu x22, x29, -352 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x22779476f74a001c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x20, x5, 928 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x4dc625faa4e12fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
sltiu x25, x12, -1762 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x627a66a7b66853f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
sltiu x1, x10, 199 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x471065bd77e3bac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
sltiu x8, x30, -1391 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x7, 0x458a3ef7ed8c1ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
sltiu x7, x5, 857 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0e065510db2347e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x16, x27, -1774 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x190574368890543c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x194d574ee00abd6f # initialize rs1
sltiu x0, x0, 477 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x806da6474816e738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb01d9cb368d632f0 # initialize rs1
sltiu x1, x1, -231 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x05b8748945120d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc808a199b22c0550 # initialize rs1
sltiu x2, x2, -1874 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2521774f1d842146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x57c123c1bfd5dd4a # initialize rs1
sltiu x3, x3, -1035 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x1b27c78a64d8f865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdc19bdb66817aa70 # initialize rs1
sltiu x4, x4, -1782 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x96754d868fb12f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf11f022cbe17b0a0 # initialize rs1
sltiu x5, x5, -1248 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x62ab8d34d0e96e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6d60619497dbe29f # initialize rs1
sltiu x6, x6, -654 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x6808e98af3330671 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6c22a848eaa7641c # initialize rs1
sltiu x7, x7, -331 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf2e7e2d6eeecda5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5e71dc0a39b72612 # initialize rs1
sltiu x8, x8, 810 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4baab1d3fc62c081 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xccf82c9761147f23 # initialize rs1
sltiu x9, x9, -1721 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x941437e93c863272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x439d21abf3588fc2 # initialize rs1
sltiu x10, x10, -165 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe9f3e10d3fcc6a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7e4111ef52efb9ce # initialize rs1
sltiu x11, x11, -433 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb78c0102c4ef89b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5d67d1f5857a5db3 # initialize rs1
sltiu x12, x12, 1586 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4d5e2c706a380cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbfc18b46d6769da5 # initialize rs1
sltiu x13, x13, 626 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4d850b79259d30de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6e7e5404f954ddcf # initialize rs1
sltiu x14, x14, 1438 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7aaddbfd4c23e84c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2c7f959f0e3a025b # initialize rs1
sltiu x15, x15, 1238 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x39160d458ad63b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9b25f5c4a5e0d255 # initialize rs1
sltiu x16, x16, -432 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc900fb80f5ced1d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x43480608dd2db138 # initialize rs1
sltiu x17, x17, -1806 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x997ebbd2c7695403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbb9dc9d38fd1d051 # initialize rs1
sltiu x18, x18, 1435 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x773d827cc20d08bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf703dcd664513703 # initialize rs1
sltiu x19, x19, -1460 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5a8515dd5653b3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf0963afd60408fc0 # initialize rs1
sltiu x20, x20, -1687 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf2b891c6ccc5f157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdc79cda66eed1c0d # initialize rs1
sltiu x21, x21, 638 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3843b23697153190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4702cfb298aad052 # initialize rs1
sltiu x22, x22, 651 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xf4e5df383beae8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x01b017819f3fbcc2 # initialize rs1
sltiu x23, x23, -1074 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5c81287efd71a59f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xea9ab4ae0b9d1d64 # initialize rs1
sltiu x24, x24, 1034 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4b1c18904f9423dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xccf890348243b81b # initialize rs1
sltiu x25, x25, 145 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xd4792072a54e28b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1992e27ca7593a6a # initialize rs1
sltiu x26, x26, -480 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9984564575589a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x854ff69260a9582c # initialize rs1
sltiu x27, x27, 1013 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x634af8a783176479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd0460771ec06924b # initialize rs1
sltiu x28, x28, 1673 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa306e2b65a76ea81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0b92eba675fd4788 # initialize rs1
sltiu x29, x29, -11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6f9b3ba0d4f920b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x760537871a7eebad # initialize rs1
sltiu x30, x30, 1292 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa5de0ccb903514db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6ee1f2192292d197 # initialize rs1
sltiu x31, x31, 610 # perform operation

# Testcase cp_imm_zero
li x17, 0x78ac49ab94a9d1cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x35c16229a25c0bb5 # initialize rs1
sltiu x17, x4, 0 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, 0 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, 1 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, 2 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, 1023 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, 1024 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, 2047 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, -2048 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, -2047 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, -2 # perform operation

# Testcase cp_imm_corners
li x8, 0xed18007ea22543d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb639813715f24d # initialize rs1
sltiu x8, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
sltiu x3, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x3, 0x5d704be7f3869ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
sltiu x3, x27, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
