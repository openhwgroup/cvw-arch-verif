///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-mulhsu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.662781
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x0d52c67360e4b3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd9ae93e0788dfadd # initialize rs1
li x9, 0x63a82ecf7e302b8b # initialize rs2
mulhsu x0, x31, x9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb98d9f25da1c1cef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6722e1cd35df5ba9 # initialize rs1
li x31, 0xacdf63ff7a5711c5 # initialize rs2
mulhsu x1, x23, x31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xedee5494b11dc3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bdc33914ed1f882 # initialize rs1
li x18, 0x8ccdd04d59d90180 # initialize rs2
mulhsu x2, x17, x18 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x44bd2d2ef3ccb565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x68f9454d70ddf90a # initialize rs1
li x6, 0x33425eed4fa2f528 # initialize rs2
mulhsu x3, x4, x6 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb39840c27da9c7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x76a44710f6a93baa # initialize rs1
li x20, 0xb5dcc822f73466a7 # initialize rs2
mulhsu x4, x1, x20 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9d932dc5923b9b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xefd266588e445ad1 # initialize rs1
li x8, 0xa4d3d62c9847d7f6 # initialize rs2
mulhsu x5, x6, x8 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xcb9ecfe832337243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a29807ec53ddf4f # initialize rs1
li x25, 0xac4e18683cf09fcc # initialize rs2
mulhsu x6, x19, x25 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x91122a8032dabbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6fabbde15c4c36e8 # initialize rs1
li x29, 0x2c821d2cc355d388 # initialize rs2
mulhsu x7, x16, x29 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xef9bd3b3b7c5d755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x748ceb80bc8db9d6 # initialize rs1
li x1, 0xbb9414ab410d1c6a # initialize rs2
mulhsu x8, x25, x1 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x5a2ea8a815493854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9a8a44225f6b18bd # initialize rs1
li x3, 0x634a367b77ef8bb1 # initialize rs2
mulhsu x9, x1, x3 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2d27b6f8114c1fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xadb444d91046e923 # initialize rs1
li x2, 0x189fa25eee3592c9 # initialize rs2
mulhsu x10, x4, x2 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8774a18ec92df82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d600f5675742236 # initialize rs1
li x13, 0x3ef75d4c5975db71 # initialize rs2
mulhsu x11, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x91caba441d83834c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x35e908145fe0e470 # initialize rs1
li x17, 0x0b0ad049241caab7 # initialize rs2
mulhsu x12, x7, x17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf015cc9519e896ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x89b22dbe74c15bae # initialize rs1
li x15, 0x3d1aaff6d6d50271 # initialize rs2
mulhsu x13, x18, x15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x843e18422b89aaec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9f1462e331a50be7 # initialize rs1
li x8, 0xf3af3ba577cbb7ae # initialize rs2
mulhsu x14, x14, x8 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6acb23dff73a9e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb578a8318190a9c7 # initialize rs1
li x27, 0xf95aa757c01796ad # initialize rs2
mulhsu x15, x7, x27 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x13259ea6ecb69574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf2d537b81b28b039 # initialize rs1
li x15, 0xae1fa05f1a18e81d # initialize rs2
mulhsu x16, x31, x15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa207b43f3172a048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8f540c28c6081579 # initialize rs1
li x28, 0x1b35fc78f913c9eb # initialize rs2
mulhsu x17, x21, x28 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb01a94cb7a000588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe8e8b88102d11006 # initialize rs1
li x8, 0xeba327ed32fde236 # initialize rs2
mulhsu x18, x17, x8 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x56f16bf4106d24b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x24d42ea12cb77b73 # initialize rs1
li x3, 0x46a5658d8ba9557f # initialize rs2
mulhsu x19, x14, x3 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x131900d13488bf36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc62dd01bd8a5f6b5 # initialize rs1
li x29, 0x1cb951b2ddae5274 # initialize rs2
mulhsu x20, x21, x29 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3622699553a77755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x154bb4a5305ff6ce # initialize rs1
li x6, 0x5d6d9603602a62d2 # initialize rs2
mulhsu x21, x20, x6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa4b3515fcb4d0951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd7854a50d881adec # initialize rs1
li x2, 0x5e9e5ea0658b0cab # initialize rs2
mulhsu x22, x10, x2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x79c159ab9b4c1b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd817c12fe838d94f # initialize rs1
li x7, 0x793da68336e21aa7 # initialize rs2
mulhsu x23, x20, x7 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x2b9be37efe706f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8e966f46d4b46132 # initialize rs1
li x15, 0xee0f7ec5ade1a016 # initialize rs2
mulhsu x24, x12, x15 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x08f236bce9beffd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0c9a8386bd53767d # initialize rs1
li x16, 0x6a0759fba652c624 # initialize rs2
mulhsu x25, x30, x16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x56e3c864e85f4e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x205e1262068c857f # initialize rs1
li x10, 0x0acc602b8a12300d # initialize rs2
mulhsu x26, x4, x10 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x212311c7880aa34b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe6e825f85522c125 # initialize rs1
li x18, 0x1175e0171c685b5f # initialize rs2
mulhsu x27, x23, x18 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x408ebf2caccf8d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x85d3615e3624b108 # initialize rs1
li x27, 0xfaf34b8b02950a95 # initialize rs2
mulhsu x28, x1, x27 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe903058cb398e3db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc48e84c70c6fb3d8 # initialize rs1
li x6, 0x3a465c5e9b118e5a # initialize rs2
mulhsu x29, x13, x6 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x168111785ce74114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x246274009d0bbad4 # initialize rs1
li x7, 0x2bf37c203ea71d13 # initialize rs2
mulhsu x30, x16, x7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa353a3c8f2d91d3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf2bbe3ffcca32d33 # initialize rs1
li x12, 0x76fb9e11edd6778a # initialize rs2
mulhsu x31, x26, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x14, 0xfaefe7d214581876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2a00fd7650b1a59a # initialize rs1
li x18, 0x9903a01bf70c9995 # initialize rs2
mulhsu x14, x0, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x831667b2bef07818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6343e94628a12722 # initialize rs1
li x19, 0x7d16cd3241bdd4ea # initialize rs2
mulhsu x25, x1, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x20, 0x9de8da8626dcae39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x02a8db4b4507398b # initialize rs1
li x30, 0xef2f1ff03e70b92a # initialize rs2
mulhsu x20, x2, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x4, 0x9f4ae1c7ebe8b050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8325c5355f4eb7e8 # initialize rs1
li x22, 0xfcd757ff222ce929 # initialize rs2
mulhsu x4, x3, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0xaafc518caa50172c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3e37a733e2c5d213 # initialize rs1
li x17, 0x77f7396d4e4f4add # initialize rs2
mulhsu x1, x4, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x28, 0xc33b357f3aca598e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x36034129fe2c21ec # initialize rs1
li x27, 0x326e14fa63f761fa # initialize rs2
mulhsu x28, x5, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x21, 0x39a91cc6ac20f4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x06fccebf66c50893 # initialize rs1
li x10, 0xae2b13984cb45cc1 # initialize rs2
mulhsu x21, x6, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x8, 0xd0e3ec96e7563a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5f9a8f126a7f66ed # initialize rs1
li x21, 0x22260cc31a0ac032 # initialize rs2
mulhsu x8, x7, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x18, 0x6360ff18f2468eff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfe286008f4f0f35b # initialize rs1
li x7, 0xadd12b9d42274d6d # initialize rs2
mulhsu x18, x8, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xb44423080471d353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6e0fd7d15d458872 # initialize rs1
li x19, 0x4d372396d062a6f1 # initialize rs2
mulhsu x8, x9, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0xa238a8cddd868747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x36cfedb0fecdac73 # initialize rs1
li x1, 0x7862c13ae1e760a1 # initialize rs2
mulhsu x14, x10, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x26, 0xa9ba0473a9db491e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xed9533eb925ef800 # initialize rs1
li x2, 0x13e3c3de35d2fcc6 # initialize rs2
mulhsu x26, x11, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0xb546fd9234cad158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe9265929c1a70d4f # initialize rs1
li x3, 0x7cab85851ce04916 # initialize rs2
mulhsu x6, x12, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0xae4c99342d4fa252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbbb88b2b99b77556 # initialize rs1
li x7, 0xe38d18a89c3aa15e # initialize rs2
mulhsu x25, x13, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x452c460a90083d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7b0586790cbfaf75 # initialize rs1
li x2, 0x670672b99ab5ae0c # initialize rs2
mulhsu x9, x14, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x9bf1ff4069854324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x787c5b370728d5b5 # initialize rs1
li x25, 0x35002fe7e2516ad2 # initialize rs2
mulhsu x18, x15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0x149c7e6f4c9c9d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xeb8dd5e36cb0d01d # initialize rs1
li x29, 0x196652c373b54302 # initialize rs2
mulhsu x10, x16, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x16, 0x7bfd6a80d10e2e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x930fa0ede0f02985 # initialize rs1
li x30, 0xca613dcee51078f7 # initialize rs2
mulhsu x16, x17, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x29, 0xa23f8d8a0195654f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2f0cace15a80ca46 # initialize rs1
li x6, 0xa67a1b4dfd0e1b3a # initialize rs2
mulhsu x29, x18, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x27, 0x65cca40c04ec6aed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6d06f8a2acd997a4 # initialize rs1
li x3, 0xe6b2ea8542b063fe # initialize rs2
mulhsu x27, x19, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x26, 0x9076d40827560b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbd1cbfb76a04eaa2 # initialize rs1
li x16, 0x9138c464b5e2e110 # initialize rs2
mulhsu x26, x20, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x19, 0x4f8385f2cf6a2f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1887bcc0694ca7f9 # initialize rs1
li x23, 0x65531b786666b751 # initialize rs2
mulhsu x19, x21, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0xfc76d0ad5fb44578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe575938d77b1fd82 # initialize rs1
li x17, 0xa9f819d01afac047 # initialize rs2
mulhsu x20, x22, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x29, 0x4b64b999f2a8c5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x783efd4bbc17d34b # initialize rs1
li x7, 0x03f2844c7c61bcf0 # initialize rs2
mulhsu x29, x23, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0xa41a3f5c5eb5e7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe5a9ad115962d06c # initialize rs1
li x22, 0x0ff32ffd33d437e1 # initialize rs2
mulhsu x5, x24, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0xf8f5ae979df1642e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe54b64fbf300440f # initialize rs1
li x10, 0x3f381de9c736938a # initialize rs2
mulhsu x17, x25, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x28, 0x3f7d5cd19e1062c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0498324c10f908af # initialize rs1
li x3, 0x4a9a9ce610707dea # initialize rs2
mulhsu x28, x26, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0xf73cff0a4247b24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7246f95019a99d36 # initialize rs1
li x26, 0xdde1f59d006c4b11 # initialize rs2
mulhsu x9, x27, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0xdd022750364f8b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xde0be3af4b0d2582 # initialize rs1
li x12, 0x3fd866d97fb3e757 # initialize rs2
mulhsu x27, x28, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0xd28eda28beb517e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x50b85e9cd3ed3554 # initialize rs1
li x31, 0x89b548436d39eb19 # initialize rs2
mulhsu x16, x29, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0x5bd7434673bce764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x844aa9475bd54e44 # initialize rs1
li x12, 0xa715ca0a2d5c1c59 # initialize rs2
mulhsu x29, x30, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0xba7f05e249c831c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8d1158e9d4df4dba # initialize rs1
li x23, 0x5e96d21b4bff377f # initialize rs2
mulhsu x6, x31, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0xd1fb6246a498900e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc6a2605e01d1fcaa # initialize rs1
li x0, 0x713b0f5b40a9b5f9 # initialize rs2
mulhsu x17, x20, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0xfcbd0a87f7427769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb39b7e518487ae63 # initialize rs1
li x1, 0x2eba2d5fc56457db # initialize rs2
mulhsu x11, x24, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0xe3d8b89d5a19f1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xae1fbf694249a542 # initialize rs1
li x2, 0x0fbd7f7951d94326 # initialize rs2
mulhsu x11, x7, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x8502bed2e4e93ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe826c6bb18b76f5b # initialize rs1
li x3, 0x06e6342edd9084db # initialize rs2
mulhsu x11, x12, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x28, 0xbbac738a73e2a1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa53b54274af86de7 # initialize rs1
li x4, 0xcfe04cfe95bd24ee # initialize rs2
mulhsu x28, x12, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x9, 0x443bf5ea2f9cce79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf38825444fdf4ec8 # initialize rs1
li x5, 0xd3a84889e2ce0551 # initialize rs2
mulhsu x9, x24, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x28, 0xc12f1b9e13ef0dba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc14487969492ec63 # initialize rs1
li x6, 0x5c4f8c4b3c380d03 # initialize rs2
mulhsu x28, x10, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x19, 0x58f42d74dd4df7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x51d3572444a35301 # initialize rs1
li x7, 0x7d801e00b14194bd # initialize rs2
mulhsu x19, x4, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x28, 0x0c814b6d7e43f6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc00333b5bb3d0788 # initialize rs1
li x8, 0x0263b80475f19ca3 # initialize rs2
mulhsu x28, x22, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x23, 0x65dfb533d80244b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x95be4ca85dbcca03 # initialize rs1
li x9, 0x12e0adc2014437fe # initialize rs2
mulhsu x23, x16, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x15, 0x255126b53fcb86cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf6d88d6d89ff0a6f # initialize rs1
li x10, 0x745e8dbd4aecc66e # initialize rs2
mulhsu x15, x29, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0xf55f02898a0507a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7473e5ca9e48e56e # initialize rs1
li x11, 0x379356c26a0b4449 # initialize rs2
mulhsu x24, x28, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x47f5b5298f14617b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x141230bebbf72065 # initialize rs1
li x12, 0xe625aaea9020adf4 # initialize rs2
mulhsu x26, x27, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0xb321c2399cf18ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0a640a80c7e18d00 # initialize rs1
li x13, 0xa04f46f71413b50b # initialize rs2
mulhsu x27, x21, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x4, 0xc50b76b7e4d5cb2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8bacbaeaa1fd8278 # initialize rs1
li x14, 0xaf7335187e80c011 # initialize rs2
mulhsu x4, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0xa8abcb0a8652fd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xef45259b1adaabd0 # initialize rs1
li x15, 0xca9dc0652db747b2 # initialize rs2
mulhsu x24, x18, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x29, 0x8dfbcab988952d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9e6f8591cb28eeb8 # initialize rs1
li x16, 0x988de10e57e1ae02 # initialize rs2
mulhsu x29, x4, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x662c1ce6d22c10d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa8551c3c69deb81f # initialize rs1
li x17, 0x785abc4212aa85a6 # initialize rs2
mulhsu x23, x5, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0x3c132e4955ac1703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdc119a4dfbdaad24 # initialize rs1
li x18, 0xde4b1111de39748d # initialize rs2
mulhsu x9, x25, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0xa7079aa38c3c3eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x32c638b1d9a88700 # initialize rs1
li x19, 0x72eac1313acbc2cf # initialize rs2
mulhsu x9, x17, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0x4f0c65f1b5469831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaeeb5a611c1b5c5 # initialize rs1
li x20, 0xf7ae8e9bdebebf28 # initialize rs2
mulhsu x2, x21, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x6, 0xbdcb2bff9dcb2e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7614d05fb51b3c21 # initialize rs1
li x21, 0x927f37bc09693ee5 # initialize rs2
mulhsu x6, x17, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0x840ab5f61e64eb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6095e86b71d23580 # initialize rs1
li x22, 0xbcc20c6efbd737b0 # initialize rs2
mulhsu x21, x25, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0xf8f33ae0a8b3d7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4ee47bb0dcb1aadc # initialize rs1
li x23, 0xa882b8740420279d # initialize rs2
mulhsu x14, x10, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x28, 0x9cc9c19f8f4eb926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc7d30f0572043380 # initialize rs1
li x24, 0x76f681c3368af5f8 # initialize rs2
mulhsu x28, x8, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xe7b2efb4945d16db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xac2786594d497fd3 # initialize rs1
li x25, 0x90019a0f15805f5f # initialize rs2
mulhsu x2, x6, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0xa8de993e5cb43bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x29fc8d7fd84b92c4 # initialize rs1
li x26, 0x563361b39167b365 # initialize rs2
mulhsu x11, x4, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0xe84c60ba466622fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbad4ad1d41a5ab74 # initialize rs1
li x27, 0x20d64a251f782cce # initialize rs2
mulhsu x29, x31, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0x5899c8518b0033a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbdeb60d07094a22a # initialize rs1
li x28, 0x38441b98184ee14b # initialize rs2
mulhsu x7, x16, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0xdec38afde66e2804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xab646c76d2f636fb # initialize rs1
li x29, 0x1adbaa1f8077d6e2 # initialize rs2
mulhsu x31, x19, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0xf0014a5ccdb2ea42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0a59daa1cd944956 # initialize rs1
li x30, 0x1e346f5a0608789f # initialize rs2
mulhsu x22, x19, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x6db7ecf71f42780c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x29354a0b9bb3a3b5 # initialize rs1
li x31, 0xc5695dcdfa85a032 # initialize rs2
mulhsu x13, x16, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x59689a39e4c511ff)
li x8, 0xccb0dddc3987de7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xccb0dddc3987de7f # initialize rs1
li x0, 0x46c33676b1e3253e # initialize rs2
mulhsu x8, x11, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xf994e7d6471a91ab)
li x6, 0xf994e7d6471a91ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf994e7d6471a91ab # initialize rs1
li x28, 0xf994e7d6471a91ab # initialize rs2
mulhsu x6, x0, x28 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xcccbd45e7d7d8ee2)
li x7, 0xeb980c5db33ff154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcccbd45e7d7d8ee2 # initialize rs1
li x2, 0xcccbd45e7d7d8ee2 # initialize rs2
mulhsu x7, x20, x2 # perform operation

# Testcase cmp_gpr_hazard raw test
mulhsu x14, x24, x29 # perform first operation
mulhsu x2, x14, x21 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulhsu x16, x12, x22 # perform first operation
mulhsu x22, x21, x16 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhsu x11, x25, x9 # perform first operation
mulhsu x11, x17, x6 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulhsu x22, x7, x17 # perform first operation
mulhsu x22, x21, x16 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhsu x30, x14, x19 # perform first operation
mulhsu x14, x3, x11 # perform second operation

# Testcase cmp_gpr_hazard war test
mulhsu x15, x21, x19 # perform first operation
mulhsu x19, x4, x23 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x8b73471406c95fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x2, 0x2fd2894c68f550f0 # initialize rs2
mulhsu x21, x26, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0xff2b135c9d5dc673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x27, 0x0a6a8861a302b01f # initialize rs2
mulhsu x24, x15, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0xc44446ae8af21db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x13, 0xbd48aa00755d164c # initialize rs2
mulhsu x7, x9, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x3, 0x4519498339367f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x7, 0x3a81cf1de0c92eb8 # initialize rs2
mulhsu x3, x17, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x7424525a8ef54e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x13, 0xfd2a5041cd5c598f # initialize rs2
mulhsu x24, x5, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0xf1a9696d34fa1570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x11, 0x62e960ca9da4aca7 # initialize rs2
mulhsu x19, x16, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x3, 0xd436b229bca50852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8621814496fa087a # initialize rs2
mulhsu x3, x29, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x4, 0x46ca30e999f8c11f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x10, 0xe2eb76966c8f5d37 # initialize rs2
mulhsu x4, x8, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0x1bf596d6774e1765 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x11, 0xea3b11cd4288a9d0 # initialize rs2
mulhsu x7, x3, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x1, 0xab4d3070fd8e993d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x4b20507120acac64 # initialize rs2
mulhsu x1, x8, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x4cd1d45716e629c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x346479859a3a3162 # initialize rs2
mulhsu x12, x31, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0xcf3669e31bcb4ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x9, 0x855c53965d4db034 # initialize rs2
mulhsu x15, x16, x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0xeaa66efba6df190e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x10, 0xe0ce3949904e04ef # initialize rs2
mulhsu x7, x19, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x9b84023d770359e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rs1
li x19, 0xde16f3385a97fedd # initialize rs2
mulhsu x9, x14, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0xd5ebaf052b349b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x26, 0xe70b92c060ddd005 # initialize rs2
mulhsu x1, x13, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0xe4961f7b66da6ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x5, 0x463eaa88c25080da # initialize rs2
mulhsu x9, x1, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0xf44fea0f50bb905d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0d66188d3bb29430 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulhsu x5, x20, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x2673f7b51691a6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb90526e0cd79b7ef # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
mulhsu x22, x27, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x3d7e8b9e91d1dfcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe807975b8521ae5f # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulhsu x10, x21, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0x2dcf9ee68b5a6834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x899c50c97a67ca4f # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulhsu x11, x16, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x68e1c0daaea7f082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x518957e87384c932 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
mulhsu x6, x23, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0x0f1c442f4ae149fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x23a506993a89cd98 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulhsu x16, x4, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x8818cfff253456f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xefd0d0940e89958d # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mulhsu x2, x11, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x006a88eef05a58e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x70621c96890aace3 # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
mulhsu x7, x23, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0xf3f4290da12aa3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa97368619ca048b1 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulhsu x21, x15, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x22, 0xa9ea8b3bab32fe64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab4ff5954990229e # initialize rs1
li x4, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x22, x26, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0x72014f899bca7e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf92edb2cd353fee3 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x7, x17, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x61b2efe81b7f449a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf9b5eb41b62045e9 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhsu x1, x26, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0x092e64edf5981c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x501ee862a5b20ae8 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulhsu x24, x14, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x6c8c1b2b9f962cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6e77ed424f737c6e # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulhsu x26, x4, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x751ff99f64e4898d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x89d41bf968c47559 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
mulhsu x25, x14, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x4377b76546cb4581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa1634683c7af5970 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhsu x18, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x19, 0x793e7a8a6e65d159 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mulhsu x19, x10, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x4, 0xd84cfb871e888388 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulhsu x4, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0xcff629bb885292c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulhsu x1, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x19, 0x57a3b0d9029f4928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhsu x19, x3, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x15, 0x0b40db6b7998c998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulhsu x15, x28, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0x00a17e6b7a5355e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulhsu x8, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0x09637ca0bcce5682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulhsu x2, x22, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x1, 0x14903ca0988465b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulhsu x1, x6, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x11, 0x16835bda9f9317ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x16, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x23, 0x1d7e59b6171ae5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x23, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x39b09be6990b8228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x29, x20, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x4, 0xb622f79e0ffa671e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulhsu x4, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x219bc5899968cc49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mulhsu x7, x17, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0xdb0d6879973e211a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulhsu x2, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x17, 0xe54a2ad3c4d5ed5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhsu x17, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x29, 0x1cad88aee93cd76a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulhsu x29, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x43ae7feed62d6214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mulhsu x22, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x172e44adc33623db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
mulhsu x6, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x4, 0x2b39ecf38b193ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
mulhsu x4, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0xbf8f1cc594a01626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulhsu x28, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x19, 0x5591fef66b514a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhsu x19, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x2, 0xc1c546c2e819d1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
mulhsu x2, x20, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x19, 0x8f231f46c1a7a178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x31, 0xdc5228746316491c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulhsu x31, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x25, 0x0228919584321edf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
mulhsu x25, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x21, 0x2303d270d31a4791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x21, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xc49f0ad8b6f33a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x23, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x8, 0x095ab65812b3905f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mulhsu x8, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x12, 0xa35a49fa7fccb9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulhsu x12, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x18, 0x2260e4a574f39a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
mulhsu x18, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x8cfe446d76110866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mulhsu x23, x15, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x11, 0x1c85dafce4407d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mulhsu x11, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x27c8b4021fb34326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
mulhsu x23, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0xa38a0da770e35fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mulhsu x24, x6, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0xf30dba6c6eb45a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
mulhsu x7, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x25, 0xd9e751adf774676d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
mulhsu x25, x13, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x12, 0x6a1a21621954b72d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulhsu x12, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x27, 0x34f6f8622c42f556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulhsu x27, x7, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x8, 0xa6b1d483d66854ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
mulhsu x8, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x18, 0x5a7a08fcdd038663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulhsu x18, x19, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x31, 0x8b71d986304cdbdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
mulhsu x31, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x15, 0xcae993d910e35b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x15, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfbb5c649e6efaa93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x20, x3, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x16, 0xc07315d3e52890ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhsu x16, x21, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0x9cd2207db6a1aac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
mulhsu x12, x9, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x5f480510f7be5168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulhsu x30, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x5, 0xb29aec615b6d191f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mulhsu x5, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x24, 0xef1d527a041cc0f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mulhsu x24, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x088e19b56f41d4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhsu x14, x12, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x14, 0x7eb1489dbdc602b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulhsu x14, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x30, 0xaa82461a69f0dab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x30, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x23, 0xb8d57c05a0020cae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
mulhsu x23, x19, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x15, 0xe22f64e47a947be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulhsu x15, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x18, 0xcc042bc12301b50e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulhsu x18, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x6228b3dd4a000c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulhsu x22, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x14, 0x46c3267daeed77f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulhsu x14, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x24, 0xc2c42cc53ad256bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mulhsu x24, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x19, 0xa2c32b05e0413fba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x19, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x43d06e77dd4babfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x7, x22, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x2e5c4ebd15ff84d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhsu x28, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x20, 0x4f255297b3f47f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhsu x20, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x13, 0xf28e364021c49799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
mulhsu x13, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x8, 0x3af843e083fe0804 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhsu x8, x13, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0x4e6a6676e21cceba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulhsu x14, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x24, 0xe08fb371224e99e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulhsu x24, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x9, 0xb4b5c6a04be17076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mulhsu x9, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0xb2e74dd30906239c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x2, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x14, 0x82b2d42f5cbf3380 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulhsu x14, x15, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x2, 0x460dc3b539d5c28a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
mulhsu x2, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x5804a2ac126337b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
mulhsu x22, x24, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x1c6bdb30da86d4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
mulhsu x30, x4, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x21, 0x097c1096b00ed4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mulhsu x21, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x31, 0xc2a3900c11e21927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhsu x31, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x30, 0xae891828d1658916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x30, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xf6c89ff55d866624 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x27, x26, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x8, 0x2f49db762f232144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
mulhsu x8, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0xd8d08760920634d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mulhsu x20, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0xad540a675314563e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mulhsu x19, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x29, 0x97ec7896957be0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mulhsu x29, x8, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x25, 0x98e9c48846100b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mulhsu x25, x23, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x22, 0x648a5a4075e6ba18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mulhsu x22, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x18, 0x8e74a76dc7e6703d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulhsu x18, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0x46a80ebe9e7e60da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
mulhsu x28, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0x7ddea733310d5c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhsu x15, x10, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x15, 0xf046eff61924b3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulhsu x15, x3, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0x8abfddf855922002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
mulhsu x29, x27, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0xa30ba4813b71f1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulhsu x27, x26, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x25, 0xdf55d5968231c94d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mulhsu x25, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xac33df97c97a569d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhsu x23, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x5, 0x7cf8f001f01b43e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x5, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xd3cdb5d7ac018a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x10, x8, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x15, 0x2a10c71f8a12fb14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
mulhsu x15, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x17, 0xa38d0b29e9912b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhsu x17, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x26, 0x2da1156b05958500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulhsu x26, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x15, 0x744e65f3fa1e3004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhsu x15, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x15, 0x088389af3eefa2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhsu x15, x2, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x7, 0xe0d3496bffe314d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulhsu x7, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x11, 0x5eea898f909055f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
mulhsu x11, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x6, 0xf90fd5dfe2111c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulhsu x6, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0x896810de1b157cad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mulhsu x6, x28, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x6, 0xf222790f8d9feaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulhsu x6, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x062947ce1e112fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulhsu x19, x6, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x54c3b813fb6abc4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mulhsu x28, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x11, 0x07e400916544bae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhsu x11, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x8b35600587c6dca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
mulhsu x25, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x17, 0xae7df3e721821269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x17, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xd33010fc7cd1898f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x25, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0x85863b3ade7e1f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mulhsu x12, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x21, 0x5fa0239c2d0a1e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
mulhsu x21, x15, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xc1f94386582927c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
mulhsu x6, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x15, 0x5eb8064e8a1de985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mulhsu x15, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x25, 0x600451ddb4670318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulhsu x25, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0x47a81570a4f8319a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mulhsu x5, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x26, 0x329c614bb7fdbf9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
mulhsu x26, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x25, 0x65b50a78cd79d0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
mulhsu x25, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xfdaa6ee72d2a3ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhsu x7, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xa2362452c8c74ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
mulhsu x29, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x7e6b533b80225459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mulhsu x26, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x013d22f4973ade0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mulhsu x28, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0xee36d457dad36711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulhsu x17, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0xb35e593e26ac49c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
mulhsu x21, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x24, 0x1084ff8efbabf3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x24, x5, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xcda18a66bf0dd028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x5, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x20, 0x7d0f4e6eb8be351b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
mulhsu x20, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x26, 0x2dd02a387c395e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mulhsu x26, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x31, 0xe900f1e8954802b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhsu x31, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x28, 0xd265e5b8a08bd2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
mulhsu x28, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x1, 0xe9b5cf976ace339f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulhsu x1, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0x8b966f834d65723a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulhsu x16, x5, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x8, 0xba449fe7edfd6b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulhsu x8, x23, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0x8c6e32a491dfb408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mulhsu x12, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x4, 0x910e18cb2c090206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
mulhsu x4, x3, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0x53b05ada0838f375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
mulhsu x23, x1, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0xc6d53d688ece34b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhsu x6, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x4, 0x19fcf091e2346d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mulhsu x4, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xe6bd35eacd302dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
mulhsu x23, x29, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x9b4b042bc4632c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
mulhsu x23, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x25, 0x493e6172201f5024 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x25, x4, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaa4823f25a52d463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x5, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x7cb422ac9f99643e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
mulhsu x7, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x24, 0x174384bb672cf06c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x24, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x22, 0x7067609baf1e5883 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
mulhsu x22, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x19, 0x89aa0734b186c2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
mulhsu x19, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xb41b6ce59cac13e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
mulhsu x6, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x16, 0x49bbce0de424221f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulhsu x16, x30, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x30, 0x91f27e3d13381f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulhsu x30, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x19, 0x22895efa87fec966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulhsu x19, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x22, 0x8172944950bc8c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulhsu x22, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x24, 0x01be381fdc0fac58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
mulhsu x24, x18, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x31, 0x7da7b2330cf634f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mulhsu x31, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x8, 0xdc5b5107b9e7140f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mulhsu x8, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x31, 0x0bf5d107be796164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
mulhsu x31, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x12, 0x890e583610d26e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mulhsu x12, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x21, 0x4a3e179b9b83944b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x21, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xa19fd1cadefe3b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x8, x5, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x4, 0x7a81d13171d06124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
mulhsu x4, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x16, 0x2dcd6823c6f8c4b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulhsu x16, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x15, 0x871b60eeafc52f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
mulhsu x15, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x21, 0xf034d6fd3ff63af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
mulhsu x21, x26, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x22, 0xcbc6cfbbaf3455ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhsu x22, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x12, 0xbb8ef2af4179d660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhsu x12, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x18, 0x90d12082de2a362f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulhsu x18, x31, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x25, 0xd7fcdc6b1618d81d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulhsu x25, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x7, 0x9f43e797db2759a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mulhsu x7, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x11, 0xa4a9f85d84728570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
mulhsu x11, x18, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x5, 0xa197e2861938faa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulhsu x5, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x25, 0x2a2da65d0c25832d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x25, x7, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x18, 0x642a288da5a9e115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
mulhsu x18, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x12, 0xe980efc8b82f1c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulhsu x12, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x31, 0xa55199c91a1eeb4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x31, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7f0fd95182a12ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x30, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x17, 0xf48576bad38b0151 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
mulhsu x17, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x2, 0xc9fa71efad21c6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
mulhsu x2, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xb9d4716b226faa6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mulhsu x13, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xc40a47caa3910319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mulhsu x16, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x5, 0x75853f532cd3fc02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mulhsu x5, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0xcb830c887987e907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mulhsu x18, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x4, 0xdc2dadaf412237ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
mulhsu x4, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0x1448a4e591eae984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhsu x29, x21, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x3, 0x04b9acb8590f5c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhsu x3, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x10, 0x9b94b36256ee7d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mulhsu x10, x13, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x10, 0x4768b7a90f834d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
mulhsu x10, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x19, 0xdf81f296979d5a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x30, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0xd94a3062e7e18795 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
mulhsu x27, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x3, 0x784b5976690e0482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhsu x3, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x23, 0xbe38f7ecd1238fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x23, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xc81e0b93a6ef716b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x30, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x8, 0x837cd81273d408b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulhsu x8, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x5, 0x63c49acb128751b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulhsu x5, x3, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x5, 0x55a64039a9b31862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulhsu x5, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x14, 0xdec550b7c6412233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mulhsu x14, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x13, 0xddd4e9df9d001f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhsu x13, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x27, 0x4461a4f7246e0f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mulhsu x27, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x19, 0xb1ff2f0a23bcb7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhsu x19, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0x3753f85995f33d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x6, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x9391dca07074e04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulhsu x3, x7, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x5, 0x6d16cc3416dda650 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
mulhsu x5, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x5c43a10e38e44c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhsu x2, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x929c08966028a2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
mulhsu x31, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x15, 0x66b9c9bc0b5bfbc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulhsu x15, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x4, 0x6ce14434a3cf3bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
mulhsu x4, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x19, 0x61e86e5a47d588ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x19, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x4299a560ce5d2451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x5, x3, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x16, 0xd7400f34a983aaa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulhsu x16, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x12, 0x0178e4481ee6ab8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhsu x12, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x24, 0xba241aea845f162e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulhsu x24, x19, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x9, 0xd9e06398c794acca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
mulhsu x9, x15, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x4, 0x851e7c8e381ff57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mulhsu x4, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x8, 0x1d0d3b8c045de0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulhsu x8, x3, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x4bb3ccc452fff6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulhsu x17, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x27, 0x6c965ebe885e4c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhsu x27, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x25, 0x2151cd07c6eb1d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulhsu x25, x24, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x714046714fbe682c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mulhsu x11, x10, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x63dbd2864ef18802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulhsu x12, x11, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0x6d48794b396d21a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mulhsu x8, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x7, 0x768479ec494e8aa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulhsu x7, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x06c130b307608625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulhsu x22, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x28, 0xc68efac776cae680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x28, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xf555e28c284e8896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x12, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x3, 0xf33bbe0126214593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
mulhsu x3, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x25e96dd54393f377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulhsu x16, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x21, 0x7971b05209622e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulhsu x21, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x1970fc94f3b5fff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulhsu x30, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x15, 0x000fea038ff1d58c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulhsu x15, x5, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x15, 0x813c50321436e1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulhsu x15, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x5, 0xe3bd0ea10bed8ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
mulhsu x5, x2, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0xaa23431126f18042 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhsu x20, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x31, 0xdefa199fb7df59c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
mulhsu x31, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x27c215208b774661 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
mulhsu x14, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x9, 0x8c44c9c51d8516ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x20, 0xa7267c892c0f9371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
mulhsu x20, x27, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x11, 0xaccc4520ecb92052 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mulhsu x11, x4, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x9, 0xf27c91b8d712e512 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulhsu x9, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x13, 0x3648da4de97b5b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x13, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x204bd02b2fd03e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x5, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x6, 0x574bc3827427248a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhsu x6, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x2, 0x1902b912211d53ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x2, x11, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x1d921f567378a8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulhsu x3, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x8c6c910ac120a012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
mulhsu x14, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x8, 0xe68b5f8bfe04105e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mulhsu x8, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x531cd98640706c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulhsu x25, x19, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x14, 0xe13c31dedd765819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulhsu x14, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0xec97830526a7f6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mulhsu x29, x15, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x1e210f48961c3615 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulhsu x31, x2, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x6e4e37d6c5350683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
mulhsu x1, x12, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x11, 0xeed00c7056ca9c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhsu x11, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x1a37931c95db8742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhsu x11, x25, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x19, 0x6be5588ce5669ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulhsu x19, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x89cb9071352135e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulhsu x1, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x21, 0x46fa379e4da8dd46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
mulhsu x21, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x50a9f80b1d5e06af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x20, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x30, 0x7ad90d80f9d2f788 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
mulhsu x30, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x20, 0x0ae73658ebe5386d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x20, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x1eaa4611b5a86b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulhsu x28, x7, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x18, 0x91e3181b14a261ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
mulhsu x18, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x31, 0xa900a95d0e919fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulhsu x31, x19, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf2bd2f3a5385b2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xee2d2dfd98d05d1d # initialize rs1
li x29, 0xdfec58be22c53e48 # initialize rs2
mulhsu x0, x0, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x657a6066a8e6b0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7f22a6bed502cd00 # initialize rs1
li x2, 0xc3fef58ce7a56381 # initialize rs2
mulhsu x1, x1, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2e1b39534399b8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3bbd532d736c2575 # initialize rs1
li x11, 0x6f9e1505f477f28c # initialize rs2
mulhsu x2, x2, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x06bf92ba694e6b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8361c4bd729fd857 # initialize rs1
li x24, 0x42daef70b3886c56 # initialize rs2
mulhsu x3, x3, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x03c73aadf388f4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x56048b34b118f055 # initialize rs1
li x12, 0xff56a2e78912488f # initialize rs2
mulhsu x4, x4, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x087c9fe1e54adb32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x18f5d8468b8a7681 # initialize rs1
li x8, 0xf5f286ad211c20b0 # initialize rs2
mulhsu x5, x5, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x51cdf65272c4e689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb27329564b2557ff # initialize rs1
li x24, 0x1a821b71639790a0 # initialize rs2
mulhsu x6, x6, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x2315c62d19342634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9a68bb13915548f8 # initialize rs1
li x16, 0x1416d939f5e954bc # initialize rs2
mulhsu x7, x7, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x34fee4eeb06c9a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x006dce0e35b9bc59 # initialize rs1
li x26, 0xbf8cd629062aa0f0 # initialize rs2
mulhsu x8, x8, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc171fd64f41ed10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x404e76cf867b9203 # initialize rs1
li x8, 0xe46637c883dab901 # initialize rs2
mulhsu x9, x9, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x986f28349c0853cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7d463fe3aede07ae # initialize rs1
li x25, 0x2297f5e7570aaf8b # initialize rs2
mulhsu x10, x10, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8743c3fc3822b818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5e9336fa12388a09 # initialize rs1
li x9, 0x4c4a1361a581e66a # initialize rs2
mulhsu x11, x11, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1b4d7b7c4d8741fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa9e0095d1d56bf04 # initialize rs1
li x19, 0x18dc8750f6c28fb8 # initialize rs2
mulhsu x12, x12, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd092b5ec13a09104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x18d350c65468213a # initialize rs1
li x10, 0xe370605ec1e5e21e # initialize rs2
mulhsu x13, x13, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xa4971193f115d9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6196c8a41c97a18d # initialize rs1
li x31, 0x98c5ed0a66b5dd83 # initialize rs2
mulhsu x14, x14, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdd980dee4e792281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x76ee5ced0c1c78fe # initialize rs1
li x6, 0x89487f0cef0cf0c8 # initialize rs2
mulhsu x15, x15, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xff090f60808231b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ad027757cd9848c # initialize rs1
li x19, 0xca7d19f88a1c3e33 # initialize rs2
mulhsu x16, x16, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6b0a1ccdea60f349 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x51b2c6e020d72797 # initialize rs1
li x10, 0x8c636beb5241ca68 # initialize rs2
mulhsu x17, x17, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xfcd1ed40f985aca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa6329c5176f7ce07 # initialize rs1
li x4, 0x4671400bea167121 # initialize rs2
mulhsu x18, x18, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x56f17eb1dd5440c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdafebd6a3153e076 # initialize rs1
li x24, 0x8ba3f5262cf863d9 # initialize rs2
mulhsu x19, x19, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x22d5f3acd929a9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa21defb14581b379 # initialize rs1
li x31, 0xaf2a334f25ac042e # initialize rs2
mulhsu x20, x20, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x0cccca3f5973ada6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x968b6fdffd34014d # initialize rs1
li x11, 0xb13499e808573e3f # initialize rs2
mulhsu x21, x21, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd7e1dafa4b212551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x76ccfccadea8c4ff # initialize rs1
li x14, 0x4a562cbd274be295 # initialize rs2
mulhsu x22, x22, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3ffff2526aa445aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3e818895e93b8189 # initialize rs1
li x8, 0x15f237a06101656c # initialize rs2
mulhsu x23, x23, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd50434bae487bdb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xab89945f15d908e6 # initialize rs1
li x21, 0x5e6d0ad205c95151 # initialize rs2
mulhsu x24, x24, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x423b41f4fca6069a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaea1f5995c6a940e # initialize rs1
li x8, 0xab2189f68d4a17f4 # initialize rs2
mulhsu x25, x25, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe3258d6568a53172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdc13ab709fc1bfdc # initialize rs1
li x4, 0xd14a3b79df32aac8 # initialize rs2
mulhsu x26, x26, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc342192c5a73c1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x10152a0a246464d1 # initialize rs1
li x27, 0xde0f61e81c9faff4 # initialize rs2
mulhsu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2bf33aee213bb167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5cba31360c6c652d # initialize rs1
li x2, 0xd3c352749e6b3ebe # initialize rs2
mulhsu x28, x28, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb6a73e2ff3e45736 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4f834ea6e2350d68 # initialize rs1
li x21, 0x5aa908616a756ddd # initialize rs2
mulhsu x29, x29, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcdfb7ad7cdd9cf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ae7c57f2a608ba2 # initialize rs1
li x8, 0x6215cbffc1128538 # initialize rs2
mulhsu x30, x30, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa8694ba0e3681e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7dea236850a5b724 # initialize rs1
li x30, 0x21fdf36610b570fa # initialize rs2
mulhsu x31, x31, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x4d83b5796ce5c43d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd52b24306960ed75 # initialize rs1
li x0, 0x0a31628aaeab3be2 # initialize rs2
mulhsu x0, x12, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x5d930abaf79ca17d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfc44250ff78231d5 # initialize rs1
li x1, 0x578001eed4510cde # initialize rs2
mulhsu x1, x3, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x4b929e01c2b2705a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa1e55b671396cde3 # initialize rs1
li x2, 0x45006779771f5c63 # initialize rs2
mulhsu x2, x18, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xad43e9175817ba27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x33fba1aa72d279d6 # initialize rs1
li x3, 0x92f1e5d2cd36fb06 # initialize rs2
mulhsu x3, x20, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x1026e713877981cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5cc43c0eeac84c1f # initialize rs1
li x4, 0x26113ee99fbdd9b0 # initialize rs2
mulhsu x4, x3, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x44c654dd8a1626de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe3c8d697907a6a5b # initialize rs1
li x5, 0xdc8b7d18a8a23a25 # initialize rs2
mulhsu x5, x10, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xfdc94d146fd97982 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1b90891b285b0535 # initialize rs1
li x6, 0x1501faec4620ea41 # initialize rs2
mulhsu x6, x16, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xf60283fd887d3995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0e999f03084dc6ee # initialize rs1
li x7, 0x6bd43273d80b5145 # initialize rs2
mulhsu x7, x17, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xe05e245d42cf28f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x921971d7e9678a38 # initialize rs1
li x8, 0xa6c9a7a3c2ac7f1b # initialize rs2
mulhsu x8, x5, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xb40bb754278a5296 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf210b57a02a96328 # initialize rs1
li x9, 0x537c4137957aaddb # initialize rs2
mulhsu x9, x26, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x9c507e70d7b2a80c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7b3dd43f3d254cdb # initialize rs1
li x10, 0x9b330f7b28f1d0ab # initialize rs2
mulhsu x10, x9, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xdef593ed6c53ea32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0b9806596f91166d # initialize rs1
li x11, 0x6461891f2246c0d1 # initialize rs2
mulhsu x11, x14, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xeb0bc86cb61ea445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6b35fe0e438dc199 # initialize rs1
li x12, 0x4e949cda14d8696b # initialize rs2
mulhsu x12, x11, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xadeeab38a58b9c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7dcd1764c313fceb # initialize rs1
li x13, 0x41d5148ec04637f9 # initialize rs2
mulhsu x13, x10, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x26a5009f8494574d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x474f2723d544f47c # initialize rs1
li x14, 0xbc7d90b7434a931c # initialize rs2
mulhsu x14, x6, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xcdfcb1be4950619b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xeaa6c4a206230be2 # initialize rs1
li x15, 0x3f0ce524fe8a250b # initialize rs2
mulhsu x15, x14, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xc46842f317c8b3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x651e360a83102398 # initialize rs1
li x16, 0x69061b28a66795a2 # initialize rs2
mulhsu x16, x7, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xe1b7b9441b7a282b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x874f8e61a373b4e9 # initialize rs1
li x17, 0x5ca4052fa2cf22fb # initialize rs2
mulhsu x17, x1, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x5398c8a48d5880d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x29f40271add6ff79 # initialize rs1
li x18, 0xe9f2dbdb3b672438 # initialize rs2
mulhsu x18, x3, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xcf4eedb2466a1715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x51b0f81c944700c0 # initialize rs1
li x19, 0x2841b251a99b9cf3 # initialize rs2
mulhsu x19, x28, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x0b8405d9b055859f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf0a19d77fbc6e1cf # initialize rs1
li x20, 0xd4e890b97f7fb224 # initialize rs2
mulhsu x20, x31, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xbd27bb44b957c960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xeb071378bd3f78c1 # initialize rs1
li x21, 0x8adb4b9626cd7c70 # initialize rs2
mulhsu x21, x10, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x931b07904f572252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7f8eaa9d1f846887 # initialize rs1
li x22, 0x6debca6fb02d6f31 # initialize rs2
mulhsu x22, x18, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xe942903d59b2abf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa7de47561e339a95 # initialize rs1
li x23, 0x5c0061a416c6bd90 # initialize rs2
mulhsu x23, x11, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x66aebbdfe2fdf139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3b6bffa3e61e345c # initialize rs1
li x24, 0x082e42afdd8dbf1d # initialize rs2
mulhsu x24, x28, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xe4c120760f10b3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5941be102d148229 # initialize rs1
li x25, 0xb6caa745faddca3f # initialize rs2
mulhsu x25, x4, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x8331fed8a16b5330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7b9fe3f4226c4386 # initialize rs1
li x26, 0x4f2ff4689bd1d809 # initialize rs2
mulhsu x26, x17, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x0b196d89b517cec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x409211a2cc23514e # initialize rs1
li x27, 0x9384dc34beeba342 # initialize rs2
mulhsu x27, x25, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x0d6d07f90885a99c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3acba4efa41e4359 # initialize rs1
li x28, 0x2444b86c5bcb3b2a # initialize rs2
mulhsu x28, x14, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x0da5cc84c5ff477b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1fa1809e695d14bd # initialize rs1
li x29, 0x99c07bef54f763d0 # initialize rs2
mulhsu x29, x6, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xebdd18ef32359953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa6bf664a2723ab1f # initialize rs1
li x30, 0x97558fae0d178a4a # initialize rs2
mulhsu x30, x9, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x782984dfeab284d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3c2c94d0a4d30ad5 # initialize rs1
li x31, 0xf2fd074db301d80c # initialize rs2
mulhsu x31, x10, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0498caa59254e18b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x056977c52f703516 # initialize rs1
li x0, 0x782a44f65ffa8b98 # initialize rs2
mulhsu x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x76f654f5912aeb86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x876d38ceec5997b7 # initialize rs1
li x1, 0xb33da2def6943d26 # initialize rs2
mulhsu x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0e8115adbe7f1e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc1675d75530d226a # initialize rs1
li x2, 0xe09d10de6fdf6ce7 # initialize rs2
mulhsu x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x55672e139e455785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf043f4c6cf652548 # initialize rs1
li x3, 0x4f12e9e276288df9 # initialize rs2
mulhsu x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xd1ede601bfa3f782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0ffc2f4a879d87a7 # initialize rs1
li x4, 0x1341d504c8e8bcf8 # initialize rs2
mulhsu x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x6e21e3bec5e32173 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xed146f2d77790509 # initialize rs1
li x5, 0x87f1a3a332df3ce5 # initialize rs2
mulhsu x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xa9fa455949c22b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x02da396c38e89693 # initialize rs1
li x6, 0x06aa7ba7be265e01 # initialize rs2
mulhsu x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x45b99eff50f84c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x46bf33e617df5580 # initialize rs1
li x7, 0x4e04f7424fe7afa2 # initialize rs2
mulhsu x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x346a19c991690b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x852ca719ef41196b # initialize rs1
li x8, 0x1b821000635a35b9 # initialize rs2
mulhsu x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x825135007f63f6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfa4b5c0077277a3b # initialize rs1
li x9, 0xbc2f10ee2e0293b9 # initialize rs2
mulhsu x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x069e4424ffc31168 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed434a84cf17bebe # initialize rs1
li x10, 0x37cbdde146734f7c # initialize rs2
mulhsu x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xf4155a7370a00a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2c364954cb92ff1f # initialize rs1
li x11, 0x985be2af820e7498 # initialize rs2
mulhsu x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe22790ec5997bf08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb86848529ce5f9b9 # initialize rs1
li x12, 0x19381b5e7eb43a2f # initialize rs2
mulhsu x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x6ca3dbdb98d58fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x10c6ff4198c229fa # initialize rs1
li x13, 0x842b9e5fe8462bf4 # initialize rs2
mulhsu x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc36c262f19bdf90b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xeb5d89009e56d2f0 # initialize rs1
li x14, 0x4f81f005f99f4492 # initialize rs2
mulhsu x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x705430811a982f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfafb45a380a9338f # initialize rs1
li x15, 0xd241b6548bf73432 # initialize rs2
mulhsu x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xb168660888949746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe50b242e33d85039 # initialize rs1
li x16, 0xceeea859fbe0385b # initialize rs2
mulhsu x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf60e82c336fd19e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x43ef49d3e1f320a4 # initialize rs1
li x17, 0x1bd71d404431c556 # initialize rs2
mulhsu x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x540ca7ba4927c077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x35f5af551d81ea63 # initialize rs1
li x18, 0x9804dd22ce3ba0ff # initialize rs2
mulhsu x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xed286d78fdaf9cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5e732acfaca6e9da # initialize rs1
li x19, 0x808d167a27dd1bba # initialize rs2
mulhsu x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xff0c50388790c05e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xeea48c960d154173 # initialize rs1
li x20, 0x1b9770c8e1b34c1a # initialize rs2
mulhsu x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x56633ad6d45d0465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd30a4ed9a1aff741 # initialize rs1
li x21, 0x194dbc159c7fb3aa # initialize rs2
mulhsu x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x73ff930e3ccc48e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd5734659c85e72ef # initialize rs1
li x22, 0x8aaac23f325815fc # initialize rs2
mulhsu x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x005a61a6e2f92b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3c24d4cb091a3447 # initialize rs1
li x23, 0xfd02462daf7a6489 # initialize rs2
mulhsu x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x6f8c5d5192af0f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xddb8ea801fdc5676 # initialize rs1
li x24, 0xaab9aac74a499bb2 # initialize rs2
mulhsu x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x132d35ff296ae2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x254a999ed46072e4 # initialize rs1
li x25, 0x851d22047ead7ad4 # initialize rs2
mulhsu x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf9ba19650b2330a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8f5c831435db44ce # initialize rs1
li x26, 0xf50431ac5f5574c9 # initialize rs2
mulhsu x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe09426786028ee48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc22ba3f2559f1caa # initialize rs1
li x27, 0x74b5e59b38beabbc # initialize rs2
mulhsu x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc949a9a691e900ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa30c9c5cb60bd88b # initialize rs1
li x28, 0xe7a9fb838dd64c23 # initialize rs2
mulhsu x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x74df1670df4bbea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3df1cfdde3a7737b # initialize rs1
li x29, 0x1aa1942ed6a33458 # initialize rs2
mulhsu x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xfab63515c8fd87c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe140c680b00fccc2 # initialize rs1
li x30, 0x52afa68d30b52430 # initialize rs2
mulhsu x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x784ccd7a7dfd451f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7a7fa222664de8a8 # initialize rs1
li x31, 0x71d08057bd918b2d # initialize rs2
mulhsu x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x23, 0x8edc2072ab03888d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xeacb67e33b0efac0 # initialize rs1
li x0, 0x2e333e6875f98d3b # initialize rs2
mulhsu x23, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x01447568a62b9647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8153d252890d5144 # initialize rs1
li x1, 0x8c2bcec6de5f1aa5 # initialize rs2
mulhsu x1, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x12, 0xa84298e265a9be67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdb617ab66519c15e # initialize rs1
li x2, 0x2c3ff6432f2900ec # initialize rs2
mulhsu x12, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x17, 0xccaa6eb490f350bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0ea406b24485aac4 # initialize rs1
li x3, 0x15a58b3126663c31 # initialize rs2
mulhsu x17, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x3, 0x73fd6db4d6951e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdb1c9e204a857802 # initialize rs1
li x4, 0x8485fd1de7313c85 # initialize rs2
mulhsu x3, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x7, 0xc54860c9c5858394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9f57095889201cba # initialize rs1
li x5, 0x08d96bd2c7ce61f8 # initialize rs2
mulhsu x7, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x24, 0x14f99ea0cf0380dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2cbbee4c538db8d2 # initialize rs1
li x6, 0xfb7f73e8ccd459b9 # initialize rs2
mulhsu x24, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x20, 0xcd34374a5b7d891c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb02b29ec6424cc5d # initialize rs1
li x7, 0xc9c28278ca90b9ad # initialize rs2
mulhsu x20, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x23, 0xa7e8df075f55a239 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc93a40ee29775107 # initialize rs1
li x8, 0xe5b79995f9b864d5 # initialize rs2
mulhsu x23, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x7, 0x5603b3b3f393d433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc7be173da71ce07e # initialize rs1
li x9, 0xec92202220f077ae # initialize rs2
mulhsu x7, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x1, 0x987592c1f2d930f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x528ab6be08e4ed65 # initialize rs1
li x10, 0xc11ff1eaedce88ad # initialize rs2
mulhsu x1, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x3, 0xc5f246d121600eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x421e1a0f969ce0ed # initialize rs1
li x11, 0xa83624a95fd0d5d8 # initialize rs2
mulhsu x3, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x19, 0x794936a6098ea280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7a980af507227563 # initialize rs1
li x12, 0xafcc386ce40550b8 # initialize rs2
mulhsu x19, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x1, 0x009aa394eaee3d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xecf25472d848d75a # initialize rs1
li x13, 0xbe20e8ea4b7a0f5a # initialize rs2
mulhsu x1, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x27, 0xa67b5c09f630f674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x749b915998a85735 # initialize rs1
li x14, 0x4f3ba7bb2353a944 # initialize rs2
mulhsu x27, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x27, 0x95439d3f081b6d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4a76714b08b85f05 # initialize rs1
li x15, 0xe2c33c6943d4586f # initialize rs2
mulhsu x27, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x27, 0x8a0dca2d6633c3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6f6dc7f0735df8cf # initialize rs1
li x16, 0xc0f3fac7f0af75ea # initialize rs2
mulhsu x27, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x22, 0x92c889d3fbc598ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x30da531956d2f8b3 # initialize rs1
li x17, 0x734494c45dd65975 # initialize rs2
mulhsu x22, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x27, 0x5007a4a7af7459bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x666388f9836eacba # initialize rs1
li x18, 0xb79788e05b2e9553 # initialize rs2
mulhsu x27, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x9, 0x0241587903c8c44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x56ff462faaf98f08 # initialize rs1
li x19, 0x052d95284dc57f71 # initialize rs2
mulhsu x9, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x9, 0x703fbab618edc09b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4972d1507348c425 # initialize rs1
li x20, 0xb2e242cb723843ff # initialize rs2
mulhsu x9, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x2, 0x38272c37aa7b27ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x37b0f6ff8107fcb2 # initialize rs1
li x21, 0x8ab6f58c07450acf # initialize rs2
mulhsu x2, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x25, 0xe90d8951dbdb5136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe6b91ab032a2457a # initialize rs1
li x22, 0xd6f027d48c2e2390 # initialize rs2
mulhsu x25, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x16, 0x3dd66cb168c3b02e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa8316fbe42b67848 # initialize rs1
li x23, 0xacff59d57bdaf662 # initialize rs2
mulhsu x16, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x31, 0x74b1e383c63242a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe084690fd7f915a9 # initialize rs1
li x24, 0xe28ac0d92d432ba1 # initialize rs2
mulhsu x31, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x26, 0x85db7ef23a09bde8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4de1339a9eee1d59 # initialize rs1
li x25, 0xc643b48bdc46d397 # initialize rs2
mulhsu x26, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x21, 0x3df162deed8d4aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1d166f8138ec3f67 # initialize rs1
li x26, 0x6ddbb0683606389c # initialize rs2
mulhsu x21, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x07bcd2e6fce414c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb5cc4b1b6552448d # initialize rs1
li x27, 0x18f25827805df8bd # initialize rs2
mulhsu x27, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x29, 0xfed60c85f55f56fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7310c689ebea13ab # initialize rs1
li x28, 0x203836ee67c22917 # initialize rs2
mulhsu x29, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x9, 0x67d26c5578d74626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9b3472947b63fe77 # initialize rs1
li x29, 0x52c3538c7cf995b7 # initialize rs2
mulhsu x9, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x23, 0xcd6d5975980df437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2e6c0859f977d6ae # initialize rs1
li x30, 0x7beb5391cabbf955 # initialize rs2
mulhsu x23, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x8, 0xcb408dcb00315070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6c5e61eb290a6363 # initialize rs1
li x31, 0x1d2006ffd7f16725 # initialize rs2
mulhsu x8, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x11f710cfcac71272)
li x21, 0xa431cf92bfdf3cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x11f710cfcac71272 # initialize rs1
li x12, 0xebd8f9f4d8ffbfd7 # initialize rs2
mulhsu x21, x5, x12 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x3dcffa8945c5bffd)
li x26, 0x058874bb84785c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc2300576ba3a4003 # initialize rs1
li x29, 0x39c8c4203cf9894f # initialize rs2
mulhsu x26, x20, x29 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x3b8b39156ed8b3c2)
li x22, 0x7d73129cbc01a26b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7a3922afdef55cec # initialize rs1
li x27, 0x3b8b39156ed8b3c2 # initialize rs2
mulhsu x22, x5, x27 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x52acb7f09de97c86)
li x21, 0x36cc3cacf3e526ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x634f463fda4fef92 # initialize rs1
li x7, 0xad53480f6216837a # initialize rs2
mulhsu x21, x12, x7 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
