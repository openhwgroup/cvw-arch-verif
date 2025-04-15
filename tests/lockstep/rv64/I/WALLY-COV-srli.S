///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-srli.S
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
li x0, 0xde7e7171be431b2f # initialize rs1
srli x7, x0, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x340cd6ee94f54a11 # initialize rs1
srli x28, x1, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xd0c6cfab7f8ded43 # initialize rs1
srli x3, x2, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6fd933070ca7ec2a # initialize rs1
srli x28, x3, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1f848a32a232ddbb # initialize rs1
srli x14, x4, 31 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0xa6cc9cdf7f8c1d85 # initialize rs1
srli x12, x5, 29 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4359cfb553d15c25 # initialize rs1
srli x13, x6, 41 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x04421a03d57727b7 # initialize rs1
srli x10, x7, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x71bb5be5eb365503 # initialize rs1
srli x22, x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9ab3b7271763512d # initialize rs1
srli x18, x9, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb1be11a0a8040dbf # initialize rs1
srli x11, x10, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe1c0eb5e87c33a34 # initialize rs1
srli x3, x11, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8e2b94bbc5c564ef # initialize rs1
srli x7, x12, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc2f4ecc82ec0d5f0 # initialize rs1
srli x11, x13, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6ffb114302c519f0 # initialize rs1
srli x20, x14, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x11bd633ae87659e1 # initialize rs1
srli x29, x15, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6cdf3eff84d507ed # initialize rs1
srli x9, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6f97c20c6c07397c # initialize rs1
srli x26, x17, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa0c20bc4d6114df1 # initialize rs1
srli x22, x18, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7f8a46bb9b0ccc31 # initialize rs1
srli x10, x19, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbbf82357844b7ba8 # initialize rs1
srli x21, x20, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8dc78350ce050bb7 # initialize rs1
srli x16, x21, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa237393a2cbdcac0 # initialize rs1
srli x29, x22, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x6af655b09176e8e1 # initialize rs1
srli x20, x23, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1cf40e821aa7919d # initialize rs1
srli x22, x24, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc8af49a099caf5c4 # initialize rs1
srli x21, x25, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xed4dc9b65fe8dbf8 # initialize rs1
srli x23, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe6d60a27ed71c4bf # initialize rs1
srli x31, x27, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfcc9132cd79d424c # initialize rs1
srli x31, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x10cd04cac370ec37 # initialize rs1
srli x8, x29, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x297628eaa13b2a64 # initialize rs1
srli x21, x30, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x38d62cf502da60b6 # initialize rs1
srli x10, x31, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x26a18b22c36a6d75 # initialize rs1
srli x0, x6, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xfd4ffa36fff840dc # initialize rs1
srli x1, x15, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x26593b12d616e817 # initialize rs1
srli x2, x25, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0x1c4d2c61bfc849c9 # initialize rs1
srli x3, x9, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x5aa23f4f4626784e # initialize rs1
srli x4, x23, 23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xe2ed87e7e3e0f9d8 # initialize rs1
srli x5, x3, 8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xbf0daba285665925 # initialize rs1
srli x6, x24, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x6f524f2d763f5999 # initialize rs1
srli x7, x22, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0xd05bc32c04fe3868 # initialize rs1
srli x8, x31, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xd64ce26d2b31a4ed # initialize rs1
srli x9, x15, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xac5a416295515cc4 # initialize rs1
srli x10, x10, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0xf374167260fe8124 # initialize rs1
srli x11, x2, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x19f6cb459d8136a8 # initialize rs1
srli x12, x23, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x586e042d330078d5 # initialize rs1
srli x13, x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0xa41b71d9cc6765e0 # initialize rs1
srli x14, x27, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x0e1a19f2adeb193a # initialize rs1
srli x15, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x84947cb356af2e54 # initialize rs1
srli x16, x10, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x915de5fdd3992006 # initialize rs1
srli x17, x18, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xcda8c6f96e6bc828 # initialize rs1
srli x18, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x29, 0x9ef375bbdfe3589f # initialize rs1
srli x19, x29, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0xa1e775c3e9518e2b # initialize rs1
srli x20, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0xbf597636df76e094 # initialize rs1
srli x21, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0xfded920b3faa2268 # initialize rs1
srli x22, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0x2bcbe717089e6196 # initialize rs1
srli x23, x31, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xc24ea05676de7c06 # initialize rs1
srli x24, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0xa4844a1eb00cd8ef # initialize rs1
srli x25, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x3d2cb1e38485e50b # initialize rs1
srli x26, x20, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x31, 0x4087c257e4afb6a7 # initialize rs1
srli x27, x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0x5b5f35c2cc3bdd41 # initialize rs1
srli x28, x22, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x8df5ca1e94fdde8b # initialize rs1
srli x29, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xfcc7ff7bafc1ff27 # initialize rs1
srli x30, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x48bcd737908dab92 # initialize rs1
srli x31, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
srli x21, x7, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x0000000000000001 # initialize rs1
srli x17, x5, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x0000000000000002 # initialize rs1
srli x13, x9, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
srli x9, x5, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
srli x11, x25, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
srli x28, x26, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
srli x15, x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
srli x20, x12, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
srli x30, x19, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
srli x8, x23, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
srli x29, x11, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
srli x22, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
srli x17, x20, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0x00000000fffffffe # initialize rs1
srli x21, x24, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
srli x9, x30, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x0000000100000001 # initialize rs1
srli x2, x28, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x735a127e34e6a4a5 # initialize rs1
srli x0, x0, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3c2e8ffff08e4002 # initialize rs1
srli x1, x1, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa3e53349eaef33b1 # initialize rs1
srli x2, x2, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9a33c34a11dedfbf # initialize rs1
srli x3, x3, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd7313d26766f8a8c # initialize rs1
srli x4, x4, 40 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x3165c1e5b6716040 # initialize rs1
srli x5, x5, 23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfaa70bfed3073a9b # initialize rs1
srli x6, x6, 35 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa27753e1fd9210f8 # initialize rs1
srli x7, x7, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8602e31fca0a2a05 # initialize rs1
srli x8, x8, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe51394ffb7c5eccb # initialize rs1
srli x9, x9, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x15ffcc3012df7902 # initialize rs1
srli x10, x10, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x60d7535c56545f6d # initialize rs1
srli x11, x11, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x37fb988200156778 # initialize rs1
srli x12, x12, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3145bbfc10343d76 # initialize rs1
srli x13, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf9ed6ca0ea2fede0 # initialize rs1
srli x14, x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x3982b143871bfe5b # initialize rs1
srli x15, x15, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x20c91b19743f03ed # initialize rs1
srli x16, x16, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9631fe9816a50e7c # initialize rs1
srli x17, x17, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x48b286cfa698ef94 # initialize rs1
srli x18, x18, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3085119b1a85ddbf # initialize rs1
srli x19, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x66336e6300fe7cb6 # initialize rs1
srli x20, x20, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8453653b4e926847 # initialize rs1
srli x21, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa9c81c0ecc55bce8 # initialize rs1
srli x22, x22, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd79044d06d6dc0dc # initialize rs1
srli x23, x23, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb1d3ad678b394f5b # initialize rs1
srli x24, x24, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd624eb049d40b4d9 # initialize rs1
srli x25, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xeab927f4176d66fa # initialize rs1
srli x26, x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x297d8886b1bedbc5 # initialize rs1
srli x27, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcfb49b50b297071f # initialize rs1
srli x28, x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x38e1aea2c3a668f8 # initialize rs1
srli x29, x29, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x30f0f8fe022d3862 # initialize rs1
srli x30, x30, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x746b1a0102333a43 # initialize rs1
srli x31, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x28, 0x471c0b4fa7095187 # initialize rs1
srli x11, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cp_uimm (Test bit = 1)
li x3, 0xecdb31d06e7478df # initialize rs1
srli x15, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cp_uimm (Test bit = 2)
li x8, 0x0eed46860bc6b08b # initialize rs1
srli x21, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 912)

# Testcase cp_uimm (Test bit = 3)
li x1, 0x8104319b65aeb9f9 # initialize rs1
srli x18, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cp_uimm (Test bit = 4)
li x18, 0xb9fea134e62d7746 # initialize rs1
srli x14, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 928)

# Testcase cp_uimm (Test bit = 5)
li x30, 0xae7f4a29ecf4432d # initialize rs1
srli x21, x30, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cp_uimm (Test bit = 6)
li x1, 0xe41447fdc02f77c1 # initialize rs1
srli x5, x1, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cp_uimm (Test bit = 7)
li x7, 0x1b78857697cb7417 # initialize rs1
srli x13, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cp_uimm (Test bit = 8)
li x20, 0xce05b7611d0c5d03 # initialize rs1
srli x9, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cp_uimm (Test bit = 9)
li x19, 0xec45e58f73d65ca7 # initialize rs1
srli x11, x19, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cp_uimm (Test bit = 10)
li x10, 0xefe9dbd86089cc8b # initialize rs1
srli x21, x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cp_uimm (Test bit = 11)
li x2, 0x6258baca93711ea8 # initialize rs1
srli x5, x2, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cp_uimm (Test bit = 12)
li x16, 0xcfd24b9b1f582196 # initialize rs1
srli x24, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cp_uimm (Test bit = 13)
li x3, 0x975990cbd9fafb99 # initialize rs1
srli x24, x3, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_uimm (Test bit = 14)
li x13, 0x51577b7ab796746a # initialize rs1
srli x16, x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cp_uimm (Test bit = 15)
li x2, 0x152869d972987ef1 # initialize rs1
srli x11, x2, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cp_uimm (Test bit = 16)
li x8, 0x1b81310fbce8d769 # initialize rs1
srli x6, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cp_uimm (Test bit = 17)
li x5, 0xb7f4e0225c159d93 # initialize rs1
srli x19, x5, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cp_uimm (Test bit = 18)
li x30, 0x090f115596bfe034 # initialize rs1
srli x29, x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cp_uimm (Test bit = 19)
li x3, 0xcd0d6e5c8c6b8699 # initialize rs1
srli x27, x3, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cp_uimm (Test bit = 20)
li x21, 0xb268b92c3d99719d # initialize rs1
srli x13, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cp_uimm (Test bit = 21)
li x7, 0xf04b1e7c6872aede # initialize rs1
srli x14, x7, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cp_uimm (Test bit = 22)
li x20, 0xe5c654057af0a80b # initialize rs1
srli x26, x20, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cp_uimm (Test bit = 23)
li x6, 0xa2ad6dc87618f54a # initialize rs1
srli x31, x6, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cp_uimm (Test bit = 24)
li x20, 0x8e50d9e7beaba665 # initialize rs1
srli x24, x20, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cp_uimm (Test bit = 25)
li x8, 0xa7c3b8f2f53befd5 # initialize rs1
srli x7, x8, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cp_uimm (Test bit = 26)
li x15, 0xe8d6260b856a0b43 # initialize rs1
srli x5, x15, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cp_uimm (Test bit = 27)
li x29, 0x772c9eb3bbc970af # initialize rs1
srli x11, x29, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cp_uimm (Test bit = 28)
li x1, 0xea351e02defea3bc # initialize rs1
srli x17, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cp_uimm (Test bit = 29)
li x6, 0x96546aff8e6bbaf5 # initialize rs1
srli x16, x6, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cp_uimm (Test bit = 30)
li x29, 0x494de418a669e069 # initialize rs1
srli x18, x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cp_uimm (Test bit = 31)
li x20, 0x460e518bc9a16ea5 # initialize rs1
srli x24, x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cp_uimm (Test bit = 32)
li x10, 0x9feb47ed023d9cd8 # initialize rs1
srli x24, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cp_uimm (Test bit = 33)
li x12, 0x4f577eac053a5e1e # initialize rs1
srli x11, x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1160)

# Testcase cp_uimm (Test bit = 34)
li x14, 0x1da1bac5e7457b5a # initialize rs1
srli x3, x14, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cp_uimm (Test bit = 35)
li x8, 0x0f9fe7c952edb24c # initialize rs1
srli x30, x8, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cp_uimm (Test bit = 36)
li x5, 0xf78559de851b8333 # initialize rs1
srli x21, x5, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cp_uimm (Test bit = 37)
li x25, 0x30c2391c9c59a92c # initialize rs1
srli x16, x25, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cp_uimm (Test bit = 38)
li x9, 0xd389609f8ca96ff1 # initialize rs1
srli x26, x9, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cp_uimm (Test bit = 39)
li x31, 0x4730684963e3b397 # initialize rs1
srli x2, x31, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1208)

# Testcase cp_uimm (Test bit = 40)
li x7, 0x2ed3957961c24ba9 # initialize rs1
srli x19, x7, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cp_uimm (Test bit = 41)
li x31, 0x1bb611c359f54639 # initialize rs1
srli x30, x31, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1224)

# Testcase cp_uimm (Test bit = 42)
li x19, 0x479938e25790c6f5 # initialize rs1
srli x18, x19, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1232)

# Testcase cp_uimm (Test bit = 43)
li x12, 0xd0ac87f9cfbdd9d2 # initialize rs1
srli x20, x12, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cp_uimm (Test bit = 44)
li x19, 0xf404f8354518e5db # initialize rs1
srli x23, x19, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cp_uimm (Test bit = 45)
li x29, 0x96f3c066b7f89257 # initialize rs1
srli x18, x29, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cp_uimm (Test bit = 46)
li x31, 0x6efe037c919125e3 # initialize rs1
srli x1, x31, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cp_uimm (Test bit = 47)
li x2, 0x078ff765763c8220 # initialize rs1
srli x31, x2, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cp_uimm (Test bit = 48)
li x22, 0x3276e38d9d46cd5d # initialize rs1
srli x16, x22, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cp_uimm (Test bit = 49)
li x13, 0x81d823587d531488 # initialize rs1
srli x14, x13, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cp_uimm (Test bit = 50)
li x25, 0x3a669f2106c12ed8 # initialize rs1
srli x6, x25, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

# Testcase cp_uimm (Test bit = 51)
li x29, 0x755c771294f80b9e # initialize rs1
srli x11, x29, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

# Testcase cp_uimm (Test bit = 52)
li x6, 0x3d760fa5e76175fb # initialize rs1
srli x7, x6, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

# Testcase cp_uimm (Test bit = 53)
li x12, 0x77b7861a1d30370d # initialize rs1
srli x22, x12, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

# Testcase cp_uimm (Test bit = 54)
li x7, 0x10e99f21423117e7 # initialize rs1
srli x28, x7, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cp_uimm (Test bit = 55)
li x8, 0x8abe863cd033a382 # initialize rs1
srli x30, x8, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cp_uimm (Test bit = 56)
li x1, 0x9262e88261f53c7a # initialize rs1
srli x5, x1, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1344)

# Testcase cp_uimm (Test bit = 57)
li x29, 0x1f82d37f9a3d94b5 # initialize rs1
srli x31, x29, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cp_uimm (Test bit = 58)
li x26, 0x7289a2ec291af28d # initialize rs1
srli x8, x26, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1360)

# Testcase cp_uimm (Test bit = 59)
li x1, 0xf196bd5368697f63 # initialize rs1
srli x15, x1, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)

# Testcase cp_uimm (Test bit = 60)
li x22, 0x0821a8d46b9bee5a # initialize rs1
srli x11, x22, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cp_uimm (Test bit = 61)
li x23, 0x532f27d10a83eacb # initialize rs1
srli x21, x23, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cp_uimm (Test bit = 62)
li x28, 0x0560e0beb7792364 # initialize rs1
srli x2, x28, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cp_uimm (Test bit = 63)
li x14, 0x941e806367585625 # initialize rs1
srli x6, x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x21, x3 # perform first operation
srli x17, x7, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x23, x12 # perform first operation
srli x11, x19, 52 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x29, x6 # perform first operation
srli x27, x30, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x22, x3 # perform first operation
srli x3, x31, 16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x27, x28 # perform first operation
srli x12, x18, 42 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x10, x17 # perform first operation
srli x17, x16, 26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x8, x17 # perform first operation
srli x21, x2, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x28, x24 # perform first operation
srli x1, x26, 45 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x5, x14 # perform first operation
srli x27, x28, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x13, x14 # perform first operation
srli x13, x11, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x8, x31 # perform first operation
srli x31, x22, 34 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x9, x6 # perform first operation
srli x26, x7, 41 # perform second (triggering) operation

.EQU SIGSIZE,1408


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
