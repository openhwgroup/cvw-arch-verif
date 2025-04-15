///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-rolw.S
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
li x0, 0xcbd9380292dcda69 # initialize rs1
li x1, 0xd43d84b018952dab # initialize rs2
rolw x21, x0, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6ef6a06ee00c2739 # initialize rs1
li x19, 0xea674d094412b7c6 # initialize rs2
rolw x3, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf19fd49b70ee4fe7 # initialize rs1
li x30, 0x008001acce6b0e22 # initialize rs2
rolw x31, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x50a9ddfff889e629 # initialize rs1
li x6, 0x651d81a4f5c23f57 # initialize rs2
rolw x18, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x891dbe23b8554ade # initialize rs1
li x9, 0x611b85d5a4a1c981 # initialize rs2
rolw x11, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8b6b9610e5a22152 # initialize rs1
li x10, 0x5254c480dd7b5ff5 # initialize rs2
rolw x7, x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x755d6095d93cf0ca # initialize rs1
li x10, 0x2550904e487b0336 # initialize rs2
rolw x16, x6, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xae775aa5174615ea # initialize rs1
li x8, 0x1d4182e839c42d2a # initialize rs2
rolw x26, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xccec0a0fca634782 # initialize rs1
li x1, 0xe1e89f839531f97d # initialize rs2
rolw x7, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xba2db199e46395e8 # initialize rs1
li x6, 0x588c28e6e887ca3a # initialize rs2
rolw x16, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x68020b42a79c55a3 # initialize rs1
li x11, 0x13180c783fd1e69c # initialize rs2
rolw x6, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd3ab5c72fd6ed1c7 # initialize rs1
li x1, 0xbd983878a877c895 # initialize rs2
rolw x29, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8a527458f1e1fa9b # initialize rs1
li x14, 0x91a5e5614db51d8b # initialize rs2
rolw x22, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa78f41f23119d856 # initialize rs1
li x17, 0x5d5b2434e169eca2 # initialize rs2
rolw x15, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe291f9137b17ed07 # initialize rs1
li x23, 0x1d01a0f5f54ea573 # initialize rs2
rolw x18, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa32b098b392d53eb # initialize rs1
li x18, 0x37b9f0623d8c6f2f # initialize rs2
rolw x23, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3235aa87069d0197 # initialize rs1
li x2, 0xa5a2653a2b43e042 # initialize rs2
rolw x1, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xfa4040e12664ae2d # initialize rs1
li x27, 0x5d77dc980b74ce78 # initialize rs2
rolw x14, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x8f539b2911556817 # initialize rs1
li x25, 0x667b7d15852018dd # initialize rs2
rolw x23, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xae477989174981b8 # initialize rs1
li x23, 0x11a34565f14fd313 # initialize rs2
rolw x10, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x2f3a95c5933d3637 # initialize rs1
li x5, 0xef18bc53c345ac52 # initialize rs2
rolw x1, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9ab56d387ca0ccc6 # initialize rs1
li x23, 0xa61da435dcf1aaea # initialize rs2
rolw x8, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x442323bcacd3d25f # initialize rs1
li x20, 0x2c0eef3a6f645aae # initialize rs2
rolw x26, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf777b90d379c4816 # initialize rs1
li x29, 0xa3badadbacb57819 # initialize rs2
rolw x28, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7b4fe23576c1c7ee # initialize rs1
li x10, 0x2cd954f249b4b497 # initialize rs2
rolw x5, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x90d4443c04fc422b # initialize rs1
li x14, 0x07dd7c952c489868 # initialize rs2
rolw x15, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb57105807fa4d2af # initialize rs1
li x24, 0x80186cee46ffb5db # initialize rs2
rolw x12, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x808cc394ae45aac2 # initialize rs1
li x21, 0x4ae81ec2e5e1bff9 # initialize rs2
rolw x16, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4e987710a97cffe3 # initialize rs1
li x11, 0x37836bb8af97ddd6 # initialize rs2
rolw x27, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x80be89c3aa14890d # initialize rs1
li x27, 0xe4afece39aa53894 # initialize rs2
rolw x15, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x6d0eb073de545dc0 # initialize rs1
li x11, 0x066eb756c75ad766 # initialize rs2
rolw x6, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x109dfb810ef1357f # initialize rs1
li x29, 0x5047bdca85c50792 # initialize rs2
rolw x5, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x8, 0xb0f099082ff70e57 # initialize rs1
li x0, 0x4e5d4872c5d58b43 # initialize rs2
rolw x5, x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0x087b07045344a839 # initialize rs1
li x1, 0x40da8e7db8567ced # initialize rs2
rolw x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x3f5c90bfdeb8cbeb # initialize rs1
li x2, 0xe9dbafe3eff1269f # initialize rs2
rolw x8, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x0a6c12fa7e4f86f2 # initialize rs1
li x3, 0xc7639bd87ed62e1a # initialize rs2
rolw x23, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xb6293b691dd065ce # initialize rs1
li x4, 0x8690655cd28ef91f # initialize rs2
rolw x31, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x5f899f656a716a12 # initialize rs1
li x5, 0xc243d4b214fbe1db # initialize rs2
rolw x3, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x0b659c739844ab8f # initialize rs1
li x6, 0x784328bd36171aa6 # initialize rs2
rolw x4, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x8288215c08fb82eb # initialize rs1
li x7, 0xedf0cb0b3cb41ed0 # initialize rs2
rolw x1, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x20, 0xd1a77d74690311a7 # initialize rs1
li x8, 0xd0aafde856287839 # initialize rs2
rolw x29, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0xb67a0bc8992b073b # initialize rs1
li x9, 0x75cf6126da44f45d # initialize rs2
rolw x31, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x3b7e0847ca4f478c # initialize rs1
li x10, 0xbbd7a1db75345b7c # initialize rs2
rolw x20, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x3c4f3e12fddabf3d # initialize rs1
li x11, 0x571d29e928f9b1c1 # initialize rs2
rolw x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x17e798141a92974f # initialize rs1
li x12, 0x63a62367e7de8baf # initialize rs2
rolw x17, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0xe03cef85e3d62cee # initialize rs1
li x13, 0x7e7bec51d8749033 # initialize rs2
rolw x20, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x97c4854ce014afdd # initialize rs1
li x14, 0x80fd48fcd1d3685e # initialize rs2
rolw x2, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x67ba51b0921c2ad9 # initialize rs1
li x15, 0xf7a0e52fd5db2a47 # initialize rs2
rolw x26, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0x9f1e1b37454b5e4c # initialize rs1
li x16, 0xa7271eaabae28eb1 # initialize rs2
rolw x21, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0x094c882b1c7f9405 # initialize rs1
li x17, 0x991243064576b57e # initialize rs2
rolw x2, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x21e17ab39dc593e1 # initialize rs1
li x18, 0x012e128e7e83cdd3 # initialize rs2
rolw x10, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x18ae03c684759923 # initialize rs1
li x19, 0xec3bb6aab0857e4e # initialize rs2
rolw x2, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0xd21f9ea95cbadca2 # initialize rs1
li x20, 0xaab29a7be5b398ae # initialize rs2
rolw x31, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0x26cbf998aef62f67 # initialize rs1
li x21, 0x52bb934ad3f26a01 # initialize rs2
rolw x14, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x15, 0xd5fb0ea3860cf53d # initialize rs1
li x22, 0x2a1ba43be09bf2df # initialize rs2
rolw x29, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x1, 0xc7e821a3299afa6c # initialize rs1
li x23, 0xed8260687f0fa6af # initialize rs2
rolw x13, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0x8394ffaeab95c88b # initialize rs1
li x24, 0xf1ca5c7cbd1cc9a4 # initialize rs2
rolw x30, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x29435bc34eddecc3 # initialize rs1
li x25, 0x215e1c7da702baad # initialize rs2
rolw x21, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xeed955713657b203 # initialize rs1
li x26, 0xff1c94b64dd1086b # initialize rs2
rolw x20, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0xdf66a5622c3d0cbb # initialize rs1
li x27, 0x4d68715595f99a92 # initialize rs2
rolw x3, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xd05e481d7f06c8c1 # initialize rs1
li x28, 0x31aff4476c3c669a # initialize rs2
rolw x25, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x954db255a5b7e9fc # initialize rs1
li x29, 0x7988aa05b8ce9db3 # initialize rs2
rolw x20, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0xa9e44df18700ce65 # initialize rs1
li x30, 0x4c82f85cb64de5eb # initialize rs2
rolw x1, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0x81518534e2a4da0f # initialize rs1
li x31, 0x0f102517a187cb2c # initialize rs2
rolw x25, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0xd16d10f6937916f5 # initialize rs1
li x12, 0xfc6b36690c7a9f34 # initialize rs2
rolw x0, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x64d0e7f649c0b357 # initialize rs1
li x26, 0x38c08fd412297383 # initialize rs2
rolw x1, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x0342c113f609fd04 # initialize rs1
li x7, 0xc4e2e02c5548c16c # initialize rs2
rolw x2, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0xb36a1a85904ffa2b # initialize rs1
li x10, 0xd7f184214d1271ff # initialize rs2
rolw x3, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x579b7d54a85ee82b # initialize rs1
li x14, 0xc3a940e6265adb59 # initialize rs2
rolw x4, x15, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xfec1b026aa5add2a # initialize rs1
li x3, 0x012a0fbe76e02cc3 # initialize rs2
rolw x5, x12, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x098080762a68dc39 # initialize rs1
li x11, 0xf6bd595b7b475c94 # initialize rs2
rolw x6, x26, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x112ca61ce559117e # initialize rs1
li x11, 0x1b883f21792a8f78 # initialize rs2
rolw x7, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0x47293d64e03fa4b4 # initialize rs1
li x25, 0x52470be071fc7cab # initialize rs2
rolw x8, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x8331e4c529ef8c16 # initialize rs1
li x27, 0x9a2d521768b49b88 # initialize rs2
rolw x9, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x6, 0xba0050ef9a8ef926 # initialize rs1
li x22, 0x34b6f1ef866afddc # initialize rs2
rolw x10, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0x937639f36a8a1e0e # initialize rs1
li x20, 0x2031f4b102dce650 # initialize rs2
rolw x11, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x252c6e1757c89654 # initialize rs1
li x27, 0xce85f733f193d834 # initialize rs2
rolw x12, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x25, 0x04cfac402c200e8c # initialize rs1
li x29, 0x57a31d1610caeade # initialize rs2
rolw x13, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xafdb308a620a0d30 # initialize rs1
li x14, 0xa3b2d0b6f6c87242 # initialize rs2
rolw x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0xbc6a7f3d70df0c9f # initialize rs1
li x6, 0x72374aebfb53ef9a # initialize rs2
rolw x15, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x57a9fb846c3a14d7 # initialize rs1
li x9, 0xa75c0c447b9cf839 # initialize rs2
rolw x16, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x604f7ff23ac33588 # initialize rs1
li x27, 0x64eeb21d7fff034f # initialize rs2
rolw x17, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0x88e40327dc2d3d42 # initialize rs1
li x26, 0x185a3f2af79c164c # initialize rs2
rolw x18, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0x9494dee8e8e49ee0 # initialize rs1
li x21, 0x1cd9f11db96af2f9 # initialize rs2
rolw x19, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x7969e42f04935347 # initialize rs1
li x30, 0x6545b630a54338a7 # initialize rs2
rolw x20, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0x2916f049171bb4d7 # initialize rs1
li x31, 0x81955bdb6b82c60c # initialize rs2
rolw x21, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xad8bb45f5dbb2667 # initialize rs1
li x28, 0xc92f185d834c4f33 # initialize rs2
rolw x22, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x93cfc7b7b00a3857 # initialize rs1
li x7, 0x09a36b7f8b87e8df # initialize rs2
rolw x23, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x27047021ea045679 # initialize rs1
li x27, 0xb3c2e0ec0ee4844d # initialize rs2
rolw x24, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xc48ee044543e566c # initialize rs1
li x20, 0x409c4b9f664785cc # initialize rs2
rolw x25, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0xcd037c9c008b31a2 # initialize rs1
li x31, 0xceefa531379acadd # initialize rs2
rolw x26, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0x991731483800ee46 # initialize rs1
li x21, 0x6b58bf06b7b21aff # initialize rs2
rolw x27, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x16, 0x35d774ef38222d31 # initialize rs1
li x2, 0xc004d4821d4f2744 # initialize rs2
rolw x28, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x9a2e10a393da6ca0 # initialize rs1
li x15, 0xecdf36862a22d7ef # initialize rs2
rolw x29, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x9df8709d94a213e9 # initialize rs1
li x16, 0x5747703b9f2e017b # initialize rs2
rolw x30, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0x5c5c6d3b7c85eb62 # initialize rs1
li x25, 0x13d96efe45757505 # initialize rs2
rolw x31, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x0000000000000000 # initialize rs1
li x8, 0x2083938ff0291527 # initialize rs2
rolw x18, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x2, 0x0b7e5e902e66c70d # initialize rs2
rolw x8, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x0000000000000002 # initialize rs1
li x28, 0x15df843c106829f1 # initialize rs2
rolw x11, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x3, 0xe4e2bda464769c30 # initialize rs2
rolw x11, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x29, 0x8000000000000001 # initialize rs1
li x25, 0xebf58106e2880873 # initialize rs2
rolw x7, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x26, 0xf3b0de041ba52e67 # initialize rs2
rolw x14, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x15, 0x478f3734997aa332 # initialize rs2
rolw x29, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x27, 0x95de7fd54564e139 # initialize rs2
rolw x8, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x16, 0xfffffffffffffffe # initialize rs1
li x7, 0xcca0ee06c54fccf7 # initialize rs2
rolw x27, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x3218cada070577ff # initialize rs2
rolw x3, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x9b4c92b165465561 # initialize rs2
rolw x14, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x21, 0x4bc98faf57748b8b # initialize rs2
rolw x31, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x25, 0x1966599b0ab44974 # initialize rs2
rolw x15, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x27, 0x243d67eaa77972d5 # initialize rs2
rolw x14, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x3, 0x0000000100000000 # initialize rs1
li x28, 0x1789310f58630450 # initialize rs2
rolw x24, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs1
li x19, 0xdab5a0f4ce0202c0 # initialize rs2
rolw x15, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xc765048a0a996fc7 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
rolw x27, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x102514f34ee821af # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
rolw x11, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x5201c3387ae9f977 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
rolw x16, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0x4f6419b4cf19cb1e # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
rolw x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0x413fee1d9296c846 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
rolw x26, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x30, 0x83265fa17c4f24bc # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
rolw x26, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0x87a21736acaa463c # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rolw x23, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x27, 0xc04d0973366d7c77 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
rolw x21, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x5, 0xfd2f0671dc62f8e3 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
rolw x21, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x25, 0xdd32380da3fa9c4a # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
rolw x23, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x221890513d7e2a5a # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x10, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x8020a51eadfa814e # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
rolw x27, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x52cdeed235004092 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rolw x29, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x5cfbca08d52d2098 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
rolw x19, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x21, 0xad69c588a6f4c1c1 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rolw x3, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x01989e682b9e3550 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
rolw x11, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
rolw x1, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
rolw x8, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
rolw x19, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
rolw x10, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x8, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rolw x5, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
rolw x14, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
rolw x3, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
rolw x6, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
rolw x26, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
rolw x10, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x7, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0x0000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rolw x3, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
rolw x25, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rolw x26, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x13, 0x0000000000000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
rolw x17, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
rolw x12, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rolw x6, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
rolw x17, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rolw x20, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
rolw x13, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x7, 0x0000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
rolw x20, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
rolw x3, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
rolw x19, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
rolw x1, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
rolw x10, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
rolw x21, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x9, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
rolw x15, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
rolw x18, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rolw x14, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x11, 0x0000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
rolw x31, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0x0000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
rolw x29, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
rolw x17, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x30, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
rolw x1, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
rolw x10, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x22, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
rolw x16, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x21, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
rolw x3, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
rolw x20, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
rolw x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
rolw x2, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
rolw x21, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
rolw x23, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x16, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x13, 0x0000000000000002 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
rolw x9, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
rolw x6, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
rolw x9, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x11, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
rolw x26, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x19, 0x0000000000000002 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
rolw x23, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x7, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
rolw x28, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x3, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
rolw x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x11, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
rolw x3, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
rolw x7, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x20, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
rolw x22, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
rolw x23, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x8000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rolw x10, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
rolw x7, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
rolw x29, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
rolw x25, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x8000000000000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x5, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x30, 0x8000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
rolw x26, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
rolw x13, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
rolw x13, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x17, 0x8000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
rolw x14, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x25, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
rolw x8, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
rolw x20, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x30, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
rolw x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x24, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
rolw x28, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x13, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
rolw x14, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
rolw x26, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
rolw x24, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x8000000000000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
rolw x5, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
rolw x7, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
rolw x18, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x28, 0x8000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
rolw x21, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x8000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x2, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x20, 0x8000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
rolw x21, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
rolw x18, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rolw x15, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x14, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
rolw x27, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x27, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
rolw x7, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rolw x29, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x10, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
rolw x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x23, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
rolw x21, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
rolw x28, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x6, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
rolw x30, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rolw x16, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
rolw x25, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
rolw x25, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rolw x29, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
rolw x7, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7fffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x20, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
rolw x24, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rolw x19, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
rolw x11, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
rolw x9, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
rolw x10, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x22, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
rolw x23, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
rolw x23, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
rolw x22, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x16, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
rolw x15, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x28, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
rolw x26, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
rolw x31, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
rolw x31, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
rolw x22, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rolw x6, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x25, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
rolw x26, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x7ffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x31, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
rolw x22, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
rolw x2, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
rolw x13, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
rolw x23, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
rolw x21, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
rolw x25, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x6, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
rolw x5, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x13, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
rolw x18, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x10, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
rolw x7, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
rolw x3, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
rolw x26, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
rolw x10, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
rolw x9, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rolw x25, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0xffffffffffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
rolw x16, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xffffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x24, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x16, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
rolw x30, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rolw x17, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
rolw x18, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
rolw x30, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x13, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
rolw x21, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x30, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
rolw x26, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x6, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
rolw x31, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x22, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
rolw x13, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
rolw x11, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x11, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rolw x24, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
rolw x10, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
rolw x30, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
rolw x10, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
rolw x20, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x7, 0xfffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
rolw x20, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x23, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
rolw x21, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
rolw x7, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
rolw x27, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
rolw x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
rolw x26, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
rolw x5, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
rolw x12, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
rolw x1, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
rolw x3, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
rolw x1, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
rolw x30, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
rolw x14, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rolw x14, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
rolw x25, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
rolw x7, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x15, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
rolw x5, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
rolw x15, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
rolw x19, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
rolw x15, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
rolw x9, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
rolw x1, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
rolw x19, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rolw x29, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
rolw x7, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
rolw x26, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
rolw x29, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rolw x8, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
rolw x14, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
rolw x10, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
rolw x24, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x26, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
rolw x31, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rolw x28, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
rolw x26, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
rolw x20, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
rolw x17, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rolw x13, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x17, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
rolw x7, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
rolw x17, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
rolw x6, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x20, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
rolw x27, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
rolw x18, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x21, 0x5555555555555555 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
rolw x8, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
rolw x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
rolw x29, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x9, 0x5555555555555555 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
rolw x12, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5555555555555555 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x13, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rolw x27, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
rolw x16, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
rolw x21, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x25, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
rolw x1, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rolw x25, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
rolw x24, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
rolw x21, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
rolw x3, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x20, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
rolw x7, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x6, 0x00000000ffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
rolw x21, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
rolw x27, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
rolw x18, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
rolw x19, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
rolw x25, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
rolw x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x00000000ffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x12, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
rolw x10, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rolw x24, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
rolw x23, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x22, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
rolw x14, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x10, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
rolw x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
rolw x23, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
rolw x21, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x26, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
rolw x20, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x31, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
rolw x14, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x21, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
rolw x5, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
rolw x26, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
rolw x22, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
rolw x6, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
rolw x13, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x7, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
rolw x13, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x1, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x7, 0x00000000fffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
rolw x27, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
rolw x3, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
rolw x23, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
rolw x18, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
rolw x27, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x31, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
rolw x14, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
rolw x24, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
rolw x21, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
rolw x11, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rolw x28, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
rolw x11, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
rolw x8, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
rolw x2, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000100000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rolw x12, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
rolw x17, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x24, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x14, 0x0000000100000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
rolw x8, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rolw x27, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
rolw x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
rolw x21, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
rolw x31, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x22, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
rolw x9, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x17, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rolw x6, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x16, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
rolw x24, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x15, 0x0000000100000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
rolw x21, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x21, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
rolw x31, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
rolw x15, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
rolw x20, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
rolw x27, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
rolw x31, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000100000001 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
rolw x18, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
rolw x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0x0000000100000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
rolw x31, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
rolw x3, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
rolw x28, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
rolw x12, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
rolw x1, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x0563552aaf8f98c5 # initialize rs1
li x0, 0xd70e4701b8bdfb86 # initialize rs2
rolw x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xcd10e50c848a4e4c # initialize rs1
li x1, 0x3d3cf61530b3862b # initialize rs2
rolw x23, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x93fcf8a0491e3319 # initialize rs1
li x2, 0x9ef570c6f6ceac96 # initialize rs2
rolw x30, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x263d866729ebfdba # initialize rs1
li x3, 0xd42c7c6658ec7c64 # initialize rs2
rolw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2c877a7508dcbf4b # initialize rs1
li x4, 0x4ae3e8c8e851e176 # initialize rs2
rolw x8, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa5ae41fb4aee4ae6 # initialize rs1
li x5, 0xac5453f441c588e2 # initialize rs2
rolw x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x942dbb68979eb92b # initialize rs1
li x6, 0x3fe7d8d93a3884ea # initialize rs2
rolw x10, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd6c213b094ce91e4 # initialize rs1
li x7, 0x07d990aac5bd8bd1 # initialize rs2
rolw x28, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x49f64702c3016d75 # initialize rs1
li x8, 0xf1af2852096cf686 # initialize rs2
rolw x29, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x00f03074756cac00 # initialize rs1
li x9, 0xe3853225d0fd52ac # initialize rs2
rolw x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8d880617bd56ad23 # initialize rs1
li x10, 0x4c450dd009e8d73e # initialize rs2
rolw x27, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x4d30a1dd8bd6ef2e # initialize rs1
li x11, 0x8b6bffedaf250b4d # initialize rs2
rolw x5, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0f42599c1a80ddc0 # initialize rs1
li x12, 0x64923c5274dfbb8f # initialize rs2
rolw x6, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd605f18bfd1cbacc # initialize rs1
li x13, 0xf5e091b9096745ff # initialize rs2
rolw x22, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x8363001faabb39c7 # initialize rs1
li x14, 0x06a9a9f29030aa72 # initialize rs2
rolw x6, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb245e53c12e080cf # initialize rs1
li x15, 0x53bea8faa1c19c14 # initialize rs2
rolw x16, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8e0a9c93f64fbecf # initialize rs1
li x16, 0x492c4f59fd5fbae0 # initialize rs2
rolw x10, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x2fb8b0302ab57891 # initialize rs1
li x17, 0xe4e16f8646748185 # initialize rs2
rolw x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xde56d382172b4162 # initialize rs1
li x18, 0x0a7034b83fa18938 # initialize rs2
rolw x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8ebe33a2859c5581 # initialize rs1
li x19, 0xf928652ed576e3d3 # initialize rs2
rolw x12, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xabb8d39500fbfa45 # initialize rs1
li x20, 0x78ef0ff05a60364a # initialize rs2
rolw x14, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x3e5068dce4fd6e2b # initialize rs1
li x21, 0x9f81084148bb05e1 # initialize rs2
rolw x6, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x71bdd9b186c16022 # initialize rs1
li x22, 0x51095177db54a2ba # initialize rs2
rolw x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x40ea523f6981bd72 # initialize rs1
li x23, 0x5044ec6270df102c # initialize rs2
rolw x28, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xecb62db169a7c895 # initialize rs1
li x24, 0x2dc34be9a41f717d # initialize rs2
rolw x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x79eccab968946894 # initialize rs1
li x25, 0x3839f1b898bb0900 # initialize rs2
rolw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x21bb797a5cdb0d0c # initialize rs1
li x26, 0x1a9a6ee2de0c60ac # initialize rs2
rolw x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x73232df198655e52 # initialize rs1
li x27, 0xb3e571c6e07b181d # initialize rs2
rolw x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x1c1689ef8fbca67a # initialize rs1
li x28, 0x593631fe94a765c4 # initialize rs2
rolw x1, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa66b316f1e7bf408 # initialize rs1
li x29, 0x4a56c40b055a29fc # initialize rs2
rolw x15, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4497709c505dda06 # initialize rs1
li x30, 0x41249ceeb9d7dde3 # initialize rs2
rolw x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x7a20b9963bd1ec95 # initialize rs1
li x31, 0x822f4e90f9477afd # initialize rs2
rolw x23, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x81f625d74de7e45d # initialize rs1
li x25, 0x55f8b8831252ac23 # initialize rs2
rolw x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x59b3b4951c2d8b79 # initialize rs1
li x11, 0x37ae8f6087a38167 # initialize rs2
rolw x1, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7a9109b76e481e87 # initialize rs1
li x31, 0x47fd419e68685861 # initialize rs2
rolw x2, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x46889e18ea9a26fb # initialize rs1
li x26, 0x1261784e41f30179 # initialize rs2
rolw x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0a10c43443c2a4d3 # initialize rs1
li x3, 0x26ad61056a5b8966 # initialize rs2
rolw x4, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2ee76fdda1aadb03 # initialize rs1
li x27, 0x2911711742de8586 # initialize rs2
rolw x5, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x03e109bfcf16fb0a # initialize rs1
li x1, 0x0f17124c37f69210 # initialize rs2
rolw x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3bd36db98240e5bc # initialize rs1
li x29, 0x820031f387fbe204 # initialize rs2
rolw x7, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf2e037c28fd8d4f4 # initialize rs1
li x10, 0xb9793c4af0aa1809 # initialize rs2
rolw x8, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa47762c0d24d5920 # initialize rs1
li x27, 0x75b30652893a9f9a # initialize rs2
rolw x9, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x93d5cdaa1cc99ff7 # initialize rs1
li x18, 0xde1cd235b446a9fc # initialize rs2
rolw x10, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x30b47679f02633ad # initialize rs1
li x15, 0x0bf7cdc179462b1e # initialize rs2
rolw x11, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x28a23fa9c9288377 # initialize rs1
li x23, 0xfe4ccfc345fd25e8 # initialize rs2
rolw x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbbfd1e769b65e4cf # initialize rs1
li x9, 0x6287ef15bef1e066 # initialize rs2
rolw x13, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x86bb47d7ec3f72a3 # initialize rs1
li x17, 0x0cac0ebe39f7ce01 # initialize rs2
rolw x14, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xff5230886da33cff # initialize rs1
li x18, 0x1b148354446d797a # initialize rs2
rolw x15, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7e5ccf0db11f138d # initialize rs1
li x14, 0x5b54e0b6ba6da00a # initialize rs2
rolw x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x132875521fc952c1 # initialize rs1
li x27, 0xfe678818444abd3a # initialize rs2
rolw x17, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x17a503844f2327d8 # initialize rs1
li x7, 0x364d163702a05f07 # initialize rs2
rolw x18, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2cb458d49772c437 # initialize rs1
li x5, 0xa1e77214cd074c05 # initialize rs2
rolw x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x53b74b208f393a32 # initialize rs1
li x3, 0x878f4bd3fe0cae3c # initialize rs2
rolw x20, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9953d8487acd807b # initialize rs1
li x30, 0x3ed6404746d86c9f # initialize rs2
rolw x21, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0956629d9caa2644 # initialize rs1
li x5, 0x9b02850f0e2146de # initialize rs2
rolw x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa45a11c7d70cbd8f # initialize rs1
li x18, 0x5c39cf07dd48ff9d # initialize rs2
rolw x23, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f3df163805ad08b # initialize rs1
li x11, 0xe322a88b4d5d2415 # initialize rs2
rolw x24, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb5f74fe3489d6dfd # initialize rs1
li x20, 0x65e342a31a26247f # initialize rs2
rolw x25, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xaf04af0232da429f # initialize rs1
li x1, 0xe7b1cb84afa7ea23 # initialize rs2
rolw x26, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9504e6c9fe1dd415 # initialize rs1
li x1, 0x041ed7cc788faeb0 # initialize rs2
rolw x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x197c1d1d3f034a55 # initialize rs1
li x30, 0xf4dd54669dd8f461 # initialize rs2
rolw x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfe22dc798416f0a4 # initialize rs1
li x12, 0xbf8fc219950ca168 # initialize rs2
rolw x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xacf03e42d21adf1a # initialize rs1
li x10, 0xec36890fae721da4 # initialize rs2
rolw x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe6f250f96172bb91 # initialize rs1
li x13, 0xea42d68344234b52 # initialize rs2
rolw x31, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x6, 0x283db92fe62077c3 # initialize rs1
li x0, 0x14cf84616732c4bd # initialize rs2
rolw x0, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0xb91e67e3f213a779 # initialize rs1
li x1, 0xa68dfd667e0e6589 # initialize rs2
rolw x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x16, 0xcce9cda55a3272e5 # initialize rs1
li x2, 0x1554083f91037717 # initialize rs2
rolw x2, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0x8ba2d4cb7b6b7cc5 # initialize rs1
li x3, 0x8649596da67896b9 # initialize rs2
rolw x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x03ea264d5cd263a0 # initialize rs1
li x4, 0x0e14e7ee69abfa8e # initialize rs2
rolw x4, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x133ab8f4e18637de # initialize rs1
li x5, 0x86083cfb7b99e63f # initialize rs2
rolw x5, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x4ad31dc330b708f6 # initialize rs1
li x6, 0xb9ba91ee79930298 # initialize rs2
rolw x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xfed94fa292d535e1 # initialize rs1
li x7, 0x9defb613be99fd90 # initialize rs2
rolw x7, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x12, 0xa7f635bd37bec7b9 # initialize rs1
li x8, 0xccd6f083fed47519 # initialize rs2
rolw x8, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0xed56cd5e6a692326 # initialize rs1
li x9, 0x73260cd3966815a6 # initialize rs2
rolw x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x22, 0x7a15a8de4b9c27eb # initialize rs1
li x10, 0xe6048e3e5ffcd3a7 # initialize rs2
rolw x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x16, 0xf99776304046da1e # initialize rs1
li x11, 0x7617c8e12b221d9a # initialize rs2
rolw x11, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x14, 0xa7bd0c35c872b2d3 # initialize rs1
li x12, 0x5d3c986665192da1 # initialize rs2
rolw x12, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x30, 0x6b7087aab0c145c7 # initialize rs1
li x13, 0x9ed9ba72df799aeb # initialize rs2
rolw x13, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x10, 0xe43ac08b37c5d6ce # initialize rs1
li x14, 0x9e9977fa9775656d # initialize rs2
rolw x14, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0xab219ccef911b92d # initialize rs1
li x15, 0x35645805dfa914e8 # initialize rs2
rolw x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x6, 0x7424ce2e0173e65b # initialize rs1
li x16, 0xd56f6ec20db9748f # initialize rs2
rolw x16, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x26, 0x31ea9be8ee36ffb4 # initialize rs1
li x17, 0x2ab7316116e85039 # initialize rs2
rolw x17, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x17, 0x107ac588eeaa7b19 # initialize rs1
li x18, 0x8a78da5c694ddd43 # initialize rs2
rolw x18, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x3, 0x31d298b127b5ef22 # initialize rs1
li x19, 0xf52c1771b87f8974 # initialize rs2
rolw x19, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x5, 0x6c77ca2ca7d06fd7 # initialize rs1
li x20, 0xb424ba28b3358a16 # initialize rs2
rolw x20, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x28, 0x1ecd66f8bb3a145f # initialize rs1
li x21, 0x8edc4a940cdf9244 # initialize rs2
rolw x21, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x15, 0xd954069d1dd2c304 # initialize rs1
li x22, 0x113ebe30850ec18d # initialize rs2
rolw x22, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x21, 0x5fb462ac07880bf8 # initialize rs1
li x23, 0xc38ef32697d3e82b # initialize rs2
rolw x23, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0x07a8385d068f34db # initialize rs1
li x24, 0xc07b0a205af2a744 # initialize rs2
rolw x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x8, 0xd8582fd59f1fb238 # initialize rs1
li x25, 0x7fef9ad82585bc4b # initialize rs2
rolw x25, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x15, 0xc27edc9b28afc94c # initialize rs1
li x26, 0x39b28eb661e23fd1 # initialize rs2
rolw x26, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0x6bb6fc861f500c70 # initialize rs1
li x27, 0x8fc40e960844c087 # initialize rs2
rolw x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0xc62d279a24b8ba2f # initialize rs1
li x28, 0xce3d1be8d4ebf7f4 # initialize rs2
rolw x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0xaeb1c59ca3c08178 # initialize rs1
li x29, 0x42d8edae8e17a61a # initialize rs2
rolw x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0x3603df9ce7d46a65 # initialize rs1
li x30, 0x6bb300d2cf582e97 # initialize rs2
rolw x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x25, 0x1449b41287226b74 # initialize rs1
li x31, 0xe77192efa29c7c3c # initialize rs2
rolw x31, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3a23b6299543c2b6 # initialize rs1
li x0, 0x4250441f8eed9622 # initialize rs2
rolw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xeb79883aecf3b6c7 # initialize rs1
li x1, 0x186787df55fd8fc9 # initialize rs2
rolw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xaabed4c7a42a71a7 # initialize rs1
li x2, 0x7e207f972a08df44 # initialize rs2
rolw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x289fe591806d9d0e # initialize rs1
li x3, 0x4a8ffac3bfa37ab7 # initialize rs2
rolw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x66ca1a21a13deb68 # initialize rs1
li x4, 0x49b03f1463278afa # initialize rs2
rolw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa5514fbe3d1fb849 # initialize rs1
li x5, 0x51a91dff94519c17 # initialize rs2
rolw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xac7696c3978bf354 # initialize rs1
li x6, 0x8f855be995c5d1ba # initialize rs2
rolw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x487142c2c205d3b8 # initialize rs1
li x7, 0x6fab09749193d376 # initialize rs2
rolw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x54402b447f4d87a8 # initialize rs1
li x8, 0x985c3699e05081f8 # initialize rs2
rolw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xdee276c2b7867993 # initialize rs1
li x9, 0xc34db4de1cc95946 # initialize rs2
rolw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbea117225d9c2136 # initialize rs1
li x10, 0x53b27227477af528 # initialize rs2
rolw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x45187e6e05a18d04 # initialize rs1
li x11, 0x68335e703102ea09 # initialize rs2
rolw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8ca9878b8a21a6cf # initialize rs1
li x12, 0xd9f720a1cd2cb493 # initialize rs2
rolw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc5c45afec86d4780 # initialize rs1
li x13, 0x0b3be9883d75a693 # initialize rs2
rolw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x033d32db162c3264 # initialize rs1
li x14, 0x758eea8d33638707 # initialize rs2
rolw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5abf3471cac03b3f # initialize rs1
li x15, 0x1e3b75d771b01195 # initialize rs2
rolw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x66ca60316a22261f # initialize rs1
li x16, 0xa50ee5d6de3603d1 # initialize rs2
rolw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x667b36fa97c0fccc # initialize rs1
li x17, 0xc7dbe6a673f4621a # initialize rs2
rolw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa7f5ca5dbb8c5b22 # initialize rs1
li x18, 0xd7770deceb227c76 # initialize rs2
rolw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd6d001836e6d2128 # initialize rs1
li x19, 0xa93ecd607ba01f3b # initialize rs2
rolw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1a03146bad7df70b # initialize rs1
li x20, 0x0016cc110a0297a9 # initialize rs2
rolw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x6132d6fed7cccb6a # initialize rs1
li x21, 0xf9dc9e7cc502c51b # initialize rs2
rolw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x45d83f0b684051b9 # initialize rs1
li x22, 0x5fc1d0496a14b63c # initialize rs2
rolw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7c3798ead4a66962 # initialize rs1
li x23, 0x8619a96ee401c677 # initialize rs2
rolw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x1e5b283865ef6f0c # initialize rs1
li x24, 0x64186e6eaccbdae1 # initialize rs2
rolw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x72303ef75959ade3 # initialize rs1
li x25, 0x35b4dfdd7f23c79e # initialize rs2
rolw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfbeb6c15759ac29b # initialize rs1
li x26, 0x134b84bdcc5a0d69 # initialize rs2
rolw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x039420ea17e77efe # initialize rs1
li x27, 0x4dae193ae8151f66 # initialize rs2
rolw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x9d4385421bcd2638 # initialize rs1
li x28, 0xb255925865ea232d # initialize rs2
rolw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd1132d727a502d6c # initialize rs1
li x29, 0xb600685cf826dde7 # initialize rs2
rolw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc678831663752bcb # initialize rs1
li x30, 0xbc3d17cc67ce1995 # initialize rs2
rolw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x85b5f6f05e133fc6 # initialize rs1
li x31, 0x4fd48756efe8a147 # initialize rs2
rolw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x10, x8 # perform first operation
rolw x17, x14, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x26, x23 # perform first operation
rolw x13, x20, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x28, x13 # perform first operation
rolw x27, x6, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x18, x31 # perform first operation
rolw x31, x14, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x20, x31 # perform first operation
rolw x18, x17, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x28, x30 # perform first operation
rolw x30, x23, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x28, x20 # perform first operation
rolw x29, x11, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x31, x28 # perform first operation
rolw x14, x5, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x16, x27 # perform first operation
rolw x31, x30, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x25, x26 # perform first operation
rolw x25, x23, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x31, x28 # perform first operation
rolw x28, x7, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x14, x5 # perform first operation
rolw x19, x22, x1 # perform second (triggering) operation

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
