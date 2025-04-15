///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-blt.S
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
li x0, 0x4ca4889d306fca93 # initialize rs1
li x11, 0x573c0e042848ae39 # initialize rs2
blt x0, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x573c0e042848ae39 # initialize rs1
li x11, 0x573c0e042848ae39 # initialize rs2
blt x0, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe1953ef7d380dfc0 # initialize rs1
li x16, 0xc7565e8d7ff46da1 # initialize rs2
blt x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xc7565e8d7ff46da1 # initialize rs1
li x16, 0xc7565e8d7ff46da1 # initialize rs2
blt x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3a3c1df93a302f2a # initialize rs1
li x19, 0x984af098e1f3cd5c # initialize rs2
blt x2, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x984af098e1f3cd5c # initialize rs1
li x19, 0x984af098e1f3cd5c # initialize rs2
blt x2, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe28be71a67cda937 # initialize rs1
li x13, 0xb61a8dc8a271b953 # initialize rs2
blt x3, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xb61a8dc8a271b953 # initialize rs1
li x13, 0xb61a8dc8a271b953 # initialize rs2
blt x3, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9546ef0ffb233ed8 # initialize rs1
li x13, 0xd2e246fd002e9f5b # initialize rs2
blt x4, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xd2e246fd002e9f5b # initialize rs1
li x13, 0xd2e246fd002e9f5b # initialize rs2
blt x4, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9257579deed90e58 # initialize rs1
li x15, 0xcc78b2c75473478f # initialize rs2
blt x5, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xcc78b2c75473478f # initialize rs1
li x15, 0xcc78b2c75473478f # initialize rs2
blt x5, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x76defca99ad57a06 # initialize rs1
li x2, 0x845620a058f8d121 # initialize rs2
blt x6, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x845620a058f8d121 # initialize rs1
li x2, 0x845620a058f8d121 # initialize rs2
blt x6, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4d07553918be83f7 # initialize rs1
li x1, 0xd35da38ec3c1659a # initialize rs2
blt x7, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xd35da38ec3c1659a # initialize rs1
li x1, 0xd35da38ec3c1659a # initialize rs2
blt x7, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd92cf24a9ff1b9de # initialize rs1
li x2, 0x5d900902aa250464 # initialize rs2
blt x8, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5d900902aa250464 # initialize rs1
li x2, 0x5d900902aa250464 # initialize rs2
blt x8, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb10c8f51a7dc90ed # initialize rs1
li x12, 0x64322dd120682712 # initialize rs2
blt x9, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x64322dd120682712 # initialize rs1
li x12, 0x64322dd120682712 # initialize rs2
blt x9, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xf1f9bc534d11a768 # initialize rs1
li x31, 0xd058817aaa512a32 # initialize rs2
blt x10, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xd058817aaa512a32 # initialize rs1
li x31, 0xd058817aaa512a32 # initialize rs2
blt x10, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8ee869cd81f2aff4 # initialize rs1
li x14, 0xe2c975ed296972a1 # initialize rs2
blt x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xe2c975ed296972a1 # initialize rs1
li x14, 0xe2c975ed296972a1 # initialize rs2
blt x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x114551c0063c6bd4 # initialize rs1
li x15, 0xb6af3b85166ccfc0 # initialize rs2
blt x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xb6af3b85166ccfc0 # initialize rs1
li x15, 0xb6af3b85166ccfc0 # initialize rs2
blt x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4d8988709d882cab # initialize rs1
li x8, 0xdde555bf36eaa814 # initialize rs2
blt x13, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xdde555bf36eaa814 # initialize rs1
li x8, 0xdde555bf36eaa814 # initialize rs2
blt x13, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x3767ebfe665f766a # initialize rs1
li x15, 0xee6ab9e763a9e6e2 # initialize rs2
blt x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xee6ab9e763a9e6e2 # initialize rs1
li x15, 0xee6ab9e763a9e6e2 # initialize rs2
blt x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2fc7db358af43a6c # initialize rs1
li x16, 0x81c4ee78c260d775 # initialize rs2
blt x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x81c4ee78c260d775 # initialize rs1
li x16, 0x81c4ee78c260d775 # initialize rs2
blt x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1d3cc01a6e69bfbe # initialize rs1
li x27, 0xe2202c31ca205058 # initialize rs2
blt x16, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xe2202c31ca205058 # initialize rs1
li x27, 0xe2202c31ca205058 # initialize rs2
blt x16, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf5046e83aca67c80 # initialize rs1
li x3, 0x713d68e5674068e4 # initialize rs2
blt x17, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x713d68e5674068e4 # initialize rs1
li x3, 0x713d68e5674068e4 # initialize rs2
blt x17, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x18224a6fd599d8be # initialize rs1
li x19, 0x1061929193ecb2b8 # initialize rs2
blt x18, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x1061929193ecb2b8 # initialize rs1
li x19, 0x1061929193ecb2b8 # initialize rs2
blt x18, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa02987c2d035e641 # initialize rs1
li x12, 0xcad5f15b092dcb68 # initialize rs2
blt x19, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xcad5f15b092dcb68 # initialize rs1
li x12, 0xcad5f15b092dcb68 # initialize rs2
blt x19, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x809d725de1696e70 # initialize rs1
li x13, 0x6784e6c3d5a68236 # initialize rs2
blt x20, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x6784e6c3d5a68236 # initialize rs1
li x13, 0x6784e6c3d5a68236 # initialize rs2
blt x20, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbf90d2df2f447de7 # initialize rs1
li x10, 0x3ed2c0a6fd88c348 # initialize rs2
blt x21, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x3ed2c0a6fd88c348 # initialize rs1
li x10, 0x3ed2c0a6fd88c348 # initialize rs2
blt x21, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x729f4731e3f7e1cf # initialize rs1
li x7, 0xe953a5805f64db62 # initialize rs2
blt x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xe953a5805f64db62 # initialize rs1
li x7, 0xe953a5805f64db62 # initialize rs2
blt x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4d0b9e820643926a # initialize rs1
li x16, 0x6352290d42e2758d # initialize rs2
blt x23, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x6352290d42e2758d # initialize rs1
li x16, 0x6352290d42e2758d # initialize rs2
blt x23, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x9736cf7dfbe02fe2 # initialize rs1
li x6, 0xfc407ddbf39c6a99 # initialize rs2
blt x24, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xfc407ddbf39c6a99 # initialize rs1
li x6, 0xfc407ddbf39c6a99 # initialize rs2
blt x24, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xeb40766b809a0bfd # initialize rs1
li x13, 0x2425c97a395db9da # initialize rs2
blt x25, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x2425c97a395db9da # initialize rs1
li x13, 0x2425c97a395db9da # initialize rs2
blt x25, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1d58d82681550b1a # initialize rs1
li x5, 0x7f3666a1393099a3 # initialize rs2
blt x26, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7f3666a1393099a3 # initialize rs1
li x5, 0x7f3666a1393099a3 # initialize rs2
blt x26, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6499470e4cf94c45 # initialize rs1
li x3, 0x31d82cf159b42e7f # initialize rs2
blt x27, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x31d82cf159b42e7f # initialize rs1
li x3, 0x31d82cf159b42e7f # initialize rs2
blt x27, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x795b2b3ef974a328 # initialize rs1
li x13, 0x0af33402f279acee # initialize rs2
blt x28, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0af33402f279acee # initialize rs1
li x13, 0x0af33402f279acee # initialize rs2
blt x28, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0da6ab967047ed23 # initialize rs1
li x11, 0xaed3d998598a987b # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaed3d998598a987b # initialize rs1
li x11, 0xaed3d998598a987b # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5cf57d80a6198b29 # initialize rs1
li x27, 0x00f2976979dd594c # initialize rs2
blt x30, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00f2976979dd594c # initialize rs1
li x27, 0x00f2976979dd594c # initialize rs2
blt x30, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8918ba16681735a7 # initialize rs1
li x2, 0x45674f2ca84dc5a5 # initialize rs2
blt x31, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x45674f2ca84dc5a5 # initialize rs1
li x2, 0x45674f2ca84dc5a5 # initialize rs2
blt x31, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x5e7f9c0e2bdc628d # initialize rs1
li x0, 0xc4fe664a283b52ea # initialize rs2
blt x7, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xc4fe664a283b52ea # initialize rs1
li x0, 0xc4fe664a283b52ea # initialize rs2
blt x7, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x28f7cc449e28f8ea # initialize rs1
li x1, 0x3bb0cc1c560ad3dc # initialize rs2
blt x29, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x3bb0cc1c560ad3dc # initialize rs1
li x1, 0x3bb0cc1c560ad3dc # initialize rs2
blt x29, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0x6d38718c5716dee8 # initialize rs1
li x2, 0x1879d5041aa6de5a # initialize rs2
blt x30, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x1879d5041aa6de5a # initialize rs1
li x2, 0x1879d5041aa6de5a # initialize rs2
blt x30, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0xbe9d8a543838bf83 # initialize rs1
li x3, 0x92303a8b6a41c591 # initialize rs2
blt x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x92303a8b6a41c591 # initialize rs1
li x3, 0x92303a8b6a41c591 # initialize rs2
blt x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x6a2d87043baca9dd # initialize rs1
li x4, 0x975b535fdd770a87 # initialize rs2
blt x24, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x975b535fdd770a87 # initialize rs1
li x4, 0x975b535fdd770a87 # initialize rs2
blt x24, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xf6c329bf529fe1ee # initialize rs1
li x5, 0x974c46869f016139 # initialize rs2
blt x17, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x974c46869f016139 # initialize rs1
li x5, 0x974c46869f016139 # initialize rs2
blt x17, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x6332e566492c2c14 # initialize rs1
li x6, 0xc7642a8884a4d48d # initialize rs2
blt x7, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xc7642a8884a4d48d # initialize rs1
li x6, 0xc7642a8884a4d48d # initialize rs2
blt x7, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
li x27, 0xfc1d73a59650ddba # initialize rs1
li x7, 0x926bfe749d7f9c30 # initialize rs2
blt x27, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x926bfe749d7f9c30 # initialize rs1
li x7, 0x926bfe749d7f9c30 # initialize rs2
blt x27, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0xcc541fbb91adc85b # initialize rs1
li x8, 0x3df1083d0a0f7a5b # initialize rs2
blt x1, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x3df1083d0a0f7a5b # initialize rs1
li x8, 0x3df1083d0a0f7a5b # initialize rs2
blt x1, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0x9942718ec769af79 # initialize rs1
li x9, 0x72aba9756bbdf157 # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x72aba9756bbdf157 # initialize rs1
li x9, 0x72aba9756bbdf157 # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x3eefc5ed75854ba4 # initialize rs1
li x10, 0x198d24279bdcda76 # initialize rs2
blt x12, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x198d24279bdcda76 # initialize rs1
li x10, 0x198d24279bdcda76 # initialize rs2
blt x12, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0xc85207d1ac9af312 # initialize rs1
li x11, 0xbaa605c929fc1049 # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xbaa605c929fc1049 # initialize rs1
li x11, 0xbaa605c929fc1049 # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xd1171c4b5618451b # initialize rs1
li x12, 0x89a1ffbab39b434a # initialize rs2
blt x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x89a1ffbab39b434a # initialize rs1
li x12, 0x89a1ffbab39b434a # initialize rs2
blt x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0xa715d0809e5e2580 # initialize rs1
li x13, 0xd9fbc1c5c94ced6a # initialize rs2
blt x28, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xd9fbc1c5c94ced6a # initialize rs1
li x13, 0xd9fbc1c5c94ced6a # initialize rs2
blt x28, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0xea1649dcf7024eea # initialize rs1
li x14, 0xfe74f9b57dd4b5f2 # initialize rs2
blt x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xfe74f9b57dd4b5f2 # initialize rs1
li x14, 0xfe74f9b57dd4b5f2 # initialize rs2
blt x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0x379d08de79e06df2 # initialize rs1
li x15, 0xdd3a463e6c709242 # initialize rs2
blt x26, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xdd3a463e6c709242 # initialize rs1
li x15, 0xdd3a463e6c709242 # initialize rs2
blt x26, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x74d644225f074cb8 # initialize rs1
li x16, 0x87566db6e3653766 # initialize rs2
blt x8, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x87566db6e3653766 # initialize rs1
li x16, 0x87566db6e3653766 # initialize rs2
blt x8, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x27, 0xe69a120e9bddb460 # initialize rs1
li x17, 0xaa7cc9bd6bedb7a2 # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaa7cc9bd6bedb7a2 # initialize rs1
li x17, 0xaa7cc9bd6bedb7a2 # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0xb9a434fac8c8c29c # initialize rs1
li x18, 0xf4749717771c6732 # initialize rs2
blt x5, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xf4749717771c6732 # initialize rs1
li x18, 0xf4749717771c6732 # initialize rs2
blt x5, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x23, 0x35ad954bbbb15f03 # initialize rs1
li x19, 0x94baa3d8a2079fad # initialize rs2
blt x23, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x94baa3d8a2079fad # initialize rs1
li x19, 0x94baa3d8a2079fad # initialize rs2
blt x23, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xfa2197f0d1bec4fc # initialize rs1
li x20, 0x6f7882f496dc7009 # initialize rs2
blt x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x6f7882f496dc7009 # initialize rs1
li x20, 0x6f7882f496dc7009 # initialize rs2
blt x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0x046de39de7dd0e6e # initialize rs1
li x21, 0x0c210ca38291ae88 # initialize rs2
blt x16, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0c210ca38291ae88 # initialize rs1
li x21, 0x0c210ca38291ae88 # initialize rs2
blt x16, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0xf38d3583b6990747 # initialize rs1
li x22, 0x4b584e1ebbefbd9c # initialize rs2
blt x2, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x4b584e1ebbefbd9c # initialize rs1
li x22, 0x4b584e1ebbefbd9c # initialize rs2
blt x2, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0x9e96419b60557c28 # initialize rs1
li x23, 0xa0263ed5fd2a3936 # initialize rs2
blt x2, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xa0263ed5fd2a3936 # initialize rs1
li x23, 0xa0263ed5fd2a3936 # initialize rs2
blt x2, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0x11d5af40153a9369 # initialize rs1
li x24, 0x20b9753990b12b05 # initialize rs2
blt x16, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x20b9753990b12b05 # initialize rs1
li x24, 0x20b9753990b12b05 # initialize rs2
blt x16, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x428d96ecb9da0d12 # initialize rs1
li x25, 0x517494fe3ad53279 # initialize rs2
blt x21, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x517494fe3ad53279 # initialize rs1
li x25, 0x517494fe3ad53279 # initialize rs2
blt x21, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0x15068dfec5427a20 # initialize rs1
li x26, 0x2a9265150750ec48 # initialize rs2
blt x19, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x2a9265150750ec48 # initialize rs1
li x26, 0x2a9265150750ec48 # initialize rs2
blt x19, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0x6f178474b112310b # initialize rs1
li x27, 0xc292cff6e39ef972 # initialize rs2
blt x3, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xc292cff6e39ef972 # initialize rs1
li x27, 0xc292cff6e39ef972 # initialize rs2
blt x3, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x3, 0x9ec2afa843d96a44 # initialize rs1
li x28, 0x1a4b287d1816400e # initialize rs2
blt x3, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x1a4b287d1816400e # initialize rs1
li x28, 0x1a4b287d1816400e # initialize rs2
blt x3, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x2, 0xb7a742613969f87c # initialize rs1
li x29, 0x335d04ee660b8e97 # initialize rs2
blt x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x335d04ee660b8e97 # initialize rs1
li x29, 0x335d04ee660b8e97 # initialize rs2
blt x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0x0cd3a9e3990c6e32 # initialize rs1
li x30, 0x7b1473a250d8fcdf # initialize rs2
blt x7, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7b1473a250d8fcdf # initialize rs1
li x30, 0x7b1473a250d8fcdf # initialize rs2
blt x7, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0xcba8e9c92681617b # initialize rs1
li x31, 0x177b6c2ffc5c7c83 # initialize rs2
blt x14, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x177b6c2ffc5c7c83 # initialize rs1
li x31, 0x177b6c2ffc5c7c83 # initialize rs2
blt x14, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x0000000000000000 # initialize rs1
li x9, 0x30fa0280e42c527e # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x30fa0280e42c527e # initialize rs1
li x9, 0x30fa0280e42c527e # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x5, 0x533ff0b9b3145494 # initialize rs2
blt x31, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x533ff0b9b3145494 # initialize rs1
li x5, 0x533ff0b9b3145494 # initialize rs2
blt x31, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x29, 0x8efac4465cc5b974 # initialize rs2
blt x26, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8efac4465cc5b974 # initialize rs1
li x29, 0x8efac4465cc5b974 # initialize rs2
blt x26, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x15, 0xde08eb7aaf29dee4 # initialize rs2
blt x22, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xde08eb7aaf29dee4 # initialize rs1
li x15, 0xde08eb7aaf29dee4 # initialize rs2
blt x22, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x31, 0xaa0ef423f1067b2e # initialize rs2
blt x18, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xaa0ef423f1067b2e # initialize rs1
li x31, 0xaa0ef423f1067b2e # initialize rs2
blt x18, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x10, 0x9fd94359ab999746 # initialize rs2
blt x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x9fd94359ab999746 # initialize rs1
li x10, 0x9fd94359ab999746 # initialize rs2
blt x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x23, 0x043cd8d80f181cf7 # initialize rs2
blt x28, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x043cd8d80f181cf7 # initialize rs1
li x23, 0x043cd8d80f181cf7 # initialize rs2
blt x28, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x6, 0xaebc1165e7af3a97 # initialize rs2
blt x25, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xaebc1165e7af3a97 # initialize rs1
li x6, 0xaebc1165e7af3a97 # initialize rs2
blt x25, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x30, 0x4f1cc6606ec33729 # initialize rs2
blt x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x4f1cc6606ec33729 # initialize rs1
li x30, 0x4f1cc6606ec33729 # initialize rs2
blt x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x838cf06ab7f8b5a9 # initialize rs2
blt x28, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x838cf06ab7f8b5a9 # initialize rs1
li x30, 0x838cf06ab7f8b5a9 # initialize rs2
blt x28, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xee701bc4fd5a039c # initialize rs2
blt x10, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xee701bc4fd5a039c # initialize rs1
li x23, 0xee701bc4fd5a039c # initialize rs2
blt x10, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
li x22, 0x091c74317fff2bdb # initialize rs2
blt x6, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x091c74317fff2bdb # initialize rs1
li x22, 0x091c74317fff2bdb # initialize rs2
blt x6, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x6, 0xd06cd042cecc9f69 # initialize rs2
blt x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xd06cd042cecc9f69 # initialize rs1
li x6, 0xd06cd042cecc9f69 # initialize rs2
blt x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x31, 0xa4c622e14b1a73cd # initialize rs2
blt x8, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xa4c622e14b1a73cd # initialize rs1
li x31, 0xa4c622e14b1a73cd # initialize rs2
blt x8, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x25, 0x978079404fa9b3e0 # initialize rs2
blt x19, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x978079404fa9b3e0 # initialize rs1
li x25, 0x978079404fa9b3e0 # initialize rs2
blt x19, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x18, 0x9b501f1e8a076cf2 # initialize rs2
blt x2, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x9b501f1e8a076cf2 # initialize rs1
li x18, 0x9b501f1e8a076cf2 # initialize rs2
blt x2, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x9d0372fcea24effc # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
blt x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
blt x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x5, 0xfd7a9678ed28efb4 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
blt x5, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
blt x5, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x63faaa9dc0c7f87d # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
blt x26, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
blt x26, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x5, 0x06f46580ad87da73 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
blt x5, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
blt x5, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x9fd82f9db9909944 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
blt x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
blt x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0xe5cbc7e7b5559c9e # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
blt x31, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
blt x31, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x30, 0x7f0bfb93eafee85e # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
blt x30, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
blt x30, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x29, 0x247e84f6a616c62a # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
blt x29, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
blt x29, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x22, 0xe34331736a9ffb7b # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x2, 0xcac6183f9215b01a # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
blt x2, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
blt x2, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xa773999d60b82034 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x12, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x12, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0xb8412294b0d47bbb # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
blt x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5555555555555555 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
blt x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x629dd0cb8015ef80 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
blt x15, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
blt x15, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0xfdd838e8c6e1e62a # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
blt x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
blt x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x6d3b4253f895d592 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
blt x2, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
blt x2, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x28, 0xca34bd9d6d547e76 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
blt x28, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
blt x28, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
blt x12, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
blt x12, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
blt x12, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
blt x12, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x8, 0x0000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
blt x8, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
blt x8, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x14, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
blt x14, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
blt x14, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
blt x19, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
blt x19, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x31, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x31, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
blt x20, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
blt x20, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
blt x3, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
blt x3, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
blt x31, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
blt x31, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x3, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x3, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
blt x16, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
blt x16, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
blt x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
blt x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
blt x9, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
blt x9, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x7, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
blt x7, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
blt x7, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x11, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x25, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x25, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
blt x14, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
blt x14, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
blt x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
blt x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x14, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
blt x14, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
blt x14, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x16, 0x0000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
blt x16, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
blt x16, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
blt x18, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
blt x18, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
blt x26, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffffffffffe # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
blt x26, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
blt x30, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
blt x30, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
blt x14, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
blt x14, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x28, 0x0000000000000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
blt x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
blt x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x0000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
blt x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
blt x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
blt x23, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
blt x23, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
blt x18, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
blt x18, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x10, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
blt x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
blt x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x5, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
blt x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
blt x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
blt x18, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
blt x18, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x23, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x23, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x5, 0x0000000000000002 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
blt x5, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
blt x5, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
blt x17, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
blt x17, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000000000002 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
blt x6, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
blt x6, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x13, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x13, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
blt x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
blt x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
blt x31, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
blt x31, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000002 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x7, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x7, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
blt x29, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
blt x29, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
blt x12, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
blt x12, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x10, 0x0000000000000002 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
blt x10, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
blt x10, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
blt x31, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
blt x31, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
blt x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
blt x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
blt x13, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
blt x13, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
blt x25, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
blt x25, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x14, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
blt x14, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
blt x14, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
blt x31, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
blt x31, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
blt x25, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
blt x25, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
blt x13, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
blt x13, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
blt x26, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
blt x26, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
blt x19, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
blt x19, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x3, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x3, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x26, 0x8000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
blt x26, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
blt x26, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
blt x26, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
blt x26, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x15, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x15, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x31, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
blt x31, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
blt x31, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x12, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
blt x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
blt x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x12, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
blt x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
blt x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
blt x6, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
blt x6, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
blt x13, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
blt x13, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x7, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
blt x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
blt x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
blt x9, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
blt x9, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x31, 0x8000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
blt x31, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
blt x31, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x18, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
blt x18, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
blt x8, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
blt x8, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
blt x27, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
blt x27, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x11, 0x8000000000000001 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
blt x11, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
blt x11, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x11, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x11, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x1, 0x8000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
blt x16, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
blt x16, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
blt x22, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
blt x22, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x16, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
blt x16, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
blt x16, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x6, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
blt x6, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
blt x6, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x28, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
blt x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
blt x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x1, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
blt x1, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
blt x1, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x18, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
blt x18, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
blt x18, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
blt x14, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
blt x14, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x8, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
blt x8, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
blt x8, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
blt x9, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
blt x9, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x9, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x9, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
blt x2, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xffffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
blt x2, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
blt x11, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
blt x11, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0x7fffffffffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
blt x1, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
blt x1, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x10, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x10, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x9, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
blt x9, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
blt x9, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
blt x14, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
blt x14, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x10, 0x7fffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
blt x10, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
blt x10, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
blt x24, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
blt x24, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x12, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
blt x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
blt x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x24, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x24, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
blt x24, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x31, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
blt x31, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
blt x31, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
blt x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
blt x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
blt x22, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
blt x22, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
blt x31, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
blt x31, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
blt x10, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
blt x10, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x3, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
blt x3, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
blt x1, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xffffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
blt x1, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0x7ffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
blt x30, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
blt x30, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
blt x30, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
blt x30, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
blt x16, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
blt x16, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
blt x17, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
blt x17, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
blt x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
blt x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
blt x19, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
blt x19, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x6, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
blt x6, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
blt x6, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
blt x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
blt x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x28, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
blt x28, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
blt x28, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
blt x2, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
blt x2, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
blt x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
blt x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
blt x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7fffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
blt x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
blt x16, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
blt x16, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x18, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x18, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
blt x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0xffffffffffffffff # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
blt x14, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
blt x14, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xffffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x25, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x25, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x18, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
blt x18, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5555555555555555 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
blt x18, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
blt x18, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
blt x18, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
blt x2, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
blt x2, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x17, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
blt x17, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
blt x17, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
blt x6, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
blt x6, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x23, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
blt x23, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
blt x23, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x15, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
blt x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
blt x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x8, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
blt x8, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
blt x8, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x17, 0xfffffffffffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
blt x17, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
blt x17, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
blt x9, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
blt x9, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
blt x8, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
blt x8, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
blt x30, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
blt x30, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
blt x16, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
blt x16, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
blt x5, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
blt x5, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0xfffffffffffffffe # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
blt x28, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
blt x28, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0xfffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
blt x8, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
blt x8, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
blt x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
blt x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
blt x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
blt x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
blt x23, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
blt x23, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x5, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x5, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
blt x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
blt x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x8, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x8, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
blt x16, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
blt x16, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
blt x20, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
blt x20, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
blt x15, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
blt x15, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
blt x8, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
blt x8, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
blt x21, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
blt x21, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
blt x19, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
blt x19, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
blt x3, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
blt x3, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
blt x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
blt x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
blt x22, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
blt x22, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
blt x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
blt x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
blt x26, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
blt x26, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x16, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
blt x16, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x22, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
blt x22, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
blt x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
blt x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
blt x15, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
blt x15, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
blt x24, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
blt x24, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
blt x26, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
blt x26, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
blt x8, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
blt x8, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
blt x19, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
blt x19, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x17, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x17, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
blt x31, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
blt x31, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
blt x29, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
blt x29, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
blt x27, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
blt x27, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
blt x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
blt x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
blt x9, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
blt x9, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
blt x27, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
blt x27, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
blt x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
blt x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
blt x9, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
blt x9, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
blt x3, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
blt x3, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x2, 0x5555555555555555 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
blt x2, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
blt x2, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
blt x8, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
blt x8, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x6, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x6, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
blt x20, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xfffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
blt x20, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
blt x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
blt x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5555555555555555 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x22, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x22, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x17, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
blt x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
blt x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x11, 0x5555555555555555 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
blt x11, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
blt x11, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
blt x19, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
blt x19, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x22, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
blt x22, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
blt x22, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x20, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
blt x20, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
blt x20, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
blt x17, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
blt x17, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x23, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
blt x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
blt x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x20, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
blt x20, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
blt x20, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x20, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
blt x20, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
blt x20, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x27, 0x00000000ffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
blt x27, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
blt x27, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
blt x11, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
blt x11, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
blt x16, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
blt x16, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x9, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
blt x9, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x00000000ffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
blt x25, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
blt x25, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
blt x10, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
blt x10, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x00000000ffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x18, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x18, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x26, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
blt x26, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
blt x26, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
blt x19, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
blt x19, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
blt x30, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
blt x30, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x7, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
blt x7, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
blt x7, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x17, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x17, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
blt x17, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
blt x9, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
blt x9, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
blt x5, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
blt x5, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
blt x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
blt x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x19, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x30, 0x00000000fffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
blt x30, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
blt x30, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
blt x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
blt x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
blt x22, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
blt x22, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
blt x25, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
blt x25, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
blt x23, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
blt x23, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
blt x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
blt x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x2, 0x00000000fffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
blt x2, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5555555555555555 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
blt x2, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
blt x8, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
blt x8, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
blt x1, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
blt x1, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x6, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
blt x6, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
blt x6, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x28, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
blt x28, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
blt x28, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x26, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
blt x26, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
blt x26, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x24, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
blt x24, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
blt x24, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
blt x20, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
blt x20, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x23, 0x0000000100000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
blt x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
blt x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
blt x23, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
blt x23, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
blt x8, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
blt x8, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
blt x14, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
blt x14, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
blt x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
blt x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
blt x6, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
blt x6, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
blt x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
blt x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x31, 0x0000000100000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
blt x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
blt x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x17, 0x0000000100000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
blt x17, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
blt x17, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x3, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
blt x3, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
blt x21, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
blt x21, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x15, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
blt x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
blt x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x10, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
blt x10, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
blt x10, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x10, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
blt x10, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
blt x10, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x5, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
blt x5, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
blt x5, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x2, 0x0000000100000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
blt x2, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
blt x2, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
blt x28, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
blt x28, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
blt x26, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
blt x26, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
blt x5, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
blt x5, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
blt x6, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
blt x6, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
blt x28, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
blt x28, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000100000001 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
blt x14, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
blt x14, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x19, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
blt x19, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x2, 0x0000000100000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x2, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
blt x2, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x11, 0x0000000100000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
blt x11, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
blt x11, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
blt x12, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
blt x12, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x11, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
blt x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
blt x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x31, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
blt x31, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
blt x31, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x36680603500f90bf # initialize rs1
li x0, 0x4fd9ffc3962f9f7a # initialize rs2
blt x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x4fd9ffc3962f9f7a # initialize rs1
li x0, 0x4fd9ffc3962f9f7a # initialize rs2
blt x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x91042d18a2ef332d # initialize rs1
li x1, 0xa2ee3d7300b621a0 # initialize rs2
blt x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xa2ee3d7300b621a0 # initialize rs1
li x1, 0xa2ee3d7300b621a0 # initialize rs2
blt x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x28040ee8e2be7356 # initialize rs1
li x2, 0xaaf2ae75c596f29e # initialize rs2
blt x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaf2ae75c596f29e # initialize rs1
li x2, 0xaaf2ae75c596f29e # initialize rs2
blt x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2aa72fc15fd5dc39 # initialize rs1
li x3, 0x674e6cacab396fa0 # initialize rs2
blt x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x674e6cacab396fa0 # initialize rs1
li x3, 0x674e6cacab396fa0 # initialize rs2
blt x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x67589e584077235f # initialize rs1
li x4, 0xb4a05bdafa65307e # initialize rs2
blt x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xb4a05bdafa65307e # initialize rs1
li x4, 0xb4a05bdafa65307e # initialize rs2
blt x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x266f62a3e176d39d # initialize rs1
li x5, 0xac9f6688d3707c77 # initialize rs2
blt x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xac9f6688d3707c77 # initialize rs1
li x5, 0xac9f6688d3707c77 # initialize rs2
blt x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2ee9ed39e71ac5bd # initialize rs1
li x6, 0x9fbbec6b6b2d9403 # initialize rs2
blt x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x9fbbec6b6b2d9403 # initialize rs1
li x6, 0x9fbbec6b6b2d9403 # initialize rs2
blt x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1581e037ad390f86 # initialize rs1
li x7, 0x7eb38c118bea5ffb # initialize rs2
blt x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7eb38c118bea5ffb # initialize rs1
li x7, 0x7eb38c118bea5ffb # initialize rs2
blt x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa65b905d5008846a # initialize rs1
li x8, 0x6f90c8d9d0e792cb # initialize rs2
blt x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x6f90c8d9d0e792cb # initialize rs1
li x8, 0x6f90c8d9d0e792cb # initialize rs2
blt x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1e8be44fa44b3257 # initialize rs1
li x9, 0xe00cdfad936de780 # initialize rs2
blt x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xe00cdfad936de780 # initialize rs1
li x9, 0xe00cdfad936de780 # initialize rs2
blt x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb6ee44ff64b813dd # initialize rs1
li x10, 0xd8785eb35e3ceca8 # initialize rs2
blt x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xd8785eb35e3ceca8 # initialize rs1
li x10, 0xd8785eb35e3ceca8 # initialize rs2
blt x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x3289027acd640ac4 # initialize rs1
li x11, 0x98cb7dfe88f95bb5 # initialize rs2
blt x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x98cb7dfe88f95bb5 # initialize rs1
li x11, 0x98cb7dfe88f95bb5 # initialize rs2
blt x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xecffda9c34fd2089 # initialize rs1
li x12, 0x05eb6571b862d371 # initialize rs2
blt x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x05eb6571b862d371 # initialize rs1
li x12, 0x05eb6571b862d371 # initialize rs2
blt x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe434e69a15764c1f # initialize rs1
li x13, 0x6b8bc88565b90090 # initialize rs2
blt x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x6b8bc88565b90090 # initialize rs1
li x13, 0x6b8bc88565b90090 # initialize rs2
blt x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe668ec65b74faae9 # initialize rs1
li x14, 0x845a9f3c30f211a4 # initialize rs2
blt x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x845a9f3c30f211a4 # initialize rs1
li x14, 0x845a9f3c30f211a4 # initialize rs2
blt x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xe2bb22266c565c33 # initialize rs1
li x15, 0x306e62baa75ad0d9 # initialize rs2
blt x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x306e62baa75ad0d9 # initialize rs1
li x15, 0x306e62baa75ad0d9 # initialize rs2
blt x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa153464c1978c6cc # initialize rs1
li x16, 0xbb52bce0dbd9c051 # initialize rs2
blt x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xbb52bce0dbd9c051 # initialize rs1
li x16, 0xbb52bce0dbd9c051 # initialize rs2
blt x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x7e663c063afe87b6 # initialize rs1
li x17, 0xc8276b733504e2e1 # initialize rs2
blt x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xc8276b733504e2e1 # initialize rs1
li x17, 0xc8276b733504e2e1 # initialize rs2
blt x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x87c714a46c8a1476 # initialize rs1
li x18, 0xb31588e905ff4004 # initialize rs2
blt x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xb31588e905ff4004 # initialize rs1
li x18, 0xb31588e905ff4004 # initialize rs2
blt x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x28d767e9a33577fc # initialize rs1
li x19, 0x04961bbdecb19fa8 # initialize rs2
blt x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x04961bbdecb19fa8 # initialize rs1
li x19, 0x04961bbdecb19fa8 # initialize rs2
blt x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x54bc0052c436cd1b # initialize rs1
li x20, 0xc3645670b0f74dd0 # initialize rs2
blt x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xc3645670b0f74dd0 # initialize rs1
li x20, 0xc3645670b0f74dd0 # initialize rs2
blt x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x77f8c1f5876c86f7 # initialize rs1
li x21, 0xa9c777374399d971 # initialize rs2
blt x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xa9c777374399d971 # initialize rs1
li x21, 0xa9c777374399d971 # initialize rs2
blt x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x3999f3f59a34bee7 # initialize rs1
li x22, 0xf7f4a47198c44f04 # initialize rs2
blt x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xf7f4a47198c44f04 # initialize rs1
li x22, 0xf7f4a47198c44f04 # initialize rs2
blt x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x543a6ce10b57a8e3 # initialize rs1
li x23, 0xebbb2799a3b1f049 # initialize rs2
blt x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xebbb2799a3b1f049 # initialize rs1
li x23, 0xebbb2799a3b1f049 # initialize rs2
blt x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x393f069cdec358cd # initialize rs1
li x24, 0xe5b5371f7cd7cf4e # initialize rs2
blt x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xe5b5371f7cd7cf4e # initialize rs1
li x24, 0xe5b5371f7cd7cf4e # initialize rs2
blt x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x66eae64402f534c8 # initialize rs1
li x25, 0x52f77ff89c2b0050 # initialize rs2
blt x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x52f77ff89c2b0050 # initialize rs1
li x25, 0x52f77ff89c2b0050 # initialize rs2
blt x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xae2ca43f217b0a9c # initialize rs1
li x26, 0xe9230827801953dd # initialize rs2
blt x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe9230827801953dd # initialize rs1
li x26, 0xe9230827801953dd # initialize rs2
blt x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xcb578ed92d436c8c # initialize rs1
li x27, 0xcb3a2d0a6664fc5e # initialize rs2
blt x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xcb3a2d0a6664fc5e # initialize rs1
li x27, 0xcb3a2d0a6664fc5e # initialize rs2
blt x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x0ae8ebb00dfff5bd # initialize rs1
li x28, 0x43e0a5d53f935aa8 # initialize rs2
blt x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x43e0a5d53f935aa8 # initialize rs1
li x28, 0x43e0a5d53f935aa8 # initialize rs2
blt x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x53f667a181ad7d20 # initialize rs1
li x29, 0xee883c09e48d548e # initialize rs2
blt x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xee883c09e48d548e # initialize rs1
li x29, 0xee883c09e48d548e # initialize rs2
blt x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x1610a57e600f12db # initialize rs1
li x30, 0x3b57d498582d9914 # initialize rs2
blt x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x3b57d498582d9914 # initialize rs1
li x30, 0x3b57d498582d9914 # initialize rs2
blt x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x1e0a855aa2aa6e34 # initialize rs1
li x31, 0x778fa112db61044d # initialize rs2
blt x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x778fa112db61044d # initialize rs1
li x31, 0x778fa112db61044d # initialize rs2
blt x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: blt x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x7, x25 # perform first operation
blt x23, x16, arbitraryLabel133
nop
arbitraryLabel133:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x26, x27 # perform first operation
blt x5, x1, arbitraryLabel134
nop
arbitraryLabel134:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x27, x9 # perform first operation
blt x21, x7, arbitraryLabel135
nop
arbitraryLabel135:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x3, x15 # perform first operation
blt x2, x25, arbitraryLabel136
nop
arbitraryLabel136:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x27, x24 # perform first operation
blt x8, x13, arbitraryLabel137
nop
arbitraryLabel137:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x14, x31 # perform first operation
blt x7, x6, arbitraryLabel138
nop
arbitraryLabel138:
nop
 # perform second (triggering) operation

.EQU SIGSIZE,0


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
