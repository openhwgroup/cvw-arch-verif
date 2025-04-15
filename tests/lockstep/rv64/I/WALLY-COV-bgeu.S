///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-bgeu.S
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
li x0, 0x68427b04b394d1c4 # initialize rs1
li x19, 0x859e94b55e29ab49 # initialize rs2
bgeu x0, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x859e94b55e29ab49 # initialize rs1
li x19, 0x859e94b55e29ab49 # initialize rs2
bgeu x0, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x24a4da20fba304eb # initialize rs1
li x21, 0xeb74c51d5804d0a6 # initialize rs2
bgeu x1, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xeb74c51d5804d0a6 # initialize rs1
li x21, 0xeb74c51d5804d0a6 # initialize rs2
bgeu x1, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4c4ac12d06cc4e9e # initialize rs1
li x1, 0x88309c3783bb50bd # initialize rs2
bgeu x2, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x88309c3783bb50bd # initialize rs1
li x1, 0x88309c3783bb50bd # initialize rs2
bgeu x2, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x12c0d06261304a5d # initialize rs1
li x26, 0x53c078d116c7cef0 # initialize rs2
bgeu x3, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x53c078d116c7cef0 # initialize rs1
li x26, 0x53c078d116c7cef0 # initialize rs2
bgeu x3, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5fdfd06a1f031769 # initialize rs1
li x7, 0xbbccfa374f425258 # initialize rs2
bgeu x4, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xbbccfa374f425258 # initialize rs1
li x7, 0xbbccfa374f425258 # initialize rs2
bgeu x4, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x00a8a460a8429bed # initialize rs1
li x31, 0xfe4e34fb1a8b413d # initialize rs2
bgeu x5, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xfe4e34fb1a8b413d # initialize rs1
li x31, 0xfe4e34fb1a8b413d # initialize rs2
bgeu x5, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x395f6376193671d9 # initialize rs1
li x12, 0xd937cde72709aed4 # initialize rs2
bgeu x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xd937cde72709aed4 # initialize rs1
li x12, 0xd937cde72709aed4 # initialize rs2
bgeu x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7e3742402783f86c # initialize rs1
li x1, 0xcb6fdbc5be7fdeb8 # initialize rs2
bgeu x7, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xcb6fdbc5be7fdeb8 # initialize rs1
li x1, 0xcb6fdbc5be7fdeb8 # initialize rs2
bgeu x7, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x81b2d4a17c8560e2 # initialize rs1
li x23, 0xe7e1d8bd0bfef08f # initialize rs2
bgeu x8, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xe7e1d8bd0bfef08f # initialize rs1
li x23, 0xe7e1d8bd0bfef08f # initialize rs2
bgeu x8, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2d5383941bcf99f8 # initialize rs1
li x26, 0x94b95ede0a9b32d5 # initialize rs2
bgeu x9, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x94b95ede0a9b32d5 # initialize rs1
li x26, 0x94b95ede0a9b32d5 # initialize rs2
bgeu x9, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb0b321a1a67e3474 # initialize rs1
li x31, 0xaedb3bc285bcda33 # initialize rs2
bgeu x10, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xaedb3bc285bcda33 # initialize rs1
li x31, 0xaedb3bc285bcda33 # initialize rs2
bgeu x10, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8330d2a1d0a78a65 # initialize rs1
li x14, 0x7835a367c4b9e67e # initialize rs2
bgeu x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7835a367c4b9e67e # initialize rs1
li x14, 0x7835a367c4b9e67e # initialize rs2
bgeu x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd1939230c501d4e2 # initialize rs1
li x11, 0x1288d62e80b7e300 # initialize rs2
bgeu x12, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x1288d62e80b7e300 # initialize rs1
li x11, 0x1288d62e80b7e300 # initialize rs2
bgeu x12, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x451f4c317c18f80f # initialize rs1
li x28, 0x6be5f67b07ea46e0 # initialize rs2
bgeu x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x6be5f67b07ea46e0 # initialize rs1
li x28, 0x6be5f67b07ea46e0 # initialize rs2
bgeu x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x8e11987f9bc0619c # initialize rs1
li x20, 0xac6ff974aee84c38 # initialize rs2
bgeu x14, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xac6ff974aee84c38 # initialize rs1
li x20, 0xac6ff974aee84c38 # initialize rs2
bgeu x14, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x722406d280eb8016 # initialize rs1
li x28, 0x45df7a4402bfc849 # initialize rs2
bgeu x15, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x45df7a4402bfc849 # initialize rs1
li x28, 0x45df7a4402bfc849 # initialize rs2
bgeu x15, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x73de25987f00281b # initialize rs1
li x5, 0xba058206464a68ee # initialize rs2
bgeu x16, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xba058206464a68ee # initialize rs1
li x5, 0xba058206464a68ee # initialize rs2
bgeu x16, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x988f302cfee7a6e0 # initialize rs1
li x3, 0xdff99143e7947416 # initialize rs2
bgeu x17, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xdff99143e7947416 # initialize rs1
li x3, 0xdff99143e7947416 # initialize rs2
bgeu x17, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2098570347b2c9d3 # initialize rs1
li x7, 0x4c6204c30493f51d # initialize rs2
bgeu x18, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x4c6204c30493f51d # initialize rs1
li x7, 0x4c6204c30493f51d # initialize rs2
bgeu x18, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2add70c129743cc9 # initialize rs1
li x3, 0x2c4b0ef916d32dfc # initialize rs2
bgeu x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x2c4b0ef916d32dfc # initialize rs1
li x3, 0x2c4b0ef916d32dfc # initialize rs2
bgeu x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe451d21234bbb0a0 # initialize rs1
li x23, 0x20ccdc58d3cd0f99 # initialize rs2
bgeu x20, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x20ccdc58d3cd0f99 # initialize rs1
li x23, 0x20ccdc58d3cd0f99 # initialize rs2
bgeu x20, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe83afe4fce12b375 # initialize rs1
li x18, 0xaddd05e9f7eaba16 # initialize rs2
bgeu x21, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaddd05e9f7eaba16 # initialize rs1
li x18, 0xaddd05e9f7eaba16 # initialize rs2
bgeu x21, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6d44dcc61d7579fc # initialize rs1
li x8, 0xfd2e6c6ef3c8e6db # initialize rs2
bgeu x22, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfd2e6c6ef3c8e6db # initialize rs1
li x8, 0xfd2e6c6ef3c8e6db # initialize rs2
bgeu x22, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc2888dd849b9920b # initialize rs1
li x16, 0xcb1e83f2f4086d09 # initialize rs2
bgeu x23, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xcb1e83f2f4086d09 # initialize rs1
li x16, 0xcb1e83f2f4086d09 # initialize rs2
bgeu x23, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4bbb55f493b197fa # initialize rs1
li x26, 0x3e1fb6c023a4ca74 # initialize rs2
bgeu x24, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x3e1fb6c023a4ca74 # initialize rs1
li x26, 0x3e1fb6c023a4ca74 # initialize rs2
bgeu x24, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8621c8563c4bdd7d # initialize rs1
li x31, 0x15b34f8db4abbc52 # initialize rs2
bgeu x25, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x15b34f8db4abbc52 # initialize rs1
li x31, 0x15b34f8db4abbc52 # initialize rs2
bgeu x25, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa36fd6dea407cf23 # initialize rs1
li x10, 0x36fc9b3418f05c91 # initialize rs2
bgeu x26, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x36fc9b3418f05c91 # initialize rs1
li x10, 0x36fc9b3418f05c91 # initialize rs2
bgeu x26, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc6caffc581bde11c # initialize rs1
li x19, 0x42936e572261ab98 # initialize rs2
bgeu x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x42936e572261ab98 # initialize rs1
li x19, 0x42936e572261ab98 # initialize rs2
bgeu x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfad2fd5ebb4052c3 # initialize rs1
li x7, 0x5fc0de92ebc89a2c # initialize rs2
bgeu x28, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5fc0de92ebc89a2c # initialize rs1
li x7, 0x5fc0de92ebc89a2c # initialize rs2
bgeu x28, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x79b7aaf7caba7fd8 # initialize rs1
li x23, 0x1d587a971c3120de # initialize rs2
bgeu x29, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x1d587a971c3120de # initialize rs1
li x23, 0x1d587a971c3120de # initialize rs2
bgeu x29, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xea3553d14805f07d # initialize rs1
li x14, 0x0ae69c25fc514cac # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0ae69c25fc514cac # initialize rs1
li x14, 0x0ae69c25fc514cac # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9b87d2cabeb8684c # initialize rs1
li x25, 0x8824da840011e0a7 # initialize rs2
bgeu x31, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8824da840011e0a7 # initialize rs1
li x25, 0x8824da840011e0a7 # initialize rs2
bgeu x31, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x5a5a50be5b33ea85 # initialize rs1
li x0, 0xc9808410b46fdef2 # initialize rs2
bgeu x20, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xc9808410b46fdef2 # initialize rs1
li x0, 0xc9808410b46fdef2 # initialize rs2
bgeu x20, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0xb92cd59999f1421a # initialize rs1
li x1, 0x4e254b2b11e0124d # initialize rs2
bgeu x28, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x4e254b2b11e0124d # initialize rs1
li x1, 0x4e254b2b11e0124d # initialize rs2
bgeu x28, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x18, 0x3897ed0469bab8a9 # initialize rs1
li x2, 0x090b87428a579640 # initialize rs2
bgeu x18, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x090b87428a579640 # initialize rs1
li x2, 0x090b87428a579640 # initialize rs2
bgeu x18, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0xbe4815056f742d87 # initialize rs1
li x3, 0x2e0096191ece388b # initialize rs2
bgeu x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x2e0096191ece388b # initialize rs1
li x3, 0x2e0096191ece388b # initialize rs2
bgeu x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0xc6bd4f223631cfcf # initialize rs1
li x4, 0x9b48b920c3d194ae # initialize rs2
bgeu x16, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x9b48b920c3d194ae # initialize rs1
li x4, 0x9b48b920c3d194ae # initialize rs2
bgeu x16, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x6ed44fce982543ee # initialize rs1
li x5, 0x77d418e8d82e17b2 # initialize rs2
bgeu x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x77d418e8d82e17b2 # initialize rs1
li x5, 0x77d418e8d82e17b2 # initialize rs2
bgeu x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x7692282fe03a9462 # initialize rs1
li x6, 0x459ea989e7d6f25d # initialize rs2
bgeu x22, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x459ea989e7d6f25d # initialize rs1
li x6, 0x459ea989e7d6f25d # initialize rs2
bgeu x22, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x275dd8d0c08b7c4f # initialize rs1
li x7, 0xa61cf851177acdba # initialize rs2
bgeu x10, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xa61cf851177acdba # initialize rs1
li x7, 0xa61cf851177acdba # initialize rs2
bgeu x10, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0x5394b2f260490ba7 # initialize rs1
li x8, 0x4b024106391a49ba # initialize rs2
bgeu x27, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x4b024106391a49ba # initialize rs1
li x8, 0x4b024106391a49ba # initialize rs2
bgeu x27, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x432ad8455d7d8d11 # initialize rs1
li x9, 0x81308ab2464749ec # initialize rs2
bgeu x22, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x81308ab2464749ec # initialize rs1
li x9, 0x81308ab2464749ec # initialize rs2
bgeu x22, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x23, 0xe9ecba5f0daf31af # initialize rs1
li x10, 0xea99f610a764ab63 # initialize rs2
bgeu x23, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xea99f610a764ab63 # initialize rs1
li x10, 0xea99f610a764ab63 # initialize rs2
bgeu x23, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0xb25dc7d0baa4eacf # initialize rs1
li x11, 0x6453dc0e1bbb3c68 # initialize rs2
bgeu x14, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x6453dc0e1bbb3c68 # initialize rs1
li x11, 0x6453dc0e1bbb3c68 # initialize rs2
bgeu x14, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x7542d3b11d4f6a66 # initialize rs1
li x12, 0xe6ee78fe4a64c9c4 # initialize rs2
bgeu x31, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xe6ee78fe4a64c9c4 # initialize rs1
li x12, 0xe6ee78fe4a64c9c4 # initialize rs2
bgeu x31, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x7c60f989afcd0bb1 # initialize rs1
li x13, 0x77aa14bcce19bf3c # initialize rs2
bgeu x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x77aa14bcce19bf3c # initialize rs1
li x13, 0x77aa14bcce19bf3c # initialize rs2
bgeu x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0xc1ba98d3eb38e0e2 # initialize rs1
li x14, 0x1e4a7d3acc5102bd # initialize rs2
bgeu x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x1e4a7d3acc5102bd # initialize rs1
li x14, 0x1e4a7d3acc5102bd # initialize rs2
bgeu x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x2ddccd499ac3ffb3 # initialize rs1
li x15, 0xb9c50e6905b66ad7 # initialize rs2
bgeu x30, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xb9c50e6905b66ad7 # initialize rs1
li x15, 0xb9c50e6905b66ad7 # initialize rs2
bgeu x30, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x21, 0xb1cc72837682d4f6 # initialize rs1
li x16, 0xac29e0ef16487e71 # initialize rs2
bgeu x21, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xac29e0ef16487e71 # initialize rs1
li x16, 0xac29e0ef16487e71 # initialize rs2
bgeu x21, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xbc92cd86b296aebc # initialize rs1
li x17, 0xb81210ca22ad1b12 # initialize rs2
bgeu x6, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xb81210ca22ad1b12 # initialize rs1
li x17, 0xb81210ca22ad1b12 # initialize rs2
bgeu x6, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x7126ce115f8561e4 # initialize rs1
li x18, 0xbcdbd5de0eb52748 # initialize rs2
bgeu x30, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xbcdbd5de0eb52748 # initialize rs1
li x18, 0xbcdbd5de0eb52748 # initialize rs2
bgeu x30, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0x6308e1c700e19ff8 # initialize rs1
li x19, 0xdc5b3a2ded7cfa5e # initialize rs2
bgeu x18, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xdc5b3a2ded7cfa5e # initialize rs1
li x19, 0xdc5b3a2ded7cfa5e # initialize rs2
bgeu x18, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xc1c8de1c56825bf3 # initialize rs1
li x20, 0x11c859c784edd7e4 # initialize rs2
bgeu x18, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x11c859c784edd7e4 # initialize rs1
li x20, 0x11c859c784edd7e4 # initialize rs2
bgeu x18, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0xe22aec98f6f10b61 # initialize rs1
li x21, 0x5b5a6770d6638004 # initialize rs2
bgeu x26, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5b5a6770d6638004 # initialize rs1
li x21, 0x5b5a6770d6638004 # initialize rs2
bgeu x26, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x27959211664ba933 # initialize rs1
li x22, 0x311597268a7bbb48 # initialize rs2
bgeu x2, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x311597268a7bbb48 # initialize rs1
li x22, 0x311597268a7bbb48 # initialize rs2
bgeu x2, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x25, 0x3d52812b9a5718c9 # initialize rs1
li x23, 0xb19862f545b264a7 # initialize rs2
bgeu x25, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xb19862f545b264a7 # initialize rs1
li x23, 0xb19862f545b264a7 # initialize rs2
bgeu x25, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x8094d3ccaee57669 # initialize rs1
li x24, 0x009739dfba99cbc6 # initialize rs2
bgeu x10, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x009739dfba99cbc6 # initialize rs1
li x24, 0x009739dfba99cbc6 # initialize rs2
bgeu x10, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0x5332971df71d43ff # initialize rs1
li x25, 0x28f4af8c2494005c # initialize rs2
bgeu x30, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x28f4af8c2494005c # initialize rs1
li x25, 0x28f4af8c2494005c # initialize rs2
bgeu x30, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x20, 0xfae08efaf767b2df # initialize rs1
li x26, 0xa664c0cfc3ce1cb0 # initialize rs2
bgeu x20, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xa664c0cfc3ce1cb0 # initialize rs1
li x26, 0xa664c0cfc3ce1cb0 # initialize rs2
bgeu x20, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x4e31c2a74d5d5592 # initialize rs1
li x27, 0x83babe81c661b4fa # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x83babe81c661b4fa # initialize rs1
li x27, 0x83babe81c661b4fa # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xc806bc23a98220f9 # initialize rs1
li x28, 0x6120f3c7502e3471 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x6120f3c7502e3471 # initialize rs1
li x28, 0x6120f3c7502e3471 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0x3801d571df13d332 # initialize rs1
li x29, 0x2d7fd5f9fa517458 # initialize rs2
bgeu x24, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x2d7fd5f9fa517458 # initialize rs1
li x29, 0x2d7fd5f9fa517458 # initialize rs2
bgeu x24, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x959b801c9fe3e7dd # initialize rs1
li x30, 0xfac2beb7b6919dc7 # initialize rs2
bgeu x22, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfac2beb7b6919dc7 # initialize rs1
li x30, 0xfac2beb7b6919dc7 # initialize rs2
bgeu x22, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x35422b582a914748 # initialize rs1
li x31, 0x7968e7c6f8f1d3f0 # initialize rs2
bgeu x30, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7968e7c6f8f1d3f0 # initialize rs1
li x31, 0x7968e7c6f8f1d3f0 # initialize rs2
bgeu x30, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x11, 0x065f476a90fae277 # initialize rs2
bgeu x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x065f476a90fae277 # initialize rs1
li x11, 0x065f476a90fae277 # initialize rs2
bgeu x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x3, 0xcf4f5f36b6071719 # initialize rs2
bgeu x12, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xcf4f5f36b6071719 # initialize rs1
li x3, 0xcf4f5f36b6071719 # initialize rs2
bgeu x12, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x9, 0xf598549112921b85 # initialize rs2
bgeu x12, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xf598549112921b85 # initialize rs1
li x9, 0xf598549112921b85 # initialize rs2
bgeu x12, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x3, 0xc75dec41a5ef9051 # initialize rs2
bgeu x6, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xc75dec41a5ef9051 # initialize rs1
li x3, 0xc75dec41a5ef9051 # initialize rs2
bgeu x6, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
li x3, 0x2905f023a565de70 # initialize rs2
bgeu x24, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x2905f023a565de70 # initialize rs1
li x3, 0x2905f023a565de70 # initialize rs2
bgeu x24, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x28, 0x6fbb3d77dffc3e6d # initialize rs2
bgeu x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x6fbb3d77dffc3e6d # initialize rs1
li x28, 0x6fbb3d77dffc3e6d # initialize rs2
bgeu x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0a9258834226657a # initialize rs2
bgeu x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0a9258834226657a # initialize rs1
li x18, 0x0a9258834226657a # initialize rs2
bgeu x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x29, 0xb30f406b3edad40e # initialize rs2
bgeu x6, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xb30f406b3edad40e # initialize rs1
li x29, 0xb30f406b3edad40e # initialize rs2
bgeu x6, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x8, 0xd1696c4b8a9cfe2c # initialize rs2
bgeu x17, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xd1696c4b8a9cfe2c # initialize rs1
li x8, 0xd1696c4b8a9cfe2c # initialize rs2
bgeu x17, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x49cb3d6872d2efba # initialize rs2
bgeu x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x49cb3d6872d2efba # initialize rs1
li x31, 0x49cb3d6872d2efba # initialize rs2
bgeu x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xb929b852af2a7d88 # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xb929b852af2a7d88 # initialize rs1
li x19, 0xb929b852af2a7d88 # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x27, 0xc6fdd1ca205ce5b7 # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xc6fdd1ca205ce5b7 # initialize rs1
li x27, 0xc6fdd1ca205ce5b7 # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x20, 0x776fd362a356be55 # initialize rs2
bgeu x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x776fd362a356be55 # initialize rs1
li x20, 0x776fd362a356be55 # initialize rs2
bgeu x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x2, 0x5a096bb0b5d87baa # initialize rs2
bgeu x21, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5a096bb0b5d87baa # initialize rs1
li x2, 0x5a096bb0b5d87baa # initialize rs2
bgeu x21, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x28, 0x063820126aa03750 # initialize rs2
bgeu x12, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x063820126aa03750 # initialize rs1
li x28, 0x063820126aa03750 # initialize rs2
bgeu x12, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x5, 0xa090d62b6979dcda # initialize rs2
bgeu x24, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xa090d62b6979dcda # initialize rs1
li x5, 0xa090d62b6979dcda # initialize rs2
bgeu x24, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0xd600df1526ed2a3b # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bgeu x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bgeu x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0xdfe284d19392f71b # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bgeu x8, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bgeu x8, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x55bbe7b1c51a6dee # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bgeu x25, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bgeu x25, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x5ed8059a4fc3dba5 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bgeu x10, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bgeu x10, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x3, 0x290fd68066a64f1e # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bgeu x3, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bgeu x3, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0xe0478cea4089a2bc # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bgeu x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bgeu x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x010b974851f48bd6 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bgeu x12, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bgeu x12, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x14, 0x164932988d8bd098 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bgeu x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bgeu x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x10, 0xba1412021b1cda33 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bgeu x10, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bgeu x10, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x11, 0x4898d1779e340b55 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bgeu x11, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bgeu x11, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xce74395f1c375f65 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x15, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x15, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x5eb46cf7bb9dee51 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bgeu x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bgeu x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x25, 0xdeaec68d04769d78 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bgeu x25, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bgeu x25, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x2c235f791a4cb88c # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bgeu x9, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bgeu x9, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0xfeea1236bf860062 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bgeu x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bgeu x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x3cb53e583539e8c8 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bgeu x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bgeu x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bgeu x27, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bgeu x27, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bgeu x3, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
bgeu x3, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bgeu x1, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bgeu x1, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x20, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bgeu x20, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bgeu x20, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x12, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bgeu x12, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bgeu x12, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bgeu x15, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
bgeu x15, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bgeu x3, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bgeu x3, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bgeu x9, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bgeu x9, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000000 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bgeu x18, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bgeu x18, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bgeu x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bgeu x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x21, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x21, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x21, 0x0000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
bgeu x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
bgeu x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x9, 0x0000000000000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x9, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x9, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bgeu x25, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bgeu x25, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x23, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x28, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bgeu x28, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bgeu x28, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x27, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bgeu x30, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bgeu x30, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bgeu x13, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bgeu x13, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x31, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bgeu x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bgeu x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bgeu x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bgeu x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bgeu x23, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bgeu x23, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bgeu x27, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bgeu x27, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bgeu x2, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bgeu x2, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bgeu x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffffffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bgeu x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x30, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x30, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x19, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bgeu x19, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bgeu x19, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bgeu x6, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bgeu x6, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x13, 0x0000000000000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bgeu x13, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bgeu x13, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bgeu x18, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bgeu x18, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bgeu x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bgeu x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bgeu x12, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bgeu x12, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x14, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bgeu x14, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bgeu x14, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bgeu x20, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bgeu x20, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x27, 0x0000000000000002 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bgeu x27, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bgeu x27, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bgeu x5, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bgeu x5, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bgeu x30, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bgeu x30, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bgeu x18, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xfffffffffffffffe # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
bgeu x18, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
bgeu x12, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
bgeu x12, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x6, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x6, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x25, 0x0000000000000002 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bgeu x30, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bgeu x30, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bgeu x16, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bgeu x16, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x24, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bgeu x24, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bgeu x24, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x26, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bgeu x26, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bgeu x26, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
bgeu x14, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
bgeu x14, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bgeu x23, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bgeu x23, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x27, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bgeu x27, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bgeu x27, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x17, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bgeu x17, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bgeu x17, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bgeu x23, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bgeu x23, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bgeu x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bgeu x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bgeu x13, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bgeu x13, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bgeu x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bgeu x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bgeu x17, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bgeu x17, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
bgeu x21, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
bgeu x21, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x11, 0x8000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bgeu x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bgeu x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bgeu x15, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bgeu x15, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bgeu x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000fffffffe # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
bgeu x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x29, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bgeu x29, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bgeu x29, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x9, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bgeu x9, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
bgeu x9, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bgeu x25, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bgeu x25, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bgeu x19, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bgeu x19, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bgeu x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bgeu x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bgeu x25, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bgeu x25, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x3, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bgeu x3, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bgeu x3, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x25, 0x8000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bgeu x25, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bgeu x25, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bgeu x20, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bgeu x20, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x29, 0x8000000000000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bgeu x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
bgeu x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bgeu x8, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bgeu x8, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x9, 0x8000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
bgeu x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
bgeu x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x3, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x3, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bgeu x12, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5555555555555555 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bgeu x12, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x17, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x17, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bgeu x10, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
bgeu x10, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x3, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bgeu x3, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bgeu x3, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x28, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bgeu x28, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bgeu x28, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bgeu x21, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bgeu x21, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x9, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
bgeu x9, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
bgeu x9, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x8, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bgeu x8, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bgeu x8, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x20, 0x7fffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bgeu x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bgeu x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bgeu x23, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bgeu x23, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bgeu x14, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bgeu x14, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bgeu x3, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bgeu x3, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x29, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x29, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bgeu x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bgeu x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bgeu x12, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bgeu x12, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x7fffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x6, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x6, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bgeu x21, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bgeu x21, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bgeu x2, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bgeu x2, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x20, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x20, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bgeu x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bgeu x7, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bgeu x7, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x24, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bgeu x24, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bgeu x24, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x2, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
bgeu x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
bgeu x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x22, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bgeu x22, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bgeu x22, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bgeu x21, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bgeu x21, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0x7ffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bgeu x1, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bgeu x1, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bgeu x30, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bgeu x30, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bgeu x19, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bgeu x19, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bgeu x21, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfffffffffffffffe # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bgeu x21, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bgeu x12, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bgeu x12, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7ffffffffffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x29, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bgeu x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bgeu x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bgeu x9, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bgeu x9, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bgeu x3, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bgeu x3, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bgeu x23, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bgeu x23, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x18, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x18, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bgeu x18, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x26, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bgeu x26, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bgeu x26, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bgeu x7, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bgeu x7, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x8, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bgeu x8, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bgeu x8, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x27, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bgeu x27, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bgeu x27, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bgeu x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bgeu x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bgeu x15, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bgeu x15, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bgeu x1, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xffffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bgeu x1, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x8, 0xffffffffffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bgeu x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bgeu x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0xffffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bgeu x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bgeu x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x7, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x7, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bgeu x1, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bgeu x1, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bgeu x8, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bgeu x8, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bgeu x7, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bgeu x7, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x12, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bgeu x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
bgeu x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x18, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bgeu x18, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bgeu x18, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x15, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bgeu x15, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bgeu x15, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bgeu x3, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bgeu x3, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x1, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bgeu x1, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bgeu x1, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bgeu x3, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bgeu x3, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bgeu x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bgeu x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bgeu x25, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bgeu x25, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bgeu x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bgeu x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bgeu x16, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bgeu x16, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bgeu x19, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bgeu x19, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0xfffffffffffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bgeu x9, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bgeu x9, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xfffffffffffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bgeu x16, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bgeu x16, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x20, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bgeu x20, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x17, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x17, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x25, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bgeu x25, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bgeu x25, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bgeu x6, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bgeu x6, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bgeu x13, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bgeu x13, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bgeu x16, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bgeu x16, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
bgeu x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000002 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
bgeu x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bgeu x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bgeu x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bgeu x26, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bgeu x26, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bgeu x24, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bgeu x24, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bgeu x27, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bgeu x27, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bgeu x25, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bgeu x25, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bgeu x23, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bgeu x23, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x17, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x17, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bgeu x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bgeu x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bgeu x2, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bgeu x2, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bgeu x6, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
bgeu x6, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bgeu x27, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bgeu x27, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bgeu x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bgeu x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bgeu x18, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bgeu x18, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bgeu x24, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bgeu x24, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x28, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bgeu x28, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bgeu x11, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bgeu x11, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bgeu x1, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7fffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bgeu x1, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bgeu x2, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bgeu x2, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bgeu x9, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bgeu x9, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x5, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x5, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bgeu x31, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bgeu x31, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x29, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x29, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bgeu x11, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bgeu x11, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x20, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bgeu x20, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bgeu x26, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bgeu x26, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bgeu x21, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bgeu x21, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bgeu x23, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bgeu x23, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bgeu x21, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bgeu x21, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x31, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bgeu x31, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bgeu x31, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x12, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bgeu x12, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bgeu x12, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x20, 0x5555555555555555 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bgeu x20, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
bgeu x20, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x8, 0x5555555555555555 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bgeu x8, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bgeu x8, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bgeu x20, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bgeu x20, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bgeu x2, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bgeu x2, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bgeu x6, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bgeu x6, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bgeu x6, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
bgeu x6, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x28, 0x5555555555555555 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bgeu x28, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bgeu x28, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5555555555555555 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5555555555555555 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bgeu x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bgeu x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bgeu x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bgeu x7, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bgeu x7, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x26, 0x5555555555555555 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bgeu x26, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bgeu x26, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x24, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bgeu x24, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bgeu x24, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bgeu x31, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bgeu x31, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bgeu x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bgeu x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x20, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bgeu x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bgeu x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x7, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bgeu x7, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bgeu x7, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bgeu x2, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bgeu x2, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bgeu x7, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bgeu x7, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bgeu x26, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bgeu x26, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bgeu x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bgeu x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bgeu x30, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
bgeu x30, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0x00000000ffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bgeu x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bgeu x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000ffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x22, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x00000000ffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bgeu x5, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bgeu x5, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
bgeu x25, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000ffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
bgeu x25, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bgeu x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bgeu x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x21, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bgeu x21, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bgeu x21, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x17, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bgeu x17, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bgeu x17, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bgeu x23, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bgeu x23, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bgeu x1, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bgeu x1, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x10, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bgeu x10, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bgeu x10, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x15, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bgeu x15, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bgeu x15, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x28, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bgeu x28, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bgeu x28, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bgeu x9, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7fffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bgeu x9, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bgeu x12, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bgeu x12, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bgeu x25, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bgeu x25, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bgeu x31, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
bgeu x31, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0x00000000fffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bgeu x21, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bgeu x21, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bgeu x31, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5555555555555555 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bgeu x31, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
bgeu x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x27, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bgeu x27, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bgeu x27, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x2, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bgeu x2, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bgeu x2, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x8, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bgeu x8, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bgeu x8, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bgeu x12, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bgeu x12, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x13, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bgeu x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bgeu x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bgeu x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bgeu x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x26, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bgeu x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bgeu x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bgeu x7, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bgeu x7, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bgeu x15, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
bgeu x15, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x10, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
bgeu x10, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x31, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bgeu x31, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000000 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bgeu x5, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bgeu x5, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000100000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x27, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x27, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bgeu x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bgeu x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bgeu x16, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bgeu x16, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bgeu x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bgeu x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bgeu x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bgeu x18, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bgeu x18, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bgeu x13, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bgeu x13, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x31, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
bgeu x31, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
bgeu x31, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x24, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bgeu x24, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bgeu x24, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bgeu x14, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bgeu x14, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x22, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bgeu x22, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bgeu x22, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bgeu x14, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bgeu x14, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffffffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bgeu x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bgeu x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bgeu x24, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xfffffffffffffffe # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bgeu x24, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
bgeu x7, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
bgeu x7, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000100000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x30, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bgeu x30, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x23, 0x0000000100000001 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bgeu x23, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bgeu x23, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bgeu x6, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
bgeu x6, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
bgeu x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
bgeu x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bgeu x1, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bgeu x1, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bgeu x26, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000100000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bgeu x26, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa655f9f83225f2f9 # initialize rs1
li x0, 0xe093b340dd2fb61d # initialize rs2
bgeu x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xe093b340dd2fb61d # initialize rs1
li x0, 0xe093b340dd2fb61d # initialize rs2
bgeu x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc11b9bbf5500dd2d # initialize rs1
li x1, 0xf7af0c096c3eac03 # initialize rs2
bgeu x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xf7af0c096c3eac03 # initialize rs1
li x1, 0xf7af0c096c3eac03 # initialize rs2
bgeu x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x4cb51dacad1dc8e6 # initialize rs1
li x2, 0x59dd634fa6720ad3 # initialize rs2
bgeu x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x59dd634fa6720ad3 # initialize rs1
li x2, 0x59dd634fa6720ad3 # initialize rs2
bgeu x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x40c4f036884af756 # initialize rs1
li x3, 0x31c43883b7ebcfc0 # initialize rs2
bgeu x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x31c43883b7ebcfc0 # initialize rs1
li x3, 0x31c43883b7ebcfc0 # initialize rs2
bgeu x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47a128ce9623fb5d # initialize rs1
li x4, 0x9e36421bc2577580 # initialize rs2
bgeu x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x9e36421bc2577580 # initialize rs1
li x4, 0x9e36421bc2577580 # initialize rs2
bgeu x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9e47398a810a2712 # initialize rs1
li x5, 0x3418dd6171f98c45 # initialize rs2
bgeu x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x3418dd6171f98c45 # initialize rs1
li x5, 0x3418dd6171f98c45 # initialize rs2
bgeu x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x61acb331202b3ed7 # initialize rs1
li x6, 0x2b19edef78ce45ee # initialize rs2
bgeu x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x2b19edef78ce45ee # initialize rs1
li x6, 0x2b19edef78ce45ee # initialize rs2
bgeu x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd14fb1bfb4458ac1 # initialize rs1
li x7, 0xccf2a3df96002871 # initialize rs2
bgeu x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xccf2a3df96002871 # initialize rs1
li x7, 0xccf2a3df96002871 # initialize rs2
bgeu x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x8c5f9d8041a2c65f # initialize rs1
li x8, 0x861f8020170952df # initialize rs2
bgeu x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x861f8020170952df # initialize rs1
li x8, 0x861f8020170952df # initialize rs2
bgeu x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa16d056470cb359c # initialize rs1
li x9, 0x1f7cac8d20fb4c5e # initialize rs2
bgeu x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x1f7cac8d20fb4c5e # initialize rs1
li x9, 0x1f7cac8d20fb4c5e # initialize rs2
bgeu x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x213a0d77bfaa2bcf # initialize rs1
li x10, 0x76951d6cc4e30192 # initialize rs2
bgeu x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x76951d6cc4e30192 # initialize rs1
li x10, 0x76951d6cc4e30192 # initialize rs2
bgeu x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x236d31d5762c63b4 # initialize rs1
li x11, 0x5e8678f187ca7418 # initialize rs2
bgeu x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5e8678f187ca7418 # initialize rs1
li x11, 0x5e8678f187ca7418 # initialize rs2
bgeu x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x912e828b98c7008f # initialize rs1
li x12, 0x3929898f8f1c7661 # initialize rs2
bgeu x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x3929898f8f1c7661 # initialize rs1
li x12, 0x3929898f8f1c7661 # initialize rs2
bgeu x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x51484eb241737ca6 # initialize rs1
li x13, 0x06dc72ef7f7094d9 # initialize rs2
bgeu x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x06dc72ef7f7094d9 # initialize rs1
li x13, 0x06dc72ef7f7094d9 # initialize rs2
bgeu x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7924709d8c2df752 # initialize rs1
li x14, 0xd58b12f45546e556 # initialize rs2
bgeu x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xd58b12f45546e556 # initialize rs1
li x14, 0xd58b12f45546e556 # initialize rs2
bgeu x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xdc3a266812d264c5 # initialize rs1
li x15, 0x39e7f3c547312c1e # initialize rs2
bgeu x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x39e7f3c547312c1e # initialize rs1
li x15, 0x39e7f3c547312c1e # initialize rs2
bgeu x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x665fde3bee6006b5 # initialize rs1
li x16, 0x80ce46fe486a9559 # initialize rs2
bgeu x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x80ce46fe486a9559 # initialize rs1
li x16, 0x80ce46fe486a9559 # initialize rs2
bgeu x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6270123f4c5a9183 # initialize rs1
li x17, 0x129516d4ee0e9644 # initialize rs2
bgeu x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x129516d4ee0e9644 # initialize rs1
li x17, 0x129516d4ee0e9644 # initialize rs2
bgeu x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x44892a13c452663c # initialize rs1
li x18, 0xbf33662176fd1ca1 # initialize rs2
bgeu x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xbf33662176fd1ca1 # initialize rs1
li x18, 0xbf33662176fd1ca1 # initialize rs2
bgeu x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8535235536fff49a # initialize rs1
li x19, 0xe38525e03357c5c4 # initialize rs2
bgeu x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xe38525e03357c5c4 # initialize rs1
li x19, 0xe38525e03357c5c4 # initialize rs2
bgeu x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x773d491db3fa9759 # initialize rs1
li x20, 0x273e83ad16fe1fe8 # initialize rs2
bgeu x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x273e83ad16fe1fe8 # initialize rs1
li x20, 0x273e83ad16fe1fe8 # initialize rs2
bgeu x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x9045820f80114cdb # initialize rs1
li x21, 0x407743541f80075a # initialize rs2
bgeu x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x407743541f80075a # initialize rs1
li x21, 0x407743541f80075a # initialize rs2
bgeu x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xaaf311252da01588 # initialize rs1
li x22, 0xacb0365c45d2cb63 # initialize rs2
bgeu x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xacb0365c45d2cb63 # initialize rs1
li x22, 0xacb0365c45d2cb63 # initialize rs2
bgeu x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xb2171975801f3648 # initialize rs1
li x23, 0xe1bdd07bb50548ff # initialize rs2
bgeu x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xe1bdd07bb50548ff # initialize rs1
li x23, 0xe1bdd07bb50548ff # initialize rs2
bgeu x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xacbdfab123be6dc8 # initialize rs1
li x24, 0x77c4a9e28edbc2fc # initialize rs2
bgeu x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x77c4a9e28edbc2fc # initialize rs1
li x24, 0x77c4a9e28edbc2fc # initialize rs2
bgeu x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x22174dfe2184c741 # initialize rs1
li x25, 0xf04d3f0595aafda8 # initialize rs2
bgeu x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xf04d3f0595aafda8 # initialize rs1
li x25, 0xf04d3f0595aafda8 # initialize rs2
bgeu x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe525a084309a8ab3 # initialize rs1
li x26, 0x73082f071a85becc # initialize rs2
bgeu x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x73082f071a85becc # initialize rs1
li x26, 0x73082f071a85becc # initialize rs2
bgeu x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdb81f3b072015a07 # initialize rs1
li x27, 0x11ad18a210286dc7 # initialize rs2
bgeu x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x11ad18a210286dc7 # initialize rs1
li x27, 0x11ad18a210286dc7 # initialize rs2
bgeu x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x4fe98d29e8f8cbe4 # initialize rs1
li x28, 0xf4125e6e80dbf8e3 # initialize rs2
bgeu x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xf4125e6e80dbf8e3 # initialize rs1
li x28, 0xf4125e6e80dbf8e3 # initialize rs2
bgeu x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x5c789ad367858a51 # initialize rs1
li x29, 0x0c5f9b67c5d55509 # initialize rs2
bgeu x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0c5f9b67c5d55509 # initialize rs1
li x29, 0x0c5f9b67c5d55509 # initialize rs2
bgeu x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4849247f1eb52f7b # initialize rs1
li x30, 0x22e6865556975fef # initialize rs2
bgeu x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x22e6865556975fef # initialize rs1
li x30, 0x22e6865556975fef # initialize rs2
bgeu x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd83c19f5734f88ed # initialize rs1
li x31, 0x727e40c00c63bf80 # initialize rs2
bgeu x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x727e40c00c63bf80 # initialize rs1
li x31, 0x727e40c00c63bf80 # initialize rs2
bgeu x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bgeu x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x8, x26 # perform first operation
bgeu x6, x21, arbitraryLabel127
nop
arbitraryLabel127:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x16, x1 # perform first operation
bgeu x21, x11, arbitraryLabel128
nop
arbitraryLabel128:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x5, x11 # perform first operation
bgeu x6, x9, arbitraryLabel129
nop
arbitraryLabel129:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x27, x26 # perform first operation
bgeu x18, x7, arbitraryLabel130
nop
arbitraryLabel130:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x21, x6 # perform first operation
bgeu x28, x15, arbitraryLabel131
nop
arbitraryLabel131:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x30, x22 # perform first operation
bgeu x3, x29, arbitraryLabel132
nop
arbitraryLabel132:
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
