///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.mv.S
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

    
# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xe51df0a2
c.mv x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x323eb48e
c.mv x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x25f255cf
c.mv x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x20045c8c
c.mv x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 12)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x4, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5a75aca5
c.mv x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs2 (Test source rs2 = x6)
li x6, 0x08fa0549
c.mv x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 20)

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0xcb6b90d8
c.mv x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x1423eedf
c.mv x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 28)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8f8eeeb9
c.mv x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x7bb893dd
c.mv x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x640408db
c.mv x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x90bad968
c.mv x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x59d4b064
c.mv x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x987e1b0b
c.mv x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xa4d79e43
c.mv x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xa751ba56
c.mv x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x4617b78c
c.mv x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x5415534a
c.mv x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x418119af
c.mv x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x92e849f5
c.mv x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 76)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xffdb5ce5
c.mv x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x70c5900a
c.mv x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 84)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x99165f99
c.mv x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x9a45b50a
c.mv x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xe3ad313c
c.mv x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x117c07c5
c.mv x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 100)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x39bbe7c9
c.mv x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xf8edd98e
c.mv x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x07dfbea0
c.mv x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x03eac1d9
c.mv x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 116)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x822f2a53
c.mv x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x243be7ee
c.mv x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 124)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x83695468
c.mv x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x8d202356
c.mv x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0xe7436e11
c.mv x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 136)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x893e8f51
c.mv x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 140)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xdc2ac252
c.mv x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 144)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0xd6d1ee33
c.mv x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 148)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xbc18542a
c.mv x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xad94a9fe
c.mv x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x67d39a94
c.mv x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x4697e57d
c.mv x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x9a0b8b8c
c.mv x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x5f2f4a62
c.mv x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x039ffdc0
c.mv x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x41edae8f
c.mv x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x93eeaf24
c.mv x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0xc7c3fd8d
c.mv x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 188)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0xdc5adc83
c.mv x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x50393f02
c.mv x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x111a7d5c
c.mv x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x5fd0e32b
c.mv x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 204)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x5fa40b35
c.mv x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0xd6489287
c.mv x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0xa17cda0f
c.mv x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x32d9ec18
c.mv x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xcaa09a8c
c.mv x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x870de3ab
c.mv x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 228)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0xd1deff5f
c.mv x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0xddeeba4a
c.mv x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 236)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x3f4c7f69
c.mv x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x13a0b641
c.mv x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 244)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x00000000
c.mv x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x00000001
c.mv x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 252)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x00000002
c.mv x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0x80000000
c.mv x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 260)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x14, 0x80000001
c.mv x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x7, 0x7fffffff
c.mv x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 268)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x17, 0x7ffffffe
c.mv x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xffffffff
c.mv x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 276)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0xfffffffe
c.mv x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x20, 0x5bbc8872
c.mv x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 284)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa
c.mv x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x2, 0x55555555
c.mv x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x80b0f7ab
c.mv x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xa6861577
c.mv x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 300)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x53d23477
c.mv x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x92e05212
c.mv x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x5, 0xa2ac6c56
c.mv x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf5ba6810
c.mv x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdc07c046
c.mv x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x84273017
c.mv x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xcb7237ca
c.mv x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xdb419db1
c.mv x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xc26935b2
c.mv x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xb1e95d4c
c.mv x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xff7880c4
c.mv x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x6a0d4a6a
c.mv x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x424c333a
c.mv x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xa9096844
c.mv x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x0513772a
c.mv x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x91152725
c.mv x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xa330f4ec
c.mv x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x5524025b
c.mv x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x8659ea08
c.mv x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x5398af58
c.mv x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x4fcb6021
c.mv x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xae646244
c.mv x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x1dc1f364
c.mv x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x143156da
c.mv x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x41add819
c.mv x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x33ccb99d
c.mv x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xa966c4bc
c.mv x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xf71fbc94
c.mv x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x037478ab
c.mv x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

.EQU SIGSIZE,420


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
