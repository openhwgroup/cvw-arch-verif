///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sll.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.490534
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x5ef3220b16d2deae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbdd2106cacf6f7ae # initialize rs1
li x3, 0xef8aa2d0c030d02a # initialize rs2
sll x0, x14, x3 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x71d04f96da1b962a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcfb90099608f3fb0 # initialize rs1
li x20, 0x1d0e09c9e3313a66 # initialize rs2
sll x1, x2, x20 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x0d6266c9c39f5f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0ac8166250270f24 # initialize rs1
li x11, 0xf86c6013b8b87115 # initialize rs2
sll x2, x25, x11 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe02d74e03a632fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x53a53cc16ff480da # initialize rs1
li x12, 0x2b120bf7be4b446e # initialize rs2
sll x3, x30, x12 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x7169ddf6ee28a131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe089559dbda0103b # initialize rs1
li x8, 0xf09538302546948c # initialize rs2
sll x4, x16, x8 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x26fa52bb5a2977a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe28eb32c5fc810ee # initialize rs1
li x11, 0x51580817bef8af0b # initialize rs2
sll x5, x3, x11 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x67116e5f84f16a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x824d5545d2635ce3 # initialize rs1
li x10, 0xa64309a47d95db17 # initialize rs2
sll x6, x22, x10 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xfedf371e07332fac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb89e9f13c6a9f2a8 # initialize rs1
li x7, 0x77b9a49d85ffcbda # initialize rs2
sll x7, x19, x7 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5132c313c2452b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9a5f53fe843f9691 # initialize rs1
li x12, 0xd50279b713bac36d # initialize rs2
sll x8, x31, x12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x09cb526a6a9283ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6b86b8b9e7c13a5e # initialize rs1
li x12, 0x4c55efd27753bdce # initialize rs2
sll x9, x28, x12 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb57fbcf36daadde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x907d836f475a62ef # initialize rs1
li x5, 0x55faa7faf038021c # initialize rs2
sll x10, x24, x5 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8c6072eb5302250c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4873d5fef2ee2b63 # initialize rs1
li x22, 0x072d4ab4094e22d7 # initialize rs2
sll x11, x30, x22 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x334b4b9f3bc03836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0a6eddab1bd26fbd # initialize rs1
li x7, 0x660ac8b8803821e0 # initialize rs2
sll x12, x28, x7 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd5167885fb93b5a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9320fbab7d5422ec # initialize rs1
li x25, 0xf60d2186b17df740 # initialize rs2
sll x13, x14, x25 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9e37344fe34078ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe4a8cb1a08f684d9 # initialize rs1
li x20, 0xf76a77b7ee561f67 # initialize rs2
sll x14, x3, x20 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x407f2a1ca59e513e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe9449f2233163d77 # initialize rs1
li x18, 0xe450a8bc5f514b44 # initialize rs2
sll x15, x5, x18 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x7e5e5bce20faf070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4b04bf1c58cea082 # initialize rs1
li x14, 0xd2116a6374510008 # initialize rs2
sll x16, x19, x14 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x56e086dae3db141b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc4a5047650479aad # initialize rs1
li x1, 0x17e8365b5f5db8fb # initialize rs2
sll x17, x21, x1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x516ad4dd7490a41c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x701cee7ed262e843 # initialize rs1
li x8, 0x3f3873bd55cdc235 # initialize rs2
sll x18, x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x168fa8839f8bd746 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5f11611077914f06 # initialize rs1
li x17, 0x3b3bfddbd9dc7f61 # initialize rs2
sll x19, x22, x17 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf31bd17caf9670da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xef35c957fb6b464b # initialize rs1
li x29, 0xe4d28c4a8ddcafb6 # initialize rs2
sll x20, x22, x29 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x754899dbb0158b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x33b88208c1759856 # initialize rs1
li x22, 0x7e51af7a5882af1f # initialize rs2
sll x21, x15, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb6d7f5887df9cb15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x441f76037a41d628 # initialize rs1
li x5, 0x079188ac31df0a6b # initialize rs2
sll x22, x14, x5 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x9b888b720e50ea36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x48a1b4538311e391 # initialize rs1
li x4, 0xebbb99263178bcc9 # initialize rs2
sll x23, x18, x4 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x963cd6edef96d86f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x04cd2cc4f35ed14d # initialize rs1
li x2, 0x4b947e2b8c272e67 # initialize rs2
sll x24, x13, x2 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xec0d3d8ab1d9e31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0a10b4bf4d55edcf # initialize rs1
li x4, 0x4e499c4b248952a0 # initialize rs2
sll x25, x26, x4 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x578fb725c5dbaf22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf47db02ee3305ebf # initialize rs1
li x12, 0x351679029c196073 # initialize rs2
sll x26, x14, x12 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf138088b11cb5073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4d7a673e2b859055 # initialize rs1
li x3, 0x330b3ea41ec1ec76 # initialize rs2
sll x27, x19, x3 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1461695539495aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe72a6d86b8331566 # initialize rs1
li x30, 0x8e1d5b5fb165147f # initialize rs2
sll x28, x22, x30 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x35fd7fe1af6d4262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa6b3fb109ecf54ba # initialize rs1
li x10, 0xd60d8df28291082b # initialize rs2
sll x29, x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf0ea569dcda18df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb550107c1286b8b3 # initialize rs1
li x24, 0x5f8a0358ed30431f # initialize rs2
sll x30, x30, x24 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5e15b8f525ca0718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2de9d03a86720528 # initialize rs1
li x15, 0xf3219a9ab96907eb # initialize rs2
sll x31, x16, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x22, 0x2853f6820aef3fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc3b521c49ab2ff85 # initialize rs1
li x19, 0x5eafd593e8c23bb3 # initialize rs2
sll x22, x0, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0x6ca887bf7acbbdf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x711a3c47e606f949 # initialize rs1
li x25, 0x65b0cabd133f9e78 # initialize rs2
sll x22, x1, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0x0f4e21e05d62e903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x34a24aa69435e9d4 # initialize rs1
li x6, 0xe7ae3c3d4894ef6b # initialize rs2
sll x12, x2, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x31, 0xc0d2a059bae86584 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x054f198811950ef9 # initialize rs1
li x6, 0x93e8126b641bed32 # initialize rs2
sll x31, x3, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x17, 0x15c3c30786192941 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe1a3492ca9b871fa # initialize rs1
li x25, 0xa775bcb83ba4a9fb # initialize rs2
sll x17, x4, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x18, 0x216bb744c55a9796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2bebf40b44a2e62b # initialize rs1
li x3, 0x2e24b4f086a3a306 # initialize rs2
sll x18, x5, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x23, 0xd9656a615049c6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc17fbf92309793b5 # initialize rs1
li x20, 0x987764c961a0e340 # initialize rs2
sll x23, x6, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x13, 0xddfc3b0a51b037b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5c3e81d2f66cb375 # initialize rs1
li x2, 0x97efccce1156d94c # initialize rs2
sll x13, x7, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0xe5c41341e8edf93a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbd814f10a283a3e8 # initialize rs1
li x26, 0xbf4d954ce2870648 # initialize rs2
sll x15, x8, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x26, 0x8d02f6db9b63186d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd913375087cfff95 # initialize rs1
li x1, 0x5a79c80de8c13143 # initialize rs2
sll x26, x9, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x4, 0x4118b71ba12866df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xff59599423a56552 # initialize rs1
li x23, 0xc381d73ffab4d6d7 # initialize rs2
sll x4, x10, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x1803baebc7fd140f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0d2d8a6098ad698b # initialize rs1
li x5, 0x3154249fe94e6c9a # initialize rs2
sll x22, x11, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0xf7b8a5187a41abf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2005aa1f1b4041ef # initialize rs1
li x6, 0x6be4f192cc973ddb # initialize rs2
sll x1, x12, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0xe713f7112cc0f55e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaca3a9862d16051e # initialize rs1
li x10, 0x34aad98493102343 # initialize rs2
sll x26, x13, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x439a14358cf6fd10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd7c1d3b2c31464d9 # initialize rs1
li x16, 0xa32d903314759ec1 # initialize rs2
sll x15, x14, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x795de4a764b4fe1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7c06954a9e1f63d9 # initialize rs1
li x7, 0x08d44e129aa778fc # initialize rs2
sll x29, x15, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x29, 0x91588bfcc404b048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe59dfe5dc78e9a1a # initialize rs1
li x2, 0xb95087bde4f917d2 # initialize rs2
sll x29, x16, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x16, 0x1642087a757081be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x52c7f6ae48b9847d # initialize rs1
li x4, 0xd4958d627e0938f9 # initialize rs2
sll x16, x17, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x6cbd98c8ffe5be01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xeaac12ba70d57931 # initialize rs1
li x27, 0x1016608be0f151ed # initialize rs2
sll x8, x18, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0x7ab88c698b309d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xeaf6fac5c121fafc # initialize rs1
li x15, 0xb8a107e3309fbdbc # initialize rs2
sll x26, x19, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0xe5d7cc0c6b5b7929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xead936f547cb47f8 # initialize rs1
li x28, 0x54546105744812a3 # initialize rs2
sll x10, x20, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0xd36f044c48c31682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd4c0f0d0d65ee8c2 # initialize rs1
li x16, 0x0f405c75391aa7d4 # initialize rs2
sll x31, x21, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x21, 0x718223b0c7058897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x50e6858a7b51b755 # initialize rs1
li x13, 0x43ff0ccc80b8d302 # initialize rs2
sll x21, x22, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0xb6a6d331ac993d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdbadf58b35b3c966 # initialize rs1
li x16, 0x1a085636784140f7 # initialize rs2
sll x4, x23, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0x171faacd596db87a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaa91181bb2e1aae4 # initialize rs1
li x9, 0x99b597bfa3b515ac # initialize rs2
sll x30, x24, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0x335166d30be89186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x65f3ca17408772ec # initialize rs1
li x8, 0xec9d962901a1d7fd # initialize rs2
sll x2, x25, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x5f30d6817fcca14c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x02cb765fdbe249d4 # initialize rs1
li x28, 0xd71beb04dba8deb8 # initialize rs2
sll x21, x26, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0x65fdd54eaeca8082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9a8e0c8fdbac2d9a # initialize rs1
li x13, 0x0f1855ae6965230a # initialize rs2
sll x11, x27, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xdf6b428bb1c5adfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x47de2510edbe5c6c # initialize rs1
li x25, 0xc9112c781021bc4b # initialize rs2
sll x30, x28, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0x2d63ce83ef75ec74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4ad385b437f2d7e3 # initialize rs1
li x8, 0x297a935056607f27 # initialize rs2
sll x19, x29, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0xf92aa1a8bbe06fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x315c4f89c6105859 # initialize rs1
li x22, 0x0f1f9451bf448675 # initialize rs2
sll x31, x30, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x1, 0x7117866d649b26e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x24bf1c0e444f971a # initialize rs1
li x9, 0x49c54a040e118152 # initialize rs2
sll x1, x31, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x12, 0xed9b673f89b6a1be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xece89a3add47ad0d # initialize rs1
li x0, 0x4c172c3bd2feab52 # initialize rs2
sll x12, x22, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x8fc64f10b8f83e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3c160182d1f1f7d7 # initialize rs1
li x1, 0x515cd2564d32220e # initialize rs2
sll x29, x9, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x413b2e496be51f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x19def61645defe01 # initialize rs1
li x2, 0x8267299e8339aa8e # initialize rs2
sll x27, x22, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x23, 0xb94bc310fff0fcf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x06b86c76242f3e7d # initialize rs1
li x3, 0xcfb3c78766ddc990 # initialize rs2
sll x23, x12, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x29, 0xac299c80c42502b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa6803db0154a42db # initialize rs1
li x4, 0xd06d360562b89180 # initialize rs2
sll x29, x20, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x22, 0x038cb694b5402f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb5ede9d7e1a84da3 # initialize rs1
li x5, 0x59515332c7fc52b1 # initialize rs2
sll x22, x12, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x31, 0xb11416016a1d7685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x40a42969bf5ad4ec # initialize rs1
li x6, 0x5286ab5a83650d91 # initialize rs2
sll x31, x8, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x8, 0x3e7d03a819f5854d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x247fc69daf302531 # initialize rs1
li x7, 0xcea3eee0892607ae # initialize rs2
sll x8, x15, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0x8aed1eda169258e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdadc0a5a204dedf8 # initialize rs1
li x8, 0x86cdb2bd2dc14f8d # initialize rs2
sll x27, x14, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x5, 0x8a7e1a3256c3fac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xeb1cd4027f853f34 # initialize rs1
li x9, 0x48ea219c269b1bd2 # initialize rs2
sll x5, x24, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0xfa97a70b9d102e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdb55d6516c373145 # initialize rs1
li x10, 0x97ca8126fef3f80b # initialize rs2
sll x1, x29, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0x4a9eea19e507f4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5330e23bcb6c88eb # initialize rs1
li x11, 0x162cb82f0a127843 # initialize rs2
sll x16, x14, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0x382f7d33e7f9c966 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xadacdb228efc4b52 # initialize rs1
li x12, 0xd61faef9ba40dea8 # initialize rs2
sll x2, x11, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x7, 0xea44af93cd614b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2e54b4bebff1f03d # initialize rs1
li x13, 0x4ebf6197cffc6ff0 # initialize rs2
sll x7, x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x61c4618a2d1fbb7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb58a4037427ce446 # initialize rs1
li x14, 0x8e830b81e1f807da # initialize rs2
sll x9, x7, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x4276f18fbed6392b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf0a25689ea2619f3 # initialize rs1
li x15, 0x4532f52e08989914 # initialize rs2
sll x3, x11, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x57a8e2ba05538156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x65d3466edc609af8 # initialize rs1
li x16, 0x684f9647164ae75e # initialize rs2
sll x7, x17, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x16610d38fb6f8d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x66f8b53174f83883 # initialize rs1
li x17, 0x49516bdbb29223bb # initialize rs2
sll x22, x10, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xe65804414868493d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1e18210eed16d7c4 # initialize rs1
li x18, 0x7b92c57c5d4bd8fa # initialize rs2
sll x29, x19, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x2f48950892086009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5e9ddae6604677ea # initialize rs1
li x19, 0xba636c8f64ec8161 # initialize rs2
sll x11, x25, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x040bbc11f249cd65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x459d4929dfe979ec # initialize rs1
li x20, 0xd6d923b85d105b33 # initialize rs2
sll x16, x23, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0x0482f8b1a3c81a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x376ea19e4ea900e9 # initialize rs1
li x21, 0x7e4d79e1c6f4690a # initialize rs2
sll x13, x14, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0x213687348f7f201f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe772cdba24949dea # initialize rs1
li x22, 0xc0a743049387837b # initialize rs2
sll x26, x2, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0x60dd7eaf610d1c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2a4c0430ab10633e # initialize rs1
li x23, 0x810633916a834ab1 # initialize rs2
sll x30, x15, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x3a2b0f219a120698 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6f07a9e8f8aa6454 # initialize rs1
li x24, 0x3b8f9de7f4314a51 # initialize rs2
sll x29, x7, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0xefa2951ec298cf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x69660fb14ee1eb9e # initialize rs1
li x25, 0x2e1ce13dbf6bfae1 # initialize rs2
sll x17, x26, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x3, 0x86dceb6d3b8f0a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x84f16ff14dfcc706 # initialize rs1
li x26, 0x5b4517d1f8aa4050 # initialize rs2
sll x3, x27, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0xc1cec33677d958c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x671db5849f69f516 # initialize rs1
li x27, 0xc2d9202dd4dcd5ff # initialize rs2
sll x15, x25, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0xaf5509165b965c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xde6925c9905b4bf6 # initialize rs1
li x28, 0x6220e04d5253786b # initialize rs2
sll x29, x22, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x4c68f9a0a235ef9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0120c50216fc9d2a # initialize rs1
li x29, 0x5a7fe8a1e6408919 # initialize rs2
sll x27, x5, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x12, 0xfae5b519ca6bdf83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc4d63fc8f45d48d7 # initialize rs1
li x30, 0xcabd7b25b30ecd0e # initialize rs2
sll x12, x3, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x18, 0x4d0f211d75e1a1a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4a5092b61b1a3a0d # initialize rs1
li x31, 0x514e4e66887ccb4f # initialize rs2
sll x18, x5, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcf51beb1746b7eb4)
li x10, 0x359d2fa4df7c3129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x359d2fa4df7c3129 # initialize rs1
li x0, 0xd2706282a2d057ca # initialize rs2
sll x10, x16, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x5193235403db5f1b)
li x7, 0x5193235403db5f1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5193235403db5f1b # initialize rs1
li x15, 0x5193235403db5f1b # initialize rs2
sll x7, x0, x15 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x15c6d28c4a3c2439)
li x5, 0x3689ad682383a8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x15c6d28c4a3c2439 # initialize rs1
li x8, 0x15c6d28c4a3c2439 # initialize rs2
sll x5, x17, x8 # perform operation

# Testcase cmp_gpr_hazard raw test
sll x25, x19, x1 # perform first operation
sll x22, x25, x9 # perform second operation

# Testcase cmp_gpr_hazard raw test
sll x20, x12, x7 # perform first operation
sll x14, x1, x20 # perform second operation

# Testcase cmp_gpr_hazard waw test
sll x14, x16, x13 # perform first operation
sll x14, x4, x30 # perform second operation

# Testcase cmp_gpr_hazard waw test
sll x19, x12, x28 # perform first operation
sll x19, x27, x30 # perform second operation

# Testcase cmp_gpr_hazard war test
sll x21, x17, x13 # perform first operation
sll x17, x24, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
sll x30, x15, x14 # perform first operation
sll x14, x3, x13 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0x39e046e5e787cf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x0, 0xf8e7d50528b0f499 # initialize rs2
sll x24, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0xeb84aac6148d0f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
sll x14, x21, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x0d94eb5f2de1f321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
sll x9, x21, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0xc90f32e704ee2c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x0, 0xccb9aefccd8186ea # initialize rs2
sll x30, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x93122a2b2228b05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sll x6, x5, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0xd3d011a9a46d8a02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sll x15, x28, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x25bc23ebff32dee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x0, 0x4151c9fcbd3a11ec # initialize rs2
sll x4, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x9379b3b80b416ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sll x27, x22, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x85a05f6f65fbe345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sll x25, x18, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0x64b5022a9df07484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x0, 0x3032ccab1d19c05b # initialize rs2
sll x30, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0xe34f97fbba2bcab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sll x10, x21, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x19, 0x49cf403ec4699c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sll x19, x3, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x23, 0x1c739f23a435b194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize rs1
li x0, 0x6f83a11be173d1bf # initialize rs2
sll x23, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x20, 0x66df22f2e4ed7c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sll x20, x30, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x20, 0xb93d48b5dcd1165c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sll x20, x28, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x28, 0x48df923759c4478b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x0, 0x8c935b5aa22a7512 # initialize rs2
sll x28, x23, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x26, 0xf4ffd4e624cb4b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sll x26, x1, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x23, 0x3cd20df583118e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sll x23, x15, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0x8e0d4b188b369048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x0, 0xe536561973ffdbcd # initialize rs2
sll x15, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x3, 0x63297d26445bfdcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sll x3, x6, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x22, 0x59fb0599800afe2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sll x22, x28, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x26, 0x24b57f5acca6204c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x0, 0x901817e87e790e5c # initialize rs2
sll x26, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x31, 0x098407046a2b8b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sll x31, x29, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x4, 0xbb89accdc7c9bc8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sll x4, x26, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x19, 0xefbd074bdbb6c552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x0, 0x51710e89c70c910a # initialize rs2
sll x19, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x6, 0x6f1aee169d0290fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sll x6, x19, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x12, 0x7f5787b36727ac26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
sll x12, x9, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0x33bb198c40485fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x0, 0x8d41038476bd78b5 # initialize rs2
sll x31, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x9, 0x116e586862a8ac65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
sll x9, x26, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x5, 0xf9b7d294d896373b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
sll x5, x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xf35cd1e85ca75116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x0, 0x431091fd1952b9c9 # initialize rs2
sll x25, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xe797ebc6f53143ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x10, x9, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xbbc9905791729506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x22, x31, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x27, 0x7b0c40ff277592e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x0, 0x2697223544f32b8d # initialize rs2
sll x27, x17, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x13, 0x33d2dc192f6d18d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
sll x13, x23, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x17, 0xd44c77ee85ac7147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sll x17, x2, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0xa4e5e08301078d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x0, 0xc382da42ac7d2a3d # initialize rs2
sll x10, x8, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x7d43d9c112a6f140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sll x29, x20, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x31, 0xbc29f6692055bd17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sll x31, x4, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x1559e639b2f6a6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x0, 0xc1fc83e35ac53d27 # initialize rs2
sll x12, x24, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x3, 0xa16274f039368d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sll x3, x17, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xc4589fd3eab7d045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sll x13, x23, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x10, 0x8b667a75193db5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # initialize rs1
li x0, 0xbe8d7bb1e514d3ae # initialize rs2
sll x10, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x31, 0x2077656bcd308f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sll x31, x25, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x10, 0xbd19d16a99742be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sll x10, x14, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x3, 0x2f5b2ff72100c64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
li x0, 0xacfe266c645e989e # initialize rs2
sll x3, x9, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x13, 0xf4df94718ff83c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
sll x13, x23, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x1, 0xb79e1e1bba40431a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sll x1, x30, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x64dd5ba179e2808b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x2, 0x9351518e9dda3a96 # initialize rs2
sll x27, x5, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x1a6b6941c324918e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x28, 0xcaf4b5b4f6fc5c89 # initialize rs2
sll x1, x14, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0xce7b77d20be02707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x23, 0xd737ce8ff9622052 # initialize rs2
sll x14, x30, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0xed2bbbbecd89b954 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x28, 0x88b6850d4ed1ad2f # initialize rs2
sll x4, x30, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x7, 0x1526d02a4614a78c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x12, 0x2accd05bb572e9c0 # initialize rs2
sll x7, x21, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x5f2320508a5e7e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
li x6, 0x483916b960b54ee8 # initialize rs2
sll x26, x24, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x33896d36acc305e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0fb7ab72da4aa654 # initialize rs2
sll x30, x7, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0x4257bf3db652d033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x24, 0xf0a0e9e77df359bf # initialize rs2
sll x20, x28, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x21, 0x227ffb9f91ccac6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x25, 0x576e8bba04b57d98 # initialize rs2
sll x21, x7, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x31, 0xe00ea69dde775df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0xcf5cd1d9c4bcd727 # initialize rs2
sll x31, x29, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x636f25fcdf81bf8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x69ef9e0e61f672c5 # initialize rs2
sll x3, x29, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x05f90f69764034c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x5, 0xa80de205485b747d # initialize rs2
sll x26, x17, x5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x392d2a4d64895852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
li x1, 0xb0c70fff35c2d6aa # initialize rs2
sll x18, x13, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x4, 0xe550f117aab2334f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x13, 0x69e32f6861880d41 # initialize rs2
sll x4, x10, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x25, 0x6c2a34811a1919a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
li x7, 0x1970e427371c777b # initialize rs2
sll x25, x31, x7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0xa471218b3e7fad1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x11, 0xf8fb53787cad7057 # initialize rs2
sll x21, x23, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x9ac6e10573a3c8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x704def9ecdf301ee # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sll x25, x23, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0xd7047e01f6677dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6f66dbca25fa63fd # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sll x2, x23, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0xaa4a9b91c88d0e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7be3ed068251da5e # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
sll x2, x17, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0x57c5bccc28709ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8404f63cfe6dfef5 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sll x12, x4, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x21, 0x7b1650bc4f86b5e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcea1755897379827 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sll x21, x25, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x27, 0x800533c28777c151 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7f5ea74a1e43980f # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sll x27, x11, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0x0e96aa677fee42ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3a8545eec3b54d05 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sll x24, x23, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x11, 0x5c9e96ea781df702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2561256010d9a0f2 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sll x11, x23, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xb7ccc3422676be64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6a5fba1d41cb846b # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
sll x13, x7, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x9, 0x1a7cea0175857922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3fc52289f176a857 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
sll x9, x15, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xefa09fad6d150fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x944d6766398ae989 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x27, x20, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x541fa9bd9e376a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4e62d84639663737 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sll x11, x7, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xfb020751c736f397 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6208e7c26995db4f # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sll x11, x26, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0xd1a5fdc4d53c3607 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x35d799715a215bd0 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sll x10, x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0xdd1675da07f03302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9dd10f14be104ecc # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sll x15, x1, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x1, 0x542a3347641293fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x39e2ef3645eb06e6 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sll x1, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x49023584679770b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sll x25, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0xae0dd6d359d09c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sll x22, x10, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x41537ba7c46a432a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sll x31, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x13, 0xfef1461769f6163d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sll x13, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x10, 0x32f32729865441dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sll x10, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x20, 0x3965cdcef689cceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sll x20, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0xf25517bd8431202f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sll x16, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x31, 0x51dc542387538155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sll x31, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x20, 0x7a9a3454a81248a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sll x20, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x21, 0x6687d1b29faeaf39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
sll x21, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x48d417722a61ca5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x26, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x23, 0xc6fddf25f8a5d327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sll x23, x11, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0xb5b2fcb7576c062e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sll x11, x31, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x6e16d8102f207bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
sll x24, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x16, 0x14e2498b170fd39b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
sll x16, x28, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x17, 0x3fcec882ff29a69a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sll x17, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x4e9ef1399c830efa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sll x29, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x8, 0x89c5973a8e5f553f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sll x8, x14, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0xf8bc3a6af5012c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sll x13, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x18, 0x844b9bd95f5f2613 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sll x18, x7, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x17, 0xbca90f53500e5d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sll x17, x4, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x31, 0x036fa033d35bda11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sll x31, x12, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x31, 0x9dbfddab422aa67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sll x31, x9, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x15, 0xffcaa50c9ff08647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sll x15, x30, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x12, 0x7e5070106932c4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sll x12, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x20, 0x02bfe08b94a62fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
sll x20, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x23838de41e89c809 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x22, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0c2fd17f8f94db6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sll x14, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0xb2b54c0d297dafa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sll x9, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0x4e665ed137fc43c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sll x16, x5, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x5, 0x5dbfef753189f033 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sll x5, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x960822c7a2e55ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sll x12, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x27, 0xaa119d89739274f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sll x27, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x12, 0x4e45d6eca810810a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sll x12, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x96231ac2308f7233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sll x29, x17, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x7, 0x1438a576077f42e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sll x7, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x19, 0x626d306be6af4068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
sll x19, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x23, 0x622e19ea8d80f3d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sll x23, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x18, 0x7ead87618ac6b396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sll x18, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x24, 0xb6719e0cdcbcbafa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sll x24, x3, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x10, 0x85b02685c4ac540d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sll x10, x30, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x11, 0x7cf9aad74b5ac350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
sll x11, x20, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xa2354da27e63edc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x10, x20, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x15, 0xba7cc69dc9f09562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sll x15, x11, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x9, 0x42db04a16439f5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sll x9, x8, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0xee47ba72da795820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sll x15, x7, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x4, 0x76fd85336ee4348a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sll x4, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x24, 0x78bb01d23dc38621 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sll x24, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x11, 0x46a656a34fa1c242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000000 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
sll x11, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x15, 0x701e3a071f4a68dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sll x15, x29, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x28, 0xd5fc3a3a425845fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sll x28, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x13, 0x3f7dd273b367d410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sll x13, x18, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x1ffa33741050d99f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
sll x13, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0xeb12520286f1ea2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sll x20, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x18, 0x6e2d33c54f4d69e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
sll x18, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x2ea690410cad639d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sll x9, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x31, 0xd881a81cac5f37b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sll x31, x13, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x29, 0xf3dcb1b57a90f203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
li x16, 0x5bbc887763ae86f7 # initialize rs2
sll x29, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x3c04cad8eaa82b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x12, x24, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x970d14e76d41a1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sll x13, x17, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x29, 0x68c3577ac11b057c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sll x29, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x31, 0xf7f11c8a7d466c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sll x31, x7, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x4, 0x42cdfbbb505cfc9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sll x4, x29, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0xb37b50c31b7c1d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sll x15, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x26, 0x73bb14b66a919265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sll x26, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x15, 0xaf28197132dfe571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sll x15, x29, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x3, 0x352f6b75834ec5a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sll x3, x27, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x21, 0x90d8dd306db4e87f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sll x21, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x24, 0x198b026041c6a898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
sll x24, x22, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x7e1c4dd70b7bd4bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sll x22, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x30, 0xc6ee9fb7d332b711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sll x30, x27, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x18, 0xf5561de1f748e0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sll x18, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x7, 0x234d84be456f1b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sll x7, x31, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x13, 0xc534a792733b9b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
sll x13, x26, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x53400c610b727182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x15, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x17, 0x13fd3875f1496139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sll x17, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x21, 0xe5e5744e4857ae5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sll x21, x2, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x30, 0x45babb9b5d48a400 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sll x30, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x8, 0xde9651be1265b9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
sll x8, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x1, 0x1df8516ca615725d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sll x1, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0xa59e792aafe12dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sll x17, x16, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x9, 0xb121098b609c3d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sll x9, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x2fe92a798dc035f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
sll x29, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x24, 0x70aa24a61ab4ec3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sll x24, x12, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x27, 0x244ee4dc906fc6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sll x27, x5, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x12, 0xa04d9846c563acdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sll x12, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xbabbfa83750a5b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sll x15, x23, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0x1def00ce5ed8066a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sll x12, x26, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0xfbf33eb98f89f8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sll x7, x31, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x26, 0xa60b0b8878d49752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
sll x26, x3, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7e6af43e4620e13d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x17, x3, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x16, 0x3950394945074d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sll x16, x14, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x15, 0x910072f90957747d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sll x15, x8, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x21, 0x01fe580c652498e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sll x21, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x10, 0xde73cada73bdfac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sll x10, x2, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x7, 0x65cd8b43a5564629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sll x7, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x26, 0x107cae1cd3623b46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sll x26, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x1dc7ed7e32ad6889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
sll x18, x24, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x4, 0xfc494042cc5f9775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sll x4, x28, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0x94c454a635d11b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
sll x22, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0x3c18421e81f2c3df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sll x13, x22, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x17, 0x5fe5ff69ef38fd9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sll x17, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x41892967f561f254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sll x17, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x93b4d864c3fbd483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sll x23, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x597f87fe5930146a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sll x11, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x30, 0xdb420625abd11638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f7 # initialize rs2
sll x30, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x86c8af3bab268563 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x12, x22, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0x6958257ec351d0da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sll x8, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x4, 0xb00948696468fc99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
sll x4, x2, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x4, 0xf530d30d382f3344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
sll x4, x22, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x16, 0x948880fcd2e6530e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sll x16, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x12, 0x0cce30f5c1c240ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sll x12, x6, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x10, 0x49a91e7d201a464b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sll x10, x27, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x23, 0x0781f810602e2132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sll x23, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x6, 0x8298e7dd44a118f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
sll x6, x15, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x12, 0x7f52409b86a2b94d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sll x12, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x18, 0x2723440c8256291d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sll x18, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x28, 0x6d314125da1bdc69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sll x28, x13, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0x572975e21bb96071 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sll x25, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x15, 0x352bbc19b5e88848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sll x15, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0xfe5141d2a147f075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sll x17, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x4, 0xf79373adc6c6bdb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f7 # initialize rs2
sll x4, x21, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x75e928ec88010916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x30, x10, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x26, 0x9c391cc8a42d0506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sll x26, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x4, 0x943147dc57d7d121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sll x4, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x29, 0x2714977b16e2c30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sll x29, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x15, 0x51a67d65147831c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sll x15, x29, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x7, 0x8b985a34e2979bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
sll x7, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x6, 0x377030fdf7f9dc7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sll x6, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0x154f4b2c87e9d338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sll x24, x22, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x2, 0x3572b4b12033d076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
sll x2, x7, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x15, 0x44ffb66f93842073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sll x15, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0x905570b83f994ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sll x30, x23, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x642192d37763bb18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sll x12, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x21, 0xfe1e4a83958d9a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sll x21, x29, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xd2eea41e2ef79ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sll x19, x22, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x27, 0xc6b8fdb5ac8b2dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sll x27, x2, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x13, 0xd1d9852767b7e4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
sll x13, x27, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xa7ca8e5ee61f6140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x6, x5, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x337aed5ada47ab44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sll x15, x9, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x3, 0x285fa329bcf60728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sll x3, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xdd82b360bd43dac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sll x6, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x22, 0xd7abb3b0a243da28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sll x22, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x18, 0x2584c01847cd3a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sll x18, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x23, 0x7ba9bbdcc1d20baf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sll x23, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x2, 0x85aec1519d6dbcf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sll x2, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x16, 0x16c843e9ea6684f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
sll x16, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x29, 0xd9372db48a097f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sll x29, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x10, 0x0d7016379ed7b002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sll x10, x26, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x28, 0x31cd592f3152c65b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
sll x28, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x7, 0xcfbf60ab10debea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
sll x7, x1, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x6, 0x338886a24e68e22f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sll x6, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x14, 0x33b0d13ead26709a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc887763ae86f7 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sll x14, x23, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x23, 0x8c58800c06f027c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x5bbc887763ae86f7 # initialize rs2
sll x23, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xc13db5036630cbc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x12, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x4, 0x5854348b95f81da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sll x4, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x16, 0x5a461bbbea161886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sll x16, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x30, 0x712c7bc3c441f07c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sll x30, x12, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x26, 0x2851d392c11e7f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sll x26, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x12, 0x128f1f63b886db62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sll x12, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x25, 0x2fdb6bff933a767e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sll x25, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x16, 0xd03b22824177daef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sll x16, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x23, 0x4d5f214feee17d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sll x23, x29, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x25, 0xc2132d7cc34eef62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sll x25, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x18, 0x25f16fbb8c0e5fde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sll x18, x4, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x10, 0xa32c0de39549108c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sll x10, x13, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x21, 0x8c622b8fbead0a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sll x21, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x14, 0xeaab89a579c96f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sll x14, x27, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x20, 0xa46de9205013d83c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sll x20, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x31, 0x0357dd8a8ee9c0de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
sll x31, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x6d66eeba3dc0bb4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x6, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x10, 0xc742240ff229e8df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sll x10, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x16, 0xec1f4384da5e86b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
sll x16, x26, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x3, 0x93df6074da3f4eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sll x3, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x1, 0xbddaad57962a0088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
sll x1, x6, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0x1904c8effd3701c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sll x21, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x1, 0x8a951dd6e18c292b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sll x1, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x2, 0xe616c858481eb172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sll x2, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x2, 0xa7cbbc30df30ec96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sll x2, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x27, 0x22c98ef1afeae517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sll x27, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x4, 0x1dd35c0e8bfdc880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sll x4, x2, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x18, 0xf9c80ac023694942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
sll x18, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x2f68c5cf3509bcbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rs1
li x4, 0x7ffffffffffffffe # initialize rs2
sll x31, x9, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x29, 0xb6bbdf38a481acb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sll x29, x16, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5cbc9f03d0aeb09d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sll x13, x24, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x8, 0xcb125ceff4984c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
li x5, 0x5bbc887763ae86f7 # initialize rs2
sll x8, x26, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x220446b566eb8ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x17, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x30, 0x7ac2e13a00fe31bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sll x30, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0xbd478139ea4bbd5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sll x6, x16, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x16, 0x4bccba9e95a6b636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sll x16, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x27, 0x5b61a97fdd1b2cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
sll x27, x1, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0xd23ee8b0bf0e58f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
sll x1, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x16, 0xaf7beabc5e3e1091 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sll x16, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xab90a5fdc090f382 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sll x14, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xff063a81d92ad19f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sll x18, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x14, 0xf88e74625e7560e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sll x14, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x8, 0x79befbbc8e6faa57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sll x8, x23, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x28, 0xddf8c1cc20602c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sll x28, x10, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0x769a6fed51018e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sll x25, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x25, 0x8cea83e53ca8cba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sll x25, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x29, 0xb680d012f823e26e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sll x29, x15, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x3, 0x6d619354a9731282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x21, 0x5bbc887763ae86f7 # initialize rs2
sll x3, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xff34c0af30d70764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x19, x25, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x14, 0xe2fbc245963a0077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sll x14, x30, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x15, 0x00007cd9ff7f0a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sll x15, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0xd9314fcba00c0939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sll x23, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x11, 0x2669db0cc52af36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
sll x11, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x14, 0xe8e6396f6fa0ccf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
sll x14, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x7ebf6a7fa9be5b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sll x14, x10, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x2, 0xb6b126c3733ac265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sll x2, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0x1e112989eb17baf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
sll x9, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0x0aa818f7b3f2d1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sll x3, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x27, 0x37c7d1f0a0bf3aff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
sll x27, x22, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xefcef597fb1c5f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sll x26, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x4c72b4d9800e683b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sll x16, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x30, 0x97969afeb48308ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
sll x30, x9, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0xb7c5a44e1a04194b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sll x6, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x18, 0x83f25dbf728fa079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
li x15, 0x5bbc887763ae86f7 # initialize rs2
sll x18, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xda04594e292695be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x6, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x7, 0x39849d6edb9b6992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sll x7, x9, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xa59c65ef26e1d186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sll x16, x7, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0x8230f990266d39d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sll x30, x26, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x6be46b3764ad06ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sll x30, x21, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x10, 0xb623138f13c73eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sll x10, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x25, 0x73f745e8917f0f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sll x25, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x18, 0xf793af4399bc54d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sll x18, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x94aaa2357b789164 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
sll x20, x6, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x27, 0xbc1b9bfcda86c364 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sll x27, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x25, 0x5fb881894c1d7af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sll x25, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x5, 0xc1d6a070ad925172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
sll x5, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x23, 0x8472c21104fb1216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sll x23, x5, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0xcb156adbe3aa296e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sll x28, x10, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x26, 0x6f940d972924973f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sll x26, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x23, 0xaa65440278abeac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
sll x23, x11, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xa176b337171a7620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x29, x30, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x8, 0xa1d96dac2244efba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sll x8, x28, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0xf77180d7488e0a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sll x19, x8, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x1, 0xa6a221d630a5915d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sll x1, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x9613e7499c2613cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sll x8, x18, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x21, 0x79d54308b5940e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sll x21, x30, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0xc7ef3789773ff366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sll x30, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0xbffaa02b1d3731c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sll x2, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x6, 0x07ce1c3bdb6dbf5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sll x6, x5, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x12, 0x75de7e121c30657f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
sll x12, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x8, 0x4a428f4d516a19fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sll x8, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x5, 0x56e0ea971ebd6d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
sll x5, x23, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x31, 0xea2c2a0c8a55354f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sll x31, x15, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x18, 0x14ecb6fe290cec84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sll x18, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0xb954e162041e3478 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sll x30, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x6, 0xa167500859032c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
sll x6, x10, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xb4bd1dd1a59b92a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sll x8, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0x79f0b6b51cf8ba7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sll x22, x5, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0xfedf329d3e20daf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sll x3, x21, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x14, 0x92c6ac7ad7ff0701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sll x14, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x26, 0x98f23d302ff6a153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
sll x26, x12, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x2, 0xe0cd04c11bef4a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sll x2, x30, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7ec3198e87fc55a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd38e64fa7dc96a42 # initialize rs1
li x3, 0xb3d4f367b35a5284 # initialize rs2
sll x0, x0, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xcc5a49c86e105240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc8c2cbda0f2fcf2c # initialize rs1
li x24, 0xd873e52f1768053b # initialize rs2
sll x1, x1, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xdb87db4292a32ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3d4b21009418f6f1 # initialize rs1
li x6, 0x0d80c21ecbaa085b # initialize rs2
sll x2, x2, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x018541358d60ffed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x073605ab8e61762c # initialize rs1
li x18, 0x63819c40e9793531 # initialize rs2
sll x3, x3, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xc0a4a9fb69294d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc41c51897795beb5 # initialize rs1
li x21, 0x17d3dbd4ac26d96c # initialize rs2
sll x4, x4, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xaf28243cf079e4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8301e00ad9e7ef55 # initialize rs1
li x26, 0xc00372b0164c6fd1 # initialize rs2
sll x5, x5, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xd057118e7fe878bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x001ea81c290107ed # initialize rs1
li x28, 0x03f8fc5e21ed6ea1 # initialize rs2
sll x6, x6, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x15eaf6cc6725911b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x56c80afb8ef4b451 # initialize rs1
li x11, 0xcd1969e607587310 # initialize rs2
sll x7, x7, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdbd04eeef30a525f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x453e42fafe57954b # initialize rs1
li x20, 0x27cc278f395c4508 # initialize rs2
sll x8, x8, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd30564e4bcf601a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4871dbc1be9426e1 # initialize rs1
li x27, 0xffec18a181502e9b # initialize rs2
sll x9, x9, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x64cc2e4a60369dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf8d935f6fa0cc9e9 # initialize rs1
li x27, 0xab355f69e26f11da # initialize rs2
sll x10, x10, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3d250c8a8aa84dac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8736dd7fec2095ef # initialize rs1
li x5, 0x1bce7189513af822 # initialize rs2
sll x11, x11, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8a1bb06d89d6d94c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x65f9296e0ab05e76 # initialize rs1
li x23, 0x685c81bdd87321a4 # initialize rs2
sll x12, x12, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3162a8fc0ca1af7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e4509db569b47b8 # initialize rs1
li x3, 0x93f31e94d0e9743f # initialize rs2
sll x13, x13, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1323151259f5ae31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x50f98bc804a9e9f2 # initialize rs1
li x30, 0x62ba2e50a4da5588 # initialize rs2
sll x14, x14, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x674d497cbdcdeab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x177d8e7810f3bb22 # initialize rs1
li x16, 0xee35efe3d21fabbe # initialize rs2
sll x15, x15, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8df83aca31031cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf76d6393f7a2c415 # initialize rs1
li x16, 0x20cd255e852cf3c1 # initialize rs2
sll x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4ea512a06628d98d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x14d53467b198f6c1 # initialize rs1
li x6, 0x2e24def5c9343062 # initialize rs2
sll x17, x17, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xafe7d376437921d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5086b6270eeb5391 # initialize rs1
li x12, 0x19540d37351b648e # initialize rs2
sll x18, x18, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xadf9379fc1b4a748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x58533eb68aa0b2be # initialize rs1
li x13, 0xe689629cce65e2eb # initialize rs2
sll x19, x19, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5bf4cd0c1146b21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x60a168c5f593e0f2 # initialize rs1
li x1, 0x106c2124a684906c # initialize rs2
sll x20, x20, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2ec090e781e1bc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9bd56c2bfdbbf7ca # initialize rs1
li x13, 0x1adcb6e6c4ceeb56 # initialize rs2
sll x21, x21, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x4cfa4d09cc590c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5b4ff28c986fd8d7 # initialize rs1
li x18, 0x7b3a63cdb18d0736 # initialize rs2
sll x22, x22, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x61405db5a3f808ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x18e9533ed7a85000 # initialize rs1
li x6, 0xba426561352b22f9 # initialize rs2
sll x23, x23, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe15e3ce7e401da96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfa7242b0980cace8 # initialize rs1
li x30, 0x58c12a247af26e27 # initialize rs2
sll x24, x24, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe11916b7d1e4d1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x92bb8a2310ad2bbf # initialize rs1
li x1, 0x35b743ff330efa56 # initialize rs2
sll x25, x25, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9f4d0c04ab6edd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ef65bf4fd773777 # initialize rs1
li x28, 0xa85a41f5f1eb50ee # initialize rs2
sll x26, x26, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf7570417a196ea60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x120384d1045fafcb # initialize rs1
li x15, 0xac448031945fc57e # initialize rs2
sll x27, x27, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x911199634ea9575a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x18fbb54fd5315dbb # initialize rs1
li x7, 0x37e59a31524af048 # initialize rs2
sll x28, x28, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf489bc7b2e50bd47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaf90e7bae6a5da1 # initialize rs1
li x11, 0xcb15296b666ed2d0 # initialize rs2
sll x29, x29, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6db16eaf73874ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc1cc6a6da375d6f6 # initialize rs1
li x13, 0x65e12ecad5f87af9 # initialize rs2
sll x30, x30, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x1a35cdc154c61420 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8ad395920f2cb54f # initialize rs1
li x10, 0x5d3e856047786b86 # initialize rs2
sll x31, x31, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x31f50fc49f4e99e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xba82bc514b79ba75 # initialize rs1
li x0, 0x5c12d1fb27f9f664 # initialize rs2
sll x0, x29, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xf436b728e7dc34c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x641cd9d96e215c0c # initialize rs1
li x1, 0x28427d7956d27259 # initialize rs2
sll x1, x2, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xbe90aad6430d477e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x146ed3d84161f46d # initialize rs1
li x2, 0x19e72333ad456f38 # initialize rs2
sll x2, x26, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x3258f652054be708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x502f1a7582f1b161 # initialize rs1
li x3, 0xd3cf91d83ffba305 # initialize rs2
sll x3, x26, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x297f179ed7094fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd1566bcf1c21ed09 # initialize rs1
li x4, 0x2e0e89f571c757c2 # initialize rs2
sll x4, x15, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xe665626ea459913c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x91de6a234306d387 # initialize rs1
li x5, 0xe3d9247fb477b5a3 # initialize rs2
sll x5, x5, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x78d2ba4af1e1c009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x95c03f67353a714b # initialize rs1
li x6, 0xef81fef10cb9616e # initialize rs2
sll x6, x20, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x9b8e803d517e1307 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2107217bd2755767 # initialize rs1
li x7, 0x1af52f529849504c # initialize rs2
sll x7, x8, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x0fd1fa56954f4702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2cdece0963bd06a1 # initialize rs1
li x8, 0xc7675f341c688282 # initialize rs2
sll x8, x20, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xf6951df9fbc2b6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55956cd9abb47649 # initialize rs1
li x9, 0xfa985a0bd536ebfc # initialize rs2
sll x9, x27, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xab6f00623bbb4632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb3aabd3e0f4b4687 # initialize rs1
li x10, 0x7c2a6ddc19aac6e7 # initialize rs2
sll x10, x11, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x323cd512c34ca09a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x04a56080466a62d6 # initialize rs1
li x11, 0xccad8f7de86b486d # initialize rs2
sll x11, x2, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xf10854086d1aaa5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8feb3dc341ede6c4 # initialize rs1
li x12, 0x331dc345b7bedf52 # initialize rs2
sll x12, x3, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xad11fcf2267fcbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe9207ebc85c56a0a # initialize rs1
li x13, 0x216fe433466e7aed # initialize rs2
sll x13, x3, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x48de48802e3f82e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc5fe74570c567e53 # initialize rs1
li x14, 0x206ab24fe66cddb1 # initialize rs2
sll x14, x18, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xdd2e48fd0d4a9a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf4f9f35de2910a42 # initialize rs1
li x15, 0xedaf7218e3ccb633 # initialize rs2
sll x15, x27, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x360ade6f4f7c4625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x78b748be2b92b801 # initialize rs1
li x16, 0x8c92c4b2e5809b2d # initialize rs2
sll x16, x12, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xe574b31174e35bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfce9bd027390b0a0 # initialize rs1
li x17, 0xb179f0ced72b4a12 # initialize rs2
sll x17, x31, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xba15c55464c5ec3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x759b22dae90ce39d # initialize rs1
li x18, 0x7e29cab37be5c3c3 # initialize rs2
sll x18, x20, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xabef8783a239161c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1f23c6c0070e1b11 # initialize rs1
li x19, 0x8c7feb3d2c85004b # initialize rs2
sll x19, x12, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xc220009ecb55cddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4b3d04fe0cebfdca # initialize rs1
li x20, 0xbeda10bbd05f65c4 # initialize rs2
sll x20, x14, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x41c47c43455ff73f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x79b28f331f940e72 # initialize rs1
li x21, 0xe2b71fb781f9a6ea # initialize rs2
sll x21, x25, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xf366e272aee58549 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x113f2eb6e34f2e39 # initialize rs1
li x22, 0x851f5a9a5430f51e # initialize rs2
sll x22, x6, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x7ec4db233629edce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x18b6bfe88a4951e5 # initialize rs1
li x23, 0xdaca942fe1a1897a # initialize rs2
sll x23, x14, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x3d1760900f3e78bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3fa34f4f21859e74 # initialize rs1
li x24, 0x3ad0b24fd8c4ab6f # initialize rs2
sll x24, x2, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x436b6a81001ad4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9e752f1f84550593 # initialize rs1
li x25, 0x8c17e393b64f7c08 # initialize rs2
sll x25, x10, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x02ca9698920da586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x712411707ff82b9f # initialize rs1
li x26, 0x221ebd454cc1d033 # initialize rs2
sll x26, x25, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x50b056aa3a35ce46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55d43b97bc410c64 # initialize rs1
li x27, 0xe81f1a3da9222182 # initialize rs2
sll x27, x10, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x430b7dbc8d303fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x704e969f534e15da # initialize rs1
li x28, 0x3ffeb6f40747ff04 # initialize rs2
sll x28, x15, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xc8f1781ccf75b1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa63177e74be2280b # initialize rs1
li x29, 0x2016f7631b83db46 # initialize rs2
sll x29, x3, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xd24deeef965deaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe626d390a9d91cc3 # initialize rs1
li x30, 0xcaae6b701ab32842 # initialize rs2
sll x30, x22, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x2d85d3b57c58c959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4c27ad2134f10d07 # initialize rs1
li x31, 0x052345d3430f789d # initialize rs2
sll x31, x23, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xff93a97ddd1c02b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x845881fd9f389e62 # initialize rs1
li x0, 0xca80d1b353638a37 # initialize rs2
sll x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5acaf1ef171e1faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x02c8618a7f238e27 # initialize rs1
li x1, 0xf31fa56863d3a41d # initialize rs2
sll x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x2a6dcc6368d0a636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa0e1e19d32c461d6 # initialize rs1
li x2, 0xaab266f59ef6ccfd # initialize rs2
sll x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9cee7b94a85890de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7d893391d790b6b7 # initialize rs1
li x3, 0x08380a4963f1616f # initialize rs2
sll x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x0da7cfc150224b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x47516f42abadd712 # initialize rs1
li x4, 0xfd16dceec5c4ae14 # initialize rs2
sll x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x969db2d0f85d69c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbb7fe71b6ca0ec1e # initialize rs1
li x5, 0x296b1d7d89d39ff2 # initialize rs2
sll x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x0e0e283dcccd9a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8aaacad4c9c43ff2 # initialize rs1
li x6, 0x4670e4c075867998 # initialize rs2
sll x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x0c45f2a57065cad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbcd6ce7a82659494 # initialize rs1
li x7, 0xdeb38f977b9d01d5 # initialize rs2
sll x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x1edb93338863655e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x046f63abcebbde96 # initialize rs1
li x8, 0x44d097d776775177 # initialize rs2
sll x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9ac2ddcd2f8a281f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc2a8b272e9766780 # initialize rs1
li x9, 0xbd38a1fb27de6139 # initialize rs2
sll x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xa3c4bf33e5a54103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf78474df4a58db57 # initialize rs1
li x10, 0x0ce7542a819cb02d # initialize rs2
sll x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc0a4a51d098df321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2aa79895b5a27988 # initialize rs1
li x11, 0xc20fe3992603a8bd # initialize rs2
sll x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb994c06fc805778d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x326d66f18c583346 # initialize rs1
li x12, 0x0238266ead5760e8 # initialize rs2
sll x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x886fde26c3018133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x356abe393b8b37eb # initialize rs1
li x13, 0x525442378817d2fa # initialize rs2
sll x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe0adf8da618081c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x502731069837592d # initialize rs1
li x14, 0xbf61cce80363ae24 # initialize rs2
sll x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x89b9f4ae0aaca925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd5916dca647bb139 # initialize rs1
li x15, 0x8b18f53d52c65f8f # initialize rs2
sll x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0f07f19c06553d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x060705c833f689f4 # initialize rs1
li x16, 0x38142131cf2dbe0d # initialize rs2
sll x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xfb38313a1757e0b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2023cf169e4be507 # initialize rs1
li x17, 0x86918aa13c06b175 # initialize rs2
sll x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xe37b8bbb4b1a3f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6c1f750da9a18634 # initialize rs1
li x18, 0xa159ba374dbd5357 # initialize rs2
sll x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x746df38f84abdad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x39a19834284745eb # initialize rs1
li x19, 0x3e5aee222b9d3831 # initialize rs2
sll x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2448da6c6a29ff83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd8131f0fe51dc22f # initialize rs1
li x20, 0x947739a1016468a4 # initialize rs2
sll x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xbbe454dd6fc1675b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa9ee493f6d9df732 # initialize rs1
li x21, 0x0d7db70300b20a1f # initialize rs2
sll x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9f3c1f2f19cc6eea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3a5678360e65f967 # initialize rs1
li x22, 0xd52acf592c638d88 # initialize rs2
sll x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc71cf8c20b6ca528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe416f166308e4379 # initialize rs1
li x23, 0x8714863edf21b647 # initialize rs2
sll x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x96aa362a5effbbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2f9c0e230538bb71 # initialize rs1
li x24, 0xec49a5f72ac2cded # initialize rs2
sll x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe067a0fc86021e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa551d0cf58d785f9 # initialize rs1
li x25, 0xc4d0d1056994031a # initialize rs2
sll x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7b8a97a44053c8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcda347119304c434 # initialize rs1
li x26, 0xe31d36368125355a # initialize rs2
sll x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe5161c343033fc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3af0dd13f7106af2 # initialize rs1
li x27, 0xbbce2530a14d9131 # initialize rs2
sll x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8e2cd5eabae23825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1ff756c7596425d0 # initialize rs1
li x28, 0x12d9dcceca01592d # initialize rs2
sll x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x10ff4cee144aa2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x33d2004ad6ceab0b # initialize rs1
li x29, 0xf34cb1bd836db88a # initialize rs2
sll x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x2e5e79c26f888acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x337b38d740a2efd6 # initialize rs1
li x30, 0xc8b72e8d083ee241 # initialize rs2
sll x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8b39b044f7598ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x53d633b064ce50e7 # initialize rs1
li x31, 0xa3f716bcc3b7b4de # initialize rs2
sll x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x4, 0xed465b3c83234f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0619bc0e23074443 # initialize rs1
li x0, 0x1ebb098626bb4a9e # initialize rs2
sll x4, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x4, 0x6aece2124b7e2358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfbfeff4eccfc7c30 # initialize rs1
li x1, 0xbe756a91bffabe0e # initialize rs2
sll x4, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x21, 0x99b62e12f1ec1e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0ea9b24ca875fe67 # initialize rs1
li x2, 0xa954534866827956 # initialize rs2
sll x21, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x8, 0x13303b438e4a798b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcfcd5f74995e9a20 # initialize rs1
li x3, 0x08dc8037b2c4cfed # initialize rs2
sll x8, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x25, 0x54508bb5b2917ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5148d16016092725 # initialize rs1
li x4, 0x673336981a015f0b # initialize rs2
sll x25, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x6, 0xf65735034673a533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1700da5bad0073d9 # initialize rs1
li x5, 0x1d66925ff2e48bef # initialize rs2
sll x6, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x2, 0xcdf027949dd922ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa50981d13360174f # initialize rs1
li x6, 0xd68a57bfc741ba9d # initialize rs2
sll x2, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x1, 0x4093290683b3350d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9039faa48b71d879 # initialize rs1
li x7, 0x4985bd11ba4efb76 # initialize rs2
sll x1, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x19, 0x1e74b88a18daaf50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf6c18780e7a165c2 # initialize rs1
li x8, 0xf3dd65a6b12b0d2f # initialize rs2
sll x19, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x31, 0x19f23dcc1fab6569 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf1f84ece312ee157 # initialize rs1
li x9, 0x1d154f80a671df27 # initialize rs2
sll x31, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x17, 0x183728085a9cfe8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5c7f3807c49609b2 # initialize rs1
li x10, 0xd8b955999de6fcb5 # initialize rs2
sll x17, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x12, 0xcd396503182258c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2042a76c146d6bc7 # initialize rs1
li x11, 0x9c30f52ff6769347 # initialize rs2
sll x12, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x18, 0x0863d2f67ee51e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa02642e805d44a97 # initialize rs1
li x12, 0xc7dfe9aed11fd251 # initialize rs2
sll x18, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x1, 0xa0e2c66f27822fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7afc4f603dc20784 # initialize rs1
li x13, 0xed5053335d069aa9 # initialize rs2
sll x1, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x1, 0x2e9cf820d6311526 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x94021b230115534a # initialize rs1
li x14, 0xe333153fe130b2ae # initialize rs2
sll x1, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x7, 0x3bf0b742cb771180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb920da78376153b8 # initialize rs1
li x15, 0x3ccb128058b1d7cf # initialize rs2
sll x7, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x20, 0xef2c28e7079cc231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x40caff6c2ad8e67b # initialize rs1
li x16, 0xa8d6fa5a5009606d # initialize rs2
sll x20, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x3, 0xc8465bc70a33679f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xac3325629b8deae7 # initialize rs1
li x17, 0xc1b0bd040e37e776 # initialize rs2
sll x3, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x3, 0xb46e9ffa0ca21821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6d2b19e3e1d580e2 # initialize rs1
li x18, 0x3072cde821c98238 # initialize rs2
sll x3, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x13, 0x2d5756ef45de4749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x616977bf7011fd6c # initialize rs1
li x19, 0xa1a30929406534f0 # initialize rs2
sll x13, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x7, 0x759d87422552aaeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa4d449bb9b03ff87 # initialize rs1
li x20, 0x7f54ac022475fd8a # initialize rs2
sll x7, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x11, 0xd65a73b79b7fe880 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd210c1affce7c895 # initialize rs1
li x21, 0xea51aeb0193ddd1d # initialize rs2
sll x11, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x16, 0xcb45a76ff6381fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xca21794bac5e0ffb # initialize rs1
li x22, 0x35d1c9b53599883a # initialize rs2
sll x16, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x2, 0x88a29643c14b433f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x582c75bdace6503a # initialize rs1
li x23, 0xd4133a47b8f516c2 # initialize rs2
sll x2, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x22, 0x6b472e8eda72a665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8357284ffa9765fd # initialize rs1
li x24, 0x7617a74a2b582ebc # initialize rs2
sll x22, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x3, 0xabab93c3d97d900c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1330dd5bb0ae6863 # initialize rs1
li x25, 0x07ee81e2e467bb77 # initialize rs2
sll x3, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x13, 0x9e2a11c0bbae1791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x341fa9f7b8f74dd4 # initialize rs1
li x26, 0xfd5a5f702d1beb28 # initialize rs2
sll x13, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x3, 0xa824806d47e32d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf801ac861d5efad7 # initialize rs1
li x27, 0x149e8f77bf6452af # initialize rs2
sll x3, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x22, 0xfecf8414cf1030f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4df893196e100b2a # initialize rs1
li x28, 0x673c299e517f843d # initialize rs2
sll x22, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x17, 0xdd562df94ad07779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xce9f2467e35f7204 # initialize rs1
li x29, 0x7ba8121e5ee94d41 # initialize rs2
sll x17, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x5, 0xccde43a2a98b55ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x280232bc54eff1f4 # initialize rs1
li x30, 0xce1bf545e8738e3d # initialize rs2
sll x5, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x8, 0x3ab6efbc48749891 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2c63204430d4621c # initialize rs1
li x31, 0x2a288ebe24ad0874 # initialize rs2
sll x8, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x1ea31db93616897d)
li x12, 0x67ee6f3630ec58a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1ea31db93616897d # initialize rs1
li x11, 0x57e20e3a57d07d66 # initialize rs2
sll x12, x8, x11 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x49001bbd303e185d)
li x26, 0xab7cd2423b14f06b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb6ffe442cfc1e7a3 # initialize rs1
li x6, 0xa1e976c1dc74a9ab # initialize rs2
sll x26, x19, x6 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6123d510ed39a7d4)
li x18, 0xa9d5c4f8c6d37d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3b966d9f0fb93461 # initialize rs1
li x21, 0x6123d510ed39a7d4 # initialize rs2
sll x18, x7, x21 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x49946bb270465d11)
li x12, 0x595a44a0999a974f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x95f2eacab92aa101 # initialize rs1
li x31, 0xb66b944d8fb9a2ef # initialize rs2
sll x12, x23, x31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
