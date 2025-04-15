///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfh/WALLY-COV-fmul.h.S
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

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x12, x9 # perform first operation
fmul.h f28, f18, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x11, x6 # perform first operation
fmul.h f20, f28, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x1, x5 # perform first operation
fmul.h f18, f23, f30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f10, f25, f30 # perform first operation
fmul.h f30, f10, f6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f21, f30, f8 # perform first operation
fmul.h f30, f22, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x12, x30 # perform first operation
fmul.h f12, f11, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f7, f5, f24 # perform first operation
fmul.h f7, f14, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f22, f9, f14 # perform first operation
fmul.h f22, f11, f28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f2, f27, f13 # perform first operation
fmul.h f2, f21, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f10, f20 # perform first operation
fmul.h f10, f8, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f26, f9 # perform first operation
fmul.h f9, f27, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f29, f14, f9 # perform first operation
fmul.h f15, f26, f16 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0xad633d41e0cbac8e # load x3 with value 0xad633d41e0cbac8e
sw x3, 0(x2) # store 0xad633d41e0cbac8e in memory
flh f0, 0(x2) # load 0xad633d41e0cbac8e from memory into f0
la x2, scratch
li x3, 0xc1b574a160ecfe08 # load x3 with value 0xc1b574a160ecfe08
sw x3, 0(x2) # store 0xc1b574a160ecfe08 in memory
flh f27, 0(x2) # load 0xc1b574a160ecfe08 from memory into f27
fmul.h f10, f0, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x84fde763c23705e5 # load x3 with value 0x84fde763c23705e5
sw x3, 0(x2) # store 0x84fde763c23705e5 in memory
flh f1, 0(x2) # load 0x84fde763c23705e5 from memory into f1
la x2, scratch
li x3, 0x71c7d6ec22d7b338 # load x3 with value 0x71c7d6ec22d7b338
sw x3, 0(x2) # store 0x71c7d6ec22d7b338 in memory
flh f3, 0(x2) # load 0x71c7d6ec22d7b338 from memory into f3
fmul.h f15, f1, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x249c031d95eb86ce # load x3 with value 0x249c031d95eb86ce
sw x3, 0(x2) # store 0x249c031d95eb86ce in memory
flh f2, 0(x2) # load 0x249c031d95eb86ce from memory into f2
la x2, scratch
li x3, 0x8448dce75b7f49b7 # load x3 with value 0x8448dce75b7f49b7
sw x3, 0(x2) # store 0x8448dce75b7f49b7 in memory
flh f31, 0(x2) # load 0x8448dce75b7f49b7 from memory into f31
fmul.h f7, f2, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x35bd5be23d0e595b # load x3 with value 0x35bd5be23d0e595b
sw x3, 0(x2) # store 0x35bd5be23d0e595b in memory
flh f3, 0(x2) # load 0x35bd5be23d0e595b from memory into f3
la x2, scratch
li x3, 0x151cb7ab180adf57 # load x3 with value 0x151cb7ab180adf57
sw x3, 0(x2) # store 0x151cb7ab180adf57 in memory
flh f12, 0(x2) # load 0x151cb7ab180adf57 from memory into f12
fmul.h f9, f3, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1eaed1b41100c61d # load x3 with value 0x1eaed1b41100c61d
sw x3, 0(x2) # store 0x1eaed1b41100c61d in memory
flh f4, 0(x2) # load 0x1eaed1b41100c61d from memory into f4
la x2, scratch
li x3, 0x29a3e2d618134c2d # load x3 with value 0x29a3e2d618134c2d
sw x3, 0(x2) # store 0x29a3e2d618134c2d in memory
flh f28, 0(x2) # load 0x29a3e2d618134c2d from memory into f28
fmul.h f10, f4, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x309371980a7d4ed0 # load x3 with value 0x309371980a7d4ed0
sw x3, 0(x2) # store 0x309371980a7d4ed0 in memory
flh f5, 0(x2) # load 0x309371980a7d4ed0 from memory into f5
la x2, scratch
li x3, 0xf6e80bd4bc811b83 # load x3 with value 0xf6e80bd4bc811b83
sw x3, 0(x2) # store 0xf6e80bd4bc811b83 in memory
flh f23, 0(x2) # load 0xf6e80bd4bc811b83 from memory into f23
fmul.h f12, f5, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe2a6fcd825fb6ccd # load x3 with value 0xe2a6fcd825fb6ccd
sw x3, 0(x2) # store 0xe2a6fcd825fb6ccd in memory
flh f6, 0(x2) # load 0xe2a6fcd825fb6ccd from memory into f6
la x2, scratch
li x3, 0xfe81db7efabdadfe # load x3 with value 0xfe81db7efabdadfe
sw x3, 0(x2) # store 0xfe81db7efabdadfe in memory
flh f19, 0(x2) # load 0xfe81db7efabdadfe from memory into f19
fmul.h f2, f6, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1d807f2d499b7827 # load x3 with value 0x1d807f2d499b7827
sw x3, 0(x2) # store 0x1d807f2d499b7827 in memory
flh f7, 0(x2) # load 0x1d807f2d499b7827 from memory into f7
la x2, scratch
li x3, 0xb165c794838b3083 # load x3 with value 0xb165c794838b3083
sw x3, 0(x2) # store 0xb165c794838b3083 in memory
flh f25, 0(x2) # load 0xb165c794838b3083 from memory into f25
fmul.h f3, f7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0xec410fdd98c08de # load x3 with value 0xec410fdd98c08de
sw x3, 0(x2) # store 0xec410fdd98c08de in memory
flh f8, 0(x2) # load 0xec410fdd98c08de from memory into f8
la x2, scratch
li x3, 0xa528f71b6c7e313 # load x3 with value 0xa528f71b6c7e313
sw x3, 0(x2) # store 0xa528f71b6c7e313 in memory
flh f5, 0(x2) # load 0xa528f71b6c7e313 from memory into f5
fmul.h f8, f8, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xd7a908aa8267edc8 # load x3 with value 0xd7a908aa8267edc8
sw x3, 0(x2) # store 0xd7a908aa8267edc8 in memory
flh f9, 0(x2) # load 0xd7a908aa8267edc8 from memory into f9
la x2, scratch
li x3, 0xdf2911b67fcad4c1 # load x3 with value 0xdf2911b67fcad4c1
sw x3, 0(x2) # store 0xdf2911b67fcad4c1 in memory
flh f7, 0(x2) # load 0xdf2911b67fcad4c1 from memory into f7
fmul.h f29, f9, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x5e1651eccc275114 # load x3 with value 0x5e1651eccc275114
sw x3, 0(x2) # store 0x5e1651eccc275114 in memory
flh f10, 0(x2) # load 0x5e1651eccc275114 from memory into f10
la x2, scratch
li x3, 0xa5cba02eef01ddb8 # load x3 with value 0xa5cba02eef01ddb8
sw x3, 0(x2) # store 0xa5cba02eef01ddb8 in memory
flh f31, 0(x2) # load 0xa5cba02eef01ddb8 from memory into f31
fmul.h f26, f10, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x226c0b9ca29bbe99 # load x3 with value 0x226c0b9ca29bbe99
sw x3, 0(x2) # store 0x226c0b9ca29bbe99 in memory
flh f11, 0(x2) # load 0x226c0b9ca29bbe99 from memory into f11
la x2, scratch
li x3, 0xd363308e927bacc8 # load x3 with value 0xd363308e927bacc8
sw x3, 0(x2) # store 0xd363308e927bacc8 in memory
flh f15, 0(x2) # load 0xd363308e927bacc8 from memory into f15
fmul.h f20, f11, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x73773426f28bf588 # load x3 with value 0x73773426f28bf588
sw x3, 0(x2) # store 0x73773426f28bf588 in memory
flh f12, 0(x2) # load 0x73773426f28bf588 from memory into f12
la x2, scratch
li x3, 0x29b78fac16dee8a3 # load x3 with value 0x29b78fac16dee8a3
sw x3, 0(x2) # store 0x29b78fac16dee8a3 in memory
flh f5, 0(x2) # load 0x29b78fac16dee8a3 from memory into f5
fmul.h f30, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x82d19c5954ee7296 # load x3 with value 0x82d19c5954ee7296
sw x3, 0(x2) # store 0x82d19c5954ee7296 in memory
flh f13, 0(x2) # load 0x82d19c5954ee7296 from memory into f13
la x2, scratch
li x3, 0x8efdd70a2acfc6d # load x3 with value 0x8efdd70a2acfc6d
sw x3, 0(x2) # store 0x8efdd70a2acfc6d in memory
flh f1, 0(x2) # load 0x8efdd70a2acfc6d from memory into f1
fmul.h f21, f13, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xf0c1d44dad9e22cb # load x3 with value 0xf0c1d44dad9e22cb
sw x3, 0(x2) # store 0xf0c1d44dad9e22cb in memory
flh f14, 0(x2) # load 0xf0c1d44dad9e22cb from memory into f14
la x2, scratch
li x3, 0xc7aaba033b1846ec # load x3 with value 0xc7aaba033b1846ec
sw x3, 0(x2) # store 0xc7aaba033b1846ec in memory
flh f9, 0(x2) # load 0xc7aaba033b1846ec from memory into f9
fmul.h f24, f14, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x243be22d3f0a2a81 # load x3 with value 0x243be22d3f0a2a81
sw x3, 0(x2) # store 0x243be22d3f0a2a81 in memory
flh f15, 0(x2) # load 0x243be22d3f0a2a81 from memory into f15
la x2, scratch
li x3, 0x2675a89cde44a87d # load x3 with value 0x2675a89cde44a87d
sw x3, 0(x2) # store 0x2675a89cde44a87d in memory
flh f31, 0(x2) # load 0x2675a89cde44a87d from memory into f31
fmul.h f18, f15, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xd7ab0f6099ef0dfe # load x3 with value 0xd7ab0f6099ef0dfe
sw x3, 0(x2) # store 0xd7ab0f6099ef0dfe in memory
flh f16, 0(x2) # load 0xd7ab0f6099ef0dfe from memory into f16
la x2, scratch
li x3, 0xa53a911b603ff5db # load x3 with value 0xa53a911b603ff5db
sw x3, 0(x2) # store 0xa53a911b603ff5db in memory
flh f23, 0(x2) # load 0xa53a911b603ff5db from memory into f23
fmul.h f2, f16, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x4081fb3f7988cf03 # load x3 with value 0x4081fb3f7988cf03
sw x3, 0(x2) # store 0x4081fb3f7988cf03 in memory
flh f17, 0(x2) # load 0x4081fb3f7988cf03 from memory into f17
la x2, scratch
li x3, 0x80b8533a0fc6345e # load x3 with value 0x80b8533a0fc6345e
sw x3, 0(x2) # store 0x80b8533a0fc6345e in memory
flh f9, 0(x2) # load 0x80b8533a0fc6345e from memory into f9
fmul.h f25, f17, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x136ac05fe3cfb62a # load x3 with value 0x136ac05fe3cfb62a
sw x3, 0(x2) # store 0x136ac05fe3cfb62a in memory
flh f18, 0(x2) # load 0x136ac05fe3cfb62a from memory into f18
la x2, scratch
li x3, 0x5c54494580c07f9f # load x3 with value 0x5c54494580c07f9f
sw x3, 0(x2) # store 0x5c54494580c07f9f in memory
flh f8, 0(x2) # load 0x5c54494580c07f9f from memory into f8
fmul.h f11, f18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0x21e0156d76339ca1 # load x3 with value 0x21e0156d76339ca1
sw x3, 0(x2) # store 0x21e0156d76339ca1 in memory
flh f19, 0(x2) # load 0x21e0156d76339ca1 from memory into f19
la x2, scratch
li x3, 0x9ed504a3dbf9d49d # load x3 with value 0x9ed504a3dbf9d49d
sw x3, 0(x2) # store 0x9ed504a3dbf9d49d in memory
flh f31, 0(x2) # load 0x9ed504a3dbf9d49d from memory into f31
fmul.h f12, f19, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x1c2123b5e75a3a3b # load x3 with value 0x1c2123b5e75a3a3b
sw x3, 0(x2) # store 0x1c2123b5e75a3a3b in memory
flh f20, 0(x2) # load 0x1c2123b5e75a3a3b from memory into f20
la x2, scratch
li x3, 0x3148cf800a74b8d9 # load x3 with value 0x3148cf800a74b8d9
sw x3, 0(x2) # store 0x3148cf800a74b8d9 in memory
flh f3, 0(x2) # load 0x3148cf800a74b8d9 from memory into f3
fmul.h f5, f20, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x83873a3641d430f8 # load x3 with value 0x83873a3641d430f8
sw x3, 0(x2) # store 0x83873a3641d430f8 in memory
flh f21, 0(x2) # load 0x83873a3641d430f8 from memory into f21
la x2, scratch
li x3, 0x8f35a63ce34f85e # load x3 with value 0x8f35a63ce34f85e
sw x3, 0(x2) # store 0x8f35a63ce34f85e in memory
flh f12, 0(x2) # load 0x8f35a63ce34f85e from memory into f12
fmul.h f1, f21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x57a2b440a12c2b73 # load x3 with value 0x57a2b440a12c2b73
sw x3, 0(x2) # store 0x57a2b440a12c2b73 in memory
flh f22, 0(x2) # load 0x57a2b440a12c2b73 from memory into f22
la x2, scratch
li x3, 0xd7ecb83994628a9a # load x3 with value 0xd7ecb83994628a9a
sw x3, 0(x2) # store 0xd7ecb83994628a9a in memory
flh f13, 0(x2) # load 0xd7ecb83994628a9a from memory into f13
fmul.h f14, f22, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x4a8edcdd98ed2160 # load x3 with value 0x4a8edcdd98ed2160
sw x3, 0(x2) # store 0x4a8edcdd98ed2160 in memory
flh f23, 0(x2) # load 0x4a8edcdd98ed2160 from memory into f23
la x2, scratch
li x3, 0x730dae4a8e19e405 # load x3 with value 0x730dae4a8e19e405
sw x3, 0(x2) # store 0x730dae4a8e19e405 in memory
flh f20, 0(x2) # load 0x730dae4a8e19e405 from memory into f20
fmul.h f29, f23, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xbc15301f77394f14 # load x3 with value 0xbc15301f77394f14
sw x3, 0(x2) # store 0xbc15301f77394f14 in memory
flh f24, 0(x2) # load 0xbc15301f77394f14 from memory into f24
la x2, scratch
li x3, 0x82eba867e7541d45 # load x3 with value 0x82eba867e7541d45
sw x3, 0(x2) # store 0x82eba867e7541d45 in memory
flh f5, 0(x2) # load 0x82eba867e7541d45 from memory into f5
fmul.h f25, f24, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x438a5b8dc1926e20 # load x3 with value 0x438a5b8dc1926e20
sw x3, 0(x2) # store 0x438a5b8dc1926e20 in memory
flh f25, 0(x2) # load 0x438a5b8dc1926e20 from memory into f25
la x2, scratch
li x3, 0xc90357d40a898460 # load x3 with value 0xc90357d40a898460
sw x3, 0(x2) # store 0xc90357d40a898460 in memory
flh f27, 0(x2) # load 0xc90357d40a898460 from memory into f27
fmul.h f31, f25, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xcfe198f011d610cc # load x3 with value 0xcfe198f011d610cc
sw x3, 0(x2) # store 0xcfe198f011d610cc in memory
flh f26, 0(x2) # load 0xcfe198f011d610cc from memory into f26
la x2, scratch
li x3, 0xcb2152172f28418b # load x3 with value 0xcb2152172f28418b
sw x3, 0(x2) # store 0xcb2152172f28418b in memory
flh f12, 0(x2) # load 0xcb2152172f28418b from memory into f12
fmul.h f26, f26, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xb0d6c0b4efbc4c3e # load x3 with value 0xb0d6c0b4efbc4c3e
sw x3, 0(x2) # store 0xb0d6c0b4efbc4c3e in memory
flh f27, 0(x2) # load 0xb0d6c0b4efbc4c3e from memory into f27
la x2, scratch
li x3, 0xb3580a65eb6a1546 # load x3 with value 0xb3580a65eb6a1546
sw x3, 0(x2) # store 0xb3580a65eb6a1546 in memory
flh f12, 0(x2) # load 0xb3580a65eb6a1546 from memory into f12
fmul.h f11, f27, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x523e61fc7093ad17 # load x3 with value 0x523e61fc7093ad17
sw x3, 0(x2) # store 0x523e61fc7093ad17 in memory
flh f28, 0(x2) # load 0x523e61fc7093ad17 from memory into f28
la x2, scratch
li x3, 0x178b7ae71cbcd13 # load x3 with value 0x178b7ae71cbcd13
sw x3, 0(x2) # store 0x178b7ae71cbcd13 in memory
flh f27, 0(x2) # load 0x178b7ae71cbcd13 from memory into f27
fmul.h f10, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x31de38e11349500d # load x3 with value 0x31de38e11349500d
sw x3, 0(x2) # store 0x31de38e11349500d in memory
flh f29, 0(x2) # load 0x31de38e11349500d from memory into f29
la x2, scratch
li x3, 0x39e83e7cc390dce0 # load x3 with value 0x39e83e7cc390dce0
sw x3, 0(x2) # store 0x39e83e7cc390dce0 in memory
flh f10, 0(x2) # load 0x39e83e7cc390dce0 from memory into f10
fmul.h f3, f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0x446e0e049151a752 # load x3 with value 0x446e0e049151a752
sw x3, 0(x2) # store 0x446e0e049151a752 in memory
flh f30, 0(x2) # load 0x446e0e049151a752 from memory into f30
la x2, scratch
li x3, 0xcc41b341e2fd07ac # load x3 with value 0xcc41b341e2fd07ac
sw x3, 0(x2) # store 0xcc41b341e2fd07ac in memory
flh f7, 0(x2) # load 0xcc41b341e2fd07ac from memory into f7
fmul.h f19, f30, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xb7c23b7a22b24451 # load x3 with value 0xb7c23b7a22b24451
sw x3, 0(x2) # store 0xb7c23b7a22b24451 in memory
flh f31, 0(x2) # load 0xb7c23b7a22b24451 from memory into f31
la x2, scratch
li x3, 0x7234014ddf547e3d # load x3 with value 0x7234014ddf547e3d
sw x3, 0(x2) # store 0x7234014ddf547e3d in memory
flh f22, 0(x2) # load 0x7234014ddf547e3d from memory into f22
fmul.h f19, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x8963697c0d03da3 # load x3 with value 0x8963697c0d03da3
sw x3, 0(x2) # store 0x8963697c0d03da3 in memory
flh f18, 0(x2) # load 0x8963697c0d03da3 from memory into f18
la x2, scratch
li x3, 0x306a45ef0570bb68 # load x3 with value 0x306a45ef0570bb68
sw x3, 0(x2) # store 0x306a45ef0570bb68 in memory
flh f0, 0(x2) # load 0x306a45ef0570bb68 from memory into f0
fmul.h f29, f18, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x60ecfd87c575fe4 # load x3 with value 0x60ecfd87c575fe4
sw x3, 0(x2) # store 0x60ecfd87c575fe4 in memory
flh f29, 0(x2) # load 0x60ecfd87c575fe4 from memory into f29
la x2, scratch
li x3, 0x3628a473c3cbcdd2 # load x3 with value 0x3628a473c3cbcdd2
sw x3, 0(x2) # store 0x3628a473c3cbcdd2 in memory
flh f1, 0(x2) # load 0x3628a473c3cbcdd2 from memory into f1
fmul.h f28, f29, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x470bae2148a6a5a3 # load x3 with value 0x470bae2148a6a5a3
sw x3, 0(x2) # store 0x470bae2148a6a5a3 in memory
flh f11, 0(x2) # load 0x470bae2148a6a5a3 from memory into f11
la x2, scratch
li x3, 0xc837288d01026935 # load x3 with value 0xc837288d01026935
sw x3, 0(x2) # store 0xc837288d01026935 in memory
flh f2, 0(x2) # load 0xc837288d01026935 from memory into f2
fmul.h f28, f11, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xf5a3aa95521b721f # load x3 with value 0xf5a3aa95521b721f
sw x3, 0(x2) # store 0xf5a3aa95521b721f in memory
flh f28, 0(x2) # load 0xf5a3aa95521b721f from memory into f28
la x2, scratch
li x3, 0x807c0f7925238127 # load x3 with value 0x807c0f7925238127
sw x3, 0(x2) # store 0x807c0f7925238127 in memory
flh f3, 0(x2) # load 0x807c0f7925238127 from memory into f3
fmul.h f18, f28, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x803d01e51b335673 # load x3 with value 0x803d01e51b335673
sw x3, 0(x2) # store 0x803d01e51b335673 in memory
flh f11, 0(x2) # load 0x803d01e51b335673 from memory into f11
la x2, scratch
li x3, 0x7070ecd0c5e328a2 # load x3 with value 0x7070ecd0c5e328a2
sw x3, 0(x2) # store 0x7070ecd0c5e328a2 in memory
flh f4, 0(x2) # load 0x7070ecd0c5e328a2 from memory into f4
fmul.h f21, f11, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x220b6a43bed442ec # load x3 with value 0x220b6a43bed442ec
sw x3, 0(x2) # store 0x220b6a43bed442ec in memory
flh f9, 0(x2) # load 0x220b6a43bed442ec from memory into f9
la x2, scratch
li x3, 0x15db53918d708739 # load x3 with value 0x15db53918d708739
sw x3, 0(x2) # store 0x15db53918d708739 in memory
flh f5, 0(x2) # load 0x15db53918d708739 from memory into f5
fmul.h f11, f9, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xeefc66344ff7d01f # load x3 with value 0xeefc66344ff7d01f
sw x3, 0(x2) # store 0xeefc66344ff7d01f in memory
flh f1, 0(x2) # load 0xeefc66344ff7d01f from memory into f1
la x2, scratch
li x3, 0x83b4647b42b33d61 # load x3 with value 0x83b4647b42b33d61
sw x3, 0(x2) # store 0x83b4647b42b33d61 in memory
flh f6, 0(x2) # load 0x83b4647b42b33d61 from memory into f6
fmul.h f15, f1, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6b147f2e7764fd4a # load x3 with value 0x6b147f2e7764fd4a
sw x3, 0(x2) # store 0x6b147f2e7764fd4a in memory
flh f15, 0(x2) # load 0x6b147f2e7764fd4a from memory into f15
la x2, scratch
li x3, 0x7f26c88542a4fa0a # load x3 with value 0x7f26c88542a4fa0a
sw x3, 0(x2) # store 0x7f26c88542a4fa0a in memory
flh f7, 0(x2) # load 0x7f26c88542a4fa0a from memory into f7
fmul.h f1, f15, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xb1f944cacacbfbbd # load x3 with value 0xb1f944cacacbfbbd
sw x3, 0(x2) # store 0xb1f944cacacbfbbd in memory
flh f25, 0(x2) # load 0xb1f944cacacbfbbd from memory into f25
la x2, scratch
li x3, 0x1ec915c12ff9409b # load x3 with value 0x1ec915c12ff9409b
sw x3, 0(x2) # store 0x1ec915c12ff9409b in memory
flh f8, 0(x2) # load 0x1ec915c12ff9409b from memory into f8
fmul.h f2, f25, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x56a10db6c6312b89 # load x3 with value 0x56a10db6c6312b89
sw x3, 0(x2) # store 0x56a10db6c6312b89 in memory
flh f22, 0(x2) # load 0x56a10db6c6312b89 from memory into f22
la x2, scratch
li x3, 0x3372aef5754a3f18 # load x3 with value 0x3372aef5754a3f18
sw x3, 0(x2) # store 0x3372aef5754a3f18 in memory
flh f9, 0(x2) # load 0x3372aef5754a3f18 from memory into f9
fmul.h f28, f22, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x316c52150210b2eb # load x3 with value 0x316c52150210b2eb
sw x3, 0(x2) # store 0x316c52150210b2eb in memory
flh f15, 0(x2) # load 0x316c52150210b2eb from memory into f15
la x2, scratch
li x3, 0x5d825b17048d3cd9 # load x3 with value 0x5d825b17048d3cd9
sw x3, 0(x2) # store 0x5d825b17048d3cd9 in memory
flh f10, 0(x2) # load 0x5d825b17048d3cd9 from memory into f10
fmul.h f22, f15, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x864cbcd9a21fa648 # load x3 with value 0x864cbcd9a21fa648
sw x3, 0(x2) # store 0x864cbcd9a21fa648 in memory
flh f6, 0(x2) # load 0x864cbcd9a21fa648 from memory into f6
la x2, scratch
li x3, 0xe4ef6e839bfbb984 # load x3 with value 0xe4ef6e839bfbb984
sw x3, 0(x2) # store 0xe4ef6e839bfbb984 in memory
flh f11, 0(x2) # load 0xe4ef6e839bfbb984 from memory into f11
fmul.h f7, f6, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0xb63feb00291e8965 # load x3 with value 0xb63feb00291e8965
sw x3, 0(x2) # store 0xb63feb00291e8965 in memory
flh f28, 0(x2) # load 0xb63feb00291e8965 from memory into f28
la x2, scratch
li x3, 0xf6c92200a696924c # load x3 with value 0xf6c92200a696924c
sw x3, 0(x2) # store 0xf6c92200a696924c in memory
flh f12, 0(x2) # load 0xf6c92200a696924c from memory into f12
fmul.h f14, f28, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xc6785e968d70c46e # load x3 with value 0xc6785e968d70c46e
sw x3, 0(x2) # store 0xc6785e968d70c46e in memory
flh f9, 0(x2) # load 0xc6785e968d70c46e from memory into f9
la x2, scratch
li x3, 0x5ff2ed92413c1295 # load x3 with value 0x5ff2ed92413c1295
sw x3, 0(x2) # store 0x5ff2ed92413c1295 in memory
flh f13, 0(x2) # load 0x5ff2ed92413c1295 from memory into f13
fmul.h f25, f9, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x9b5d663912c18da6 # load x3 with value 0x9b5d663912c18da6
sw x3, 0(x2) # store 0x9b5d663912c18da6 in memory
flh f7, 0(x2) # load 0x9b5d663912c18da6 from memory into f7
la x2, scratch
li x3, 0xc95d251d8aafd250 # load x3 with value 0xc95d251d8aafd250
sw x3, 0(x2) # store 0xc95d251d8aafd250 in memory
flh f14, 0(x2) # load 0xc95d251d8aafd250 from memory into f14
fmul.h f20, f7, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xc4a97095d068c5a7 # load x3 with value 0xc4a97095d068c5a7
sw x3, 0(x2) # store 0xc4a97095d068c5a7 in memory
flh f5, 0(x2) # load 0xc4a97095d068c5a7 from memory into f5
la x2, scratch
li x3, 0x15e73353abe9f211 # load x3 with value 0x15e73353abe9f211
sw x3, 0(x2) # store 0x15e73353abe9f211 in memory
flh f15, 0(x2) # load 0x15e73353abe9f211 from memory into f15
fmul.h f15, f5, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x16f41b9d2fa5bb19 # load x3 with value 0x16f41b9d2fa5bb19
sw x3, 0(x2) # store 0x16f41b9d2fa5bb19 in memory
flh f13, 0(x2) # load 0x16f41b9d2fa5bb19 from memory into f13
la x2, scratch
li x3, 0x687a16f7cfb2df57 # load x3 with value 0x687a16f7cfb2df57
sw x3, 0(x2) # store 0x687a16f7cfb2df57 in memory
flh f16, 0(x2) # load 0x687a16f7cfb2df57 from memory into f16
fmul.h f30, f13, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xafeeecd9d53ace33 # load x3 with value 0xafeeecd9d53ace33
sw x3, 0(x2) # store 0xafeeecd9d53ace33 in memory
flh f26, 0(x2) # load 0xafeeecd9d53ace33 from memory into f26
la x2, scratch
li x3, 0x949c741def70c3f2 # load x3 with value 0x949c741def70c3f2
sw x3, 0(x2) # store 0x949c741def70c3f2 in memory
flh f17, 0(x2) # load 0x949c741def70c3f2 from memory into f17
fmul.h f14, f26, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x647aac46eaeb4d56 # load x3 with value 0x647aac46eaeb4d56
sw x3, 0(x2) # store 0x647aac46eaeb4d56 in memory
flh f19, 0(x2) # load 0x647aac46eaeb4d56 from memory into f19
la x2, scratch
li x3, 0xeb4d98c6a24ac01b # load x3 with value 0xeb4d98c6a24ac01b
sw x3, 0(x2) # store 0xeb4d98c6a24ac01b in memory
flh f18, 0(x2) # load 0xeb4d98c6a24ac01b from memory into f18
fmul.h f14, f19, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x812d1c786d799fd7 # load x3 with value 0x812d1c786d799fd7
sw x3, 0(x2) # store 0x812d1c786d799fd7 in memory
flh f27, 0(x2) # load 0x812d1c786d799fd7 from memory into f27
la x2, scratch
li x3, 0x42548e146578bea4 # load x3 with value 0x42548e146578bea4
sw x3, 0(x2) # store 0x42548e146578bea4 in memory
flh f19, 0(x2) # load 0x42548e146578bea4 from memory into f19
fmul.h f13, f27, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x3a2902777449888a # load x3 with value 0x3a2902777449888a
sw x3, 0(x2) # store 0x3a2902777449888a in memory
flh f16, 0(x2) # load 0x3a2902777449888a from memory into f16
la x2, scratch
li x3, 0x3ceeb3b189b2cb09 # load x3 with value 0x3ceeb3b189b2cb09
sw x3, 0(x2) # store 0x3ceeb3b189b2cb09 in memory
flh f20, 0(x2) # load 0x3ceeb3b189b2cb09 from memory into f20
fmul.h f18, f16, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xb2e3c317b864bde2 # load x3 with value 0xb2e3c317b864bde2
sw x3, 0(x2) # store 0xb2e3c317b864bde2 in memory
flh f13, 0(x2) # load 0xb2e3c317b864bde2 from memory into f13
la x2, scratch
li x3, 0xc4ef98bb3ecf5cc6 # load x3 with value 0xc4ef98bb3ecf5cc6
sw x3, 0(x2) # store 0xc4ef98bb3ecf5cc6 in memory
flh f21, 0(x2) # load 0xc4ef98bb3ecf5cc6 from memory into f21
fmul.h f12, f13, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x1cf88cb61798ca22 # load x3 with value 0x1cf88cb61798ca22
sw x3, 0(x2) # store 0x1cf88cb61798ca22 in memory
flh f17, 0(x2) # load 0x1cf88cb61798ca22 from memory into f17
la x2, scratch
li x3, 0xf6e1fd235e3549a8 # load x3 with value 0xf6e1fd235e3549a8
sw x3, 0(x2) # store 0xf6e1fd235e3549a8 in memory
flh f22, 0(x2) # load 0xf6e1fd235e3549a8 from memory into f22
fmul.h f13, f17, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xc19349c01895432e # load x3 with value 0xc19349c01895432e
sw x3, 0(x2) # store 0xc19349c01895432e in memory
flh f17, 0(x2) # load 0xc19349c01895432e from memory into f17
la x2, scratch
li x3, 0xd6693c68a8b03898 # load x3 with value 0xd6693c68a8b03898
sw x3, 0(x2) # store 0xd6693c68a8b03898 in memory
flh f23, 0(x2) # load 0xd6693c68a8b03898 from memory into f23
fmul.h f20, f17, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x9200ef13488a9372 # load x3 with value 0x9200ef13488a9372
sw x3, 0(x2) # store 0x9200ef13488a9372 in memory
flh f12, 0(x2) # load 0x9200ef13488a9372 from memory into f12
la x2, scratch
li x3, 0xcd62e80e575524c4 # load x3 with value 0xcd62e80e575524c4
sw x3, 0(x2) # store 0xcd62e80e575524c4 in memory
flh f24, 0(x2) # load 0xcd62e80e575524c4 from memory into f24
fmul.h f23, f12, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xa6642feb3bb0cbfc # load x3 with value 0xa6642feb3bb0cbfc
sw x3, 0(x2) # store 0xa6642feb3bb0cbfc in memory
flh f1, 0(x2) # load 0xa6642feb3bb0cbfc from memory into f1
la x2, scratch
li x3, 0x6804160816ca646a # load x3 with value 0x6804160816ca646a
sw x3, 0(x2) # store 0x6804160816ca646a in memory
flh f25, 0(x2) # load 0x6804160816ca646a from memory into f25
fmul.h f26, f1, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x96c2c7ab3e1cf742 # load x3 with value 0x96c2c7ab3e1cf742
sw x3, 0(x2) # store 0x96c2c7ab3e1cf742 in memory
flh f22, 0(x2) # load 0x96c2c7ab3e1cf742 from memory into f22
la x2, scratch
li x3, 0xf8b73644d30ab007 # load x3 with value 0xf8b73644d30ab007
sw x3, 0(x2) # store 0xf8b73644d30ab007 in memory
flh f26, 0(x2) # load 0xf8b73644d30ab007 from memory into f26
fmul.h f30, f22, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x99cab5044e2746da # load x3 with value 0x99cab5044e2746da
sw x3, 0(x2) # store 0x99cab5044e2746da in memory
flh f22, 0(x2) # load 0x99cab5044e2746da from memory into f22
la x2, scratch
li x3, 0x199a5ca3a3faac65 # load x3 with value 0x199a5ca3a3faac65
sw x3, 0(x2) # store 0x199a5ca3a3faac65 in memory
flh f27, 0(x2) # load 0x199a5ca3a3faac65 from memory into f27
fmul.h f10, f22, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xb03b691358f38fbb # load x3 with value 0xb03b691358f38fbb
sw x3, 0(x2) # store 0xb03b691358f38fbb in memory
flh f21, 0(x2) # load 0xb03b691358f38fbb from memory into f21
la x2, scratch
li x3, 0x33b51dc352066eae # load x3 with value 0x33b51dc352066eae
sw x3, 0(x2) # store 0x33b51dc352066eae in memory
flh f28, 0(x2) # load 0x33b51dc352066eae from memory into f28
fmul.h f31, f21, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xc864b9975b4030e3 # load x3 with value 0xc864b9975b4030e3
sw x3, 0(x2) # store 0xc864b9975b4030e3 in memory
flh f12, 0(x2) # load 0xc864b9975b4030e3 from memory into f12
la x2, scratch
li x3, 0xd310ce56847c0f6e # load x3 with value 0xd310ce56847c0f6e
sw x3, 0(x2) # store 0xd310ce56847c0f6e in memory
flh f29, 0(x2) # load 0xd310ce56847c0f6e from memory into f29
fmul.h f11, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x74f0cd8c24054912 # load x3 with value 0x74f0cd8c24054912
sw x3, 0(x2) # store 0x74f0cd8c24054912 in memory
flh f15, 0(x2) # load 0x74f0cd8c24054912 from memory into f15
la x2, scratch
li x3, 0x38db2bfaf62a7a26 # load x3 with value 0x38db2bfaf62a7a26
sw x3, 0(x2) # store 0x38db2bfaf62a7a26 in memory
flh f30, 0(x2) # load 0x38db2bfaf62a7a26 from memory into f30
fmul.h f19, f15, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xb2642ab8afe85cab # load x3 with value 0xb2642ab8afe85cab
sw x3, 0(x2) # store 0xb2642ab8afe85cab in memory
flh f17, 0(x2) # load 0xb2642ab8afe85cab from memory into f17
la x2, scratch
li x3, 0x509893c0cf377c1c # load x3 with value 0x509893c0cf377c1c
sw x3, 0(x2) # store 0x509893c0cf377c1c in memory
flh f31, 0(x2) # load 0x509893c0cf377c1c from memory into f31
fmul.h f11, f17, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xe84cf79038604bad # load x3 with value 0xe84cf79038604bad
sw x3, 0(x2) # store 0xe84cf79038604bad in memory
flh f25, 0(x2) # load 0xe84cf79038604bad from memory into f25
la x2, scratch
li x3, 0xa83b5dccfd805850 # load x3 with value 0xa83b5dccfd805850
sw x3, 0(x2) # store 0xa83b5dccfd805850 in memory
flh f9, 0(x2) # load 0xa83b5dccfd805850 from memory into f9
fmul.h f0, f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x1baaa119522a1ea9 # load x3 with value 0x1baaa119522a1ea9
sw x3, 0(x2) # store 0x1baaa119522a1ea9 in memory
flh f20, 0(x2) # load 0x1baaa119522a1ea9 from memory into f20
la x2, scratch
li x3, 0xa8e9cab7da692d8 # load x3 with value 0xa8e9cab7da692d8
sw x3, 0(x2) # store 0xa8e9cab7da692d8 in memory
flh f14, 0(x2) # load 0xa8e9cab7da692d8 from memory into f14
fmul.h f1, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0xff010508a0a8f83f # load x3 with value 0xff010508a0a8f83f
sw x3, 0(x2) # store 0xff010508a0a8f83f in memory
flh f18, 0(x2) # load 0xff010508a0a8f83f from memory into f18
la x2, scratch
li x3, 0x627e97ba22087005 # load x3 with value 0x627e97ba22087005
sw x3, 0(x2) # store 0x627e97ba22087005 in memory
flh f9, 0(x2) # load 0x627e97ba22087005 from memory into f9
fmul.h f2, f18, f9 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0xbbd885d609f345bf # load x3 with value 0xbbd885d609f345bf
sw x3, 0(x2) # store 0xbbd885d609f345bf in memory
flh f6, 0(x2) # load 0xbbd885d609f345bf from memory into f6
la x2, scratch
li x3, 0xb2649a42753f655b # load x3 with value 0xb2649a42753f655b
sw x3, 0(x2) # store 0xb2649a42753f655b in memory
flh f12, 0(x2) # load 0xb2649a42753f655b from memory into f12
fmul.h f3, f6, f12 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc36097835b0b97d7 # load x3 with value 0xc36097835b0b97d7
sw x3, 0(x2) # store 0xc36097835b0b97d7 in memory
flh f13, 0(x2) # load 0xc36097835b0b97d7 from memory into f13
la x2, scratch
li x3, 0xd78f9afb3f0c723f # load x3 with value 0xd78f9afb3f0c723f
sw x3, 0(x2) # store 0xd78f9afb3f0c723f in memory
flh f27, 0(x2) # load 0xd78f9afb3f0c723f from memory into f27
fmul.h f4, f13, f27 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdae68443ee482f72 # load x3 with value 0xdae68443ee482f72
sw x3, 0(x2) # store 0xdae68443ee482f72 in memory
flh f28, 0(x2) # load 0xdae68443ee482f72 from memory into f28
la x2, scratch
li x3, 0xe7d3fa62a53c09df # load x3 with value 0xe7d3fa62a53c09df
sw x3, 0(x2) # store 0xe7d3fa62a53c09df in memory
flh f4, 0(x2) # load 0xe7d3fa62a53c09df from memory into f4
fmul.h f5, f28, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x16f248159a470c49 # load x3 with value 0x16f248159a470c49
sw x3, 0(x2) # store 0x16f248159a470c49 in memory
flh f27, 0(x2) # load 0x16f248159a470c49 from memory into f27
la x2, scratch
li x3, 0x60c06d4fad5e0fc6 # load x3 with value 0x60c06d4fad5e0fc6
sw x3, 0(x2) # store 0x60c06d4fad5e0fc6 in memory
flh f29, 0(x2) # load 0x60c06d4fad5e0fc6 from memory into f29
fmul.h f6, f27, f29 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x537fd4359fb1060f # load x3 with value 0x537fd4359fb1060f
sw x3, 0(x2) # store 0x537fd4359fb1060f in memory
flh f25, 0(x2) # load 0x537fd4359fb1060f from memory into f25
la x2, scratch
li x3, 0xa594178014ef1c24 # load x3 with value 0xa594178014ef1c24
sw x3, 0(x2) # store 0xa594178014ef1c24 in memory
flh f5, 0(x2) # load 0xa594178014ef1c24 from memory into f5
fmul.h f7, f25, f5 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x7fa109e8c31891b6 # load x3 with value 0x7fa109e8c31891b6
sw x3, 0(x2) # store 0x7fa109e8c31891b6 in memory
flh f26, 0(x2) # load 0x7fa109e8c31891b6 from memory into f26
la x2, scratch
li x3, 0x74a01fb5d098eaa7 # load x3 with value 0x74a01fb5d098eaa7
sw x3, 0(x2) # store 0x74a01fb5d098eaa7 in memory
flh f14, 0(x2) # load 0x74a01fb5d098eaa7 from memory into f14
fmul.h f8, f26, f14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0xf5f4f494402d249f # load x3 with value 0xf5f4f494402d249f
sw x3, 0(x2) # store 0xf5f4f494402d249f in memory
flh f22, 0(x2) # load 0xf5f4f494402d249f from memory into f22
la x2, scratch
li x3, 0x23504bf54c13040b # load x3 with value 0x23504bf54c13040b
sw x3, 0(x2) # store 0x23504bf54c13040b in memory
flh f1, 0(x2) # load 0x23504bf54c13040b from memory into f1
fmul.h f9, f22, f1 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0x7becffa8aece8643 # load x3 with value 0x7becffa8aece8643
sw x3, 0(x2) # store 0x7becffa8aece8643 in memory
flh f10, 0(x2) # load 0x7becffa8aece8643 from memory into f10
la x2, scratch
li x3, 0x5ba1461dda83f06f # load x3 with value 0x5ba1461dda83f06f
sw x3, 0(x2) # store 0x5ba1461dda83f06f in memory
flh f8, 0(x2) # load 0x5ba1461dda83f06f from memory into f8
fmul.h f10, f10, f8 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0x1830498f16131a8 # load x3 with value 0x1830498f16131a8
sw x3, 0(x2) # store 0x1830498f16131a8 in memory
flh f10, 0(x2) # load 0x1830498f16131a8 from memory into f10
la x2, scratch
li x3, 0xfedf8a234809dd81 # load x3 with value 0xfedf8a234809dd81
sw x3, 0(x2) # store 0xfedf8a234809dd81 in memory
flh f15, 0(x2) # load 0xfedf8a234809dd81 from memory into f15
fmul.h f11, f10, f15 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0x8a40cecfc472b0bd # load x3 with value 0x8a40cecfc472b0bd
sw x3, 0(x2) # store 0x8a40cecfc472b0bd in memory
flh f20, 0(x2) # load 0x8a40cecfc472b0bd from memory into f20
la x2, scratch
li x3, 0x95acaa923d55a021 # load x3 with value 0x95acaa923d55a021
sw x3, 0(x2) # store 0x95acaa923d55a021 in memory
flh f31, 0(x2) # load 0x95acaa923d55a021 from memory into f31
fmul.h f12, f20, f31 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x72c262367f4d6266 # load x3 with value 0x72c262367f4d6266
sw x3, 0(x2) # store 0x72c262367f4d6266 in memory
flh f20, 0(x2) # load 0x72c262367f4d6266 from memory into f20
la x2, scratch
li x3, 0xb7a0a3753581299f # load x3 with value 0xb7a0a3753581299f
sw x3, 0(x2) # store 0xb7a0a3753581299f in memory
flh f13, 0(x2) # load 0xb7a0a3753581299f from memory into f13
fmul.h f13, f20, f13 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0xa2e0fc3b7d0b0f36 # load x3 with value 0xa2e0fc3b7d0b0f36
sw x3, 0(x2) # store 0xa2e0fc3b7d0b0f36 in memory
flh f13, 0(x2) # load 0xa2e0fc3b7d0b0f36 from memory into f13
la x2, scratch
li x3, 0xc77ffbd446b6972e # load x3 with value 0xc77ffbd446b6972e
sw x3, 0(x2) # store 0xc77ffbd446b6972e in memory
flh f3, 0(x2) # load 0xc77ffbd446b6972e from memory into f3
fmul.h f14, f13, f3 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0xacff750afff27a3b # load x3 with value 0xacff750afff27a3b
sw x3, 0(x2) # store 0xacff750afff27a3b in memory
flh f10, 0(x2) # load 0xacff750afff27a3b from memory into f10
la x2, scratch
li x3, 0x43447aeccc0b0d24 # load x3 with value 0x43447aeccc0b0d24
sw x3, 0(x2) # store 0x43447aeccc0b0d24 in memory
flh f21, 0(x2) # load 0x43447aeccc0b0d24 from memory into f21
fmul.h f15, f10, f21 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xe62e7b5e760063f4 # load x3 with value 0xe62e7b5e760063f4
sw x3, 0(x2) # store 0xe62e7b5e760063f4 in memory
flh f14, 0(x2) # load 0xe62e7b5e760063f4 from memory into f14
la x2, scratch
li x3, 0x658f176daa1343f7 # load x3 with value 0x658f176daa1343f7
sw x3, 0(x2) # store 0x658f176daa1343f7 in memory
flh f1, 0(x2) # load 0x658f176daa1343f7 from memory into f1
fmul.h f16, f14, f1 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0xed7fe7ebb029680f # load x3 with value 0xed7fe7ebb029680f
sw x3, 0(x2) # store 0xed7fe7ebb029680f in memory
flh f30, 0(x2) # load 0xed7fe7ebb029680f from memory into f30
la x2, scratch
li x3, 0x1de3b997da06fa78 # load x3 with value 0x1de3b997da06fa78
sw x3, 0(x2) # store 0x1de3b997da06fa78 in memory
flh f12, 0(x2) # load 0x1de3b997da06fa78 from memory into f12
fmul.h f17, f30, f12 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x46286034b9f7a8e9 # load x3 with value 0x46286034b9f7a8e9
sw x3, 0(x2) # store 0x46286034b9f7a8e9 in memory
flh f6, 0(x2) # load 0x46286034b9f7a8e9 from memory into f6
la x2, scratch
li x3, 0x998260a58435b092 # load x3 with value 0x998260a58435b092
sw x3, 0(x2) # store 0x998260a58435b092 in memory
flh f18, 0(x2) # load 0x998260a58435b092 from memory into f18
fmul.h f18, f6, f18 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x3eddda0ac031f9ec # load x3 with value 0x3eddda0ac031f9ec
sw x3, 0(x2) # store 0x3eddda0ac031f9ec in memory
flh f21, 0(x2) # load 0x3eddda0ac031f9ec from memory into f21
la x2, scratch
li x3, 0x3bcf2375ee13f4a0 # load x3 with value 0x3bcf2375ee13f4a0
sw x3, 0(x2) # store 0x3bcf2375ee13f4a0 in memory
flh f3, 0(x2) # load 0x3bcf2375ee13f4a0 from memory into f3
fmul.h f19, f21, f3 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0xeb8388427da29fe9 # load x3 with value 0xeb8388427da29fe9
sw x3, 0(x2) # store 0xeb8388427da29fe9 in memory
flh f19, 0(x2) # load 0xeb8388427da29fe9 from memory into f19
la x2, scratch
li x3, 0x1e81ce934b39471d # load x3 with value 0x1e81ce934b39471d
sw x3, 0(x2) # store 0x1e81ce934b39471d in memory
flh f16, 0(x2) # load 0x1e81ce934b39471d from memory into f16
fmul.h f20, f19, f16 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x97df7d4a779bdccd # load x3 with value 0x97df7d4a779bdccd
sw x3, 0(x2) # store 0x97df7d4a779bdccd in memory
flh f24, 0(x2) # load 0x97df7d4a779bdccd from memory into f24
la x2, scratch
li x3, 0x499c75b3a64e6e2b # load x3 with value 0x499c75b3a64e6e2b
sw x3, 0(x2) # store 0x499c75b3a64e6e2b in memory
flh f8, 0(x2) # load 0x499c75b3a64e6e2b from memory into f8
fmul.h f21, f24, f8 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xea1a644badef4764 # load x3 with value 0xea1a644badef4764
sw x3, 0(x2) # store 0xea1a644badef4764 in memory
flh f1, 0(x2) # load 0xea1a644badef4764 from memory into f1
la x2, scratch
li x3, 0x77e589fcc22821f8 # load x3 with value 0x77e589fcc22821f8
sw x3, 0(x2) # store 0x77e589fcc22821f8 in memory
flh f11, 0(x2) # load 0x77e589fcc22821f8 from memory into f11
fmul.h f22, f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0x6616b499f43af7ee # load x3 with value 0x6616b499f43af7ee
sw x3, 0(x2) # store 0x6616b499f43af7ee in memory
flh f20, 0(x2) # load 0x6616b499f43af7ee from memory into f20
la x2, scratch
li x3, 0x87f88d6c24044b1c # load x3 with value 0x87f88d6c24044b1c
sw x3, 0(x2) # store 0x87f88d6c24044b1c in memory
flh f3, 0(x2) # load 0x87f88d6c24044b1c from memory into f3
fmul.h f23, f20, f3 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0x8814f307baadcdf4 # load x3 with value 0x8814f307baadcdf4
sw x3, 0(x2) # store 0x8814f307baadcdf4 in memory
flh f3, 0(x2) # load 0x8814f307baadcdf4 from memory into f3
la x2, scratch
li x3, 0x5fd3f97d965a0ecf # load x3 with value 0x5fd3f97d965a0ecf
sw x3, 0(x2) # store 0x5fd3f97d965a0ecf in memory
flh f23, 0(x2) # load 0x5fd3f97d965a0ecf from memory into f23
fmul.h f24, f3, f23 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x34f019432e77b49a # load x3 with value 0x34f019432e77b49a
sw x3, 0(x2) # store 0x34f019432e77b49a in memory
flh f28, 0(x2) # load 0x34f019432e77b49a from memory into f28
la x2, scratch
li x3, 0x353f33fc382e9dad # load x3 with value 0x353f33fc382e9dad
sw x3, 0(x2) # store 0x353f33fc382e9dad in memory
flh f15, 0(x2) # load 0x353f33fc382e9dad from memory into f15
fmul.h f25, f28, f15 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x9745531d43b73c41 # load x3 with value 0x9745531d43b73c41
sw x3, 0(x2) # store 0x9745531d43b73c41 in memory
flh f1, 0(x2) # load 0x9745531d43b73c41 from memory into f1
la x2, scratch
li x3, 0x157ad43181a875f5 # load x3 with value 0x157ad43181a875f5
sw x3, 0(x2) # store 0x157ad43181a875f5 in memory
flh f26, 0(x2) # load 0x157ad43181a875f5 from memory into f26
fmul.h f26, f1, f26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0xbbfa31c8840f2a90 # load x3 with value 0xbbfa31c8840f2a90
sw x3, 0(x2) # store 0xbbfa31c8840f2a90 in memory
flh f22, 0(x2) # load 0xbbfa31c8840f2a90 from memory into f22
la x2, scratch
li x3, 0x87b0b31d96397b83 # load x3 with value 0x87b0b31d96397b83
sw x3, 0(x2) # store 0x87b0b31d96397b83 in memory
flh f12, 0(x2) # load 0x87b0b31d96397b83 from memory into f12
fmul.h f27, f22, f12 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x90f8bc0de108349e # load x3 with value 0x90f8bc0de108349e
sw x3, 0(x2) # store 0x90f8bc0de108349e in memory
flh f3, 0(x2) # load 0x90f8bc0de108349e from memory into f3
la x2, scratch
li x3, 0x76b52b8b43588e38 # load x3 with value 0x76b52b8b43588e38
sw x3, 0(x2) # store 0x76b52b8b43588e38 in memory
flh f6, 0(x2) # load 0x76b52b8b43588e38 from memory into f6
fmul.h f28, f3, f6 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xa679d8d29e8b9187 # load x3 with value 0xa679d8d29e8b9187
sw x3, 0(x2) # store 0xa679d8d29e8b9187 in memory
flh f1, 0(x2) # load 0xa679d8d29e8b9187 from memory into f1
la x2, scratch
li x3, 0x2fcca2e5b4a8a35 # load x3 with value 0x2fcca2e5b4a8a35
sw x3, 0(x2) # store 0x2fcca2e5b4a8a35 in memory
flh f29, 0(x2) # load 0x2fcca2e5b4a8a35 from memory into f29
fmul.h f29, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0xa70f5dbcacec13d4 # load x3 with value 0xa70f5dbcacec13d4
sw x3, 0(x2) # store 0xa70f5dbcacec13d4 in memory
flh f5, 0(x2) # load 0xa70f5dbcacec13d4 from memory into f5
la x2, scratch
li x3, 0x1ec0b8b65087e9cd # load x3 with value 0x1ec0b8b65087e9cd
sw x3, 0(x2) # store 0x1ec0b8b65087e9cd in memory
flh f14, 0(x2) # load 0x1ec0b8b65087e9cd from memory into f14
fmul.h f30, f5, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x9fb1d827acf5afab # load x3 with value 0x9fb1d827acf5afab
sw x3, 0(x2) # store 0x9fb1d827acf5afab in memory
flh f6, 0(x2) # load 0x9fb1d827acf5afab from memory into f6
la x2, scratch
li x3, 0x9286d62af29bcf14 # load x3 with value 0x9286d62af29bcf14
sw x3, 0(x2) # store 0x9286d62af29bcf14 in memory
flh f10, 0(x2) # load 0x9286d62af29bcf14 from memory into f10
fmul.h f31, f6, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x8453bab444e30ea8 # load x3 with value 0x8453bab444e30ea8
sw x3, 0(x2) # store 0x8453bab444e30ea8 in memory
flh f10, 0(x2) # load 0x8453bab444e30ea8 from memory into f10
fmul.h f18, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
la x2, scratch
li x3, 0x23ba577542adf83e # load x3 with value 0x23ba577542adf83e
sw x3, 0(x2) # store 0x23ba577542adf83e in memory
flh f16, 0(x2) # load 0x23ba577542adf83e from memory into f16
fmul.h f12, f23, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0xbc17b0a721986f58 # load x3 with value 0xbc17b0a721986f58
sw x3, 0(x2) # store 0xbc17b0a721986f58 in memory
flh f18, 0(x2) # load 0xbc17b0a721986f58 from memory into f18
fmul.h f24, f31, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0xeb4dd3ce80427eb8 # load x3 with value 0xeb4dd3ce80427eb8
sw x3, 0(x2) # store 0xeb4dd3ce80427eb8 in memory
flh f2, 0(x2) # load 0xeb4dd3ce80427eb8 from memory into f2
fmul.h f25, f12, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x98815f530c9dcbc9 # load x3 with value 0x98815f530c9dcbc9
sw x3, 0(x2) # store 0x98815f530c9dcbc9 in memory
flh f14, 0(x2) # load 0x98815f530c9dcbc9 from memory into f14
fmul.h f19, f22, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0xa082b4134ee7e438 # load x3 with value 0xa082b4134ee7e438
sw x3, 0(x2) # store 0xa082b4134ee7e438 in memory
flh f13, 0(x2) # load 0xa082b4134ee7e438 from memory into f13
fmul.h f23, f27, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0xb0096bd60cf36fd4 # load x3 with value 0xb0096bd60cf36fd4
sw x3, 0(x2) # store 0xb0096bd60cf36fd4 in memory
flh f9, 0(x2) # load 0xb0096bd60cf36fd4 from memory into f9
fmul.h f12, f27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
la x2, scratch
li x3, 0xfdf6db6d171b037c # load x3 with value 0xfdf6db6d171b037c
sw x3, 0(x2) # store 0xfdf6db6d171b037c in memory
flh f27, 0(x2) # load 0xfdf6db6d171b037c from memory into f27
fmul.h f25, f10, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0xc40ae2c282bceb04 # load x3 with value 0xc40ae2c282bceb04
sw x3, 0(x2) # store 0xc40ae2c282bceb04 in memory
flh f6, 0(x2) # load 0xc40ae2c282bceb04 from memory into f6
fmul.h f19, f25, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
la x2, scratch
li x3, 0x3deb8cde6c31badf # load x3 with value 0x3deb8cde6c31badf
sw x3, 0(x2) # store 0x3deb8cde6c31badf in memory
flh f2, 0(x2) # load 0x3deb8cde6c31badf from memory into f2
fmul.h f16, f7, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
la x2, scratch
li x3, 0x9b8a835df3c352 # load x3 with value 0x9b8a835df3c352
sw x3, 0(x2) # store 0x9b8a835df3c352 in memory
flh f21, 0(x2) # load 0x9b8a835df3c352 from memory into f21
fmul.h f25, f16, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x6f8ea2feeb52dea4 # load x3 with value 0x6f8ea2feeb52dea4
sw x3, 0(x2) # store 0x6f8ea2feeb52dea4 in memory
flh f25, 0(x2) # load 0x6f8ea2feeb52dea4 from memory into f25
fmul.h f1, f31, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x382e493bf7aac510 # load x3 with value 0x382e493bf7aac510
sw x3, 0(x2) # store 0x382e493bf7aac510 in memory
flh f20, 0(x2) # load 0x382e493bf7aac510 from memory into f20
fmul.h f24, f28, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0xcb024278c5e5acd8 # load x3 with value 0xcb024278c5e5acd8
sw x3, 0(x2) # store 0xcb024278c5e5acd8 in memory
flh f6, 0(x2) # load 0xcb024278c5e5acd8 from memory into f6
fmul.h f18, f19, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
la x2, scratch
li x3, 0x87adc788968b34ea # load x3 with value 0x87adc788968b34ea
sw x3, 0(x2) # store 0x87adc788968b34ea in memory
flh f26, 0(x2) # load 0x87adc788968b34ea from memory into f26
fmul.h f16, f29, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x67d6b096ecf71be6 # load x3 with value 0x67d6b096ecf71be6
sw x3, 0(x2) # store 0x67d6b096ecf71be6 in memory
flh f20, 0(x2) # load 0x67d6b096ecf71be6 from memory into f20
fmul.h f14, f29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x8fdef60e9e50aa03 # load x3 with value 0x8fdef60e9e50aa03
sw x3, 0(x2) # store 0x8fdef60e9e50aa03 in memory
flh f30, 0(x2) # load 0x8fdef60e9e50aa03 from memory into f30
fmul.h f19, f29, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
la x2, scratch
li x3, 0x2b3dd405d72a7163 # load x3 with value 0x2b3dd405d72a7163
sw x3, 0(x2) # store 0x2b3dd405d72a7163 in memory
flh f25, 0(x2) # load 0x2b3dd405d72a7163 from memory into f25
fmul.h f19, f22, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
la x2, scratch
li x3, 0x3e3ad0004b26d87b # load x3 with value 0x3e3ad0004b26d87b
sw x3, 0(x2) # store 0x3e3ad0004b26d87b in memory
flh f2, 0(x2) # load 0x3e3ad0004b26d87b from memory into f2
fmul.h f15, f1, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0x3c146ae4bcb6e167 # load x3 with value 0x3c146ae4bcb6e167
sw x3, 0(x2) # store 0x3c146ae4bcb6e167 in memory
flh f13, 0(x2) # load 0x3c146ae4bcb6e167 from memory into f13
fmul.h f2, f31, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x2, scratch
li x3, 0x87aaf70d615c5918 # load x3 with value 0x87aaf70d615c5918
sw x3, 0(x2) # store 0x87aaf70d615c5918 in memory
flh f21, 0(x2) # load 0x87aaf70d615c5918 from memory into f21
fmul.h f23, f5, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x7a5c54250a226c1b # load x3 with value 0x7a5c54250a226c1b
sw x3, 0(x2) # store 0x7a5c54250a226c1b in memory
flh f15, 0(x2) # load 0x7a5c54250a226c1b from memory into f15
fmul.h f29, f28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
la x2, scratch
li x3, 0x2e3004d99c63b40 # load x3 with value 0x2e3004d99c63b40
sw x3, 0(x2) # store 0x2e3004d99c63b40 in memory
flh f28, 0(x2) # load 0x2e3004d99c63b40 from memory into f28
fmul.h f7, f10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0xe33739cb17f68d7e # load x3 with value 0xe33739cb17f68d7e
sw x3, 0(x2) # store 0xe33739cb17f68d7e in memory
flh f24, 0(x2) # load 0xe33739cb17f68d7e from memory into f24
fmul.h f11, f28, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
la x2, scratch
li x3, 0x221f6ca4da1aaabe # load x3 with value 0x221f6ca4da1aaabe
sw x3, 0(x2) # store 0x221f6ca4da1aaabe in memory
flh f21, 0(x2) # load 0x221f6ca4da1aaabe from memory into f21
fmul.h f19, f16, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
la x2, scratch
li x3, 0xdb3f449ee937fdca # load x3 with value 0xdb3f449ee937fdca
sw x3, 0(x2) # store 0xdb3f449ee937fdca in memory
flh f29, 0(x2) # load 0xdb3f449ee937fdca from memory into f29
fmul.h f1, f7, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0xf8994799d337bea6 # load x3 with value 0xf8994799d337bea6
sw x3, 0(x2) # store 0xf8994799d337bea6 in memory
flh f17, 0(x2) # load 0xf8994799d337bea6 from memory into f17
fmul.h f3, f11, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x884982e9f5043308 # load x3 with value 0x884982e9f5043308
sw x3, 0(x2) # store 0x884982e9f5043308 in memory
flh f6, 0(x2) # load 0x884982e9f5043308 from memory into f6
fmul.h f20, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x7e710fb04f9c883c # load x3 with value 0x7e710fb04f9c883c
sw x3, 0(x2) # store 0x7e710fb04f9c883c in memory
flh f24, 0(x2) # load 0x7e710fb04f9c883c from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f12, f24, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x235f5c1437b4c8ea # load x3 with value 0x235f5c1437b4c8ea
sw x3, 0(x2) # store 0x235f5c1437b4c8ea in memory
flh f9, 0(x2) # load 0x235f5c1437b4c8ea from memory into f9
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmul.h f16, f9, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x5b5f41d623d4d40e # load x3 with value 0x5b5f41d623d4d40e
sw x3, 0(x2) # store 0x5b5f41d623d4d40e in memory
flh f1, 0(x2) # load 0x5b5f41d623d4d40e from memory into f1
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f18, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x33f7192d8151a6f6 # load x3 with value 0x33f7192d8151a6f6
sw x3, 0(x2) # store 0x33f7192d8151a6f6 in memory
flh f14, 0(x2) # load 0x33f7192d8151a6f6 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmul.h f27, f14, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0xa702d4d5b74ba686 # load x3 with value 0xa702d4d5b74ba686
sw x3, 0(x2) # store 0xa702d4d5b74ba686 in memory
flh f6, 0(x2) # load 0xa702d4d5b74ba686 from memory into f6
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f22, f6, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x48d21c8815efdf08 # load x3 with value 0x48d21c8815efdf08
sw x3, 0(x2) # store 0x48d21c8815efdf08 in memory
flh f16, 0(x2) # load 0x48d21c8815efdf08 from memory into f16
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmul.h f2, f16, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0xec87e0c6de269074 # load x3 with value 0xec87e0c6de269074
sw x3, 0(x2) # store 0xec87e0c6de269074 in memory
flh f26, 0(x2) # load 0xec87e0c6de269074 from memory into f26
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f1, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x574dc1eeeb79e619 # load x3 with value 0x574dc1eeeb79e619
sw x3, 0(x2) # store 0x574dc1eeeb79e619 in memory
flh f29, 0(x2) # load 0x574dc1eeeb79e619 from memory into f29
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fmul.h f9, f29, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0xb8db5360001b6d19 # load x3 with value 0xb8db5360001b6d19
sw x3, 0(x2) # store 0xb8db5360001b6d19 in memory
flh f28, 0(x2) # load 0xb8db5360001b6d19 from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmul.h f16, f28, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0xe62a91af76dcd145 # load x3 with value 0xe62a91af76dcd145
sw x3, 0(x2) # store 0xe62a91af76dcd145 in memory
flh f31, 0(x2) # load 0xe62a91af76dcd145 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fmul.h f1, f31, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x9bc6bca48104226c # load x3 with value 0x9bc6bca48104226c
sw x3, 0(x2) # store 0x9bc6bca48104226c in memory
flh f23, 0(x2) # load 0x9bc6bca48104226c from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmul.h f7, f23, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0xd332730242d9fdef # load x3 with value 0xd332730242d9fdef
sw x3, 0(x2) # store 0xd332730242d9fdef in memory
flh f14, 0(x2) # load 0xd332730242d9fdef from memory into f14
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmul.h f10, f14, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x85ac6ef0b2a91cbc # load x3 with value 0x85ac6ef0b2a91cbc
sw x3, 0(x2) # store 0x85ac6ef0b2a91cbc in memory
flh f14, 0(x2) # load 0x85ac6ef0b2a91cbc from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmul.h f29, f14, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0xcf65ae1961264c4a # load x3 with value 0xcf65ae1961264c4a
sw x3, 0(x2) # store 0xcf65ae1961264c4a in memory
flh f1, 0(x2) # load 0xcf65ae1961264c4a from memory into f1
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fmul.h f19, f1, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x845e6054c4bc94a5 # load x3 with value 0x845e6054c4bc94a5
sw x3, 0(x2) # store 0x845e6054c4bc94a5 in memory
flh f23, 0(x2) # load 0x845e6054c4bc94a5 from memory into f23
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f1, f23, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x11daaf886111895 # load x3 with value 0x11daaf886111895
sw x3, 0(x2) # store 0x11daaf886111895 in memory
flh f19, 0(x2) # load 0x11daaf886111895 from memory into f19
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmul.h f5, f19, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x2b12fbb3ec6556a4 # load x3 with value 0x2b12fbb3ec6556a4
sw x3, 0(x2) # store 0x2b12fbb3ec6556a4 in memory
flh f24, 0(x2) # load 0x2b12fbb3ec6556a4 from memory into f24
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f9, f24, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x54d4f134bf9c38c3 # load x3 with value 0x54d4f134bf9c38c3
sw x3, 0(x2) # store 0x54d4f134bf9c38c3 in memory
flh f12, 0(x2) # load 0x54d4f134bf9c38c3 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmul.h f30, f12, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x511c6bf999ddec54 # load x3 with value 0x511c6bf999ddec54
sw x3, 0(x2) # store 0x511c6bf999ddec54 in memory
flh f22, 0(x2) # load 0x511c6bf999ddec54 from memory into f22
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fmul.h f13, f22, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x2b96b4a252bbe469 # load x3 with value 0x2b96b4a252bbe469
sw x3, 0(x2) # store 0x2b96b4a252bbe469 in memory
flh f25, 0(x2) # load 0x2b96b4a252bbe469 from memory into f25
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmul.h f23, f25, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0xa0110bcd258c7e91 # load x3 with value 0xa0110bcd258c7e91
sw x3, 0(x2) # store 0xa0110bcd258c7e91 in memory
flh f2, 0(x2) # load 0xa0110bcd258c7e91 from memory into f2
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmul.h f22, f2, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x6e7d19db9455c0bc # load x3 with value 0x6e7d19db9455c0bc
sw x3, 0(x2) # store 0x6e7d19db9455c0bc in memory
flh f27, 0(x2) # load 0x6e7d19db9455c0bc from memory into f27
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmul.h f30, f27, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0xf4d269643e604e6a # load x3 with value 0xf4d269643e604e6a
sw x3, 0(x2) # store 0xf4d269643e604e6a in memory
flh f10, 0(x2) # load 0xf4d269643e604e6a from memory into f10
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fmul.h f15, f10, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x139ab96cdeb21f93 # load x3 with value 0x139ab96cdeb21f93
sw x3, 0(x2) # store 0x139ab96cdeb21f93 in memory
flh f23, 0(x2) # load 0x139ab96cdeb21f93 from memory into f23
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f14, f23, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x77d971dbb1bd08b6 # load x3 with value 0x77d971dbb1bd08b6
sw x3, 0(x2) # store 0x77d971dbb1bd08b6 in memory
flh f29, 0(x2) # load 0x77d971dbb1bd08b6 from memory into f29
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmul.h f7, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0xadcb26b752fa7ab # load x3 with value 0xadcb26b752fa7ab
sw x3, 0(x2) # store 0xadcb26b752fa7ab in memory
flh f25, 0(x2) # load 0xadcb26b752fa7ab from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fmul.h f17, f25, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0xf70f73ea6e0d939e # load x3 with value 0xf70f73ea6e0d939e
sw x3, 0(x2) # store 0xf70f73ea6e0d939e in memory
flh f16, 0(x2) # load 0xf70f73ea6e0d939e from memory into f16
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmul.h f11, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x306bbcf34895369 # load x3 with value 0x306bbcf34895369
sw x3, 0(x2) # store 0x306bbcf34895369 in memory
flh f1, 0(x2) # load 0x306bbcf34895369 from memory into f1
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmul.h f6, f1, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x6493a866c77002a4 # load x3 with value 0x6493a866c77002a4
sw x3, 0(x2) # store 0x6493a866c77002a4 in memory
flh f0, 0(x2) # load 0x6493a866c77002a4 from memory into f0
la x2, scratch
li x3, 0x582d0d25a89b7043 # load x3 with value 0x582d0d25a89b7043
sw x3, 0(x2) # store 0x582d0d25a89b7043 in memory
flh f26, 0(x2) # load 0x582d0d25a89b7043 from memory into f26
fmul.h f0, f0, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0x83f7c6399e649648 # load x3 with value 0x83f7c6399e649648
sw x3, 0(x2) # store 0x83f7c6399e649648 in memory
flh f1, 0(x2) # load 0x83f7c6399e649648 from memory into f1
la x2, scratch
li x3, 0x829943b5e0605c9d # load x3 with value 0x829943b5e0605c9d
sw x3, 0(x2) # store 0x829943b5e0605c9d in memory
flh f5, 0(x2) # load 0x829943b5e0605c9d from memory into f5
fmul.h f1, f1, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xf68d109b91cfae06 # load x3 with value 0xf68d109b91cfae06
sw x3, 0(x2) # store 0xf68d109b91cfae06 in memory
flh f2, 0(x2) # load 0xf68d109b91cfae06 from memory into f2
la x2, scratch
li x3, 0xb3582adf676fed55 # load x3 with value 0xb3582adf676fed55
sw x3, 0(x2) # store 0xb3582adf676fed55 in memory
flh f10, 0(x2) # load 0xb3582adf676fed55 from memory into f10
fmul.h f2, f2, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x5381213bf56c0867 # load x3 with value 0x5381213bf56c0867
sw x3, 0(x2) # store 0x5381213bf56c0867 in memory
flh f3, 0(x2) # load 0x5381213bf56c0867 from memory into f3
la x2, scratch
li x3, 0xba665e72d0beca37 # load x3 with value 0xba665e72d0beca37
sw x3, 0(x2) # store 0xba665e72d0beca37 in memory
flh f6, 0(x2) # load 0xba665e72d0beca37 from memory into f6
fmul.h f3, f3, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7892294995d9af9d # load x3 with value 0x7892294995d9af9d
sw x3, 0(x2) # store 0x7892294995d9af9d in memory
flh f4, 0(x2) # load 0x7892294995d9af9d from memory into f4
la x2, scratch
li x3, 0x13b1cee6cde1af5c # load x3 with value 0x13b1cee6cde1af5c
sw x3, 0(x2) # store 0x13b1cee6cde1af5c in memory
flh f11, 0(x2) # load 0x13b1cee6cde1af5c from memory into f11
fmul.h f4, f4, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9badbf6492dc4ba3 # load x3 with value 0x9badbf6492dc4ba3
sw x3, 0(x2) # store 0x9badbf6492dc4ba3 in memory
flh f5, 0(x2) # load 0x9badbf6492dc4ba3 from memory into f5
la x2, scratch
li x3, 0x373a7e2fde124971 # load x3 with value 0x373a7e2fde124971
sw x3, 0(x2) # store 0x373a7e2fde124971 in memory
flh f14, 0(x2) # load 0x373a7e2fde124971 from memory into f14
fmul.h f5, f5, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6d48351cfe808761 # load x3 with value 0x6d48351cfe808761
sw x3, 0(x2) # store 0x6d48351cfe808761 in memory
flh f6, 0(x2) # load 0x6d48351cfe808761 from memory into f6
la x2, scratch
li x3, 0xd3ac25d4fce17d79 # load x3 with value 0xd3ac25d4fce17d79
sw x3, 0(x2) # store 0xd3ac25d4fce17d79 in memory
flh f25, 0(x2) # load 0xd3ac25d4fce17d79 from memory into f25
fmul.h f6, f6, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x43f59bad78eb5b19 # load x3 with value 0x43f59bad78eb5b19
sw x3, 0(x2) # store 0x43f59bad78eb5b19 in memory
flh f7, 0(x2) # load 0x43f59bad78eb5b19 from memory into f7
la x2, scratch
li x3, 0x1a507ef98d87730a # load x3 with value 0x1a507ef98d87730a
sw x3, 0(x2) # store 0x1a507ef98d87730a in memory
flh f15, 0(x2) # load 0x1a507ef98d87730a from memory into f15
fmul.h f7, f7, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0xdf2413aa710e1564 # load x3 with value 0xdf2413aa710e1564
sw x3, 0(x2) # store 0xdf2413aa710e1564 in memory
flh f8, 0(x2) # load 0xdf2413aa710e1564 from memory into f8
la x2, scratch
li x3, 0x4ad78b2c72eb5a29 # load x3 with value 0x4ad78b2c72eb5a29
sw x3, 0(x2) # store 0x4ad78b2c72eb5a29 in memory
flh f16, 0(x2) # load 0x4ad78b2c72eb5a29 from memory into f16
fmul.h f8, f8, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0x75e3466ef874b16b # load x3 with value 0x75e3466ef874b16b
sw x3, 0(x2) # store 0x75e3466ef874b16b in memory
flh f9, 0(x2) # load 0x75e3466ef874b16b from memory into f9
la x2, scratch
li x3, 0xeaf77725d8eed4aa # load x3 with value 0xeaf77725d8eed4aa
sw x3, 0(x2) # store 0xeaf77725d8eed4aa in memory
flh f9, 0(x2) # load 0xeaf77725d8eed4aa from memory into f9
fmul.h f9, f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0x485cd5758018905f # load x3 with value 0x485cd5758018905f
sw x3, 0(x2) # store 0x485cd5758018905f in memory
flh f10, 0(x2) # load 0x485cd5758018905f from memory into f10
la x2, scratch
li x3, 0xcdffbb188992a0cc # load x3 with value 0xcdffbb188992a0cc
sw x3, 0(x2) # store 0xcdffbb188992a0cc in memory
flh f12, 0(x2) # load 0xcdffbb188992a0cc from memory into f12
fmul.h f10, f10, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0xca82a68bdc1f2440 # load x3 with value 0xca82a68bdc1f2440
sw x3, 0(x2) # store 0xca82a68bdc1f2440 in memory
flh f11, 0(x2) # load 0xca82a68bdc1f2440 from memory into f11
la x2, scratch
li x3, 0xbbc96cbdf7a44e39 # load x3 with value 0xbbc96cbdf7a44e39
sw x3, 0(x2) # store 0xbbc96cbdf7a44e39 in memory
flh f3, 0(x2) # load 0xbbc96cbdf7a44e39 from memory into f3
fmul.h f11, f11, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0x27600f935ef0fe1c # load x3 with value 0x27600f935ef0fe1c
sw x3, 0(x2) # store 0x27600f935ef0fe1c in memory
flh f12, 0(x2) # load 0x27600f935ef0fe1c from memory into f12
la x2, scratch
li x3, 0x4235dac44110761c # load x3 with value 0x4235dac44110761c
sw x3, 0(x2) # store 0x4235dac44110761c in memory
flh f7, 0(x2) # load 0x4235dac44110761c from memory into f7
fmul.h f12, f12, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xb19335f3d0fb4673 # load x3 with value 0xb19335f3d0fb4673
sw x3, 0(x2) # store 0xb19335f3d0fb4673 in memory
flh f13, 0(x2) # load 0xb19335f3d0fb4673 from memory into f13
la x2, scratch
li x3, 0x873398b26e3438f7 # load x3 with value 0x873398b26e3438f7
sw x3, 0(x2) # store 0x873398b26e3438f7 in memory
flh f16, 0(x2) # load 0x873398b26e3438f7 from memory into f16
fmul.h f13, f13, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x91ec607b6affd916 # load x3 with value 0x91ec607b6affd916
sw x3, 0(x2) # store 0x91ec607b6affd916 in memory
flh f14, 0(x2) # load 0x91ec607b6affd916 from memory into f14
la x2, scratch
li x3, 0x8d3a60cc79b29455 # load x3 with value 0x8d3a60cc79b29455
sw x3, 0(x2) # store 0x8d3a60cc79b29455 in memory
flh f12, 0(x2) # load 0x8d3a60cc79b29455 from memory into f12
fmul.h f14, f14, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0x698a8d9281f5f76b # load x3 with value 0x698a8d9281f5f76b
sw x3, 0(x2) # store 0x698a8d9281f5f76b in memory
flh f15, 0(x2) # load 0x698a8d9281f5f76b from memory into f15
la x2, scratch
li x3, 0x56f595a6b4cceb38 # load x3 with value 0x56f595a6b4cceb38
sw x3, 0(x2) # store 0x56f595a6b4cceb38 in memory
flh f1, 0(x2) # load 0x56f595a6b4cceb38 from memory into f1
fmul.h f15, f15, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x2045f210cab080ad # load x3 with value 0x2045f210cab080ad
sw x3, 0(x2) # store 0x2045f210cab080ad in memory
flh f16, 0(x2) # load 0x2045f210cab080ad from memory into f16
la x2, scratch
li x3, 0xede6bc27d10a5bdf # load x3 with value 0xede6bc27d10a5bdf
sw x3, 0(x2) # store 0xede6bc27d10a5bdf in memory
flh f31, 0(x2) # load 0xede6bc27d10a5bdf from memory into f31
fmul.h f16, f16, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0x30944b12038c562a # load x3 with value 0x30944b12038c562a
sw x3, 0(x2) # store 0x30944b12038c562a in memory
flh f17, 0(x2) # load 0x30944b12038c562a from memory into f17
la x2, scratch
li x3, 0x19deec197b7a5ee # load x3 with value 0x19deec197b7a5ee
sw x3, 0(x2) # store 0x19deec197b7a5ee in memory
flh f27, 0(x2) # load 0x19deec197b7a5ee from memory into f27
fmul.h f17, f17, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0xfd90f4ddb7ce1588 # load x3 with value 0xfd90f4ddb7ce1588
sw x3, 0(x2) # store 0xfd90f4ddb7ce1588 in memory
flh f18, 0(x2) # load 0xfd90f4ddb7ce1588 from memory into f18
la x2, scratch
li x3, 0x7fd3aef120566939 # load x3 with value 0x7fd3aef120566939
sw x3, 0(x2) # store 0x7fd3aef120566939 in memory
flh f3, 0(x2) # load 0x7fd3aef120566939 from memory into f3
fmul.h f18, f18, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xd7db6a960a3b2d14 # load x3 with value 0xd7db6a960a3b2d14
sw x3, 0(x2) # store 0xd7db6a960a3b2d14 in memory
flh f19, 0(x2) # load 0xd7db6a960a3b2d14 from memory into f19
la x2, scratch
li x3, 0xdb8b6d9f52ca73ee # load x3 with value 0xdb8b6d9f52ca73ee
sw x3, 0(x2) # store 0xdb8b6d9f52ca73ee in memory
flh f16, 0(x2) # load 0xdb8b6d9f52ca73ee from memory into f16
fmul.h f19, f19, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x5569f6f5c22d102e # load x3 with value 0x5569f6f5c22d102e
sw x3, 0(x2) # store 0x5569f6f5c22d102e in memory
flh f20, 0(x2) # load 0x5569f6f5c22d102e from memory into f20
la x2, scratch
li x3, 0x60cf4941591bd8f6 # load x3 with value 0x60cf4941591bd8f6
sw x3, 0(x2) # store 0x60cf4941591bd8f6 in memory
flh f20, 0(x2) # load 0x60cf4941591bd8f6 from memory into f20
fmul.h f20, f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x3461cff7d5ccb7ec # load x3 with value 0x3461cff7d5ccb7ec
sw x3, 0(x2) # store 0x3461cff7d5ccb7ec in memory
flh f21, 0(x2) # load 0x3461cff7d5ccb7ec from memory into f21
la x2, scratch
li x3, 0x3e981220b8576ea5 # load x3 with value 0x3e981220b8576ea5
sw x3, 0(x2) # store 0x3e981220b8576ea5 in memory
flh f8, 0(x2) # load 0x3e981220b8576ea5 from memory into f8
fmul.h f21, f21, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x71f8b9ad819670d4 # load x3 with value 0x71f8b9ad819670d4
sw x3, 0(x2) # store 0x71f8b9ad819670d4 in memory
flh f22, 0(x2) # load 0x71f8b9ad819670d4 from memory into f22
la x2, scratch
li x3, 0xa1de6214323f4c02 # load x3 with value 0xa1de6214323f4c02
sw x3, 0(x2) # store 0xa1de6214323f4c02 in memory
flh f20, 0(x2) # load 0xa1de6214323f4c02 from memory into f20
fmul.h f22, f22, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xfae7dd1b1860e3c1 # load x3 with value 0xfae7dd1b1860e3c1
sw x3, 0(x2) # store 0xfae7dd1b1860e3c1 in memory
flh f23, 0(x2) # load 0xfae7dd1b1860e3c1 from memory into f23
la x2, scratch
li x3, 0x8c4e9274b502affc # load x3 with value 0x8c4e9274b502affc
sw x3, 0(x2) # store 0x8c4e9274b502affc in memory
flh f30, 0(x2) # load 0x8c4e9274b502affc from memory into f30
fmul.h f23, f23, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0x8a9ca041b1a64bd9 # load x3 with value 0x8a9ca041b1a64bd9
sw x3, 0(x2) # store 0x8a9ca041b1a64bd9 in memory
flh f24, 0(x2) # load 0x8a9ca041b1a64bd9 from memory into f24
la x2, scratch
li x3, 0xc656799ef26f37b8 # load x3 with value 0xc656799ef26f37b8
sw x3, 0(x2) # store 0xc656799ef26f37b8 in memory
flh f24, 0(x2) # load 0xc656799ef26f37b8 from memory into f24
fmul.h f24, f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0xff132631c67e0de5 # load x3 with value 0xff132631c67e0de5
sw x3, 0(x2) # store 0xff132631c67e0de5 in memory
flh f25, 0(x2) # load 0xff132631c67e0de5 from memory into f25
la x2, scratch
li x3, 0xb631309ab3616c40 # load x3 with value 0xb631309ab3616c40
sw x3, 0(x2) # store 0xb631309ab3616c40 in memory
flh f19, 0(x2) # load 0xb631309ab3616c40 from memory into f19
fmul.h f25, f25, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0x87e2a7e64f059091 # load x3 with value 0x87e2a7e64f059091
sw x3, 0(x2) # store 0x87e2a7e64f059091 in memory
flh f26, 0(x2) # load 0x87e2a7e64f059091 from memory into f26
la x2, scratch
li x3, 0x913dd1100fbe5924 # load x3 with value 0x913dd1100fbe5924
sw x3, 0(x2) # store 0x913dd1100fbe5924 in memory
flh f17, 0(x2) # load 0x913dd1100fbe5924 from memory into f17
fmul.h f26, f26, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0x97730c134b96daaf # load x3 with value 0x97730c134b96daaf
sw x3, 0(x2) # store 0x97730c134b96daaf in memory
flh f27, 0(x2) # load 0x97730c134b96daaf from memory into f27
la x2, scratch
li x3, 0x8ca54048f8cc4621 # load x3 with value 0x8ca54048f8cc4621
sw x3, 0(x2) # store 0x8ca54048f8cc4621 in memory
flh f14, 0(x2) # load 0x8ca54048f8cc4621 from memory into f14
fmul.h f27, f27, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0xfc0507b77832db66 # load x3 with value 0xfc0507b77832db66
sw x3, 0(x2) # store 0xfc0507b77832db66 in memory
flh f28, 0(x2) # load 0xfc0507b77832db66 from memory into f28
la x2, scratch
li x3, 0xb27e46d5cbb5f065 # load x3 with value 0xb27e46d5cbb5f065
sw x3, 0(x2) # store 0xb27e46d5cbb5f065 in memory
flh f20, 0(x2) # load 0xb27e46d5cbb5f065 from memory into f20
fmul.h f28, f28, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xdef38fd23caea7b5 # load x3 with value 0xdef38fd23caea7b5
sw x3, 0(x2) # store 0xdef38fd23caea7b5 in memory
flh f29, 0(x2) # load 0xdef38fd23caea7b5 from memory into f29
la x2, scratch
li x3, 0x1a21001dcd1dc447 # load x3 with value 0x1a21001dcd1dc447
sw x3, 0(x2) # store 0x1a21001dcd1dc447 in memory
flh f16, 0(x2) # load 0x1a21001dcd1dc447 from memory into f16
fmul.h f29, f29, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xc898610c5b5d31da # load x3 with value 0xc898610c5b5d31da
sw x3, 0(x2) # store 0xc898610c5b5d31da in memory
flh f30, 0(x2) # load 0xc898610c5b5d31da from memory into f30
la x2, scratch
li x3, 0x151f35437a4240c9 # load x3 with value 0x151f35437a4240c9
sw x3, 0(x2) # store 0x151f35437a4240c9 in memory
flh f24, 0(x2) # load 0x151f35437a4240c9 from memory into f24
fmul.h f30, f30, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x24db19f896603e42 # load x3 with value 0x24db19f896603e42
sw x3, 0(x2) # store 0x24db19f896603e42 in memory
flh f31, 0(x2) # load 0x24db19f896603e42 from memory into f31
la x2, scratch
li x3, 0x40e3431059cad9a9 # load x3 with value 0x40e3431059cad9a9
sw x3, 0(x2) # store 0x40e3431059cad9a9 in memory
flh f14, 0(x2) # load 0x40e3431059cad9a9 from memory into f14
fmul.h f31, f31, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x2a5be368bbe442b0 # load x3 with value 0x2a5be368bbe442b0
sw x3, 0(x2) # store 0x2a5be368bbe442b0 in memory
flh f11, 0(x2) # load 0x2a5be368bbe442b0 from memory into f11
la x2, scratch
li x3, 0x657cc4df938eefe1 # load x3 with value 0x657cc4df938eefe1
sw x3, 0(x2) # store 0x657cc4df938eefe1 in memory
flh f0, 0(x2) # load 0x657cc4df938eefe1 from memory into f0
fmul.h f0, f11, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0x6959e79e9049ee5a # load x3 with value 0x6959e79e9049ee5a
sw x3, 0(x2) # store 0x6959e79e9049ee5a in memory
flh f29, 0(x2) # load 0x6959e79e9049ee5a from memory into f29
la x2, scratch
li x3, 0x72091e86ca4e9093 # load x3 with value 0x72091e86ca4e9093
sw x3, 0(x2) # store 0x72091e86ca4e9093 in memory
flh f1, 0(x2) # load 0x72091e86ca4e9093 from memory into f1
fmul.h f1, f29, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x8a8cc34313659c4b # load x3 with value 0x8a8cc34313659c4b
sw x3, 0(x2) # store 0x8a8cc34313659c4b in memory
flh f24, 0(x2) # load 0x8a8cc34313659c4b from memory into f24
la x2, scratch
li x3, 0x85e394e4614e7cd1 # load x3 with value 0x85e394e4614e7cd1
sw x3, 0(x2) # store 0x85e394e4614e7cd1 in memory
flh f2, 0(x2) # load 0x85e394e4614e7cd1 from memory into f2
fmul.h f2, f24, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0x6ae792d6ee0c132 # load x3 with value 0x6ae792d6ee0c132
sw x3, 0(x2) # store 0x6ae792d6ee0c132 in memory
flh f1, 0(x2) # load 0x6ae792d6ee0c132 from memory into f1
la x2, scratch
li x3, 0xaa203ad35b746d5b # load x3 with value 0xaa203ad35b746d5b
sw x3, 0(x2) # store 0xaa203ad35b746d5b in memory
flh f3, 0(x2) # load 0xaa203ad35b746d5b from memory into f3
fmul.h f3, f1, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x7ee12c5c08b7f8aa # load x3 with value 0x7ee12c5c08b7f8aa
sw x3, 0(x2) # store 0x7ee12c5c08b7f8aa in memory
flh f24, 0(x2) # load 0x7ee12c5c08b7f8aa from memory into f24
la x2, scratch
li x3, 0x6e479a4351eaa997 # load x3 with value 0x6e479a4351eaa997
sw x3, 0(x2) # store 0x6e479a4351eaa997 in memory
flh f4, 0(x2) # load 0x6e479a4351eaa997 from memory into f4
fmul.h f4, f24, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x61bff9a8c19f38d2 # load x3 with value 0x61bff9a8c19f38d2
sw x3, 0(x2) # store 0x61bff9a8c19f38d2 in memory
flh f24, 0(x2) # load 0x61bff9a8c19f38d2 from memory into f24
la x2, scratch
li x3, 0x3ec0fdeb925d3c5 # load x3 with value 0x3ec0fdeb925d3c5
sw x3, 0(x2) # store 0x3ec0fdeb925d3c5 in memory
flh f5, 0(x2) # load 0x3ec0fdeb925d3c5 from memory into f5
fmul.h f5, f24, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x9c4ee6902bb2e902 # load x3 with value 0x9c4ee6902bb2e902
sw x3, 0(x2) # store 0x9c4ee6902bb2e902 in memory
flh f4, 0(x2) # load 0x9c4ee6902bb2e902 from memory into f4
la x2, scratch
li x3, 0xfe8aa462f0559992 # load x3 with value 0xfe8aa462f0559992
sw x3, 0(x2) # store 0xfe8aa462f0559992 in memory
flh f6, 0(x2) # load 0xfe8aa462f0559992 from memory into f6
fmul.h f6, f4, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6ed9c86a9368ad0b # load x3 with value 0x6ed9c86a9368ad0b
sw x3, 0(x2) # store 0x6ed9c86a9368ad0b in memory
flh f9, 0(x2) # load 0x6ed9c86a9368ad0b from memory into f9
la x2, scratch
li x3, 0xf08b70e2c77da18 # load x3 with value 0xf08b70e2c77da18
sw x3, 0(x2) # store 0xf08b70e2c77da18 in memory
flh f7, 0(x2) # load 0xf08b70e2c77da18 from memory into f7
fmul.h f7, f9, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0xda558c186e8cda7f # load x3 with value 0xda558c186e8cda7f
sw x3, 0(x2) # store 0xda558c186e8cda7f in memory
flh f21, 0(x2) # load 0xda558c186e8cda7f from memory into f21
la x2, scratch
li x3, 0x7490fef409bfbcbc # load x3 with value 0x7490fef409bfbcbc
sw x3, 0(x2) # store 0x7490fef409bfbcbc in memory
flh f8, 0(x2) # load 0x7490fef409bfbcbc from memory into f8
fmul.h f8, f21, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0x571023cae349cc73 # load x3 with value 0x571023cae349cc73
sw x3, 0(x2) # store 0x571023cae349cc73 in memory
flh f25, 0(x2) # load 0x571023cae349cc73 from memory into f25
la x2, scratch
li x3, 0x65aaab52bea46eb9 # load x3 with value 0x65aaab52bea46eb9
sw x3, 0(x2) # store 0x65aaab52bea46eb9 in memory
flh f9, 0(x2) # load 0x65aaab52bea46eb9 from memory into f9
fmul.h f9, f25, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x7bc8bd6e3d6915ab # load x3 with value 0x7bc8bd6e3d6915ab
sw x3, 0(x2) # store 0x7bc8bd6e3d6915ab in memory
flh f3, 0(x2) # load 0x7bc8bd6e3d6915ab from memory into f3
la x2, scratch
li x3, 0x6c8f28b1213f9752 # load x3 with value 0x6c8f28b1213f9752
sw x3, 0(x2) # store 0x6c8f28b1213f9752 in memory
flh f10, 0(x2) # load 0x6c8f28b1213f9752 from memory into f10
fmul.h f10, f3, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0xe6fbf56a2293eb1f # load x3 with value 0xe6fbf56a2293eb1f
sw x3, 0(x2) # store 0xe6fbf56a2293eb1f in memory
flh f17, 0(x2) # load 0xe6fbf56a2293eb1f from memory into f17
la x2, scratch
li x3, 0xd1cc6bc9684e6cf0 # load x3 with value 0xd1cc6bc9684e6cf0
sw x3, 0(x2) # store 0xd1cc6bc9684e6cf0 in memory
flh f11, 0(x2) # load 0xd1cc6bc9684e6cf0 from memory into f11
fmul.h f11, f17, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xeb853c082a2a1c16 # load x3 with value 0xeb853c082a2a1c16
sw x3, 0(x2) # store 0xeb853c082a2a1c16 in memory
flh f30, 0(x2) # load 0xeb853c082a2a1c16 from memory into f30
la x2, scratch
li x3, 0xfab21fc044f0763c # load x3 with value 0xfab21fc044f0763c
sw x3, 0(x2) # store 0xfab21fc044f0763c in memory
flh f12, 0(x2) # load 0xfab21fc044f0763c from memory into f12
fmul.h f12, f30, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x5974ddfc64928940 # load x3 with value 0x5974ddfc64928940
sw x3, 0(x2) # store 0x5974ddfc64928940 in memory
flh f16, 0(x2) # load 0x5974ddfc64928940 from memory into f16
la x2, scratch
li x3, 0x4b6487c5fd1d90d0 # load x3 with value 0x4b6487c5fd1d90d0
sw x3, 0(x2) # store 0x4b6487c5fd1d90d0 in memory
flh f13, 0(x2) # load 0x4b6487c5fd1d90d0 from memory into f13
fmul.h f13, f16, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xfaa8cbf7c4cc9ff7 # load x3 with value 0xfaa8cbf7c4cc9ff7
sw x3, 0(x2) # store 0xfaa8cbf7c4cc9ff7 in memory
flh f8, 0(x2) # load 0xfaa8cbf7c4cc9ff7 from memory into f8
la x2, scratch
li x3, 0x3e3564e8c8e6ebf1 # load x3 with value 0x3e3564e8c8e6ebf1
sw x3, 0(x2) # store 0x3e3564e8c8e6ebf1 in memory
flh f14, 0(x2) # load 0x3e3564e8c8e6ebf1 from memory into f14
fmul.h f14, f8, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x9a11bd456d4b6688 # load x3 with value 0x9a11bd456d4b6688
sw x3, 0(x2) # store 0x9a11bd456d4b6688 in memory
flh f19, 0(x2) # load 0x9a11bd456d4b6688 from memory into f19
la x2, scratch
li x3, 0x5711ef84ab7f7fea # load x3 with value 0x5711ef84ab7f7fea
sw x3, 0(x2) # store 0x5711ef84ab7f7fea in memory
flh f15, 0(x2) # load 0x5711ef84ab7f7fea from memory into f15
fmul.h f15, f19, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x261e2edc78a59c59 # load x3 with value 0x261e2edc78a59c59
sw x3, 0(x2) # store 0x261e2edc78a59c59 in memory
flh f12, 0(x2) # load 0x261e2edc78a59c59 from memory into f12
la x2, scratch
li x3, 0xe75adb047cb7c3f9 # load x3 with value 0xe75adb047cb7c3f9
sw x3, 0(x2) # store 0xe75adb047cb7c3f9 in memory
flh f16, 0(x2) # load 0xe75adb047cb7c3f9 from memory into f16
fmul.h f16, f12, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x80552dfc13191d7f # load x3 with value 0x80552dfc13191d7f
sw x3, 0(x2) # store 0x80552dfc13191d7f in memory
flh f13, 0(x2) # load 0x80552dfc13191d7f from memory into f13
la x2, scratch
li x3, 0x1ab21261e2efec8e # load x3 with value 0x1ab21261e2efec8e
sw x3, 0(x2) # store 0x1ab21261e2efec8e in memory
flh f17, 0(x2) # load 0x1ab21261e2efec8e from memory into f17
fmul.h f17, f13, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0xc2f144364f872ccb # load x3 with value 0xc2f144364f872ccb
sw x3, 0(x2) # store 0xc2f144364f872ccb in memory
flh f1, 0(x2) # load 0xc2f144364f872ccb from memory into f1
la x2, scratch
li x3, 0x6cf15f1220a805c # load x3 with value 0x6cf15f1220a805c
sw x3, 0(x2) # store 0x6cf15f1220a805c in memory
flh f18, 0(x2) # load 0x6cf15f1220a805c from memory into f18
fmul.h f18, f1, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x4a03729c76a7e230 # load x3 with value 0x4a03729c76a7e230
sw x3, 0(x2) # store 0x4a03729c76a7e230 in memory
flh f13, 0(x2) # load 0x4a03729c76a7e230 from memory into f13
la x2, scratch
li x3, 0x48a431cb9928fd57 # load x3 with value 0x48a431cb9928fd57
sw x3, 0(x2) # store 0x48a431cb9928fd57 in memory
flh f19, 0(x2) # load 0x48a431cb9928fd57 from memory into f19
fmul.h f19, f13, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0xd41934e4f4184ac1 # load x3 with value 0xd41934e4f4184ac1
sw x3, 0(x2) # store 0xd41934e4f4184ac1 in memory
flh f15, 0(x2) # load 0xd41934e4f4184ac1 from memory into f15
la x2, scratch
li x3, 0xca4d999ece02afbe # load x3 with value 0xca4d999ece02afbe
sw x3, 0(x2) # store 0xca4d999ece02afbe in memory
flh f20, 0(x2) # load 0xca4d999ece02afbe from memory into f20
fmul.h f20, f15, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xc2965484676fbc1c # load x3 with value 0xc2965484676fbc1c
sw x3, 0(x2) # store 0xc2965484676fbc1c in memory
flh f25, 0(x2) # load 0xc2965484676fbc1c from memory into f25
la x2, scratch
li x3, 0xb34a35e13f125078 # load x3 with value 0xb34a35e13f125078
sw x3, 0(x2) # store 0xb34a35e13f125078 in memory
flh f21, 0(x2) # load 0xb34a35e13f125078 from memory into f21
fmul.h f21, f25, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x52a4c744da6277d9 # load x3 with value 0x52a4c744da6277d9
sw x3, 0(x2) # store 0x52a4c744da6277d9 in memory
flh f29, 0(x2) # load 0x52a4c744da6277d9 from memory into f29
la x2, scratch
li x3, 0xe64831daefdd4552 # load x3 with value 0xe64831daefdd4552
sw x3, 0(x2) # store 0xe64831daefdd4552 in memory
flh f22, 0(x2) # load 0xe64831daefdd4552 from memory into f22
fmul.h f22, f29, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0x20d0944cf6824b57 # load x3 with value 0x20d0944cf6824b57
sw x3, 0(x2) # store 0x20d0944cf6824b57 in memory
flh f23, 0(x2) # load 0x20d0944cf6824b57 from memory into f23
la x2, scratch
li x3, 0x2662ca8d6a6b39b1 # load x3 with value 0x2662ca8d6a6b39b1
sw x3, 0(x2) # store 0x2662ca8d6a6b39b1 in memory
flh f23, 0(x2) # load 0x2662ca8d6a6b39b1 from memory into f23
fmul.h f23, f23, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0xb93e660d90e2e73c # load x3 with value 0xb93e660d90e2e73c
sw x3, 0(x2) # store 0xb93e660d90e2e73c in memory
flh f31, 0(x2) # load 0xb93e660d90e2e73c from memory into f31
la x2, scratch
li x3, 0xfae94ac7133edf07 # load x3 with value 0xfae94ac7133edf07
sw x3, 0(x2) # store 0xfae94ac7133edf07 in memory
flh f24, 0(x2) # load 0xfae94ac7133edf07 from memory into f24
fmul.h f24, f31, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0xb6471afa9badd312 # load x3 with value 0xb6471afa9badd312
sw x3, 0(x2) # store 0xb6471afa9badd312 in memory
flh f25, 0(x2) # load 0xb6471afa9badd312 from memory into f25
la x2, scratch
li x3, 0x3dbf4af1a37dfb83 # load x3 with value 0x3dbf4af1a37dfb83
sw x3, 0(x2) # store 0x3dbf4af1a37dfb83 in memory
flh f25, 0(x2) # load 0x3dbf4af1a37dfb83 from memory into f25
fmul.h f25, f25, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0x5f0edc306464bb70 # load x3 with value 0x5f0edc306464bb70
sw x3, 0(x2) # store 0x5f0edc306464bb70 in memory
flh f8, 0(x2) # load 0x5f0edc306464bb70 from memory into f8
la x2, scratch
li x3, 0x14073a842dd5277e # load x3 with value 0x14073a842dd5277e
sw x3, 0(x2) # store 0x14073a842dd5277e in memory
flh f26, 0(x2) # load 0x14073a842dd5277e from memory into f26
fmul.h f26, f8, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xfc337f2755b9431d # load x3 with value 0xfc337f2755b9431d
sw x3, 0(x2) # store 0xfc337f2755b9431d in memory
flh f20, 0(x2) # load 0xfc337f2755b9431d from memory into f20
la x2, scratch
li x3, 0xc10badeae30ca92 # load x3 with value 0xc10badeae30ca92
sw x3, 0(x2) # store 0xc10badeae30ca92 in memory
flh f27, 0(x2) # load 0xc10badeae30ca92 from memory into f27
fmul.h f27, f20, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x91a88efd0685d0ac # load x3 with value 0x91a88efd0685d0ac
sw x3, 0(x2) # store 0x91a88efd0685d0ac in memory
flh f3, 0(x2) # load 0x91a88efd0685d0ac from memory into f3
la x2, scratch
li x3, 0xe98120079c8060fa # load x3 with value 0xe98120079c8060fa
sw x3, 0(x2) # store 0xe98120079c8060fa in memory
flh f28, 0(x2) # load 0xe98120079c8060fa from memory into f28
fmul.h f28, f3, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0x5a87a09c8977707a # load x3 with value 0x5a87a09c8977707a
sw x3, 0(x2) # store 0x5a87a09c8977707a in memory
flh f3, 0(x2) # load 0x5a87a09c8977707a from memory into f3
la x2, scratch
li x3, 0x71d5e51bbf221a25 # load x3 with value 0x71d5e51bbf221a25
sw x3, 0(x2) # store 0x71d5e51bbf221a25 in memory
flh f29, 0(x2) # load 0x71d5e51bbf221a25 from memory into f29
fmul.h f29, f3, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x6d29da5e1f237f16 # load x3 with value 0x6d29da5e1f237f16
sw x3, 0(x2) # store 0x6d29da5e1f237f16 in memory
flh f6, 0(x2) # load 0x6d29da5e1f237f16 from memory into f6
la x2, scratch
li x3, 0xae8e61af3929c27a # load x3 with value 0xae8e61af3929c27a
sw x3, 0(x2) # store 0xae8e61af3929c27a in memory
flh f30, 0(x2) # load 0xae8e61af3929c27a from memory into f30
fmul.h f30, f6, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0x5215469663af1cc1 # load x3 with value 0x5215469663af1cc1
sw x3, 0(x2) # store 0x5215469663af1cc1 in memory
flh f17, 0(x2) # load 0x5215469663af1cc1 from memory into f17
la x2, scratch
li x3, 0xf3ec10e3bd006189 # load x3 with value 0xf3ec10e3bd006189
sw x3, 0(x2) # store 0xf3ec10e3bd006189 in memory
flh f31, 0(x2) # load 0xf3ec10e3bd006189 from memory into f31
fmul.h f31, f17, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xf691ded33ecd6d77 # load x3 with value 0xf691ded33ecd6d77
sw x3, 0(x2) # store 0xf691ded33ecd6d77 in memory
flh f22, 0(x2) # load 0xf691ded33ecd6d77 from memory into f22
la x2, scratch
li x3, 0x6f233d0e5a3d25a8 # load x3 with value 0x6f233d0e5a3d25a8
sw x3, 0(x2) # store 0x6f233d0e5a3d25a8 in memory
flh f19, 0(x2) # load 0x6f233d0e5a3d25a8 from memory into f19
fmul.h f23, f22, f19, dyn # perform operation
fmul.h f23, f22, f19, rdn # perform operation
fmul.h f23, f22, f19, rmm # perform operation
fmul.h f23, f22, f19, rne # perform operation
fmul.h f23, f22, f19, rtz # perform operation
fmul.h f23, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f20, f6, f17, dyn # perform operation
fmul.h f20, f6, f17, rdn # perform operation
fmul.h f20, f6, f17, rmm # perform operation
fmul.h f20, f6, f17, rne # perform operation
fmul.h f20, f6, f17, rtz # perform operation
fmul.h f20, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmul.h f6, f23, f17, dyn # perform operation
fmul.h f6, f23, f17, rdn # perform operation
fmul.h f6, f23, f17, rmm # perform operation
fmul.h f6, f23, f17, rne # perform operation
fmul.h f6, f23, f17, rtz # perform operation
fmul.h f6, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fmul.h f22, f2, f13, dyn # perform operation
fmul.h f22, f2, f13, rdn # perform operation
fmul.h f22, f2, f13, rmm # perform operation
fmul.h f22, f2, f13, rne # perform operation
fmul.h f22, f2, f13, rtz # perform operation
fmul.h f22, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmul.h f7, f8, f14, dyn # perform operation
fmul.h f7, f8, f14, rdn # perform operation
fmul.h f7, f8, f14, rmm # perform operation
fmul.h f7, f8, f14, rne # perform operation
fmul.h f7, f8, f14, rtz # perform operation
fmul.h f7, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmul.h f8, f21, f16, dyn # perform operation
fmul.h f8, f21, f16, rdn # perform operation
fmul.h f8, f21, f16, rmm # perform operation
fmul.h f8, f21, f16, rne # perform operation
fmul.h f8, f21, f16, rtz # perform operation
fmul.h f8, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmul.h f24, f2, f7, dyn # perform operation
fmul.h f24, f2, f7, rdn # perform operation
fmul.h f24, f2, f7, rmm # perform operation
fmul.h f24, f2, f7, rne # perform operation
fmul.h f24, f2, f7, rtz # perform operation
fmul.h f24, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmul.h f14, f31, f7, dyn # perform operation
fmul.h f14, f31, f7, rdn # perform operation
fmul.h f14, f31, f7, rmm # perform operation
fmul.h f14, f31, f7, rne # perform operation
fmul.h f14, f31, f7, rtz # perform operation
fmul.h f14, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f7, f9, f3, dyn # perform operation
fmul.h f7, f9, f3, rdn # perform operation
fmul.h f7, f9, f3, rmm # perform operation
fmul.h f7, f9, f3, rne # perform operation
fmul.h f7, f9, f3, rtz # perform operation
fmul.h f7, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmul.h f23, f12, f2, dyn # perform operation
fmul.h f23, f12, f2, rdn # perform operation
fmul.h f23, f12, f2, rmm # perform operation
fmul.h f23, f12, f2, rne # perform operation
fmul.h f23, f12, f2, rtz # perform operation
fmul.h f23, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmul.h f18, f3, f24, dyn # perform operation
fmul.h f18, f3, f24, rdn # perform operation
fmul.h f18, f3, f24, rmm # perform operation
fmul.h f18, f3, f24, rne # perform operation
fmul.h f18, f3, f24, rtz # perform operation
fmul.h f18, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f3, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmul.h f6, f12, f24, dyn # perform operation
fmul.h f6, f12, f24, rdn # perform operation
fmul.h f6, f12, f24, rmm # perform operation
fmul.h f6, f12, f24, rne # perform operation
fmul.h f6, f12, f24, rtz # perform operation
fmul.h f6, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f12, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f1, f17, f3, dyn # perform operation
fmul.h f1, f17, f3, rdn # perform operation
fmul.h f1, f17, f3, rmm # perform operation
fmul.h f1, f17, f3, rne # perform operation
fmul.h f1, f17, f3, rtz # perform operation
fmul.h f1, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmul.h f14, f27, f23, dyn # perform operation
fmul.h f14, f27, f23, rdn # perform operation
fmul.h f14, f27, f23, rmm # perform operation
fmul.h f14, f27, f23, rne # perform operation
fmul.h f14, f27, f23, rtz # perform operation
fmul.h f14, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmul.h f15, f17, f16, dyn # perform operation
fmul.h f15, f17, f16, rdn # perform operation
fmul.h f15, f17, f16, rmm # perform operation
fmul.h f15, f17, f16, rne # perform operation
fmul.h f15, f17, f16, rtz # perform operation
fmul.h f15, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmul.h f8, f1, f12, dyn # perform operation
fmul.h f8, f1, f12, rdn # perform operation
fmul.h f8, f1, f12, rmm # perform operation
fmul.h f8, f1, f12, rne # perform operation
fmul.h f8, f1, f12, rtz # perform operation
fmul.h f8, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fmul.h f21, f15, f12, dyn # perform operation
fmul.h f21, f15, f12, rdn # perform operation
fmul.h f21, f15, f12, rmm # perform operation
fmul.h f21, f15, f12, rne # perform operation
fmul.h f21, f15, f12, rtz # perform operation
fmul.h f21, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fmul.h f14, f21, f13, dyn # perform operation
fmul.h f14, f21, f13, rdn # perform operation
fmul.h f14, f21, f13, rmm # perform operation
fmul.h f14, f21, f13, rne # perform operation
fmul.h f14, f21, f13, rtz # perform operation
fmul.h f14, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fmul.h f27, f21, f13, dyn # perform operation
fmul.h f27, f21, f13, rdn # perform operation
fmul.h f27, f21, f13, rmm # perform operation
fmul.h f27, f21, f13, rne # perform operation
fmul.h f27, f21, f13, rtz # perform operation
fmul.h f27, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmul.h f29, f27, f25, dyn # perform operation
fmul.h f29, f27, f25, rdn # perform operation
fmul.h f29, f27, f25, rmm # perform operation
fmul.h f29, f27, f25, rne # perform operation
fmul.h f29, f27, f25, rtz # perform operation
fmul.h f29, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmul.h f21, f31, f13, dyn # perform operation
fmul.h f21, f31, f13, rdn # perform operation
fmul.h f21, f31, f13, rmm # perform operation
fmul.h f21, f31, f13, rne # perform operation
fmul.h f21, f31, f13, rtz # perform operation
fmul.h f21, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmul.h f17, f23, f9, dyn # perform operation
fmul.h f17, f23, f9, rdn # perform operation
fmul.h f17, f23, f9, rmm # perform operation
fmul.h f17, f23, f9, rne # perform operation
fmul.h f17, f23, f9, rtz # perform operation
fmul.h f17, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f23, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmul.h f22, f8, f12, dyn # perform operation
fmul.h f22, f8, f12, rdn # perform operation
fmul.h f22, f8, f12, rmm # perform operation
fmul.h f22, f8, f12, rne # perform operation
fmul.h f22, f8, f12, rtz # perform operation
fmul.h f22, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f8, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fmul.h f14, f18, f6, dyn # perform operation
fmul.h f14, f18, f6, rdn # perform operation
fmul.h f14, f18, f6, rmm # perform operation
fmul.h f14, f18, f6, rne # perform operation
fmul.h f14, f18, f6, rtz # perform operation
fmul.h f14, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f29, f20, f16, dyn # perform operation
fmul.h f29, f20, f16, rdn # perform operation
fmul.h f29, f20, f16, rmm # perform operation
fmul.h f29, f20, f16, rne # perform operation
fmul.h f29, f20, f16, rtz # perform operation
fmul.h f29, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmul.h f24, f11, f18, dyn # perform operation
fmul.h f24, f11, f18, rdn # perform operation
fmul.h f24, f11, f18, rmm # perform operation
fmul.h f24, f11, f18, rne # perform operation
fmul.h f24, f11, f18, rtz # perform operation
fmul.h f24, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f11, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmul.h f16, f24, f8, dyn # perform operation
fmul.h f16, f24, f8, rdn # perform operation
fmul.h f16, f24, f8, rmm # perform operation
fmul.h f16, f24, f8, rne # perform operation
fmul.h f16, f24, f8, rtz # perform operation
fmul.h f16, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmul.h f29, f3, f31, dyn # perform operation
fmul.h f29, f3, f31, rdn # perform operation
fmul.h f29, f3, f31, rmm # perform operation
fmul.h f29, f3, f31, rne # perform operation
fmul.h f29, f3, f31, rtz # perform operation
fmul.h f29, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fmul.h f30, f6, f18, dyn # perform operation
fmul.h f30, f6, f18, rdn # perform operation
fmul.h f30, f6, f18, rmm # perform operation
fmul.h f30, f6, f18, rne # perform operation
fmul.h f30, f6, f18, rtz # perform operation
fmul.h f30, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f5, f14, f13, dyn # perform operation
fmul.h f5, f14, f13, rdn # perform operation
fmul.h f5, f14, f13, rmm # perform operation
fmul.h f5, f14, f13, rne # perform operation
fmul.h f5, f14, f13, rtz # perform operation
fmul.h f5, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f14, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmul.h f12, f14, f31, dyn # perform operation
fmul.h f12, f14, f31, rdn # perform operation
fmul.h f12, f14, f31, rmm # perform operation
fmul.h f12, f14, f31, rne # perform operation
fmul.h f12, f14, f31, rtz # perform operation
fmul.h f12, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmul.h f1, f6, f21, dyn # perform operation
fmul.h f1, f6, f21, rdn # perform operation
fmul.h f1, f6, f21, rmm # perform operation
fmul.h f1, f6, f21, rne # perform operation
fmul.h f1, f6, f21, rtz # perform operation
fmul.h f1, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f6, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmul.h f27, f25, f16, dyn # perform operation
fmul.h f27, f25, f16, rdn # perform operation
fmul.h f27, f25, f16, rmm # perform operation
fmul.h f27, f25, f16, rne # perform operation
fmul.h f27, f25, f16, rtz # perform operation
fmul.h f27, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmul.h f22, f28, f7, dyn # perform operation
fmul.h f22, f28, f7, rdn # perform operation
fmul.h f22, f28, f7, rmm # perform operation
fmul.h f22, f28, f7, rne # perform operation
fmul.h f22, f28, f7, rtz # perform operation
fmul.h f22, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fmul.h f7, f14, f11, dyn # perform operation
fmul.h f7, f14, f11, rdn # perform operation
fmul.h f7, f14, f11, rmm # perform operation
fmul.h f7, f14, f11, rne # perform operation
fmul.h f7, f14, f11, rtz # perform operation
fmul.h f7, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f14, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fmul.h f14, f21, f31, dyn # perform operation
fmul.h f14, f21, f31, rdn # perform operation
fmul.h f14, f21, f31, rmm # perform operation
fmul.h f14, f21, f31, rne # perform operation
fmul.h f14, f21, f31, rtz # perform operation
fmul.h f14, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f21, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmul.h f15, f22, f26, dyn # perform operation
fmul.h f15, f22, f26, rdn # perform operation
fmul.h f15, f22, f26, rmm # perform operation
fmul.h f15, f22, f26, rne # perform operation
fmul.h f15, f22, f26, rtz # perform operation
fmul.h f15, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f22, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fmul.h f29, f27, f12, dyn # perform operation
fmul.h f29, f27, f12, rdn # perform operation
fmul.h f29, f27, f12, rmm # perform operation
fmul.h f29, f27, f12, rne # perform operation
fmul.h f29, f27, f12, rtz # perform operation
fmul.h f29, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fmul.h f21, f27, f22, dyn # perform operation
fmul.h f21, f27, f22, rdn # perform operation
fmul.h f21, f27, f22, rmm # perform operation
fmul.h f21, f27, f22, rne # perform operation
fmul.h f21, f27, f22, rtz # perform operation
fmul.h f21, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f29, f13, f21, dyn # perform operation
fmul.h f29, f13, f21, rdn # perform operation
fmul.h f29, f13, f21, rmm # perform operation
fmul.h f29, f13, f21, rne # perform operation
fmul.h f29, f13, f21, rtz # perform operation
fmul.h f29, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmul.h f3, f6, f5, dyn # perform operation
fmul.h f3, f6, f5, rdn # perform operation
fmul.h f3, f6, f5, rmm # perform operation
fmul.h f3, f6, f5, rne # perform operation
fmul.h f3, f6, f5, rtz # perform operation
fmul.h f3, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmul.h f2, f21, f26, dyn # perform operation
fmul.h f2, f21, f26, rdn # perform operation
fmul.h f2, f21, f26, rmm # perform operation
fmul.h f2, f21, f26, rne # perform operation
fmul.h f2, f21, f26, rtz # perform operation
fmul.h f2, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmul.h f31, f29, f17, dyn # perform operation
fmul.h f31, f29, f17, rdn # perform operation
fmul.h f31, f29, f17, rmm # perform operation
fmul.h f31, f29, f17, rne # perform operation
fmul.h f31, f29, f17, rtz # perform operation
fmul.h f31, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f7, f20, f15, dyn # perform operation
fmul.h f7, f20, f15, rdn # perform operation
fmul.h f7, f20, f15, rmm # perform operation
fmul.h f7, f20, f15, rne # perform operation
fmul.h f7, f20, f15, rtz # perform operation
fmul.h f7, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f20, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fmul.h f9, f30, f5, dyn # perform operation
fmul.h f9, f30, f5, rdn # perform operation
fmul.h f9, f30, f5, rmm # perform operation
fmul.h f9, f30, f5, rne # perform operation
fmul.h f9, f30, f5, rtz # perform operation
fmul.h f9, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fmul.h f24, f6, f1, dyn # perform operation
fmul.h f24, f6, f1, rdn # perform operation
fmul.h f24, f6, f1, rmm # perform operation
fmul.h f24, f6, f1, rne # perform operation
fmul.h f24, f6, f1, rtz # perform operation
fmul.h f24, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fmul.h f2, f20, f23, dyn # perform operation
fmul.h f2, f20, f23, rdn # perform operation
fmul.h f2, f20, f23, rmm # perform operation
fmul.h f2, f20, f23, rne # perform operation
fmul.h f2, f20, f23, rtz # perform operation
fmul.h f2, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f20, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmul.h f5, f12, f27, dyn # perform operation
fmul.h f5, f12, f27, rdn # perform operation
fmul.h f5, f12, f27, rmm # perform operation
fmul.h f5, f12, f27, rne # perform operation
fmul.h f5, f12, f27, rtz # perform operation
fmul.h f5, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmul.h f30, f31, f24, dyn # perform operation
fmul.h f30, f31, f24, rdn # perform operation
fmul.h f30, f31, f24, rmm # perform operation
fmul.h f30, f31, f24, rne # perform operation
fmul.h f30, f31, f24, rtz # perform operation
fmul.h f30, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fmul.h f26, f1, f11, dyn # perform operation
fmul.h f26, f1, f11, rdn # perform operation
fmul.h f26, f1, f11, rmm # perform operation
fmul.h f26, f1, f11, rne # perform operation
fmul.h f26, f1, f11, rtz # perform operation
fmul.h f26, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmul.h f29, f3, f7, dyn # perform operation
fmul.h f29, f3, f7, rdn # perform operation
fmul.h f29, f3, f7, rmm # perform operation
fmul.h f29, f3, f7, rne # perform operation
fmul.h f29, f3, f7, rtz # perform operation
fmul.h f29, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
fmul.h f3, f18, f5, dyn # perform operation
fmul.h f3, f18, f5, rdn # perform operation
fmul.h f3, f18, f5, rmm # perform operation
fmul.h f3, f18, f5, rne # perform operation
fmul.h f3, f18, f5, rtz # perform operation
fmul.h f3, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmul.h f29, f10, f23, dyn # perform operation
fmul.h f29, f10, f23, rdn # perform operation
fmul.h f29, f10, f23, rmm # perform operation
fmul.h f29, f10, f23, rne # perform operation
fmul.h f29, f10, f23, rtz # perform operation
fmul.h f29, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f10, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmul.h f10, f15, f25, dyn # perform operation
fmul.h f10, f15, f25, rdn # perform operation
fmul.h f10, f15, f25, rmm # perform operation
fmul.h f10, f15, f25, rne # perform operation
fmul.h f10, f15, f25, rtz # perform operation
fmul.h f10, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
fmul.h f26, f9, f30, dyn # perform operation
fmul.h f26, f9, f30, rdn # perform operation
fmul.h f26, f9, f30, rmm # perform operation
fmul.h f26, f9, f30, rne # perform operation
fmul.h f26, f9, f30, rtz # perform operation
fmul.h f26, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fmul.h f25, f18, f27, dyn # perform operation
fmul.h f25, f18, f27, rdn # perform operation
fmul.h f25, f18, f27, rmm # perform operation
fmul.h f25, f18, f27, rne # perform operation
fmul.h f25, f18, f27, rtz # perform operation
fmul.h f25, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmul.h f25, f5, f3, dyn # perform operation
fmul.h f25, f5, f3, rdn # perform operation
fmul.h f25, f5, f3, rmm # perform operation
fmul.h f25, f5, f3, rne # perform operation
fmul.h f25, f5, f3, rtz # perform operation
fmul.h f25, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f20, f21, f14, dyn # perform operation
fmul.h f20, f21, f14, rdn # perform operation
fmul.h f20, f21, f14, rmm # perform operation
fmul.h f20, f21, f14, rne # perform operation
fmul.h f20, f21, f14, rtz # perform operation
fmul.h f20, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmul.h f20, f26, f27, dyn # perform operation
fmul.h f20, f26, f27, rdn # perform operation
fmul.h f20, f26, f27, rmm # perform operation
fmul.h f20, f26, f27, rne # perform operation
fmul.h f20, f26, f27, rtz # perform operation
fmul.h f20, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f25, f30, f3, dyn # perform operation
fmul.h f25, f30, f3, rdn # perform operation
fmul.h f25, f30, f3, rmm # perform operation
fmul.h f25, f30, f3, rne # perform operation
fmul.h f25, f30, f3, rtz # perform operation
fmul.h f25, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmul.h f20, f3, f16, dyn # perform operation
fmul.h f20, f3, f16, rdn # perform operation
fmul.h f20, f3, f16, rmm # perform operation
fmul.h f20, f3, f16, rne # perform operation
fmul.h f20, f3, f16, rtz # perform operation
fmul.h f20, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmul.h f2, f6, f17, dyn # perform operation
fmul.h f2, f6, f17, rdn # perform operation
fmul.h f2, f6, f17, rmm # perform operation
fmul.h f2, f6, f17, rne # perform operation
fmul.h f2, f6, f17, rtz # perform operation
fmul.h f2, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmul.h f7, f5, f1, dyn # perform operation
fmul.h f7, f5, f1, rdn # perform operation
fmul.h f7, f5, f1, rmm # perform operation
fmul.h f7, f5, f1, rne # perform operation
fmul.h f7, f5, f1, rtz # perform operation
fmul.h f7, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f27, f19, f14, dyn # perform operation
fmul.h f27, f19, f14, rdn # perform operation
fmul.h f27, f19, f14, rmm # perform operation
fmul.h f27, f19, f14, rne # perform operation
fmul.h f27, f19, f14, rtz # perform operation
fmul.h f27, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmul.h f13, f24, f31, dyn # perform operation
fmul.h f13, f24, f31, rdn # perform operation
fmul.h f13, f24, f31, rmm # perform operation
fmul.h f13, f24, f31, rne # perform operation
fmul.h f13, f24, f31, rtz # perform operation
fmul.h f13, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f12, f6, f10, dyn # perform operation
fmul.h f12, f6, f10, rdn # perform operation
fmul.h f12, f6, f10, rmm # perform operation
fmul.h f12, f6, f10, rne # perform operation
fmul.h f12, f6, f10, rtz # perform operation
fmul.h f12, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f6, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmul.h f25, f20, f29, dyn # perform operation
fmul.h f25, f20, f29, rdn # perform operation
fmul.h f25, f20, f29, rmm # perform operation
fmul.h f25, f20, f29, rne # perform operation
fmul.h f25, f20, f29, rtz # perform operation
fmul.h f25, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmul.h f15, f18, f17, dyn # perform operation
fmul.h f15, f18, f17, rdn # perform operation
fmul.h f15, f18, f17, rmm # perform operation
fmul.h f15, f18, f17, rne # perform operation
fmul.h f15, f18, f17, rtz # perform operation
fmul.h f15, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmul.h f7, f28, f30, dyn # perform operation
fmul.h f7, f28, f30, rdn # perform operation
fmul.h f7, f28, f30, rmm # perform operation
fmul.h f7, f28, f30, rne # perform operation
fmul.h f7, f28, f30, rtz # perform operation
fmul.h f7, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmul.h f8, f23, f31, dyn # perform operation
fmul.h f8, f23, f31, rdn # perform operation
fmul.h f8, f23, f31, rmm # perform operation
fmul.h f8, f23, f31, rne # perform operation
fmul.h f8, f23, f31, rtz # perform operation
fmul.h f8, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmul.h f17, f6, f18, dyn # perform operation
fmul.h f17, f6, f18, rdn # perform operation
fmul.h f17, f6, f18, rmm # perform operation
fmul.h f17, f6, f18, rne # perform operation
fmul.h f17, f6, f18, rtz # perform operation
fmul.h f17, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmul.h f22, f7, f18, dyn # perform operation
fmul.h f22, f7, f18, rdn # perform operation
fmul.h f22, f7, f18, rmm # perform operation
fmul.h f22, f7, f18, rne # perform operation
fmul.h f22, f7, f18, rtz # perform operation
fmul.h f22, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmul.h f17, f31, f21, dyn # perform operation
fmul.h f17, f31, f21, rdn # perform operation
fmul.h f17, f31, f21, rmm # perform operation
fmul.h f17, f31, f21, rne # perform operation
fmul.h f17, f31, f21, rtz # perform operation
fmul.h f17, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmul.h f2, f3, f14, dyn # perform operation
fmul.h f2, f3, f14, rdn # perform operation
fmul.h f2, f3, f14, rmm # perform operation
fmul.h f2, f3, f14, rne # perform operation
fmul.h f2, f3, f14, rtz # perform operation
fmul.h f2, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f12, f21, f10, dyn # perform operation
fmul.h f12, f21, f10, rdn # perform operation
fmul.h f12, f21, f10, rmm # perform operation
fmul.h f12, f21, f10, rne # perform operation
fmul.h f12, f21, f10, rtz # perform operation
fmul.h f12, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmul.h f10, f16, f23, dyn # perform operation
fmul.h f10, f16, f23, rdn # perform operation
fmul.h f10, f16, f23, rmm # perform operation
fmul.h f10, f16, f23, rne # perform operation
fmul.h f10, f16, f23, rtz # perform operation
fmul.h f10, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmul.h f25, f31, f28, dyn # perform operation
fmul.h f25, f31, f28, rdn # perform operation
fmul.h f25, f31, f28, rmm # perform operation
fmul.h f25, f31, f28, rne # perform operation
fmul.h f25, f31, f28, rtz # perform operation
fmul.h f25, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f31, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmul.h f8, f15, f5, dyn # perform operation
fmul.h f8, f15, f5, rdn # perform operation
fmul.h f8, f15, f5, rmm # perform operation
fmul.h f8, f15, f5, rne # perform operation
fmul.h f8, f15, f5, rtz # perform operation
fmul.h f8, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmul.h f11, f19, f16, dyn # perform operation
fmul.h f11, f19, f16, rdn # perform operation
fmul.h f11, f19, f16, rmm # perform operation
fmul.h f11, f19, f16, rne # perform operation
fmul.h f11, f19, f16, rtz # perform operation
fmul.h f11, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f19, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fmul.h f7, f31, f15, dyn # perform operation
fmul.h f7, f31, f15, rdn # perform operation
fmul.h f7, f31, f15, rmm # perform operation
fmul.h f7, f31, f15, rne # perform operation
fmul.h f7, f31, f15, rtz # perform operation
fmul.h f7, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f7, f9, f16, dyn # perform operation
fmul.h f7, f9, f16, rdn # perform operation
fmul.h f7, f9, f16, rmm # perform operation
fmul.h f7, f9, f16, rne # perform operation
fmul.h f7, f9, f16, rtz # perform operation
fmul.h f7, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fmul.h f22, f17, f12, dyn # perform operation
fmul.h f22, f17, f12, rdn # perform operation
fmul.h f22, f17, f12, rmm # perform operation
fmul.h f22, f17, f12, rne # perform operation
fmul.h f22, f17, f12, rtz # perform operation
fmul.h f22, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f17, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
fmul.h f20, f28, f19, dyn # perform operation
fmul.h f20, f28, f19, rdn # perform operation
fmul.h f20, f28, f19, rmm # perform operation
fmul.h f20, f28, f19, rne # perform operation
fmul.h f20, f28, f19, rtz # perform operation
fmul.h f20, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmul.h f2, f15, f19, dyn # perform operation
fmul.h f2, f15, f19, rdn # perform operation
fmul.h f2, f15, f19, rmm # perform operation
fmul.h f2, f15, f19, rne # perform operation
fmul.h f2, f15, f19, rtz # perform operation
fmul.h f2, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmul.h f2, f29, f6, dyn # perform operation
fmul.h f2, f29, f6, rdn # perform operation
fmul.h f2, f29, f6, rmm # perform operation
fmul.h f2, f29, f6, rne # perform operation
fmul.h f2, f29, f6, rtz # perform operation
fmul.h f2, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmul.h f28, f7, f29, dyn # perform operation
fmul.h f28, f7, f29, rdn # perform operation
fmul.h f28, f7, f29, rmm # perform operation
fmul.h f28, f7, f29, rne # perform operation
fmul.h f28, f7, f29, rtz # perform operation
fmul.h f28, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmul.h f8, f31, f3, dyn # perform operation
fmul.h f8, f31, f3, rdn # perform operation
fmul.h f8, f31, f3, rmm # perform operation
fmul.h f8, f31, f3, rne # perform operation
fmul.h f8, f31, f3, rtz # perform operation
fmul.h f8, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f17, f26, f12, dyn # perform operation
fmul.h f17, f26, f12, rdn # perform operation
fmul.h f17, f26, f12, rmm # perform operation
fmul.h f17, f26, f12, rne # perform operation
fmul.h f17, f26, f12, rtz # perform operation
fmul.h f17, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f18, f28, f24, dyn # perform operation
fmul.h f18, f28, f24, rdn # perform operation
fmul.h f18, f28, f24, rmm # perform operation
fmul.h f18, f28, f24, rne # perform operation
fmul.h f18, f28, f24, rtz # perform operation
fmul.h f18, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fmul.h f26, f9, f1, dyn # perform operation
fmul.h f26, f9, f1, rdn # perform operation
fmul.h f26, f9, f1, rmm # perform operation
fmul.h f26, f9, f1, rne # perform operation
fmul.h f26, f9, f1, rtz # perform operation
fmul.h f26, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fmul.h f15, f11, f22, dyn # perform operation
fmul.h f15, f11, f22, rdn # perform operation
fmul.h f15, f11, f22, rmm # perform operation
fmul.h f15, f11, f22, rne # perform operation
fmul.h f15, f11, f22, rtz # perform operation
fmul.h f15, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmul.h f21, f3, f11, dyn # perform operation
fmul.h f21, f3, f11, rdn # perform operation
fmul.h f21, f3, f11, rmm # perform operation
fmul.h f21, f3, f11, rne # perform operation
fmul.h f21, f3, f11, rtz # perform operation
fmul.h f21, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f20, f10, f1, dyn # perform operation
fmul.h f20, f10, f1, rdn # perform operation
fmul.h f20, f10, f1, rmm # perform operation
fmul.h f20, f10, f1, rne # perform operation
fmul.h f20, f10, f1, rtz # perform operation
fmul.h f20, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f10, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmul.h f21, f25, f11, dyn # perform operation
fmul.h f21, f25, f11, rdn # perform operation
fmul.h f21, f25, f11, rmm # perform operation
fmul.h f21, f25, f11, rne # perform operation
fmul.h f21, f25, f11, rtz # perform operation
fmul.h f21, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmul.h f17, f5, f24, dyn # perform operation
fmul.h f17, f5, f24, rdn # perform operation
fmul.h f17, f5, f24, rmm # perform operation
fmul.h f17, f5, f24, rne # perform operation
fmul.h f17, f5, f24, rtz # perform operation
fmul.h f17, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmul.h f24, f23, f19, dyn # perform operation
fmul.h f24, f23, f19, rdn # perform operation
fmul.h f24, f23, f19, rmm # perform operation
fmul.h f24, f23, f19, rne # perform operation
fmul.h f24, f23, f19, rtz # perform operation
fmul.h f24, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f2, f15, f3, dyn # perform operation
fmul.h f2, f15, f3, rdn # perform operation
fmul.h f2, f15, f3, rmm # perform operation
fmul.h f2, f15, f3, rne # perform operation
fmul.h f2, f15, f3, rtz # perform operation
fmul.h f2, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmul.h f22, f25, f16, dyn # perform operation
fmul.h f22, f25, f16, rdn # perform operation
fmul.h f22, f25, f16, rmm # perform operation
fmul.h f22, f25, f16, rne # perform operation
fmul.h f22, f25, f16, rtz # perform operation
fmul.h f22, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f25, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fmul.h f3, f16, f11, dyn # perform operation
fmul.h f3, f16, f11, rdn # perform operation
fmul.h f3, f16, f11, rmm # perform operation
fmul.h f3, f16, f11, rne # perform operation
fmul.h f3, f16, f11, rtz # perform operation
fmul.h f3, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fmul.h f17, f9, f7, dyn # perform operation
fmul.h f17, f9, f7, rdn # perform operation
fmul.h f17, f9, f7, rmm # perform operation
fmul.h f17, f9, f7, rne # perform operation
fmul.h f17, f9, f7, rtz # perform operation
fmul.h f17, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fmul.h f27, f12, f28, dyn # perform operation
fmul.h f27, f12, f28, rdn # perform operation
fmul.h f27, f12, f28, rmm # perform operation
fmul.h f27, f12, f28, rne # perform operation
fmul.h f27, f12, f28, rtz # perform operation
fmul.h f27, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fmul.h f28, f1, f10, dyn # perform operation
fmul.h f28, f1, f10, rdn # perform operation
fmul.h f28, f1, f10, rmm # perform operation
fmul.h f28, f1, f10, rne # perform operation
fmul.h f28, f1, f10, rtz # perform operation
fmul.h f28, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmul.h f11, f17, f16, dyn # perform operation
fmul.h f11, f17, f16, rdn # perform operation
fmul.h f11, f17, f16, rmm # perform operation
fmul.h f11, f17, f16, rne # perform operation
fmul.h f11, f17, f16, rtz # perform operation
fmul.h f11, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmul.h f2, f17, f14, dyn # perform operation
fmul.h f2, f17, f14, rdn # perform operation
fmul.h f2, f17, f14, rmm # perform operation
fmul.h f2, f17, f14, rne # perform operation
fmul.h f2, f17, f14, rtz # perform operation
fmul.h f2, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fmul.h f31, f20, f2, dyn # perform operation
fmul.h f31, f20, f2, rdn # perform operation
fmul.h f31, f20, f2, rmm # perform operation
fmul.h f31, f20, f2, rne # perform operation
fmul.h f31, f20, f2, rtz # perform operation
fmul.h f31, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f30, f10, f31, dyn # perform operation
fmul.h f30, f10, f31, rdn # perform operation
fmul.h f30, f10, f31, rmm # perform operation
fmul.h f30, f10, f31, rne # perform operation
fmul.h f30, f10, f31, rtz # perform operation
fmul.h f30, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fmul.h f25, f30, f28, dyn # perform operation
fmul.h f25, f30, f28, rdn # perform operation
fmul.h f25, f30, f28, rmm # perform operation
fmul.h f25, f30, f28, rne # perform operation
fmul.h f25, f30, f28, rtz # perform operation
fmul.h f25, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fmul.h f14, f13, f6, dyn # perform operation
fmul.h f14, f13, f6, rdn # perform operation
fmul.h f14, f13, f6, rmm # perform operation
fmul.h f14, f13, f6, rne # perform operation
fmul.h f14, f13, f6, rtz # perform operation
fmul.h f14, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fmul.h f25, f15, f11, dyn # perform operation
fmul.h f25, f15, f11, rdn # perform operation
fmul.h f25, f15, f11, rmm # perform operation
fmul.h f25, f15, f11, rne # perform operation
fmul.h f25, f15, f11, rtz # perform operation
fmul.h f25, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f15, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmul.h f6, f26, f24, dyn # perform operation
fmul.h f6, f26, f24, rdn # perform operation
fmul.h f6, f26, f24, rmm # perform operation
fmul.h f6, f26, f24, rne # perform operation
fmul.h f6, f26, f24, rtz # perform operation
fmul.h f6, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fmul.h f13, f18, f6, dyn # perform operation
fmul.h f13, f18, f6, rdn # perform operation
fmul.h f13, f18, f6, rmm # perform operation
fmul.h f13, f18, f6, rne # perform operation
fmul.h f13, f18, f6, rtz # perform operation
fmul.h f13, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f1, f17, f23, dyn # perform operation
fmul.h f1, f17, f23, rdn # perform operation
fmul.h f1, f17, f23, rmm # perform operation
fmul.h f1, f17, f23, rne # perform operation
fmul.h f1, f17, f23, rtz # perform operation
fmul.h f1, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmul.h f18, f5, f2, dyn # perform operation
fmul.h f18, f5, f2, rdn # perform operation
fmul.h f18, f5, f2, rmm # perform operation
fmul.h f18, f5, f2, rne # perform operation
fmul.h f18, f5, f2, rtz # perform operation
fmul.h f18, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fmul.h f13, f12, f30, dyn # perform operation
fmul.h f13, f12, f30, rdn # perform operation
fmul.h f13, f12, f30, rmm # perform operation
fmul.h f13, f12, f30, rne # perform operation
fmul.h f13, f12, f30, rtz # perform operation
fmul.h f13, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmul.h f15, f14, f6, dyn # perform operation
fmul.h f15, f14, f6, rdn # perform operation
fmul.h f15, f14, f6, rmm # perform operation
fmul.h f15, f14, f6, rne # perform operation
fmul.h f15, f14, f6, rtz # perform operation
fmul.h f15, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmul.h f15, f2, f22, dyn # perform operation
fmul.h f15, f2, f22, rdn # perform operation
fmul.h f15, f2, f22, rmm # perform operation
fmul.h f15, f2, f22, rne # perform operation
fmul.h f15, f2, f22, rtz # perform operation
fmul.h f15, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmul.h f30, f1, f2, dyn # perform operation
fmul.h f30, f1, f2, rdn # perform operation
fmul.h f30, f1, f2, rmm # perform operation
fmul.h f30, f1, f2, rne # perform operation
fmul.h f30, f1, f2, rtz # perform operation
fmul.h f30, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f22, f30, f10, dyn # perform operation
fmul.h f22, f30, f10, rdn # perform operation
fmul.h f22, f30, f10, rmm # perform operation
fmul.h f22, f30, f10, rne # perform operation
fmul.h f22, f30, f10, rtz # perform operation
fmul.h f22, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmul.h f2, f6, f7, dyn # perform operation
fmul.h f2, f6, f7, rdn # perform operation
fmul.h f2, f6, f7, rmm # perform operation
fmul.h f2, f6, f7, rne # perform operation
fmul.h f2, f6, f7, rtz # perform operation
fmul.h f2, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f8, f1, f22, dyn # perform operation
fmul.h f8, f1, f22, rdn # perform operation
fmul.h f8, f1, f22, rmm # perform operation
fmul.h f8, f1, f22, rne # perform operation
fmul.h f8, f1, f22, rtz # perform operation
fmul.h f8, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f8, f24, f3, dyn # perform operation
fmul.h f8, f24, f3, rdn # perform operation
fmul.h f8, f24, f3, rmm # perform operation
fmul.h f8, f24, f3, rne # perform operation
fmul.h f8, f24, f3, rtz # perform operation
fmul.h f8, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmul.h f6, f30, f31, dyn # perform operation
fmul.h f6, f30, f31, rdn # perform operation
fmul.h f6, f30, f31, rmm # perform operation
fmul.h f6, f30, f31, rne # perform operation
fmul.h f6, f30, f31, rtz # perform operation
fmul.h f6, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmul.h f27, f17, f18, dyn # perform operation
fmul.h f27, f17, f18, rdn # perform operation
fmul.h f27, f17, f18, rmm # perform operation
fmul.h f27, f17, f18, rne # perform operation
fmul.h f27, f17, f18, rtz # perform operation
fmul.h f27, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmul.h f13, f17, f31, dyn # perform operation
fmul.h f13, f17, f31, rdn # perform operation
fmul.h f13, f17, f31, rmm # perform operation
fmul.h f13, f17, f31, rne # perform operation
fmul.h f13, f17, f31, rtz # perform operation
fmul.h f13, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmul.h f12, f18, f7, dyn # perform operation
fmul.h f12, f18, f7, rdn # perform operation
fmul.h f12, f18, f7, rmm # perform operation
fmul.h f12, f18, f7, rne # perform operation
fmul.h f12, f18, f7, rtz # perform operation
fmul.h f12, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmul.h f23, f26, f30, dyn # perform operation
fmul.h f23, f26, f30, rdn # perform operation
fmul.h f23, f26, f30, rmm # perform operation
fmul.h f23, f26, f30, rne # perform operation
fmul.h f23, f26, f30, rtz # perform operation
fmul.h f23, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmul.h f16, f21, f13, dyn # perform operation
fmul.h f16, f21, f13, rdn # perform operation
fmul.h f16, f21, f13, rmm # perform operation
fmul.h f16, f21, f13, rne # perform operation
fmul.h f16, f21, f13, rtz # perform operation
fmul.h f16, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmul.h f22, f11, f12, dyn # perform operation
fmul.h f22, f11, f12, rdn # perform operation
fmul.h f22, f11, f12, rmm # perform operation
fmul.h f22, f11, f12, rne # perform operation
fmul.h f22, f11, f12, rtz # perform operation
fmul.h f22, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f12, f5, f20, dyn # perform operation
fmul.h f12, f5, f20, rdn # perform operation
fmul.h f12, f5, f20, rmm # perform operation
fmul.h f12, f5, f20, rne # perform operation
fmul.h f12, f5, f20, rtz # perform operation
fmul.h f12, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmul.h f19, f25, f27, dyn # perform operation
fmul.h f19, f25, f27, rdn # perform operation
fmul.h f19, f25, f27, rmm # perform operation
fmul.h f19, f25, f27, rne # perform operation
fmul.h f19, f25, f27, rtz # perform operation
fmul.h f19, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmul.h f25, f23, f28, dyn # perform operation
fmul.h f25, f23, f28, rdn # perform operation
fmul.h f25, f23, f28, rmm # perform operation
fmul.h f25, f23, f28, rne # perform operation
fmul.h f25, f23, f28, rtz # perform operation
fmul.h f25, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f23, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f29, f30, f28, dyn # perform operation
fmul.h f29, f30, f28, rdn # perform operation
fmul.h f29, f30, f28, rmm # perform operation
fmul.h f29, f30, f28, rne # perform operation
fmul.h f29, f30, f28, rtz # perform operation
fmul.h f29, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fmul.h f20, f8, f27, dyn # perform operation
fmul.h f20, f8, f27, rdn # perform operation
fmul.h f20, f8, f27, rmm # perform operation
fmul.h f20, f8, f27, rne # perform operation
fmul.h f20, f8, f27, rtz # perform operation
fmul.h f20, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmul.h f24, f10, f27, dyn # perform operation
fmul.h f24, f10, f27, rdn # perform operation
fmul.h f24, f10, f27, rmm # perform operation
fmul.h f24, f10, f27, rne # perform operation
fmul.h f24, f10, f27, rtz # perform operation
fmul.h f24, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmul.h f23, f22, f29, dyn # perform operation
fmul.h f23, f22, f29, rdn # perform operation
fmul.h f23, f22, f29, rmm # perform operation
fmul.h f23, f22, f29, rne # perform operation
fmul.h f23, f22, f29, rtz # perform operation
fmul.h f23, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
fmul.h f28, f14, f26, dyn # perform operation
fmul.h f28, f14, f26, rdn # perform operation
fmul.h f28, f14, f26, rmm # perform operation
fmul.h f28, f14, f26, rne # perform operation
fmul.h f28, f14, f26, rtz # perform operation
fmul.h f28, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmul.h f16, f19, f12, dyn # perform operation
fmul.h f16, f19, f12, rdn # perform operation
fmul.h f16, f19, f12, rmm # perform operation
fmul.h f16, f19, f12, rne # perform operation
fmul.h f16, f19, f12, rtz # perform operation
fmul.h f16, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f28, f6, f23, dyn # perform operation
fmul.h f28, f6, f23, rdn # perform operation
fmul.h f28, f6, f23, rmm # perform operation
fmul.h f28, f6, f23, rne # perform operation
fmul.h f28, f6, f23, rtz # perform operation
fmul.h f28, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f6, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fmul.h f15, f21, f6, dyn # perform operation
fmul.h f15, f21, f6, rdn # perform operation
fmul.h f15, f21, f6, rmm # perform operation
fmul.h f15, f21, f6, rne # perform operation
fmul.h f15, f21, f6, rtz # perform operation
fmul.h f15, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmul.h f26, f6, f19, dyn # perform operation
fmul.h f26, f6, f19, rdn # perform operation
fmul.h f26, f6, f19, rmm # perform operation
fmul.h f26, f6, f19, rne # perform operation
fmul.h f26, f6, f19, rtz # perform operation
fmul.h f26, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f6, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmul.h f13, f7, f26, dyn # perform operation
fmul.h f13, f7, f26, rdn # perform operation
fmul.h f13, f7, f26, rmm # perform operation
fmul.h f13, f7, f26, rne # perform operation
fmul.h f13, f7, f26, rtz # perform operation
fmul.h f13, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fmul.h f3, f16, f23, dyn # perform operation
fmul.h f3, f16, f23, rdn # perform operation
fmul.h f3, f16, f23, rmm # perform operation
fmul.h f3, f16, f23, rne # perform operation
fmul.h f3, f16, f23, rtz # perform operation
fmul.h f3, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmul.h f28, f15, f7, dyn # perform operation
fmul.h f28, f15, f7, rdn # perform operation
fmul.h f28, f15, f7, rmm # perform operation
fmul.h f28, f15, f7, rne # perform operation
fmul.h f28, f15, f7, rtz # perform operation
fmul.h f28, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmul.h f20, f22, f7, dyn # perform operation
fmul.h f20, f22, f7, rdn # perform operation
fmul.h f20, f22, f7, rmm # perform operation
fmul.h f20, f22, f7, rne # perform operation
fmul.h f20, f22, f7, rtz # perform operation
fmul.h f20, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fmul.h f30, f5, f6, dyn # perform operation
fmul.h f30, f5, f6, rdn # perform operation
fmul.h f30, f5, f6, rmm # perform operation
fmul.h f30, f5, f6, rne # perform operation
fmul.h f30, f5, f6, rtz # perform operation
fmul.h f30, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmul.h f26, f20, f21, dyn # perform operation
fmul.h f26, f20, f21, rdn # perform operation
fmul.h f26, f20, f21, rmm # perform operation
fmul.h f26, f20, f21, rne # perform operation
fmul.h f26, f20, f21, rtz # perform operation
fmul.h f26, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f20, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f19, f27, f21, dyn # perform operation
fmul.h f19, f27, f21, rdn # perform operation
fmul.h f19, f27, f21, rmm # perform operation
fmul.h f19, f27, f21, rne # perform operation
fmul.h f19, f27, f21, rtz # perform operation
fmul.h f19, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmul.h f17, f16, f3, dyn # perform operation
fmul.h f17, f16, f3, rdn # perform operation
fmul.h f17, f16, f3, rmm # perform operation
fmul.h f17, f16, f3, rne # perform operation
fmul.h f17, f16, f3, rtz # perform operation
fmul.h f17, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f16, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fmul.h f31, f18, f16, dyn # perform operation
fmul.h f31, f18, f16, rdn # perform operation
fmul.h f31, f18, f16, rmm # perform operation
fmul.h f31, f18, f16, rne # perform operation
fmul.h f31, f18, f16, rtz # perform operation
fmul.h f31, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmul.h f5, f15, f22, dyn # perform operation
fmul.h f5, f15, f22, rdn # perform operation
fmul.h f5, f15, f22, rmm # perform operation
fmul.h f5, f15, f22, rne # perform operation
fmul.h f5, f15, f22, rtz # perform operation
fmul.h f5, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmul.h f28, f8, f2, dyn # perform operation
fmul.h f28, f8, f2, rdn # perform operation
fmul.h f28, f8, f2, rmm # perform operation
fmul.h f28, f8, f2, rne # perform operation
fmul.h f28, f8, f2, rtz # perform operation
fmul.h f28, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmul.h f24, f16, f14, dyn # perform operation
fmul.h f24, f16, f14, rdn # perform operation
fmul.h f24, f16, f14, rmm # perform operation
fmul.h f24, f16, f14, rne # perform operation
fmul.h f24, f16, f14, rtz # perform operation
fmul.h f24, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f16, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fmul.h f9, f18, f1, dyn # perform operation
fmul.h f9, f18, f1, rdn # perform operation
fmul.h f9, f18, f1, rmm # perform operation
fmul.h f9, f18, f1, rne # perform operation
fmul.h f9, f18, f1, rtz # perform operation
fmul.h f9, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fmul.h f25, f18, f22, dyn # perform operation
fmul.h f25, f18, f22, rdn # perform operation
fmul.h f25, f18, f22, rmm # perform operation
fmul.h f25, f18, f22, rne # perform operation
fmul.h f25, f18, f22, rtz # perform operation
fmul.h f25, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmul.h f11, f30, f13, dyn # perform operation
fmul.h f11, f30, f13, rdn # perform operation
fmul.h f11, f30, f13, rmm # perform operation
fmul.h f11, f30, f13, rne # perform operation
fmul.h f11, f30, f13, rtz # perform operation
fmul.h f11, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f19, f6, f9, dyn # perform operation
fmul.h f19, f6, f9, rdn # perform operation
fmul.h f19, f6, f9, rmm # perform operation
fmul.h f19, f6, f9, rne # perform operation
fmul.h f19, f6, f9, rtz # perform operation
fmul.h f19, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fmul.h f29, f24, f27, dyn # perform operation
fmul.h f29, f24, f27, rdn # perform operation
fmul.h f29, f24, f27, rmm # perform operation
fmul.h f29, f24, f27, rne # perform operation
fmul.h f29, f24, f27, rtz # perform operation
fmul.h f29, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f24, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmul.h f25, f13, f3, dyn # perform operation
fmul.h f25, f13, f3, rdn # perform operation
fmul.h f25, f13, f3, rmm # perform operation
fmul.h f25, f13, f3, rne # perform operation
fmul.h f25, f13, f3, rtz # perform operation
fmul.h f25, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fmul.h f18, f12, f23, dyn # perform operation
fmul.h f18, f12, f23, rdn # perform operation
fmul.h f18, f12, f23, rmm # perform operation
fmul.h f18, f12, f23, rne # perform operation
fmul.h f18, f12, f23, rtz # perform operation
fmul.h f18, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f5, f31, f1, dyn # perform operation
fmul.h f5, f31, f1, rdn # perform operation
fmul.h f5, f31, f1, rmm # perform operation
fmul.h f5, f31, f1, rne # perform operation
fmul.h f5, f31, f1, rtz # perform operation
fmul.h f5, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmul.h f19, f23, f3, dyn # perform operation
fmul.h f19, f23, f3, rdn # perform operation
fmul.h f19, f23, f3, rmm # perform operation
fmul.h f19, f23, f3, rne # perform operation
fmul.h f19, f23, f3, rtz # perform operation
fmul.h f19, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmul.h f28, f5, f12, dyn # perform operation
fmul.h f28, f5, f12, rdn # perform operation
fmul.h f28, f5, f12, rmm # perform operation
fmul.h f28, f5, f12, rne # perform operation
fmul.h f28, f5, f12, rtz # perform operation
fmul.h f28, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmul.h f10, f28, f12, dyn # perform operation
fmul.h f10, f28, f12, rdn # perform operation
fmul.h f10, f28, f12, rmm # perform operation
fmul.h f10, f28, f12, rne # perform operation
fmul.h f10, f28, f12, rtz # perform operation
fmul.h f10, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
fmul.h f30, f19, f15, dyn # perform operation
fmul.h f30, f19, f15, rdn # perform operation
fmul.h f30, f19, f15, rmm # perform operation
fmul.h f30, f19, f15, rne # perform operation
fmul.h f30, f19, f15, rtz # perform operation
fmul.h f30, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f2, f10, f21, dyn # perform operation
fmul.h f2, f10, f21, rdn # perform operation
fmul.h f2, f10, f21, rmm # perform operation
fmul.h f2, f10, f21, rne # perform operation
fmul.h f2, f10, f21, rtz # perform operation
fmul.h f2, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f10, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmul.h f22, f26, f25, dyn # perform operation
fmul.h f22, f26, f25, rdn # perform operation
fmul.h f22, f26, f25, rmm # perform operation
fmul.h f22, f26, f25, rne # perform operation
fmul.h f22, f26, f25, rtz # perform operation
fmul.h f22, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
fmul.h f24, f20, f31, dyn # perform operation
fmul.h f24, f20, f31, rdn # perform operation
fmul.h f24, f20, f31, rmm # perform operation
fmul.h f24, f20, f31, rne # perform operation
fmul.h f24, f20, f31, rtz # perform operation
fmul.h f24, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f1, f14, f30, dyn # perform operation
fmul.h f1, f14, f30, rdn # perform operation
fmul.h f1, f14, f30, rmm # perform operation
fmul.h f1, f14, f30, rne # perform operation
fmul.h f1, f14, f30, rtz # perform operation
fmul.h f1, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fmul.h f9, f29, f14, dyn # perform operation
fmul.h f9, f29, f14, rdn # perform operation
fmul.h f9, f29, f14, rmm # perform operation
fmul.h f9, f29, f14, rne # perform operation
fmul.h f9, f29, f14, rtz # perform operation
fmul.h f9, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmul.h f27, f23, f31, dyn # perform operation
fmul.h f27, f23, f31, rdn # perform operation
fmul.h f27, f23, f31, rmm # perform operation
fmul.h f27, f23, f31, rne # perform operation
fmul.h f27, f23, f31, rtz # perform operation
fmul.h f27, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmul.h f14, f21, f24, dyn # perform operation
fmul.h f14, f21, f24, rdn # perform operation
fmul.h f14, f21, f24, rmm # perform operation
fmul.h f14, f21, f24, rne # perform operation
fmul.h f14, f21, f24, rtz # perform operation
fmul.h f14, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f14, f6, f30, dyn # perform operation
fmul.h f14, f6, f30, rdn # perform operation
fmul.h f14, f6, f30, rmm # perform operation
fmul.h f14, f6, f30, rne # perform operation
fmul.h f14, f6, f30, rtz # perform operation
fmul.h f14, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmul.h f10, f28, f3, dyn # perform operation
fmul.h f10, f28, f3, rdn # perform operation
fmul.h f10, f28, f3, rmm # perform operation
fmul.h f10, f28, f3, rne # perform operation
fmul.h f10, f28, f3, rtz # perform operation
fmul.h f10, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f28, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f21, f17, f10, dyn # perform operation
fmul.h f21, f17, f10, rdn # perform operation
fmul.h f21, f17, f10, rmm # perform operation
fmul.h f21, f17, f10, rne # perform operation
fmul.h f21, f17, f10, rtz # perform operation
fmul.h f21, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmul.h f18, f23, f15, dyn # perform operation
fmul.h f18, f23, f15, rdn # perform operation
fmul.h f18, f23, f15, rmm # perform operation
fmul.h f18, f23, f15, rne # perform operation
fmul.h f18, f23, f15, rtz # perform operation
fmul.h f18, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmul.h f7, f27, f28, dyn # perform operation
fmul.h f7, f27, f28, rdn # perform operation
fmul.h f7, f27, f28, rmm # perform operation
fmul.h f7, f27, f28, rne # perform operation
fmul.h f7, f27, f28, rtz # perform operation
fmul.h f7, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmul.h f19, f30, f25, dyn # perform operation
fmul.h f19, f30, f25, rdn # perform operation
fmul.h f19, f30, f25, rmm # perform operation
fmul.h f19, f30, f25, rne # perform operation
fmul.h f19, f30, f25, rtz # perform operation
fmul.h f19, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmul.h f17, f8, f31, dyn # perform operation
fmul.h f17, f8, f31, rdn # perform operation
fmul.h f17, f8, f31, rmm # perform operation
fmul.h f17, f8, f31, rne # perform operation
fmul.h f17, f8, f31, rtz # perform operation
fmul.h f17, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmul.h f13, f31, f6, dyn # perform operation
fmul.h f13, f31, f6, rdn # perform operation
fmul.h f13, f31, f6, rmm # perform operation
fmul.h f13, f31, f6, rne # perform operation
fmul.h f13, f31, f6, rtz # perform operation
fmul.h f13, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmul.h f26, f18, f17, dyn # perform operation
fmul.h f26, f18, f17, rdn # perform operation
fmul.h f26, f18, f17, rmm # perform operation
fmul.h f26, f18, f17, rne # perform operation
fmul.h f26, f18, f17, rtz # perform operation
fmul.h f26, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f18, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmul.h f22, f28, f17, dyn # perform operation
fmul.h f22, f28, f17, rdn # perform operation
fmul.h f22, f28, f17, rmm # perform operation
fmul.h f22, f28, f17, rne # perform operation
fmul.h f22, f28, f17, rtz # perform operation
fmul.h f22, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmul.h f20, f21, f9, dyn # perform operation
fmul.h f20, f21, f9, rdn # perform operation
fmul.h f20, f21, f9, rmm # perform operation
fmul.h f20, f21, f9, rne # perform operation
fmul.h f20, f21, f9, rtz # perform operation
fmul.h f20, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmul.h f19, f26, f10, dyn # perform operation
fmul.h f19, f26, f10, rdn # perform operation
fmul.h f19, f26, f10, rmm # perform operation
fmul.h f19, f26, f10, rne # perform operation
fmul.h f19, f26, f10, rtz # perform operation
fmul.h f19, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmul.h f15, f9, f18, dyn # perform operation
fmul.h f15, f9, f18, rdn # perform operation
fmul.h f15, f9, f18, rmm # perform operation
fmul.h f15, f9, f18, rne # perform operation
fmul.h f15, f9, f18, rtz # perform operation
fmul.h f15, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f9, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmul.h f25, f12, f10, dyn # perform operation
fmul.h f25, f12, f10, rdn # perform operation
fmul.h f25, f12, f10, rmm # perform operation
fmul.h f25, f12, f10, rne # perform operation
fmul.h f25, f12, f10, rtz # perform operation
fmul.h f25, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmul.h f3, f21, f29, dyn # perform operation
fmul.h f3, f21, f29, rdn # perform operation
fmul.h f3, f21, f29, rmm # perform operation
fmul.h f3, f21, f29, rne # perform operation
fmul.h f3, f21, f29, rtz # perform operation
fmul.h f3, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmul.h f21, f19, f30, dyn # perform operation
fmul.h f21, f19, f30, rdn # perform operation
fmul.h f21, f19, f30, rmm # perform operation
fmul.h f21, f19, f30, rne # perform operation
fmul.h f21, f19, f30, rtz # perform operation
fmul.h f21, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmul.h f30, f21, f17, dyn # perform operation
fmul.h f30, f21, f17, rdn # perform operation
fmul.h f30, f21, f17, rmm # perform operation
fmul.h f30, f21, f17, rne # perform operation
fmul.h f30, f21, f17, rtz # perform operation
fmul.h f30, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f21, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fmul.h f31, f25, f24, dyn # perform operation
fmul.h f31, f25, f24, rdn # perform operation
fmul.h f31, f25, f24, rmm # perform operation
fmul.h f31, f25, f24, rne # perform operation
fmul.h f31, f25, f24, rtz # perform operation
fmul.h f31, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f25, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fmul.h f27, f3, f1, dyn # perform operation
fmul.h f27, f3, f1, rdn # perform operation
fmul.h f27, f3, f1, rmm # perform operation
fmul.h f27, f3, f1, rne # perform operation
fmul.h f27, f3, f1, rtz # perform operation
fmul.h f27, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f3, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmul.h f3, f22, f12, dyn # perform operation
fmul.h f3, f22, f12, rdn # perform operation
fmul.h f3, f22, f12, rmm # perform operation
fmul.h f3, f22, f12, rne # perform operation
fmul.h f3, f22, f12, rtz # perform operation
fmul.h f3, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
fmul.h f7, f26, f17, dyn # perform operation
fmul.h f7, f26, f17, rdn # perform operation
fmul.h f7, f26, f17, rmm # perform operation
fmul.h f7, f26, f17, rne # perform operation
fmul.h f7, f26, f17, rtz # perform operation
fmul.h f7, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fmul.h f24, f10, f29, dyn # perform operation
fmul.h f24, f10, f29, rdn # perform operation
fmul.h f24, f10, f29, rmm # perform operation
fmul.h f24, f10, f29, rne # perform operation
fmul.h f24, f10, f29, rtz # perform operation
fmul.h f24, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f10, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmul.h f12, f27, f14, dyn # perform operation
fmul.h f12, f27, f14, rdn # perform operation
fmul.h f12, f27, f14, rmm # perform operation
fmul.h f12, f27, f14, rne # perform operation
fmul.h f12, f27, f14, rtz # perform operation
fmul.h f12, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f23, 0(x2) # load 0x0000fc01 from memory into f23
fmul.h f3, f30, f23, dyn # perform operation
fmul.h f3, f30, f23, rdn # perform operation
fmul.h f3, f30, f23, rmm # perform operation
fmul.h f3, f30, f23, rne # perform operation
fmul.h f3, f30, f23, rtz # perform operation
fmul.h f3, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fmul.h f30, f2, f22, dyn # perform operation
fmul.h f30, f2, f22, rdn # perform operation
fmul.h f30, f2, f22, rmm # perform operation
fmul.h f30, f2, f22, rne # perform operation
fmul.h f30, f2, f22, rtz # perform operation
fmul.h f30, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmul.h f6, f3, f11, dyn # perform operation
fmul.h f6, f3, f11, rdn # perform operation
fmul.h f6, f3, f11, rmm # perform operation
fmul.h f6, f3, f11, rne # perform operation
fmul.h f6, f3, f11, rtz # perform operation
fmul.h f6, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fmul.h f31, f3, f19, dyn # perform operation
fmul.h f31, f3, f19, rdn # perform operation
fmul.h f31, f3, f19, rmm # perform operation
fmul.h f31, f3, f19, rne # perform operation
fmul.h f31, f3, f19, rtz # perform operation
fmul.h f31, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmul.h f27, f22, f5, dyn # perform operation
fmul.h f27, f22, f5, rdn # perform operation
fmul.h f27, f22, f5, rmm # perform operation
fmul.h f27, f22, f5, rne # perform operation
fmul.h f27, f22, f5, rtz # perform operation
fmul.h f27, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmul.h f16, f19, f22, dyn # perform operation
fmul.h f16, f19, f22, rdn # perform operation
fmul.h f16, f19, f22, rmm # perform operation
fmul.h f16, f19, f22, rne # perform operation
fmul.h f16, f19, f22, rtz # perform operation
fmul.h f16, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmul.h f20, f15, f19, dyn # perform operation
fmul.h f20, f15, f19, rdn # perform operation
fmul.h f20, f15, f19, rmm # perform operation
fmul.h f20, f15, f19, rne # perform operation
fmul.h f20, f15, f19, rtz # perform operation
fmul.h f20, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmul.h f19, f2, f16, dyn # perform operation
fmul.h f19, f2, f16, rdn # perform operation
fmul.h f19, f2, f16, rmm # perform operation
fmul.h f19, f2, f16, rne # perform operation
fmul.h f19, f2, f16, rtz # perform operation
fmul.h f19, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmul.h f24, f23, f17, dyn # perform operation
fmul.h f24, f23, f17, rdn # perform operation
fmul.h f24, f23, f17, rmm # perform operation
fmul.h f24, f23, f17, rne # perform operation
fmul.h f24, f23, f17, rtz # perform operation
fmul.h f24, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fmul.h f5, f23, f24, dyn # perform operation
fmul.h f5, f23, f24, rdn # perform operation
fmul.h f5, f23, f24, rmm # perform operation
fmul.h f5, f23, f24, rne # perform operation
fmul.h f5, f23, f24, rtz # perform operation
fmul.h f5, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmul.h f29, f22, f31, dyn # perform operation
fmul.h f29, f22, f31, rdn # perform operation
fmul.h f29, f22, f31, rmm # perform operation
fmul.h f29, f22, f31, rne # perform operation
fmul.h f29, f22, f31, rtz # perform operation
fmul.h f29, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fmul.h f23, f12, f30, dyn # perform operation
fmul.h f23, f12, f30, rdn # perform operation
fmul.h f23, f12, f30, rmm # perform operation
fmul.h f23, f12, f30, rne # perform operation
fmul.h f23, f12, f30, rtz # perform operation
fmul.h f23, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f12, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmul.h f8, f23, f3, dyn # perform operation
fmul.h f8, f23, f3, rdn # perform operation
fmul.h f8, f23, f3, rmm # perform operation
fmul.h f8, f23, f3, rne # perform operation
fmul.h f8, f23, f3, rtz # perform operation
fmul.h f8, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmul.h f17, f27, f31, dyn # perform operation
fmul.h f17, f27, f31, rdn # perform operation
fmul.h f17, f27, f31, rmm # perform operation
fmul.h f17, f27, f31, rne # perform operation
fmul.h f17, f27, f31, rtz # perform operation
fmul.h f17, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmul.h f2, f16, f19, dyn # perform operation
fmul.h f2, f16, f19, rdn # perform operation
fmul.h f2, f16, f19, rmm # perform operation
fmul.h f2, f16, f19, rne # perform operation
fmul.h f2, f16, f19, rtz # perform operation
fmul.h f2, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f16, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f31, f25, f15, dyn # perform operation
fmul.h f31, f25, f15, rdn # perform operation
fmul.h f31, f25, f15, rmm # perform operation
fmul.h f31, f25, f15, rne # perform operation
fmul.h f31, f25, f15, rtz # perform operation
fmul.h f31, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f25, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fmul.h f7, f2, f6, dyn # perform operation
fmul.h f7, f2, f6, rdn # perform operation
fmul.h f7, f2, f6, rmm # perform operation
fmul.h f7, f2, f6, rne # perform operation
fmul.h f7, f2, f6, rtz # perform operation
fmul.h f7, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fmul.h f30, f5, f29, dyn # perform operation
fmul.h f30, f5, f29, rdn # perform operation
fmul.h f30, f5, f29, rmm # perform operation
fmul.h f30, f5, f29, rne # perform operation
fmul.h f30, f5, f29, rtz # perform operation
fmul.h f30, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f5, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmul.h f30, f17, f31, dyn # perform operation
fmul.h f30, f17, f31, rdn # perform operation
fmul.h f30, f17, f31, rmm # perform operation
fmul.h f30, f17, f31, rne # perform operation
fmul.h f30, f17, f31, rtz # perform operation
fmul.h f30, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmul.h f20, f19, f25, dyn # perform operation
fmul.h f20, f19, f25, rdn # perform operation
fmul.h f20, f19, f25, rmm # perform operation
fmul.h f20, f19, f25, rne # perform operation
fmul.h f20, f19, f25, rtz # perform operation
fmul.h f20, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fmul.h f13, f5, f19, dyn # perform operation
fmul.h f13, f5, f19, rdn # perform operation
fmul.h f13, f5, f19, rmm # perform operation
fmul.h f13, f5, f19, rne # perform operation
fmul.h f13, f5, f19, rtz # perform operation
fmul.h f13, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fmul.h f18, f13, f31, dyn # perform operation
fmul.h f18, f13, f31, rdn # perform operation
fmul.h f18, f13, f31, rmm # perform operation
fmul.h f18, f13, f31, rne # perform operation
fmul.h f18, f13, f31, rtz # perform operation
fmul.h f18, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f13, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fmul.h f7, f14, f5, dyn # perform operation
fmul.h f7, f14, f5, rdn # perform operation
fmul.h f7, f14, f5, rmm # perform operation
fmul.h f7, f14, f5, rne # perform operation
fmul.h f7, f14, f5, rtz # perform operation
fmul.h f7, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmul.h f7, f18, f5, dyn # perform operation
fmul.h f7, f18, f5, rdn # perform operation
fmul.h f7, f18, f5, rmm # perform operation
fmul.h f7, f18, f5, rne # perform operation
fmul.h f7, f18, f5, rtz # perform operation
fmul.h f7, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmul.h f27, f11, f7, dyn # perform operation
fmul.h f27, f11, f7, rdn # perform operation
fmul.h f27, f11, f7, rmm # perform operation
fmul.h f27, f11, f7, rne # perform operation
fmul.h f27, f11, f7, rtz # perform operation
fmul.h f27, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
fmul.h f5, f7, f11, dyn # perform operation
fmul.h f5, f7, f11, rdn # perform operation
fmul.h f5, f7, f11, rmm # perform operation
fmul.h f5, f7, f11, rne # perform operation
fmul.h f5, f7, f11, rtz # perform operation
fmul.h f5, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fmul.h f24, f12, f15, dyn # perform operation
fmul.h f24, f12, f15, rdn # perform operation
fmul.h f24, f12, f15, rmm # perform operation
fmul.h f24, f12, f15, rne # perform operation
fmul.h f24, f12, f15, rtz # perform operation
fmul.h f24, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fmul.h f29, f30, f22, dyn # perform operation
fmul.h f29, f30, f22, rdn # perform operation
fmul.h f29, f30, f22, rmm # perform operation
fmul.h f29, f30, f22, rne # perform operation
fmul.h f29, f30, f22, rtz # perform operation
fmul.h f29, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fmul.h f31, f7, f29, dyn # perform operation
fmul.h f31, f7, f29, rdn # perform operation
fmul.h f31, f7, f29, rmm # perform operation
fmul.h f31, f7, f29, rne # perform operation
fmul.h f31, f7, f29, rtz # perform operation
fmul.h f31, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f27, f11, f30, dyn # perform operation
fmul.h f27, f11, f30, rdn # perform operation
fmul.h f27, f11, f30, rmm # perform operation
fmul.h f27, f11, f30, rne # perform operation
fmul.h f27, f11, f30, rtz # perform operation
fmul.h f27, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmul.h f24, f17, f26, dyn # perform operation
fmul.h f24, f17, f26, rdn # perform operation
fmul.h f24, f17, f26, rmm # perform operation
fmul.h f24, f17, f26, rne # perform operation
fmul.h f24, f17, f26, rtz # perform operation
fmul.h f24, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmul.h f25, f17, f18, dyn # perform operation
fmul.h f25, f17, f18, rdn # perform operation
fmul.h f25, f17, f18, rmm # perform operation
fmul.h f25, f17, f18, rne # perform operation
fmul.h f25, f17, f18, rtz # perform operation
fmul.h f25, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmul.h f20, f16, f23, dyn # perform operation
fmul.h f20, f16, f23, rdn # perform operation
fmul.h f20, f16, f23, rmm # perform operation
fmul.h f20, f16, f23, rne # perform operation
fmul.h f20, f16, f23, rtz # perform operation
fmul.h f20, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmul.h f31, f29, f14, dyn # perform operation
fmul.h f31, f29, f14, rdn # perform operation
fmul.h f31, f29, f14, rmm # perform operation
fmul.h f31, f29, f14, rne # perform operation
fmul.h f31, f29, f14, rtz # perform operation
fmul.h f31, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f25, f12, f28, dyn # perform operation
fmul.h f25, f12, f28, rdn # perform operation
fmul.h f25, f12, f28, rmm # perform operation
fmul.h f25, f12, f28, rne # perform operation
fmul.h f25, f12, f28, rtz # perform operation
fmul.h f25, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmul.h f13, f18, f5, dyn # perform operation
fmul.h f13, f18, f5, rdn # perform operation
fmul.h f13, f18, f5, rmm # perform operation
fmul.h f13, f18, f5, rne # perform operation
fmul.h f13, f18, f5, rtz # perform operation
fmul.h f13, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmul.h f10, f28, f29, dyn # perform operation
fmul.h f10, f28, f29, rdn # perform operation
fmul.h f10, f28, f29, rmm # perform operation
fmul.h f10, f28, f29, rne # perform operation
fmul.h f10, f28, f29, rtz # perform operation
fmul.h f10, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f19, f25, f14, dyn # perform operation
fmul.h f19, f25, f14, rdn # perform operation
fmul.h f19, f25, f14, rmm # perform operation
fmul.h f19, f25, f14, rne # perform operation
fmul.h f19, f25, f14, rtz # perform operation
fmul.h f19, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f11, f20, f18, dyn # perform operation
fmul.h f11, f20, f18, rdn # perform operation
fmul.h f11, f20, f18, rmm # perform operation
fmul.h f11, f20, f18, rne # perform operation
fmul.h f11, f20, f18, rtz # perform operation
fmul.h f11, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmul.h f3, f8, f15, dyn # perform operation
fmul.h f3, f8, f15, rdn # perform operation
fmul.h f3, f8, f15, rmm # perform operation
fmul.h f3, f8, f15, rne # perform operation
fmul.h f3, f8, f15, rtz # perform operation
fmul.h f3, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fmul.h f6, f24, f9, dyn # perform operation
fmul.h f6, f24, f9, rdn # perform operation
fmul.h f6, f24, f9, rmm # perform operation
fmul.h f6, f24, f9, rne # perform operation
fmul.h f6, f24, f9, rtz # perform operation
fmul.h f6, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f24, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fmul.h f19, f29, f13, dyn # perform operation
fmul.h f19, f29, f13, rdn # perform operation
fmul.h f19, f29, f13, rmm # perform operation
fmul.h f19, f29, f13, rne # perform operation
fmul.h f19, f29, f13, rtz # perform operation
fmul.h f19, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmul.h f26, f28, f17, dyn # perform operation
fmul.h f26, f28, f17, rdn # perform operation
fmul.h f26, f28, f17, rmm # perform operation
fmul.h f26, f28, f17, rne # perform operation
fmul.h f26, f28, f17, rtz # perform operation
fmul.h f26, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fmul.h f25, f24, f2, dyn # perform operation
fmul.h f25, f24, f2, rdn # perform operation
fmul.h f25, f24, f2, rmm # perform operation
fmul.h f25, f24, f2, rne # perform operation
fmul.h f25, f24, f2, rtz # perform operation
fmul.h f25, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f24, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fmul.h f23, f19, f30, dyn # perform operation
fmul.h f23, f19, f30, rdn # perform operation
fmul.h f23, f19, f30, rmm # perform operation
fmul.h f23, f19, f30, rne # perform operation
fmul.h f23, f19, f30, rtz # perform operation
fmul.h f23, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f19, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f10, f2, f28, dyn # perform operation
fmul.h f10, f2, f28, rdn # perform operation
fmul.h f10, f2, f28, rmm # perform operation
fmul.h f10, f2, f28, rne # perform operation
fmul.h f10, f2, f28, rtz # perform operation
fmul.h f10, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f2, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmul.h f20, f31, f15, dyn # perform operation
fmul.h f20, f31, f15, rdn # perform operation
fmul.h f20, f31, f15, rmm # perform operation
fmul.h f20, f31, f15, rne # perform operation
fmul.h f20, f31, f15, rtz # perform operation
fmul.h f20, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fmul.h f6, f28, f2, dyn # perform operation
fmul.h f6, f28, f2, rdn # perform operation
fmul.h f6, f28, f2, rmm # perform operation
fmul.h f6, f28, f2, rne # perform operation
fmul.h f6, f28, f2, rtz # perform operation
fmul.h f6, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f5, f29, f10, dyn # perform operation
fmul.h f5, f29, f10, rdn # perform operation
fmul.h f5, f29, f10, rmm # perform operation
fmul.h f5, f29, f10, rne # perform operation
fmul.h f5, f29, f10, rtz # perform operation
fmul.h f5, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fmul.h f20, f19, f6, dyn # perform operation
fmul.h f20, f19, f6, rdn # perform operation
fmul.h f20, f19, f6, rmm # perform operation
fmul.h f20, f19, f6, rne # perform operation
fmul.h f20, f19, f6, rtz # perform operation
fmul.h f20, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f19, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fmul.h f22, f20, f7, dyn # perform operation
fmul.h f22, f20, f7, rdn # perform operation
fmul.h f22, f20, f7, rmm # perform operation
fmul.h f22, f20, f7, rne # perform operation
fmul.h f22, f20, f7, rtz # perform operation
fmul.h f22, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f20, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fmul.h f3, f19, f29, dyn # perform operation
fmul.h f3, f19, f29, rdn # perform operation
fmul.h f3, f19, f29, rmm # perform operation
fmul.h f3, f19, f29, rne # perform operation
fmul.h f3, f19, f29, rtz # perform operation
fmul.h f3, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f19, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmul.h f28, f17, f29, dyn # perform operation
fmul.h f28, f17, f29, rdn # perform operation
fmul.h f28, f17, f29, rmm # perform operation
fmul.h f28, f17, f29, rne # perform operation
fmul.h f28, f17, f29, rtz # perform operation
fmul.h f28, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fmul.h f2, f18, f6, dyn # perform operation
fmul.h f2, f18, f6, rdn # perform operation
fmul.h f2, f18, f6, rmm # perform operation
fmul.h f2, f18, f6, rne # perform operation
fmul.h f2, f18, f6, rtz # perform operation
fmul.h f2, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmul.h f15, f7, f24, dyn # perform operation
fmul.h f15, f7, f24, rdn # perform operation
fmul.h f15, f7, f24, rmm # perform operation
fmul.h f15, f7, f24, rne # perform operation
fmul.h f15, f7, f24, rtz # perform operation
fmul.h f15, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f25, f29, f2, dyn # perform operation
fmul.h f25, f29, f2, rdn # perform operation
fmul.h f25, f29, f2, rmm # perform operation
fmul.h f25, f29, f2, rne # perform operation
fmul.h f25, f29, f2, rtz # perform operation
fmul.h f25, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f6, 0(x2) # load 0x0000fc01 from memory into f6
fmul.h f5, f29, f6, dyn # perform operation
fmul.h f5, f29, f6, rdn # perform operation
fmul.h f5, f29, f6, rmm # perform operation
fmul.h f5, f29, f6, rne # perform operation
fmul.h f5, f29, f6, rtz # perform operation
fmul.h f5, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f29, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmul.h f3, f22, f31, dyn # perform operation
fmul.h f3, f22, f31, rdn # perform operation
fmul.h f3, f22, f31, rmm # perform operation
fmul.h f3, f22, f31, rne # perform operation
fmul.h f3, f22, f31, rtz # perform operation
fmul.h f3, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmul.h f18, f25, f20, dyn # perform operation
fmul.h f18, f25, f20, rdn # perform operation
fmul.h f18, f25, f20, rmm # perform operation
fmul.h f18, f25, f20, rne # perform operation
fmul.h f18, f25, f20, rtz # perform operation
fmul.h f18, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fmul.h f16, f1, f3, dyn # perform operation
fmul.h f16, f1, f3, rdn # perform operation
fmul.h f16, f1, f3, rmm # perform operation
fmul.h f16, f1, f3, rne # perform operation
fmul.h f16, f1, f3, rtz # perform operation
fmul.h f16, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fmul.h f5, f31, f17, dyn # perform operation
fmul.h f5, f31, f17, rdn # perform operation
fmul.h f5, f31, f17, rmm # perform operation
fmul.h f5, f31, f17, rne # perform operation
fmul.h f5, f31, f17, rtz # perform operation
fmul.h f5, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmul.h f5, f26, f21, dyn # perform operation
fmul.h f5, f26, f21, rdn # perform operation
fmul.h f5, f26, f21, rmm # perform operation
fmul.h f5, f26, f21, rne # perform operation
fmul.h f5, f26, f21, rtz # perform operation
fmul.h f5, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fmul.h f23, f18, f15, dyn # perform operation
fmul.h f23, f18, f15, rdn # perform operation
fmul.h f23, f18, f15, rmm # perform operation
fmul.h f23, f18, f15, rne # perform operation
fmul.h f23, f18, f15, rtz # perform operation
fmul.h f23, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fmul.h f17, f11, f29, dyn # perform operation
fmul.h f17, f11, f29, rdn # perform operation
fmul.h f17, f11, f29, rmm # perform operation
fmul.h f17, f11, f29, rne # perform operation
fmul.h f17, f11, f29, rtz # perform operation
fmul.h f17, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmul.h f31, f9, f29, dyn # perform operation
fmul.h f31, f9, f29, rdn # perform operation
fmul.h f31, f9, f29, rmm # perform operation
fmul.h f31, f9, f29, rne # perform operation
fmul.h f31, f9, f29, rtz # perform operation
fmul.h f31, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fmul.h f9, f17, f2, dyn # perform operation
fmul.h f9, f17, f2, rdn # perform operation
fmul.h f9, f17, f2, rmm # perform operation
fmul.h f9, f17, f2, rne # perform operation
fmul.h f9, f17, f2, rtz # perform operation
fmul.h f9, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmul.h f12, f25, f29, dyn # perform operation
fmul.h f12, f25, f29, rdn # perform operation
fmul.h f12, f25, f29, rmm # perform operation
fmul.h f12, f25, f29, rne # perform operation
fmul.h f12, f25, f29, rtz # perform operation
fmul.h f12, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fmul.h f11, f6, f12, dyn # perform operation
fmul.h f11, f6, f12, rdn # perform operation
fmul.h f11, f6, f12, rmm # perform operation
fmul.h f11, f6, f12, rne # perform operation
fmul.h f11, f6, f12, rtz # perform operation
fmul.h f11, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmul.h f15, f21, f28, dyn # perform operation
fmul.h f15, f21, f28, rdn # perform operation
fmul.h f15, f21, f28, rmm # perform operation
fmul.h f15, f21, f28, rne # perform operation
fmul.h f15, f21, f28, rtz # perform operation
fmul.h f15, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fmul.h f1, f28, f5, dyn # perform operation
fmul.h f1, f28, f5, rdn # perform operation
fmul.h f1, f28, f5, rmm # perform operation
fmul.h f1, f28, f5, rne # perform operation
fmul.h f1, f28, f5, rtz # perform operation
fmul.h f1, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmul.h f27, f14, f12, dyn # perform operation
fmul.h f27, f14, f12, rdn # perform operation
fmul.h f27, f14, f12, rmm # perform operation
fmul.h f27, f14, f12, rne # perform operation
fmul.h f27, f14, f12, rtz # perform operation
fmul.h f27, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmul.h f12, f24, f6, dyn # perform operation
fmul.h f12, f24, f6, rdn # perform operation
fmul.h f12, f24, f6, rmm # perform operation
fmul.h f12, f24, f6, rne # perform operation
fmul.h f12, f24, f6, rtz # perform operation
fmul.h f12, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmul.h f21, f23, f15, dyn # perform operation
fmul.h f21, f23, f15, rdn # perform operation
fmul.h f21, f23, f15, rmm # perform operation
fmul.h f21, f23, f15, rne # perform operation
fmul.h f21, f23, f15, rtz # perform operation
fmul.h f21, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmul.h f19, f27, f18, dyn # perform operation
fmul.h f19, f27, f18, rdn # perform operation
fmul.h f19, f27, f18, rmm # perform operation
fmul.h f19, f27, f18, rne # perform operation
fmul.h f19, f27, f18, rtz # perform operation
fmul.h f19, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmul.h f1, f27, f2, dyn # perform operation
fmul.h f1, f27, f2, rdn # perform operation
fmul.h f1, f27, f2, rmm # perform operation
fmul.h f1, f27, f2, rne # perform operation
fmul.h f1, f27, f2, rtz # perform operation
fmul.h f1, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmul.h f17, f30, f29, dyn # perform operation
fmul.h f17, f30, f29, rdn # perform operation
fmul.h f17, f30, f29, rmm # perform operation
fmul.h f17, f30, f29, rne # perform operation
fmul.h f17, f30, f29, rtz # perform operation
fmul.h f17, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fmul.h f1, f29, f12, dyn # perform operation
fmul.h f1, f29, f12, rdn # perform operation
fmul.h f1, f29, f12, rmm # perform operation
fmul.h f1, f29, f12, rne # perform operation
fmul.h f1, f29, f12, rtz # perform operation
fmul.h f1, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f29, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fmul.h f10, f1, f31, dyn # perform operation
fmul.h f10, f1, f31, rdn # perform operation
fmul.h f10, f1, f31, rmm # perform operation
fmul.h f10, f1, f31, rne # perform operation
fmul.h f10, f1, f31, rtz # perform operation
fmul.h f10, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmul.h f22, f29, f17, dyn # perform operation
fmul.h f22, f29, f17, rdn # perform operation
fmul.h f22, f29, f17, rmm # perform operation
fmul.h f22, f29, f17, rne # perform operation
fmul.h f22, f29, f17, rtz # perform operation
fmul.h f22, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmul.h f18, f8, f10, dyn # perform operation
fmul.h f18, f8, f10, rdn # perform operation
fmul.h f18, f8, f10, rmm # perform operation
fmul.h f18, f8, f10, rne # perform operation
fmul.h f18, f8, f10, rtz # perform operation
fmul.h f18, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmul.h f24, f13, f6, dyn # perform operation
fmul.h f24, f13, f6, rdn # perform operation
fmul.h f24, f13, f6, rmm # perform operation
fmul.h f24, f13, f6, rne # perform operation
fmul.h f24, f13, f6, rtz # perform operation
fmul.h f24, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fmul.h f14, f2, f3, dyn # perform operation
fmul.h f14, f2, f3, rdn # perform operation
fmul.h f14, f2, f3, rmm # perform operation
fmul.h f14, f2, f3, rne # perform operation
fmul.h f14, f2, f3, rtz # perform operation
fmul.h f14, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmul.h f17, f6, f1, dyn # perform operation
fmul.h f17, f6, f1, rdn # perform operation
fmul.h f17, f6, f1, rmm # perform operation
fmul.h f17, f6, f1, rne # perform operation
fmul.h f17, f6, f1, rtz # perform operation
fmul.h f17, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmul.h f29, f5, f20, dyn # perform operation
fmul.h f29, f5, f20, rdn # perform operation
fmul.h f29, f5, f20, rmm # perform operation
fmul.h f29, f5, f20, rne # perform operation
fmul.h f29, f5, f20, rtz # perform operation
fmul.h f29, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
fmul.h f15, f5, f24, dyn # perform operation
fmul.h f15, f5, f24, rdn # perform operation
fmul.h f15, f5, f24, rmm # perform operation
fmul.h f15, f5, f24, rne # perform operation
fmul.h f15, f5, f24, rtz # perform operation
fmul.h f15, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmul.h f25, f21, f18, dyn # perform operation
fmul.h f25, f21, f18, rdn # perform operation
fmul.h f25, f21, f18, rmm # perform operation
fmul.h f25, f21, f18, rne # perform operation
fmul.h f25, f21, f18, rtz # perform operation
fmul.h f25, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmul.h f3, f23, f15, dyn # perform operation
fmul.h f3, f23, f15, rdn # perform operation
fmul.h f3, f23, f15, rmm # perform operation
fmul.h f3, f23, f15, rne # perform operation
fmul.h f3, f23, f15, rtz # perform operation
fmul.h f3, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f27, f19, f17, dyn # perform operation
fmul.h f27, f19, f17, rdn # perform operation
fmul.h f27, f19, f17, rmm # perform operation
fmul.h f27, f19, f17, rne # perform operation
fmul.h f27, f19, f17, rtz # perform operation
fmul.h f27, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmul.h f8, f6, f11, dyn # perform operation
fmul.h f8, f6, f11, rdn # perform operation
fmul.h f8, f6, f11, rmm # perform operation
fmul.h f8, f6, f11, rne # perform operation
fmul.h f8, f6, f11, rtz # perform operation
fmul.h f8, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f6, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f15, f27, f12, dyn # perform operation
fmul.h f15, f27, f12, rdn # perform operation
fmul.h f15, f27, f12, rmm # perform operation
fmul.h f15, f27, f12, rne # perform operation
fmul.h f15, f27, f12, rtz # perform operation
fmul.h f15, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmul.h f21, f8, f7, dyn # perform operation
fmul.h f21, f8, f7, rdn # perform operation
fmul.h f21, f8, f7, rmm # perform operation
fmul.h f21, f8, f7, rne # perform operation
fmul.h f21, f8, f7, rtz # perform operation
fmul.h f21, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmul.h f23, f18, f5, dyn # perform operation
fmul.h f23, f18, f5, rdn # perform operation
fmul.h f23, f18, f5, rmm # perform operation
fmul.h f23, f18, f5, rne # perform operation
fmul.h f23, f18, f5, rtz # perform operation
fmul.h f23, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f18, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fmul.h f16, f9, f19, dyn # perform operation
fmul.h f16, f9, f19, rdn # perform operation
fmul.h f16, f9, f19, rmm # perform operation
fmul.h f16, f9, f19, rne # perform operation
fmul.h f16, f9, f19, rtz # perform operation
fmul.h f16, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f21, f29, f22, dyn # perform operation
fmul.h f21, f29, f22, rdn # perform operation
fmul.h f21, f29, f22, rmm # perform operation
fmul.h f21, f29, f22, rne # perform operation
fmul.h f21, f29, f22, rtz # perform operation
fmul.h f21, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmul.h f17, f25, f23, dyn # perform operation
fmul.h f17, f25, f23, rdn # perform operation
fmul.h f17, f25, f23, rmm # perform operation
fmul.h f17, f25, f23, rne # perform operation
fmul.h f17, f25, f23, rtz # perform operation
fmul.h f17, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmul.h f10, f23, f13, dyn # perform operation
fmul.h f10, f23, f13, rdn # perform operation
fmul.h f10, f23, f13, rmm # perform operation
fmul.h f10, f23, f13, rne # perform operation
fmul.h f10, f23, f13, rtz # perform operation
fmul.h f10, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmul.h f13, f27, f16, dyn # perform operation
fmul.h f13, f27, f16, rdn # perform operation
fmul.h f13, f27, f16, rmm # perform operation
fmul.h f13, f27, f16, rne # perform operation
fmul.h f13, f27, f16, rtz # perform operation
fmul.h f13, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmul.h f28, f18, f26, dyn # perform operation
fmul.h f28, f18, f26, rdn # perform operation
fmul.h f28, f18, f26, rmm # perform operation
fmul.h f28, f18, f26, rne # perform operation
fmul.h f28, f18, f26, rtz # perform operation
fmul.h f28, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmul.h f17, f13, f18, dyn # perform operation
fmul.h f17, f13, f18, rdn # perform operation
fmul.h f17, f13, f18, rmm # perform operation
fmul.h f17, f13, f18, rne # perform operation
fmul.h f17, f13, f18, rtz # perform operation
fmul.h f17, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f13, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmul.h f14, f13, f3, dyn # perform operation
fmul.h f14, f13, f3, rdn # perform operation
fmul.h f14, f13, f3, rmm # perform operation
fmul.h f14, f13, f3, rne # perform operation
fmul.h f14, f13, f3, rtz # perform operation
fmul.h f14, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fmul.h f11, f14, f30, dyn # perform operation
fmul.h f11, f14, f30, rdn # perform operation
fmul.h f11, f14, f30, rmm # perform operation
fmul.h f11, f14, f30, rne # perform operation
fmul.h f11, f14, f30, rtz # perform operation
fmul.h f11, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f23, f6, f28, dyn # perform operation
fmul.h f23, f6, f28, rdn # perform operation
fmul.h f23, f6, f28, rmm # perform operation
fmul.h f23, f6, f28, rne # perform operation
fmul.h f23, f6, f28, rtz # perform operation
fmul.h f23, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmul.h f9, f12, f26, dyn # perform operation
fmul.h f9, f12, f26, rdn # perform operation
fmul.h f9, f12, f26, rmm # perform operation
fmul.h f9, f12, f26, rne # perform operation
fmul.h f9, f12, f26, rtz # perform operation
fmul.h f9, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f12, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmul.h f13, f9, f7, dyn # perform operation
fmul.h f13, f9, f7, rdn # perform operation
fmul.h f13, f9, f7, rmm # perform operation
fmul.h f13, f9, f7, rne # perform operation
fmul.h f13, f9, f7, rtz # perform operation
fmul.h f13, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmul.h f16, f21, f30, dyn # perform operation
fmul.h f16, f21, f30, rdn # perform operation
fmul.h f16, f21, f30, rmm # perform operation
fmul.h f16, f21, f30, rne # perform operation
fmul.h f16, f21, f30, rtz # perform operation
fmul.h f16, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f5, f19, f28, dyn # perform operation
fmul.h f5, f19, f28, rdn # perform operation
fmul.h f5, f19, f28, rmm # perform operation
fmul.h f5, f19, f28, rne # perform operation
fmul.h f5, f19, f28, rtz # perform operation
fmul.h f5, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmul.h f29, f2, f14, dyn # perform operation
fmul.h f29, f2, f14, rdn # perform operation
fmul.h f29, f2, f14, rmm # perform operation
fmul.h f29, f2, f14, rne # perform operation
fmul.h f29, f2, f14, rtz # perform operation
fmul.h f29, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmul.h f29, f31, f8, dyn # perform operation
fmul.h f29, f31, f8, rdn # perform operation
fmul.h f29, f31, f8, rmm # perform operation
fmul.h f29, f31, f8, rne # perform operation
fmul.h f29, f31, f8, rtz # perform operation
fmul.h f29, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fmul.h f3, f26, f22, dyn # perform operation
fmul.h f3, f26, f22, rdn # perform operation
fmul.h f3, f26, f22, rmm # perform operation
fmul.h f3, f26, f22, rne # perform operation
fmul.h f3, f26, f22, rtz # perform operation
fmul.h f3, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f26, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fmul.h f3, f28, f18, dyn # perform operation
fmul.h f3, f28, f18, rdn # perform operation
fmul.h f3, f28, f18, rmm # perform operation
fmul.h f3, f28, f18, rne # perform operation
fmul.h f3, f28, f18, rtz # perform operation
fmul.h f3, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmul.h f5, f14, f19, dyn # perform operation
fmul.h f5, f14, f19, rdn # perform operation
fmul.h f5, f14, f19, rmm # perform operation
fmul.h f5, f14, f19, rne # perform operation
fmul.h f5, f14, f19, rtz # perform operation
fmul.h f5, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmul.h f20, f1, f26, dyn # perform operation
fmul.h f20, f1, f26, rdn # perform operation
fmul.h f20, f1, f26, rmm # perform operation
fmul.h f20, f1, f26, rne # perform operation
fmul.h f20, f1, f26, rtz # perform operation
fmul.h f20, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f1, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
fmul.h f9, f22, f11, dyn # perform operation
fmul.h f9, f22, f11, rdn # perform operation
fmul.h f9, f22, f11, rmm # perform operation
fmul.h f9, f22, f11, rne # perform operation
fmul.h f9, f22, f11, rtz # perform operation
fmul.h f9, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmul.h f2, f13, f11, dyn # perform operation
fmul.h f2, f13, f11, rdn # perform operation
fmul.h f2, f13, f11, rmm # perform operation
fmul.h f2, f13, f11, rne # perform operation
fmul.h f2, f13, f11, rtz # perform operation
fmul.h f2, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmul.h f15, f31, f9, dyn # perform operation
fmul.h f15, f31, f9, rdn # perform operation
fmul.h f15, f31, f9, rmm # perform operation
fmul.h f15, f31, f9, rne # perform operation
fmul.h f15, f31, f9, rtz # perform operation
fmul.h f15, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f25, f11, f13, dyn # perform operation
fmul.h f25, f11, f13, rdn # perform operation
fmul.h f25, f11, f13, rmm # perform operation
fmul.h f25, f11, f13, rne # perform operation
fmul.h f25, f11, f13, rtz # perform operation
fmul.h f25, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fmul.h f29, f24, f8, dyn # perform operation
fmul.h f29, f24, f8, rdn # perform operation
fmul.h f29, f24, f8, rmm # perform operation
fmul.h f29, f24, f8, rne # perform operation
fmul.h f29, f24, f8, rtz # perform operation
fmul.h f29, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f24, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmul.h f3, f12, f16, dyn # perform operation
fmul.h f3, f12, f16, rdn # perform operation
fmul.h f3, f12, f16, rmm # perform operation
fmul.h f3, f12, f16, rne # perform operation
fmul.h f3, f12, f16, rtz # perform operation
fmul.h f3, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmul.h f28, f25, f14, dyn # perform operation
fmul.h f28, f25, f14, rdn # perform operation
fmul.h f28, f25, f14, rmm # perform operation
fmul.h f28, f25, f14, rne # perform operation
fmul.h f28, f25, f14, rtz # perform operation
fmul.h f28, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f25, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmul.h f23, f26, f17, dyn # perform operation
fmul.h f23, f26, f17, rdn # perform operation
fmul.h f23, f26, f17, rmm # perform operation
fmul.h f23, f26, f17, rne # perform operation
fmul.h f23, f26, f17, rtz # perform operation
fmul.h f23, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f15, f24, f26, dyn # perform operation
fmul.h f15, f24, f26, rdn # perform operation
fmul.h f15, f24, f26, rmm # perform operation
fmul.h f15, f24, f26, rne # perform operation
fmul.h f15, f24, f26, rtz # perform operation
fmul.h f15, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmul.h f19, f13, f9, dyn # perform operation
fmul.h f19, f13, f9, rdn # perform operation
fmul.h f19, f13, f9, rmm # perform operation
fmul.h f19, f13, f9, rne # perform operation
fmul.h f19, f13, f9, rtz # perform operation
fmul.h f19, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fmul.h f24, f31, f6, dyn # perform operation
fmul.h f24, f31, f6, rdn # perform operation
fmul.h f24, f31, f6, rmm # perform operation
fmul.h f24, f31, f6, rne # perform operation
fmul.h f24, f31, f6, rtz # perform operation
fmul.h f24, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmul.h f11, f30, f16, dyn # perform operation
fmul.h f11, f30, f16, rdn # perform operation
fmul.h f11, f30, f16, rmm # perform operation
fmul.h f11, f30, f16, rne # perform operation
fmul.h f11, f30, f16, rtz # perform operation
fmul.h f11, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmul.h f23, f6, f8, dyn # perform operation
fmul.h f23, f6, f8, rdn # perform operation
fmul.h f23, f6, f8, rmm # perform operation
fmul.h f23, f6, f8, rne # perform operation
fmul.h f23, f6, f8, rtz # perform operation
fmul.h f23, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f23, f7, f16, dyn # perform operation
fmul.h f23, f7, f16, rdn # perform operation
fmul.h f23, f7, f16, rmm # perform operation
fmul.h f23, f7, f16, rne # perform operation
fmul.h f23, f7, f16, rtz # perform operation
fmul.h f23, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fmul.h f20, f21, f6, dyn # perform operation
fmul.h f20, f21, f6, rdn # perform operation
fmul.h f20, f21, f6, rmm # perform operation
fmul.h f20, f21, f6, rne # perform operation
fmul.h f20, f21, f6, rtz # perform operation
fmul.h f20, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmul.h f5, f24, f3, dyn # perform operation
fmul.h f5, f24, f3, rdn # perform operation
fmul.h f5, f24, f3, rmm # perform operation
fmul.h f5, f24, f3, rne # perform operation
fmul.h f5, f24, f3, rtz # perform operation
fmul.h f5, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fmul.h f23, f26, f14, dyn # perform operation
fmul.h f23, f26, f14, rdn # perform operation
fmul.h f23, f26, f14, rmm # perform operation
fmul.h f23, f26, f14, rne # perform operation
fmul.h f23, f26, f14, rtz # perform operation
fmul.h f23, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f11, f19, f28, dyn # perform operation
fmul.h f11, f19, f28, rdn # perform operation
fmul.h f11, f19, f28, rmm # perform operation
fmul.h f11, f19, f28, rne # perform operation
fmul.h f11, f19, f28, rtz # perform operation
fmul.h f11, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f3, f14, f25, dyn # perform operation
fmul.h f3, f14, f25, rdn # perform operation
fmul.h f3, f14, f25, rmm # perform operation
fmul.h f3, f14, f25, rne # perform operation
fmul.h f3, f14, f25, rtz # perform operation
fmul.h f3, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmul.h f12, f5, f20, dyn # perform operation
fmul.h f12, f5, f20, rdn # perform operation
fmul.h f12, f5, f20, rmm # perform operation
fmul.h f12, f5, f20, rne # perform operation
fmul.h f12, f5, f20, rtz # perform operation
fmul.h f12, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f5, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmul.h f6, f28, f15, dyn # perform operation
fmul.h f6, f28, f15, rdn # perform operation
fmul.h f6, f28, f15, rmm # perform operation
fmul.h f6, f28, f15, rne # perform operation
fmul.h f6, f28, f15, rtz # perform operation
fmul.h f6, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmul.h f27, f21, f3, dyn # perform operation
fmul.h f27, f21, f3, rdn # perform operation
fmul.h f27, f21, f3, rmm # perform operation
fmul.h f27, f21, f3, rne # perform operation
fmul.h f27, f21, f3, rtz # perform operation
fmul.h f27, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fmul.h f5, f12, f27, dyn # perform operation
fmul.h f5, f12, f27, rdn # perform operation
fmul.h f5, f12, f27, rmm # perform operation
fmul.h f5, f12, f27, rne # perform operation
fmul.h f5, f12, f27, rtz # perform operation
fmul.h f5, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fmul.h f22, f25, f11, dyn # perform operation
fmul.h f22, f25, f11, rdn # perform operation
fmul.h f22, f25, f11, rmm # perform operation
fmul.h f22, f25, f11, rne # perform operation
fmul.h f22, f25, f11, rtz # perform operation
fmul.h f22, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f25, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f24, f15, f23, dyn # perform operation
fmul.h f24, f15, f23, rdn # perform operation
fmul.h f24, f15, f23, rmm # perform operation
fmul.h f24, f15, f23, rne # perform operation
fmul.h f24, f15, f23, rtz # perform operation
fmul.h f24, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f15, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fmul.h f31, f3, f2, dyn # perform operation
fmul.h f31, f3, f2, rdn # perform operation
fmul.h f31, f3, f2, rmm # perform operation
fmul.h f31, f3, f2, rne # perform operation
fmul.h f31, f3, f2, rtz # perform operation
fmul.h f31, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmul.h f29, f31, f6, dyn # perform operation
fmul.h f29, f31, f6, rdn # perform operation
fmul.h f29, f31, f6, rmm # perform operation
fmul.h f29, f31, f6, rne # perform operation
fmul.h f29, f31, f6, rtz # perform operation
fmul.h f29, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f31, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmul.h f15, f25, f21, dyn # perform operation
fmul.h f15, f25, f21, rdn # perform operation
fmul.h f15, f25, f21, rmm # perform operation
fmul.h f15, f25, f21, rne # perform operation
fmul.h f15, f25, f21, rtz # perform operation
fmul.h f15, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
fmul.h f9, f15, f5, dyn # perform operation
fmul.h f9, f15, f5, rdn # perform operation
fmul.h f9, f15, f5, rmm # perform operation
fmul.h f9, f15, f5, rne # perform operation
fmul.h f9, f15, f5, rtz # perform operation
fmul.h f9, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f15, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f7, f26, f30, dyn # perform operation
fmul.h f7, f26, f30, rdn # perform operation
fmul.h f7, f26, f30, rmm # perform operation
fmul.h f7, f26, f30, rne # perform operation
fmul.h f7, f26, f30, rtz # perform operation
fmul.h f7, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmul.h f5, f30, f3, dyn # perform operation
fmul.h f5, f30, f3, rdn # perform operation
fmul.h f5, f30, f3, rmm # perform operation
fmul.h f5, f30, f3, rne # perform operation
fmul.h f5, f30, f3, rtz # perform operation
fmul.h f5, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmul.h f17, f21, f11, dyn # perform operation
fmul.h f17, f21, f11, rdn # perform operation
fmul.h f17, f21, f11, rmm # perform operation
fmul.h f17, f21, f11, rne # perform operation
fmul.h f17, f21, f11, rtz # perform operation
fmul.h f17, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f21, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fmul.h f10, f28, f21, dyn # perform operation
fmul.h f10, f28, f21, rdn # perform operation
fmul.h f10, f28, f21, rmm # perform operation
fmul.h f10, f28, f21, rne # perform operation
fmul.h f10, f28, f21, rtz # perform operation
fmul.h f10, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmul.h f16, f31, f18, dyn # perform operation
fmul.h f16, f31, f18, rdn # perform operation
fmul.h f16, f31, f18, rmm # perform operation
fmul.h f16, f31, f18, rne # perform operation
fmul.h f16, f31, f18, rtz # perform operation
fmul.h f16, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmul.h f12, f27, f26, dyn # perform operation
fmul.h f12, f27, f26, rdn # perform operation
fmul.h f12, f27, f26, rmm # perform operation
fmul.h f12, f27, f26, rne # perform operation
fmul.h f12, f27, f26, rtz # perform operation
fmul.h f12, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmul.h f14, f28, f5, dyn # perform operation
fmul.h f14, f28, f5, rdn # perform operation
fmul.h f14, f28, f5, rmm # perform operation
fmul.h f14, f28, f5, rne # perform operation
fmul.h f14, f28, f5, rtz # perform operation
fmul.h f14, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmul.h f29, f30, f17, dyn # perform operation
fmul.h f29, f30, f17, rdn # perform operation
fmul.h f29, f30, f17, rmm # perform operation
fmul.h f29, f30, f17, rne # perform operation
fmul.h f29, f30, f17, rtz # perform operation
fmul.h f29, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmul.h f14, f8, f29, dyn # perform operation
fmul.h f14, f8, f29, rdn # perform operation
fmul.h f14, f8, f29, rmm # perform operation
fmul.h f14, f8, f29, rne # perform operation
fmul.h f14, f8, f29, rtz # perform operation
fmul.h f14, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmul.h f16, f22, f10, dyn # perform operation
fmul.h f16, f22, f10, rdn # perform operation
fmul.h f16, f22, f10, rmm # perform operation
fmul.h f16, f22, f10, rne # perform operation
fmul.h f16, f22, f10, rtz # perform operation
fmul.h f16, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmul.h f9, f16, f2, dyn # perform operation
fmul.h f9, f16, f2, rdn # perform operation
fmul.h f9, f16, f2, rmm # perform operation
fmul.h f9, f16, f2, rne # perform operation
fmul.h f9, f16, f2, rtz # perform operation
fmul.h f9, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f16, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmul.h f8, f30, f21, dyn # perform operation
fmul.h f8, f30, f21, rdn # perform operation
fmul.h f8, f30, f21, rmm # perform operation
fmul.h f8, f30, f21, rne # perform operation
fmul.h f8, f30, f21, rtz # perform operation
fmul.h f8, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmul.h f23, f28, f25, dyn # perform operation
fmul.h f23, f28, f25, rdn # perform operation
fmul.h f23, f28, f25, rmm # perform operation
fmul.h f23, f28, f25, rne # perform operation
fmul.h f23, f28, f25, rtz # perform operation
fmul.h f23, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f28, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmul.h f19, f17, f24, dyn # perform operation
fmul.h f19, f17, f24, rdn # perform operation
fmul.h f19, f17, f24, rmm # perform operation
fmul.h f19, f17, f24, rne # perform operation
fmul.h f19, f17, f24, rtz # perform operation
fmul.h f19, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmul.h f2, f27, f16, dyn # perform operation
fmul.h f2, f27, f16, rdn # perform operation
fmul.h f2, f27, f16, rmm # perform operation
fmul.h f2, f27, f16, rne # perform operation
fmul.h f2, f27, f16, rtz # perform operation
fmul.h f2, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fmul.h f20, f25, f29, dyn # perform operation
fmul.h f20, f25, f29, rdn # perform operation
fmul.h f20, f25, f29, rmm # perform operation
fmul.h f20, f25, f29, rne # perform operation
fmul.h f20, f25, f29, rtz # perform operation
fmul.h f20, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f25, f17, f9, dyn # perform operation
fmul.h f25, f17, f9, rdn # perform operation
fmul.h f25, f17, f9, rmm # perform operation
fmul.h f25, f17, f9, rne # perform operation
fmul.h f25, f17, f9, rtz # perform operation
fmul.h f25, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmul.h f18, f9, f29, dyn # perform operation
fmul.h f18, f9, f29, rdn # perform operation
fmul.h f18, f9, f29, rmm # perform operation
fmul.h f18, f9, f29, rne # perform operation
fmul.h f18, f9, f29, rtz # perform operation
fmul.h f18, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmul.h f20, f29, f30, dyn # perform operation
fmul.h f20, f29, f30, rdn # perform operation
fmul.h f20, f29, f30, rmm # perform operation
fmul.h f20, f29, f30, rne # perform operation
fmul.h f20, f29, f30, rtz # perform operation
fmul.h f20, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f1, f20, f10, dyn # perform operation
fmul.h f1, f20, f10, rdn # perform operation
fmul.h f1, f20, f10, rmm # perform operation
fmul.h f1, f20, f10, rne # perform operation
fmul.h f1, f20, f10, rtz # perform operation
fmul.h f1, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fmul.h f27, f1, f22, dyn # perform operation
fmul.h f27, f1, f22, rdn # perform operation
fmul.h f27, f1, f22, rmm # perform operation
fmul.h f27, f1, f22, rne # perform operation
fmul.h f27, f1, f22, rtz # perform operation
fmul.h f27, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fmul.h f7, f2, f15, dyn # perform operation
fmul.h f7, f2, f15, rdn # perform operation
fmul.h f7, f2, f15, rmm # perform operation
fmul.h f7, f2, f15, rne # perform operation
fmul.h f7, f2, f15, rtz # perform operation
fmul.h f7, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmul.h f22, f31, f20, dyn # perform operation
fmul.h f22, f31, f20, rdn # perform operation
fmul.h f22, f31, f20, rmm # perform operation
fmul.h f22, f31, f20, rne # perform operation
fmul.h f22, f31, f20, rtz # perform operation
fmul.h f22, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmul.h f7, f11, f16, dyn # perform operation
fmul.h f7, f11, f16, rdn # perform operation
fmul.h f7, f11, f16, rmm # perform operation
fmul.h f7, f11, f16, rne # perform operation
fmul.h f7, f11, f16, rtz # perform operation
fmul.h f7, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f6, 0(x2) # load 0x0000fe00 from memory into f6
fmul.h f1, f22, f6, dyn # perform operation
fmul.h f1, f22, f6, rdn # perform operation
fmul.h f1, f22, f6, rmm # perform operation
fmul.h f1, f22, f6, rne # perform operation
fmul.h f1, f22, f6, rtz # perform operation
fmul.h f1, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmul.h f20, f11, f12, dyn # perform operation
fmul.h f20, f11, f12, rdn # perform operation
fmul.h f20, f11, f12, rmm # perform operation
fmul.h f20, f11, f12, rne # perform operation
fmul.h f20, f11, f12, rtz # perform operation
fmul.h f20, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmul.h f8, f28, f9, dyn # perform operation
fmul.h f8, f28, f9, rdn # perform operation
fmul.h f8, f28, f9, rmm # perform operation
fmul.h f8, f28, f9, rne # perform operation
fmul.h f8, f28, f9, rtz # perform operation
fmul.h f8, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f28, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fmul.h f1, f2, f16, dyn # perform operation
fmul.h f1, f2, f16, rdn # perform operation
fmul.h f1, f2, f16, rmm # perform operation
fmul.h f1, f2, f16, rne # perform operation
fmul.h f1, f2, f16, rtz # perform operation
fmul.h f1, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f2, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f6, f21, f30, dyn # perform operation
fmul.h f6, f21, f30, rdn # perform operation
fmul.h f6, f21, f30, rmm # perform operation
fmul.h f6, f21, f30, rne # perform operation
fmul.h f6, f21, f30, rtz # perform operation
fmul.h f6, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmul.h f16, f30, f19, dyn # perform operation
fmul.h f16, f30, f19, rdn # perform operation
fmul.h f16, f30, f19, rmm # perform operation
fmul.h f16, f30, f19, rne # perform operation
fmul.h f16, f30, f19, rtz # perform operation
fmul.h f16, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f7, f8, f14, dyn # perform operation
fmul.h f7, f8, f14, rdn # perform operation
fmul.h f7, f8, f14, rmm # perform operation
fmul.h f7, f8, f14, rne # perform operation
fmul.h f7, f8, f14, rtz # perform operation
fmul.h f7, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f8, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmul.h f28, f1, f12, dyn # perform operation
fmul.h f28, f1, f12, rdn # perform operation
fmul.h f28, f1, f12, rmm # perform operation
fmul.h f28, f1, f12, rne # perform operation
fmul.h f28, f1, f12, rtz # perform operation
fmul.h f28, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmul.h f26, f11, f16, dyn # perform operation
fmul.h f26, f11, f16, rdn # perform operation
fmul.h f26, f11, f16, rmm # perform operation
fmul.h f26, f11, f16, rne # perform operation
fmul.h f26, f11, f16, rtz # perform operation
fmul.h f26, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmul.h f13, f17, f26, dyn # perform operation
fmul.h f13, f17, f26, rdn # perform operation
fmul.h f13, f17, f26, rmm # perform operation
fmul.h f13, f17, f26, rne # perform operation
fmul.h f13, f17, f26, rtz # perform operation
fmul.h f13, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fmul.h f11, f25, f30, dyn # perform operation
fmul.h f11, f25, f30, rdn # perform operation
fmul.h f11, f25, f30, rmm # perform operation
fmul.h f11, f25, f30, rne # perform operation
fmul.h f11, f25, f30, rtz # perform operation
fmul.h f11, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fmul.h f24, f15, f22, dyn # perform operation
fmul.h f24, f15, f22, rdn # perform operation
fmul.h f24, f15, f22, rmm # perform operation
fmul.h f24, f15, f22, rne # perform operation
fmul.h f24, f15, f22, rtz # perform operation
fmul.h f24, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fmul.h f9, f19, f25, dyn # perform operation
fmul.h f9, f19, f25, rdn # perform operation
fmul.h f9, f19, f25, rmm # perform operation
fmul.h f9, f19, f25, rne # perform operation
fmul.h f9, f19, f25, rtz # perform operation
fmul.h f9, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f8, f23, f18, dyn # perform operation
fmul.h f8, f23, f18, rdn # perform operation
fmul.h f8, f23, f18, rmm # perform operation
fmul.h f8, f23, f18, rne # perform operation
fmul.h f8, f23, f18, rtz # perform operation
fmul.h f8, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmul.h f23, f31, f2, dyn # perform operation
fmul.h f23, f31, f2, rdn # perform operation
fmul.h f23, f31, f2, rmm # perform operation
fmul.h f23, f31, f2, rne # perform operation
fmul.h f23, f31, f2, rtz # perform operation
fmul.h f23, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmul.h f13, f25, f17, dyn # perform operation
fmul.h f13, f25, f17, rdn # perform operation
fmul.h f13, f25, f17, rmm # perform operation
fmul.h f13, f25, f17, rne # perform operation
fmul.h f13, f25, f17, rtz # perform operation
fmul.h f13, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f25, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmul.h f8, f13, f24, dyn # perform operation
fmul.h f8, f13, f24, rdn # perform operation
fmul.h f8, f13, f24, rmm # perform operation
fmul.h f8, f13, f24, rne # perform operation
fmul.h f8, f13, f24, rtz # perform operation
fmul.h f8, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f13, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fmul.h f21, f29, f10, dyn # perform operation
fmul.h f21, f29, f10, rdn # perform operation
fmul.h f21, f29, f10, rmm # perform operation
fmul.h f21, f29, f10, rne # perform operation
fmul.h f21, f29, f10, rtz # perform operation
fmul.h f21, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmul.h f20, f22, f13, dyn # perform operation
fmul.h f20, f22, f13, rdn # perform operation
fmul.h f20, f22, f13, rmm # perform operation
fmul.h f20, f22, f13, rne # perform operation
fmul.h f20, f22, f13, rtz # perform operation
fmul.h f20, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fmul.h f16, f5, f25, dyn # perform operation
fmul.h f16, f5, f25, rdn # perform operation
fmul.h f16, f5, f25, rmm # perform operation
fmul.h f16, f5, f25, rne # perform operation
fmul.h f16, f5, f25, rtz # perform operation
fmul.h f16, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmul.h f9, f6, f26, dyn # perform operation
fmul.h f9, f6, f26, rdn # perform operation
fmul.h f9, f6, f26, rmm # perform operation
fmul.h f9, f6, f26, rne # perform operation
fmul.h f9, f6, f26, rtz # perform operation
fmul.h f9, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f31, f1, f23, dyn # perform operation
fmul.h f31, f1, f23, rdn # perform operation
fmul.h f31, f1, f23, rmm # perform operation
fmul.h f31, f1, f23, rne # perform operation
fmul.h f31, f1, f23, rtz # perform operation
fmul.h f31, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fmul.h f7, f6, f9, dyn # perform operation
fmul.h f7, f6, f9, rdn # perform operation
fmul.h f7, f6, f9, rmm # perform operation
fmul.h f7, f6, f9, rne # perform operation
fmul.h f7, f6, f9, rtz # perform operation
fmul.h f7, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f6, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmul.h f10, f22, f15, dyn # perform operation
fmul.h f10, f22, f15, rdn # perform operation
fmul.h f10, f22, f15, rmm # perform operation
fmul.h f10, f22, f15, rne # perform operation
fmul.h f10, f22, f15, rtz # perform operation
fmul.h f10, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmul.h f11, f25, f9, dyn # perform operation
fmul.h f11, f25, f9, rdn # perform operation
fmul.h f11, f25, f9, rmm # perform operation
fmul.h f11, f25, f9, rne # perform operation
fmul.h f11, f25, f9, rtz # perform operation
fmul.h f11, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fmul.h f23, f10, f30, dyn # perform operation
fmul.h f23, f10, f30, rdn # perform operation
fmul.h f23, f10, f30, rmm # perform operation
fmul.h f23, f10, f30, rne # perform operation
fmul.h f23, f10, f30, rtz # perform operation
fmul.h f23, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmul.h f23, f22, f31, dyn # perform operation
fmul.h f23, f22, f31, rdn # perform operation
fmul.h f23, f22, f31, rmm # perform operation
fmul.h f23, f22, f31, rne # perform operation
fmul.h f23, f22, f31, rtz # perform operation
fmul.h f23, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f31, f25, f23, dyn # perform operation
fmul.h f31, f25, f23, rdn # perform operation
fmul.h f31, f25, f23, rmm # perform operation
fmul.h f31, f25, f23, rne # perform operation
fmul.h f31, f25, f23, rtz # perform operation
fmul.h f31, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
fmul.h f24, f15, f14, dyn # perform operation
fmul.h f24, f15, f14, rdn # perform operation
fmul.h f24, f15, f14, rmm # perform operation
fmul.h f24, f15, f14, rne # perform operation
fmul.h f24, f15, f14, rtz # perform operation
fmul.h f24, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmul.h f17, f6, f25, dyn # perform operation
fmul.h f17, f6, f25, rdn # perform operation
fmul.h f17, f6, f25, rmm # perform operation
fmul.h f17, f6, f25, rne # perform operation
fmul.h f17, f6, f25, rtz # perform operation
fmul.h f17, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f6, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fmul.h f5, f11, f12, dyn # perform operation
fmul.h f5, f11, f12, rdn # perform operation
fmul.h f5, f11, f12, rmm # perform operation
fmul.h f5, f11, f12, rne # perform operation
fmul.h f5, f11, f12, rtz # perform operation
fmul.h f5, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fmul.h f11, f21, f18, dyn # perform operation
fmul.h f11, f21, f18, rdn # perform operation
fmul.h f11, f21, f18, rmm # perform operation
fmul.h f11, f21, f18, rne # perform operation
fmul.h f11, f21, f18, rtz # perform operation
fmul.h f11, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f16, f1, f23, dyn # perform operation
fmul.h f16, f1, f23, rdn # perform operation
fmul.h f16, f1, f23, rmm # perform operation
fmul.h f16, f1, f23, rne # perform operation
fmul.h f16, f1, f23, rtz # perform operation
fmul.h f16, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f1, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmul.h f25, f6, f22, dyn # perform operation
fmul.h f25, f6, f22, rdn # perform operation
fmul.h f25, f6, f22, rmm # perform operation
fmul.h f25, f6, f22, rne # perform operation
fmul.h f25, f6, f22, rtz # perform operation
fmul.h f25, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmul.h f16, f18, f7, dyn # perform operation
fmul.h f16, f18, f7, rdn # perform operation
fmul.h f16, f18, f7, rmm # perform operation
fmul.h f16, f18, f7, rne # perform operation
fmul.h f16, f18, f7, rtz # perform operation
fmul.h f16, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fmul.h f10, f30, f21, dyn # perform operation
fmul.h f10, f30, f21, rdn # perform operation
fmul.h f10, f30, f21, rmm # perform operation
fmul.h f10, f30, f21, rne # perform operation
fmul.h f10, f30, f21, rtz # perform operation
fmul.h f10, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f26, f27, f3, dyn # perform operation
fmul.h f26, f27, f3, rdn # perform operation
fmul.h f26, f27, f3, rmm # perform operation
fmul.h f26, f27, f3, rne # perform operation
fmul.h f26, f27, f3, rtz # perform operation
fmul.h f26, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f9, f30, f18, dyn # perform operation
fmul.h f9, f30, f18, rdn # perform operation
fmul.h f9, f30, f18, rmm # perform operation
fmul.h f9, f30, f18, rne # perform operation
fmul.h f9, f30, f18, rtz # perform operation
fmul.h f9, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmul.h f7, f14, f21, dyn # perform operation
fmul.h f7, f14, f21, rdn # perform operation
fmul.h f7, f14, f21, rmm # perform operation
fmul.h f7, f14, f21, rne # perform operation
fmul.h f7, f14, f21, rtz # perform operation
fmul.h f7, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmul.h f29, f13, f25, dyn # perform operation
fmul.h f29, f13, f25, rdn # perform operation
fmul.h f29, f13, f25, rmm # perform operation
fmul.h f29, f13, f25, rne # perform operation
fmul.h f29, f13, f25, rtz # perform operation
fmul.h f29, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fmul.h f5, f18, f31, dyn # perform operation
fmul.h f5, f18, f31, rdn # perform operation
fmul.h f5, f18, f31, rmm # perform operation
fmul.h f5, f18, f31, rne # perform operation
fmul.h f5, f18, f31, rtz # perform operation
fmul.h f5, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmul.h f12, f30, f13, dyn # perform operation
fmul.h f12, f30, f13, rdn # perform operation
fmul.h f12, f30, f13, rmm # perform operation
fmul.h f12, f30, f13, rne # perform operation
fmul.h f12, f30, f13, rtz # perform operation
fmul.h f12, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmul.h f27, f14, f29, dyn # perform operation
fmul.h f27, f14, f29, rdn # perform operation
fmul.h f27, f14, f29, rmm # perform operation
fmul.h f27, f14, f29, rne # perform operation
fmul.h f27, f14, f29, rtz # perform operation
fmul.h f27, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f14, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fmul.h f8, f7, f22, dyn # perform operation
fmul.h f8, f7, f22, rdn # perform operation
fmul.h f8, f7, f22, rmm # perform operation
fmul.h f8, f7, f22, rne # perform operation
fmul.h f8, f7, f22, rtz # perform operation
fmul.h f8, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f7, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fmul.h f23, f15, f13, dyn # perform operation
fmul.h f23, f15, f13, rdn # perform operation
fmul.h f23, f15, f13, rmm # perform operation
fmul.h f23, f15, f13, rne # perform operation
fmul.h f23, f15, f13, rtz # perform operation
fmul.h f23, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f15, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fmul.h f23, f17, f10, dyn # perform operation
fmul.h f23, f17, f10, rdn # perform operation
fmul.h f23, f17, f10, rmm # perform operation
fmul.h f23, f17, f10, rne # perform operation
fmul.h f23, f17, f10, rtz # perform operation
fmul.h f23, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmul.h f10, f24, f29, dyn # perform operation
fmul.h f10, f24, f29, rdn # perform operation
fmul.h f10, f24, f29, rmm # perform operation
fmul.h f10, f24, f29, rne # perform operation
fmul.h f10, f24, f29, rtz # perform operation
fmul.h f10, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f24, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fmul.h f18, f10, f11, dyn # perform operation
fmul.h f18, f10, f11, rdn # perform operation
fmul.h f18, f10, f11, rmm # perform operation
fmul.h f18, f10, f11, rne # perform operation
fmul.h f18, f10, f11, rtz # perform operation
fmul.h f18, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f10, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmul.h f14, f12, f2, dyn # perform operation
fmul.h f14, f12, f2, rdn # perform operation
fmul.h f14, f12, f2, rmm # perform operation
fmul.h f14, f12, f2, rne # perform operation
fmul.h f14, f12, f2, rtz # perform operation
fmul.h f14, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f17, f11, f25, dyn # perform operation
fmul.h f17, f11, f25, rdn # perform operation
fmul.h f17, f11, f25, rmm # perform operation
fmul.h f17, f11, f25, rne # perform operation
fmul.h f17, f11, f25, rtz # perform operation
fmul.h f17, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fmul.h f19, f25, f23, dyn # perform operation
fmul.h f19, f25, f23, rdn # perform operation
fmul.h f19, f25, f23, rmm # perform operation
fmul.h f19, f25, f23, rne # perform operation
fmul.h f19, f25, f23, rtz # perform operation
fmul.h f19, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fmul.h f8, f27, f22, dyn # perform operation
fmul.h f8, f27, f22, rdn # perform operation
fmul.h f8, f27, f22, rmm # perform operation
fmul.h f8, f27, f22, rne # perform operation
fmul.h f8, f27, f22, rtz # perform operation
fmul.h f8, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f14, f25, f1, dyn # perform operation
fmul.h f14, f25, f1, rdn # perform operation
fmul.h f14, f25, f1, rmm # perform operation
fmul.h f14, f25, f1, rne # perform operation
fmul.h f14, f25, f1, rtz # perform operation
fmul.h f14, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fmul.h f19, f16, f29, dyn # perform operation
fmul.h f19, f16, f29, rdn # perform operation
fmul.h f19, f16, f29, rmm # perform operation
fmul.h f19, f16, f29, rne # perform operation
fmul.h f19, f16, f29, rtz # perform operation
fmul.h f19, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fmul.h f23, f26, f7, dyn # perform operation
fmul.h f23, f26, f7, rdn # perform operation
fmul.h f23, f26, f7, rmm # perform operation
fmul.h f23, f26, f7, rne # perform operation
fmul.h f23, f26, f7, rtz # perform operation
fmul.h f23, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fmul.h f10, f7, f28, dyn # perform operation
fmul.h f10, f7, f28, rdn # perform operation
fmul.h f10, f7, f28, rmm # perform operation
fmul.h f10, f7, f28, rne # perform operation
fmul.h f10, f7, f28, rtz # perform operation
fmul.h f10, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fmul.h f6, f27, f28, dyn # perform operation
fmul.h f6, f27, f28, rdn # perform operation
fmul.h f6, f27, f28, rmm # perform operation
fmul.h f6, f27, f28, rne # perform operation
fmul.h f6, f27, f28, rtz # perform operation
fmul.h f6, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f27, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmul.h f8, f27, f17, dyn # perform operation
fmul.h f8, f27, f17, rdn # perform operation
fmul.h f8, f27, f17, rmm # perform operation
fmul.h f8, f27, f17, rne # perform operation
fmul.h f8, f27, f17, rtz # perform operation
fmul.h f8, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fmul.h f25, f27, f8, dyn # perform operation
fmul.h f25, f27, f8, rdn # perform operation
fmul.h f25, f27, f8, rmm # perform operation
fmul.h f25, f27, f8, rne # perform operation
fmul.h f25, f27, f8, rtz # perform operation
fmul.h f25, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f13, 0(x2) # load 0x0000fc01 from memory into f13
fmul.h f7, f30, f13, dyn # perform operation
fmul.h f7, f30, f13, rdn # perform operation
fmul.h f7, f30, f13, rmm # perform operation
fmul.h f7, f30, f13, rne # perform operation
fmul.h f7, f30, f13, rtz # perform operation
fmul.h f7, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fmul.h f3, f11, f13, dyn # perform operation
fmul.h f3, f11, f13, rdn # perform operation
fmul.h f3, f11, f13, rmm # perform operation
fmul.h f3, f11, f13, rne # perform operation
fmul.h f3, f11, f13, rtz # perform operation
fmul.h f3, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f11, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fmul.h f14, f23, f1, dyn # perform operation
fmul.h f14, f23, f1, rdn # perform operation
fmul.h f14, f23, f1, rmm # perform operation
fmul.h f14, f23, f1, rne # perform operation
fmul.h f14, f23, f1, rtz # perform operation
fmul.h f14, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmul.h f13, f9, f28, dyn # perform operation
fmul.h f13, f9, f28, rdn # perform operation
fmul.h f13, f9, f28, rmm # perform operation
fmul.h f13, f9, f28, rne # perform operation
fmul.h f13, f9, f28, rtz # perform operation
fmul.h f13, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmul.h f6, f18, f26, dyn # perform operation
fmul.h f6, f18, f26, rdn # perform operation
fmul.h f6, f18, f26, rmm # perform operation
fmul.h f6, f18, f26, rne # perform operation
fmul.h f6, f18, f26, rtz # perform operation
fmul.h f6, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f18, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmul.h f10, f3, f26, dyn # perform operation
fmul.h f10, f3, f26, rdn # perform operation
fmul.h f10, f3, f26, rmm # perform operation
fmul.h f10, f3, f26, rne # perform operation
fmul.h f10, f3, f26, rtz # perform operation
fmul.h f10, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmul.h f29, f8, f3, dyn # perform operation
fmul.h f29, f8, f3, rdn # perform operation
fmul.h f29, f8, f3, rmm # perform operation
fmul.h f29, f8, f3, rne # perform operation
fmul.h f29, f8, f3, rtz # perform operation
fmul.h f29, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fmul.h f13, f7, f8, dyn # perform operation
fmul.h f13, f7, f8, rdn # perform operation
fmul.h f13, f7, f8, rmm # perform operation
fmul.h f13, f7, f8, rne # perform operation
fmul.h f13, f7, f8, rtz # perform operation
fmul.h f13, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmul.h f11, f1, f9, dyn # perform operation
fmul.h f11, f1, f9, rdn # perform operation
fmul.h f11, f1, f9, rmm # perform operation
fmul.h f11, f1, f9, rne # perform operation
fmul.h f11, f1, f9, rtz # perform operation
fmul.h f11, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fmul.h f5, f13, f16, dyn # perform operation
fmul.h f5, f13, f16, rdn # perform operation
fmul.h f5, f13, f16, rmm # perform operation
fmul.h f5, f13, f16, rne # perform operation
fmul.h f5, f13, f16, rtz # perform operation
fmul.h f5, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f13, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmul.h f28, f25, f9, dyn # perform operation
fmul.h f28, f25, f9, rdn # perform operation
fmul.h f28, f25, f9, rmm # perform operation
fmul.h f28, f25, f9, rne # perform operation
fmul.h f28, f25, f9, rtz # perform operation
fmul.h f28, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmul.h f24, f16, f28, dyn # perform operation
fmul.h f24, f16, f28, rdn # perform operation
fmul.h f24, f16, f28, rmm # perform operation
fmul.h f24, f16, f28, rne # perform operation
fmul.h f24, f16, f28, rtz # perform operation
fmul.h f24, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmul.h f26, f25, f12, dyn # perform operation
fmul.h f26, f25, f12, rdn # perform operation
fmul.h f26, f25, f12, rmm # perform operation
fmul.h f26, f25, f12, rne # perform operation
fmul.h f26, f25, f12, rtz # perform operation
fmul.h f26, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fmul.h f12, f5, f28, dyn # perform operation
fmul.h f12, f5, f28, rdn # perform operation
fmul.h f12, f5, f28, rmm # perform operation
fmul.h f12, f5, f28, rne # perform operation
fmul.h f12, f5, f28, rtz # perform operation
fmul.h f12, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmul.h f19, f8, f18, dyn # perform operation
fmul.h f19, f8, f18, rdn # perform operation
fmul.h f19, f8, f18, rmm # perform operation
fmul.h f19, f8, f18, rne # perform operation
fmul.h f19, f8, f18, rtz # perform operation
fmul.h f19, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmul.h f11, f9, f21, dyn # perform operation
fmul.h f11, f9, f21, rdn # perform operation
fmul.h f11, f9, f21, rmm # perform operation
fmul.h f11, f9, f21, rne # perform operation
fmul.h f11, f9, f21, rtz # perform operation
fmul.h f11, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmul.h f19, f6, f28, dyn # perform operation
fmul.h f19, f6, f28, rdn # perform operation
fmul.h f19, f6, f28, rmm # perform operation
fmul.h f19, f6, f28, rne # perform operation
fmul.h f19, f6, f28, rtz # perform operation
fmul.h f19, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmul.h f7, f28, f24, dyn # perform operation
fmul.h f7, f28, f24, rdn # perform operation
fmul.h f7, f28, f24, rmm # perform operation
fmul.h f7, f28, f24, rne # perform operation
fmul.h f7, f28, f24, rtz # perform operation
fmul.h f7, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fmul.h f6, f26, f7, dyn # perform operation
fmul.h f6, f26, f7, rdn # perform operation
fmul.h f6, f26, f7, rmm # perform operation
fmul.h f6, f26, f7, rne # perform operation
fmul.h f6, f26, f7, rtz # perform operation
fmul.h f6, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmul.h f31, f11, f30, dyn # perform operation
fmul.h f31, f11, f30, rdn # perform operation
fmul.h f31, f11, f30, rmm # perform operation
fmul.h f31, f11, f30, rne # perform operation
fmul.h f31, f11, f30, rtz # perform operation
fmul.h f31, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmul.h f14, f28, f31, dyn # perform operation
fmul.h f14, f28, f31, rdn # perform operation
fmul.h f14, f28, f31, rmm # perform operation
fmul.h f14, f28, f31, rne # perform operation
fmul.h f14, f28, f31, rtz # perform operation
fmul.h f14, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmul.h f3, f29, f2, dyn # perform operation
fmul.h f3, f29, f2, rdn # perform operation
fmul.h f3, f29, f2, rmm # perform operation
fmul.h f3, f29, f2, rne # perform operation
fmul.h f3, f29, f2, rtz # perform operation
fmul.h f3, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fmul.h f7, f15, f30, dyn # perform operation
fmul.h f7, f15, f30, rdn # perform operation
fmul.h f7, f15, f30, rmm # perform operation
fmul.h f7, f15, f30, rne # perform operation
fmul.h f7, f15, f30, rtz # perform operation
fmul.h f7, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f15, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmul.h f7, f12, f9, dyn # perform operation
fmul.h f7, f12, f9, rdn # perform operation
fmul.h f7, f12, f9, rmm # perform operation
fmul.h f7, f12, f9, rne # perform operation
fmul.h f7, f12, f9, rtz # perform operation
fmul.h f7, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f12, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f20, f5, f23, dyn # perform operation
fmul.h f20, f5, f23, rdn # perform operation
fmul.h f20, f5, f23, rmm # perform operation
fmul.h f20, f5, f23, rne # perform operation
fmul.h f20, f5, f23, rtz # perform operation
fmul.h f20, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
fmul.h f21, f5, f27, dyn # perform operation
fmul.h f21, f5, f27, rdn # perform operation
fmul.h f21, f5, f27, rmm # perform operation
fmul.h f21, f5, f27, rne # perform operation
fmul.h f21, f5, f27, rtz # perform operation
fmul.h f21, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmul.h f13, f11, f6, dyn # perform operation
fmul.h f13, f11, f6, rdn # perform operation
fmul.h f13, f11, f6, rmm # perform operation
fmul.h f13, f11, f6, rne # perform operation
fmul.h f13, f11, f6, rtz # perform operation
fmul.h f13, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f11, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fmul.h f21, f15, f16, dyn # perform operation
fmul.h f21, f15, f16, rdn # perform operation
fmul.h f21, f15, f16, rmm # perform operation
fmul.h f21, f15, f16, rne # perform operation
fmul.h f21, f15, f16, rtz # perform operation
fmul.h f21, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
fmul.h f29, f30, f20, dyn # perform operation
fmul.h f29, f30, f20, rdn # perform operation
fmul.h f29, f30, f20, rmm # perform operation
fmul.h f29, f30, f20, rne # perform operation
fmul.h f29, f30, f20, rtz # perform operation
fmul.h f29, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fmul.h f20, f14, f9, dyn # perform operation
fmul.h f20, f14, f9, rdn # perform operation
fmul.h f20, f14, f9, rmm # perform operation
fmul.h f20, f14, f9, rne # perform operation
fmul.h f20, f14, f9, rtz # perform operation
fmul.h f20, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f14, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fmul.h f25, f19, f12, dyn # perform operation
fmul.h f25, f19, f12, rdn # perform operation
fmul.h f25, f19, f12, rmm # perform operation
fmul.h f25, f19, f12, rne # perform operation
fmul.h f25, f19, f12, rtz # perform operation
fmul.h f25, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f22, f12, f5, dyn # perform operation
fmul.h f22, f12, f5, rdn # perform operation
fmul.h f22, f12, f5, rmm # perform operation
fmul.h f22, f12, f5, rne # perform operation
fmul.h f22, f12, f5, rtz # perform operation
fmul.h f22, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f12, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmul.h f7, f15, f6, dyn # perform operation
fmul.h f7, f15, f6, rdn # perform operation
fmul.h f7, f15, f6, rmm # perform operation
fmul.h f7, f15, f6, rne # perform operation
fmul.h f7, f15, f6, rtz # perform operation
fmul.h f7, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmul.h f5, f20, f27, dyn # perform operation
fmul.h f5, f20, f27, rdn # perform operation
fmul.h f5, f20, f27, rmm # perform operation
fmul.h f5, f20, f27, rne # perform operation
fmul.h f5, f20, f27, rtz # perform operation
fmul.h f5, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmul.h f22, f1, f21, dyn # perform operation
fmul.h f22, f1, f21, rdn # perform operation
fmul.h f22, f1, f21, rmm # perform operation
fmul.h f22, f1, f21, rne # perform operation
fmul.h f22, f1, f21, rtz # perform operation
fmul.h f22, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f26, f22, f14, dyn # perform operation
fmul.h f26, f22, f14, rdn # perform operation
fmul.h f26, f22, f14, rmm # perform operation
fmul.h f26, f22, f14, rne # perform operation
fmul.h f26, f22, f14, rtz # perform operation
fmul.h f26, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f22, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fmul.h f11, f10, f8, dyn # perform operation
fmul.h f11, f10, f8, rdn # perform operation
fmul.h f11, f10, f8, rmm # perform operation
fmul.h f11, f10, f8, rne # perform operation
fmul.h f11, f10, f8, rtz # perform operation
fmul.h f11, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f10, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f15, f7, f14, dyn # perform operation
fmul.h f15, f7, f14, rdn # perform operation
fmul.h f15, f7, f14, rmm # perform operation
fmul.h f15, f7, f14, rne # perform operation
fmul.h f15, f7, f14, rtz # perform operation
fmul.h f15, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmul.h f26, f13, f10, dyn # perform operation
fmul.h f26, f13, f10, rdn # perform operation
fmul.h f26, f13, f10, rmm # perform operation
fmul.h f26, f13, f10, rne # perform operation
fmul.h f26, f13, f10, rtz # perform operation
fmul.h f26, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f25, f17, f10, dyn # perform operation
fmul.h f25, f17, f10, rdn # perform operation
fmul.h f25, f17, f10, rmm # perform operation
fmul.h f25, f17, f10, rne # perform operation
fmul.h f25, f17, f10, rtz # perform operation
fmul.h f25, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmul.h f2, f6, f3, dyn # perform operation
fmul.h f2, f6, f3, rdn # perform operation
fmul.h f2, f6, f3, rmm # perform operation
fmul.h f2, f6, f3, rne # perform operation
fmul.h f2, f6, f3, rtz # perform operation
fmul.h f2, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fmul.h f3, f29, f5, dyn # perform operation
fmul.h f3, f29, f5, rdn # perform operation
fmul.h f3, f29, f5, rmm # perform operation
fmul.h f3, f29, f5, rne # perform operation
fmul.h f3, f29, f5, rtz # perform operation
fmul.h f3, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmul.h f2, f5, f27, dyn # perform operation
fmul.h f2, f5, f27, rdn # perform operation
fmul.h f2, f5, f27, rmm # perform operation
fmul.h f2, f5, f27, rne # perform operation
fmul.h f2, f5, f27, rtz # perform operation
fmul.h f2, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f5, f14, f15, dyn # perform operation
fmul.h f5, f14, f15, rdn # perform operation
fmul.h f5, f14, f15, rmm # perform operation
fmul.h f5, f14, f15, rne # perform operation
fmul.h f5, f14, f15, rtz # perform operation
fmul.h f5, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fmul.h f22, f26, f29, dyn # perform operation
fmul.h f22, f26, f29, rdn # perform operation
fmul.h f22, f26, f29, rmm # perform operation
fmul.h f22, f26, f29, rne # perform operation
fmul.h f22, f26, f29, rtz # perform operation
fmul.h f22, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmul.h f22, f8, f31, dyn # perform operation
fmul.h f22, f8, f31, rdn # perform operation
fmul.h f22, f8, f31, rmm # perform operation
fmul.h f22, f8, f31, rne # perform operation
fmul.h f22, f8, f31, rtz # perform operation
fmul.h f22, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmul.h f14, f12, f1, dyn # perform operation
fmul.h f14, f12, f1, rdn # perform operation
fmul.h f14, f12, f1, rmm # perform operation
fmul.h f14, f12, f1, rne # perform operation
fmul.h f14, f12, f1, rtz # perform operation
fmul.h f14, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fmul.h f28, f20, f1, dyn # perform operation
fmul.h f28, f20, f1, rdn # perform operation
fmul.h f28, f20, f1, rmm # perform operation
fmul.h f28, f20, f1, rne # perform operation
fmul.h f28, f20, f1, rtz # perform operation
fmul.h f28, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmul.h f28, f23, f6, dyn # perform operation
fmul.h f28, f23, f6, rdn # perform operation
fmul.h f28, f23, f6, rmm # perform operation
fmul.h f28, f23, f6, rne # perform operation
fmul.h f28, f23, f6, rtz # perform operation
fmul.h f28, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fmul.h f8, f14, f6, dyn # perform operation
fmul.h f8, f14, f6, rdn # perform operation
fmul.h f8, f14, f6, rmm # perform operation
fmul.h f8, f14, f6, rne # perform operation
fmul.h f8, f14, f6, rtz # perform operation
fmul.h f8, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f14, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmul.h f20, f25, f9, dyn # perform operation
fmul.h f20, f25, f9, rdn # perform operation
fmul.h f20, f25, f9, rmm # perform operation
fmul.h f20, f25, f9, rne # perform operation
fmul.h f20, f25, f9, rtz # perform operation
fmul.h f20, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fmul.h f17, f25, f26, dyn # perform operation
fmul.h f17, f25, f26, rdn # perform operation
fmul.h f17, f25, f26, rmm # perform operation
fmul.h f17, f25, f26, rne # perform operation
fmul.h f17, f25, f26, rtz # perform operation
fmul.h f17, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f25, f28, f23, dyn # perform operation
fmul.h f25, f28, f23, rdn # perform operation
fmul.h f25, f28, f23, rmm # perform operation
fmul.h f25, f28, f23, rne # perform operation
fmul.h f25, f28, f23, rtz # perform operation
fmul.h f25, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fmul.h f24, f31, f16, dyn # perform operation
fmul.h f24, f31, f16, rdn # perform operation
fmul.h f24, f31, f16, rmm # perform operation
fmul.h f24, f31, f16, rne # perform operation
fmul.h f24, f31, f16, rtz # perform operation
fmul.h f24, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fmul.h f1, f5, f30, dyn # perform operation
fmul.h f1, f5, f30, rdn # perform operation
fmul.h f1, f5, f30, rmm # perform operation
fmul.h f1, f5, f30, rne # perform operation
fmul.h f1, f5, f30, rtz # perform operation
fmul.h f1, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f15, f26, f23, dyn # perform operation
fmul.h f15, f26, f23, rdn # perform operation
fmul.h f15, f26, f23, rmm # perform operation
fmul.h f15, f26, f23, rne # perform operation
fmul.h f15, f26, f23, rtz # perform operation
fmul.h f15, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmul.h f3, f7, f8, dyn # perform operation
fmul.h f3, f7, f8, rdn # perform operation
fmul.h f3, f7, f8, rmm # perform operation
fmul.h f3, f7, f8, rne # perform operation
fmul.h f3, f7, f8, rtz # perform operation
fmul.h f3, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmul.h f6, f7, f19, dyn # perform operation
fmul.h f6, f7, f19, rdn # perform operation
fmul.h f6, f7, f19, rmm # perform operation
fmul.h f6, f7, f19, rne # perform operation
fmul.h f6, f7, f19, rtz # perform operation
fmul.h f6, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f7, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmul.h f5, f21, f10, dyn # perform operation
fmul.h f5, f21, f10, rdn # perform operation
fmul.h f5, f21, f10, rmm # perform operation
fmul.h f5, f21, f10, rne # perform operation
fmul.h f5, f21, f10, rtz # perform operation
fmul.h f5, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fmul.h f14, f25, f9, dyn # perform operation
fmul.h f14, f25, f9, rdn # perform operation
fmul.h f14, f25, f9, rmm # perform operation
fmul.h f14, f25, f9, rne # perform operation
fmul.h f14, f25, f9, rtz # perform operation
fmul.h f14, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmul.h f1, f20, f24, dyn # perform operation
fmul.h f1, f20, f24, rdn # perform operation
fmul.h f1, f20, f24, rmm # perform operation
fmul.h f1, f20, f24, rne # perform operation
fmul.h f1, f20, f24, rtz # perform operation
fmul.h f1, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f6, f24, f3, dyn # perform operation
fmul.h f6, f24, f3, rdn # perform operation
fmul.h f6, f24, f3, rmm # perform operation
fmul.h f6, f24, f3, rne # perform operation
fmul.h f6, f24, f3, rtz # perform operation
fmul.h f6, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmul.h f17, f30, f28, dyn # perform operation
fmul.h f17, f30, f28, rdn # perform operation
fmul.h f17, f30, f28, rmm # perform operation
fmul.h f17, f30, f28, rne # perform operation
fmul.h f17, f30, f28, rtz # perform operation
fmul.h f17, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f30, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fmul.h f19, f25, f20, dyn # perform operation
fmul.h f19, f25, f20, rdn # perform operation
fmul.h f19, f25, f20, rmm # perform operation
fmul.h f19, f25, f20, rne # perform operation
fmul.h f19, f25, f20, rtz # perform operation
fmul.h f19, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f20, f6, f3, dyn # perform operation
fmul.h f20, f6, f3, rdn # perform operation
fmul.h f20, f6, f3, rmm # perform operation
fmul.h f20, f6, f3, rne # perform operation
fmul.h f20, f6, f3, rtz # perform operation
fmul.h f20, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmul.h f25, f16, f5, dyn # perform operation
fmul.h f25, f16, f5, rdn # perform operation
fmul.h f25, f16, f5, rmm # perform operation
fmul.h f25, f16, f5, rne # perform operation
fmul.h f25, f16, f5, rtz # perform operation
fmul.h f25, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmul.h f23, f11, f26, dyn # perform operation
fmul.h f23, f11, f26, rdn # perform operation
fmul.h f23, f11, f26, rmm # perform operation
fmul.h f23, f11, f26, rne # perform operation
fmul.h f23, f11, f26, rtz # perform operation
fmul.h f23, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmul.h f7, f17, f16, dyn # perform operation
fmul.h f7, f17, f16, rdn # perform operation
fmul.h f7, f17, f16, rmm # perform operation
fmul.h f7, f17, f16, rne # perform operation
fmul.h f7, f17, f16, rtz # perform operation
fmul.h f7, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmul.h f26, f12, f19, dyn # perform operation
fmul.h f26, f12, f19, rdn # perform operation
fmul.h f26, f12, f19, rmm # perform operation
fmul.h f26, f12, f19, rne # perform operation
fmul.h f26, f12, f19, rtz # perform operation
fmul.h f26, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f24, f25, f21, dyn # perform operation
fmul.h f24, f25, f21, rdn # perform operation
fmul.h f24, f25, f21, rmm # perform operation
fmul.h f24, f25, f21, rne # perform operation
fmul.h f24, f25, f21, rtz # perform operation
fmul.h f24, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmul.h f12, f15, f27, dyn # perform operation
fmul.h f12, f15, f27, rdn # perform operation
fmul.h f12, f15, f27, rmm # perform operation
fmul.h f12, f15, f27, rne # perform operation
fmul.h f12, f15, f27, rtz # perform operation
fmul.h f12, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmul.h f29, f30, f8, dyn # perform operation
fmul.h f29, f30, f8, rdn # perform operation
fmul.h f29, f30, f8, rmm # perform operation
fmul.h f29, f30, f8, rne # perform operation
fmul.h f29, f30, f8, rtz # perform operation
fmul.h f29, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmul.h f17, f14, f1, dyn # perform operation
fmul.h f17, f14, f1, rdn # perform operation
fmul.h f17, f14, f1, rmm # perform operation
fmul.h f17, f14, f1, rne # perform operation
fmul.h f17, f14, f1, rtz # perform operation
fmul.h f17, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmul.h f31, f24, f25, dyn # perform operation
fmul.h f31, f24, f25, rdn # perform operation
fmul.h f31, f24, f25, rmm # perform operation
fmul.h f31, f24, f25, rne # perform operation
fmul.h f31, f24, f25, rtz # perform operation
fmul.h f31, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f24, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmul.h f15, f27, f26, dyn # perform operation
fmul.h f15, f27, f26, rdn # perform operation
fmul.h f15, f27, f26, rmm # perform operation
fmul.h f15, f27, f26, rne # perform operation
fmul.h f15, f27, f26, rtz # perform operation
fmul.h f15, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmul.h f29, f12, f15, dyn # perform operation
fmul.h f29, f12, f15, rdn # perform operation
fmul.h f29, f12, f15, rmm # perform operation
fmul.h f29, f12, f15, rne # perform operation
fmul.h f29, f12, f15, rtz # perform operation
fmul.h f29, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmul.h f22, f17, f16, dyn # perform operation
fmul.h f22, f17, f16, rdn # perform operation
fmul.h f22, f17, f16, rmm # perform operation
fmul.h f22, f17, f16, rne # perform operation
fmul.h f22, f17, f16, rtz # perform operation
fmul.h f22, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmul.h f29, f7, f11, dyn # perform operation
fmul.h f29, f7, f11, rdn # perform operation
fmul.h f29, f7, f11, rmm # perform operation
fmul.h f29, f7, f11, rne # perform operation
fmul.h f29, f7, f11, rtz # perform operation
fmul.h f29, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f30, f24, f23, dyn # perform operation
fmul.h f30, f24, f23, rdn # perform operation
fmul.h f30, f24, f23, rmm # perform operation
fmul.h f30, f24, f23, rne # perform operation
fmul.h f30, f24, f23, rtz # perform operation
fmul.h f30, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fmul.h f10, f11, f28, dyn # perform operation
fmul.h f10, f11, f28, rdn # perform operation
fmul.h f10, f11, f28, rmm # perform operation
fmul.h f10, f11, f28, rne # perform operation
fmul.h f10, f11, f28, rtz # perform operation
fmul.h f10, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fmul.h f8, f29, f14, dyn # perform operation
fmul.h f8, f29, f14, rdn # perform operation
fmul.h f8, f29, f14, rmm # perform operation
fmul.h f8, f29, f14, rne # perform operation
fmul.h f8, f29, f14, rtz # perform operation
fmul.h f8, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f25, 0(x2) # load 0x0000fe00 from memory into f25
fmul.h f15, f8, f25, dyn # perform operation
fmul.h f15, f8, f25, rdn # perform operation
fmul.h f15, f8, f25, rmm # perform operation
fmul.h f15, f8, f25, rne # perform operation
fmul.h f15, f8, f25, rtz # perform operation
fmul.h f15, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f8, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmul.h f10, f15, f26, dyn # perform operation
fmul.h f10, f15, f26, rdn # perform operation
fmul.h f10, f15, f26, rmm # perform operation
fmul.h f10, f15, f26, rne # perform operation
fmul.h f10, f15, f26, rtz # perform operation
fmul.h f10, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmul.h f15, f30, f11, dyn # perform operation
fmul.h f15, f30, f11, rdn # perform operation
fmul.h f15, f30, f11, rmm # perform operation
fmul.h f15, f30, f11, rne # perform operation
fmul.h f15, f30, f11, rtz # perform operation
fmul.h f15, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f30, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fmul.h f31, f24, f26, dyn # perform operation
fmul.h f31, f24, f26, rdn # perform operation
fmul.h f31, f24, f26, rmm # perform operation
fmul.h f31, f24, f26, rne # perform operation
fmul.h f31, f24, f26, rtz # perform operation
fmul.h f31, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f24, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fmul.h f21, f8, f22, dyn # perform operation
fmul.h f21, f8, f22, rdn # perform operation
fmul.h f21, f8, f22, rmm # perform operation
fmul.h f21, f8, f22, rne # perform operation
fmul.h f21, f8, f22, rtz # perform operation
fmul.h f21, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmul.h f11, f31, f23, dyn # perform operation
fmul.h f11, f31, f23, rdn # perform operation
fmul.h f11, f31, f23, rmm # perform operation
fmul.h f11, f31, f23, rne # perform operation
fmul.h f11, f31, f23, rtz # perform operation
fmul.h f11, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fmul.h f18, f16, f21, dyn # perform operation
fmul.h f18, f16, f21, rdn # perform operation
fmul.h f18, f16, f21, rmm # perform operation
fmul.h f18, f16, f21, rne # perform operation
fmul.h f18, f16, f21, rtz # perform operation
fmul.h f18, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmul.h f11, f26, f20, dyn # perform operation
fmul.h f11, f26, f20, rdn # perform operation
fmul.h f11, f26, f20, rmm # perform operation
fmul.h f11, f26, f20, rne # perform operation
fmul.h f11, f26, f20, rtz # perform operation
fmul.h f11, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f26, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fmul.h f30, f7, f10, dyn # perform operation
fmul.h f30, f7, f10, rdn # perform operation
fmul.h f30, f7, f10, rmm # perform operation
fmul.h f30, f7, f10, rne # perform operation
fmul.h f30, f7, f10, rtz # perform operation
fmul.h f30, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fmul.h f30, f3, f27, dyn # perform operation
fmul.h f30, f3, f27, rdn # perform operation
fmul.h f30, f3, f27, rmm # perform operation
fmul.h f30, f3, f27, rne # perform operation
fmul.h f30, f3, f27, rtz # perform operation
fmul.h f30, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmul.h f17, f24, f12, dyn # perform operation
fmul.h f17, f24, f12, rdn # perform operation
fmul.h f17, f24, f12, rmm # perform operation
fmul.h f17, f24, f12, rne # perform operation
fmul.h f17, f24, f12, rtz # perform operation
fmul.h f17, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmul.h f13, f24, f23, dyn # perform operation
fmul.h f13, f24, f23, rdn # perform operation
fmul.h f13, f24, f23, rmm # perform operation
fmul.h f13, f24, f23, rne # perform operation
fmul.h f13, f24, f23, rtz # perform operation
fmul.h f13, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmul.h f13, f17, f3, dyn # perform operation
fmul.h f13, f17, f3, rdn # perform operation
fmul.h f13, f17, f3, rmm # perform operation
fmul.h f13, f17, f3, rne # perform operation
fmul.h f13, f17, f3, rtz # perform operation
fmul.h f13, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f21, f27, f3, dyn # perform operation
fmul.h f21, f27, f3, rdn # perform operation
fmul.h f21, f27, f3, rmm # perform operation
fmul.h f21, f27, f3, rne # perform operation
fmul.h f21, f27, f3, rtz # perform operation
fmul.h f21, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmul.h f15, f5, f28, dyn # perform operation
fmul.h f15, f5, f28, rdn # perform operation
fmul.h f15, f5, f28, rmm # perform operation
fmul.h f15, f5, f28, rne # perform operation
fmul.h f15, f5, f28, rtz # perform operation
fmul.h f15, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmul.h f21, f13, f17, dyn # perform operation
fmul.h f21, f13, f17, rdn # perform operation
fmul.h f21, f13, f17, rmm # perform operation
fmul.h f21, f13, f17, rne # perform operation
fmul.h f21, f13, f17, rtz # perform operation
fmul.h f21, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fmul.h f22, f15, f20, dyn # perform operation
fmul.h f22, f15, f20, rdn # perform operation
fmul.h f22, f15, f20, rmm # perform operation
fmul.h f22, f15, f20, rne # perform operation
fmul.h f22, f15, f20, rtz # perform operation
fmul.h f22, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f15, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmul.h f3, f18, f8, dyn # perform operation
fmul.h f3, f18, f8, rdn # perform operation
fmul.h f3, f18, f8, rmm # perform operation
fmul.h f3, f18, f8, rne # perform operation
fmul.h f3, f18, f8, rtz # perform operation
fmul.h f3, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f18, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmul.h f5, f16, f10, dyn # perform operation
fmul.h f5, f16, f10, rdn # perform operation
fmul.h f5, f16, f10, rmm # perform operation
fmul.h f5, f16, f10, rne # perform operation
fmul.h f5, f16, f10, rtz # perform operation
fmul.h f5, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmul.h f8, f11, f22, dyn # perform operation
fmul.h f8, f11, f22, rdn # perform operation
fmul.h f8, f11, f22, rmm # perform operation
fmul.h f8, f11, f22, rne # perform operation
fmul.h f8, f11, f22, rtz # perform operation
fmul.h f8, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmul.h f9, f27, f16, dyn # perform operation
fmul.h f9, f27, f16, rdn # perform operation
fmul.h f9, f27, f16, rmm # perform operation
fmul.h f9, f27, f16, rne # perform operation
fmul.h f9, f27, f16, rtz # perform operation
fmul.h f9, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f27, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fmul.h f29, f11, f17, dyn # perform operation
fmul.h f29, f11, f17, rdn # perform operation
fmul.h f29, f11, f17, rmm # perform operation
fmul.h f29, f11, f17, rne # perform operation
fmul.h f29, f11, f17, rtz # perform operation
fmul.h f29, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmul.h f19, f14, f25, dyn # perform operation
fmul.h f19, f14, f25, rdn # perform operation
fmul.h f19, f14, f25, rmm # perform operation
fmul.h f19, f14, f25, rne # perform operation
fmul.h f19, f14, f25, rtz # perform operation
fmul.h f19, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmul.h f19, f28, f21, dyn # perform operation
fmul.h f19, f28, f21, rdn # perform operation
fmul.h f19, f28, f21, rmm # perform operation
fmul.h f19, f28, f21, rne # perform operation
fmul.h f19, f28, f21, rtz # perform operation
fmul.h f19, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f2, f6, f28, dyn # perform operation
fmul.h f2, f6, f28, rdn # perform operation
fmul.h f2, f6, f28, rmm # perform operation
fmul.h f2, f6, f28, rne # perform operation
fmul.h f2, f6, f28, rtz # perform operation
fmul.h f2, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f28, f5, f23, dyn # perform operation
fmul.h f28, f5, f23, rdn # perform operation
fmul.h f28, f5, f23, rmm # perform operation
fmul.h f28, f5, f23, rne # perform operation
fmul.h f28, f5, f23, rtz # perform operation
fmul.h f28, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f5, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fmul.h f22, f11, f26, dyn # perform operation
fmul.h f22, f11, f26, rdn # perform operation
fmul.h f22, f11, f26, rmm # perform operation
fmul.h f22, f11, f26, rne # perform operation
fmul.h f22, f11, f26, rtz # perform operation
fmul.h f22, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmul.h f29, f18, f10, dyn # perform operation
fmul.h f29, f18, f10, rdn # perform operation
fmul.h f29, f18, f10, rmm # perform operation
fmul.h f29, f18, f10, rne # perform operation
fmul.h f29, f18, f10, rtz # perform operation
fmul.h f29, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
fmul.h f7, f6, f18, dyn # perform operation
fmul.h f7, f6, f18, rdn # perform operation
fmul.h f7, f6, f18, rmm # perform operation
fmul.h f7, f6, f18, rne # perform operation
fmul.h f7, f6, f18, rtz # perform operation
fmul.h f7, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fmul.h f8, f9, f29, dyn # perform operation
fmul.h f8, f9, f29, rdn # perform operation
fmul.h f8, f9, f29, rmm # perform operation
fmul.h f8, f9, f29, rne # perform operation
fmul.h f8, f9, f29, rtz # perform operation
fmul.h f8, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f10, f12, f23, dyn # perform operation
fmul.h f10, f12, f23, rdn # perform operation
fmul.h f10, f12, f23, rmm # perform operation
fmul.h f10, f12, f23, rne # perform operation
fmul.h f10, f12, f23, rtz # perform operation
fmul.h f10, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f12, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fmul.h f21, f8, f3, dyn # perform operation
fmul.h f21, f8, f3, rdn # perform operation
fmul.h f21, f8, f3, rmm # perform operation
fmul.h f21, f8, f3, rne # perform operation
fmul.h f21, f8, f3, rtz # perform operation
fmul.h f21, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmul.h f25, f7, f12, dyn # perform operation
fmul.h f25, f7, f12, rdn # perform operation
fmul.h f25, f7, f12, rmm # perform operation
fmul.h f25, f7, f12, rne # perform operation
fmul.h f25, f7, f12, rtz # perform operation
fmul.h f25, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f7, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmul.h f26, f27, f24, dyn # perform operation
fmul.h f26, f27, f24, rdn # perform operation
fmul.h f26, f27, f24, rmm # perform operation
fmul.h f26, f27, f24, rne # perform operation
fmul.h f26, f27, f24, rtz # perform operation
fmul.h f26, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f3, f26, f17, dyn # perform operation
fmul.h f3, f26, f17, rdn # perform operation
fmul.h f3, f26, f17, rmm # perform operation
fmul.h f3, f26, f17, rne # perform operation
fmul.h f3, f26, f17, rtz # perform operation
fmul.h f3, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f26, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmul.h f13, f17, f7, dyn # perform operation
fmul.h f13, f17, f7, rdn # perform operation
fmul.h f13, f17, f7, rmm # perform operation
fmul.h f13, f17, f7, rne # perform operation
fmul.h f13, f17, f7, rtz # perform operation
fmul.h f13, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f17, f29, f3, dyn # perform operation
fmul.h f17, f29, f3, rdn # perform operation
fmul.h f17, f29, f3, rmm # perform operation
fmul.h f17, f29, f3, rne # perform operation
fmul.h f17, f29, f3, rtz # perform operation
fmul.h f17, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f29, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmul.h f31, f14, f2, dyn # perform operation
fmul.h f31, f14, f2, rdn # perform operation
fmul.h f31, f14, f2, rmm # perform operation
fmul.h f31, f14, f2, rne # perform operation
fmul.h f31, f14, f2, rtz # perform operation
fmul.h f31, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fmul.h f11, f6, f1, dyn # perform operation
fmul.h f11, f6, f1, rdn # perform operation
fmul.h f11, f6, f1, rmm # perform operation
fmul.h f11, f6, f1, rne # perform operation
fmul.h f11, f6, f1, rtz # perform operation
fmul.h f11, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f28, f10, f5, dyn # perform operation
fmul.h f28, f10, f5, rdn # perform operation
fmul.h f28, f10, f5, rmm # perform operation
fmul.h f28, f10, f5, rne # perform operation
fmul.h f28, f10, f5, rtz # perform operation
fmul.h f28, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f9, f30, f22, dyn # perform operation
fmul.h f9, f30, f22, rdn # perform operation
fmul.h f9, f30, f22, rmm # perform operation
fmul.h f9, f30, f22, rne # perform operation
fmul.h f9, f30, f22, rtz # perform operation
fmul.h f9, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmul.h f8, f23, f31, dyn # perform operation
fmul.h f8, f23, f31, rdn # perform operation
fmul.h f8, f23, f31, rmm # perform operation
fmul.h f8, f23, f31, rne # perform operation
fmul.h f8, f23, f31, rtz # perform operation
fmul.h f8, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmul.h f7, f11, f9, dyn # perform operation
fmul.h f7, f11, f9, rdn # perform operation
fmul.h f7, f11, f9, rmm # perform operation
fmul.h f7, f11, f9, rne # perform operation
fmul.h f7, f11, f9, rtz # perform operation
fmul.h f7, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmul.h f26, f5, f13, dyn # perform operation
fmul.h f26, f5, f13, rdn # perform operation
fmul.h f26, f5, f13, rmm # perform operation
fmul.h f26, f5, f13, rne # perform operation
fmul.h f26, f5, f13, rtz # perform operation
fmul.h f26, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmul.h f17, f9, f8, dyn # perform operation
fmul.h f17, f9, f8, rdn # perform operation
fmul.h f17, f9, f8, rmm # perform operation
fmul.h f17, f9, f8, rne # perform operation
fmul.h f17, f9, f8, rtz # perform operation
fmul.h f17, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmul.h f11, f2, f5, dyn # perform operation
fmul.h f11, f2, f5, rdn # perform operation
fmul.h f11, f2, f5, rmm # perform operation
fmul.h f11, f2, f5, rne # perform operation
fmul.h f11, f2, f5, rtz # perform operation
fmul.h f11, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fmul.h f6, f12, f22, dyn # perform operation
fmul.h f6, f12, f22, rdn # perform operation
fmul.h f6, f12, f22, rmm # perform operation
fmul.h f6, f12, f22, rne # perform operation
fmul.h f6, f12, f22, rtz # perform operation
fmul.h f6, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmul.h f1, f25, f26, dyn # perform operation
fmul.h f1, f25, f26, rdn # perform operation
fmul.h f1, f25, f26, rmm # perform operation
fmul.h f1, f25, f26, rne # perform operation
fmul.h f1, f25, f26, rtz # perform operation
fmul.h f1, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmul.h f1, f20, f9, dyn # perform operation
fmul.h f1, f20, f9, rdn # perform operation
fmul.h f1, f20, f9, rmm # perform operation
fmul.h f1, f20, f9, rne # perform operation
fmul.h f1, f20, f9, rtz # perform operation
fmul.h f1, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f21, f29, f23, dyn # perform operation
fmul.h f21, f29, f23, rdn # perform operation
fmul.h f21, f29, f23, rmm # perform operation
fmul.h f21, f29, f23, rne # perform operation
fmul.h f21, f29, f23, rtz # perform operation
fmul.h f21, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fmul.h f24, f12, f2, dyn # perform operation
fmul.h f24, f12, f2, rdn # perform operation
fmul.h f24, f12, f2, rmm # perform operation
fmul.h f24, f12, f2, rne # perform operation
fmul.h f24, f12, f2, rtz # perform operation
fmul.h f24, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fmul.h f27, f8, f22, dyn # perform operation
fmul.h f27, f8, f22, rdn # perform operation
fmul.h f27, f8, f22, rmm # perform operation
fmul.h f27, f8, f22, rne # perform operation
fmul.h f27, f8, f22, rtz # perform operation
fmul.h f27, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fmul.h f6, f14, f15, dyn # perform operation
fmul.h f6, f14, f15, rdn # perform operation
fmul.h f6, f14, f15, rmm # perform operation
fmul.h f6, f14, f15, rne # perform operation
fmul.h f6, f14, f15, rtz # perform operation
fmul.h f6, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fmul.h f15, f22, f5, dyn # perform operation
fmul.h f15, f22, f5, rdn # perform operation
fmul.h f15, f22, f5, rmm # perform operation
fmul.h f15, f22, f5, rne # perform operation
fmul.h f15, f22, f5, rtz # perform operation
fmul.h f15, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f22, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmul.h f29, f5, f2, dyn # perform operation
fmul.h f29, f5, f2, rdn # perform operation
fmul.h f29, f5, f2, rmm # perform operation
fmul.h f29, f5, f2, rne # perform operation
fmul.h f29, f5, f2, rtz # perform operation
fmul.h f29, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fmul.h f31, f14, f17, dyn # perform operation
fmul.h f31, f14, f17, rdn # perform operation
fmul.h f31, f14, f17, rmm # perform operation
fmul.h f31, f14, f17, rne # perform operation
fmul.h f31, f14, f17, rtz # perform operation
fmul.h f31, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
fmul.h f23, f1, f3, dyn # perform operation
fmul.h f23, f1, f3, rdn # perform operation
fmul.h f23, f1, f3, rmm # perform operation
fmul.h f23, f1, f3, rne # perform operation
fmul.h f23, f1, f3, rtz # perform operation
fmul.h f23, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmul.h f1, f13, f20, dyn # perform operation
fmul.h f1, f13, f20, rdn # perform operation
fmul.h f1, f13, f20, rmm # perform operation
fmul.h f1, f13, f20, rne # perform operation
fmul.h f1, f13, f20, rtz # perform operation
fmul.h f1, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmul.h f5, f31, f26, dyn # perform operation
fmul.h f5, f31, f26, rdn # perform operation
fmul.h f5, f31, f26, rmm # perform operation
fmul.h f5, f31, f26, rne # perform operation
fmul.h f5, f31, f26, rtz # perform operation
fmul.h f5, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
fmul.h f19, f27, f18, dyn # perform operation
fmul.h f19, f27, f18, rdn # perform operation
fmul.h f19, f27, f18, rmm # perform operation
fmul.h f19, f27, f18, rne # perform operation
fmul.h f19, f27, f18, rtz # perform operation
fmul.h f19, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fmul.h f3, f17, f25, dyn # perform operation
fmul.h f3, f17, f25, rdn # perform operation
fmul.h f3, f17, f25, rmm # perform operation
fmul.h f3, f17, f25, rne # perform operation
fmul.h f3, f17, f25, rtz # perform operation
fmul.h f3, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmul.h f18, f11, f10, dyn # perform operation
fmul.h f18, f11, f10, rdn # perform operation
fmul.h f18, f11, f10, rmm # perform operation
fmul.h f18, f11, f10, rne # perform operation
fmul.h f18, f11, f10, rtz # perform operation
fmul.h f18, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f11, f15, f6, dyn # perform operation
fmul.h f11, f15, f6, rdn # perform operation
fmul.h f11, f15, f6, rmm # perform operation
fmul.h f11, f15, f6, rne # perform operation
fmul.h f11, f15, f6, rtz # perform operation
fmul.h f11, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmul.h f13, f7, f31, dyn # perform operation
fmul.h f13, f7, f31, rdn # perform operation
fmul.h f13, f7, f31, rmm # perform operation
fmul.h f13, f7, f31, rne # perform operation
fmul.h f13, f7, f31, rtz # perform operation
fmul.h f13, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmul.h f26, f20, f14, dyn # perform operation
fmul.h f26, f20, f14, rdn # perform operation
fmul.h f26, f20, f14, rmm # perform operation
fmul.h f26, f20, f14, rne # perform operation
fmul.h f26, f20, f14, rtz # perform operation
fmul.h f26, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f20, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmul.h f8, f21, f10, dyn # perform operation
fmul.h f8, f21, f10, rdn # perform operation
fmul.h f8, f21, f10, rmm # perform operation
fmul.h f8, f21, f10, rne # perform operation
fmul.h f8, f21, f10, rtz # perform operation
fmul.h f8, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fmul.h f12, f31, f26, dyn # perform operation
fmul.h f12, f31, f26, rdn # perform operation
fmul.h f12, f31, f26, rmm # perform operation
fmul.h f12, f31, f26, rne # perform operation
fmul.h f12, f31, f26, rtz # perform operation
fmul.h f12, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmul.h f3, f6, f31, dyn # perform operation
fmul.h f3, f6, f31, rdn # perform operation
fmul.h f3, f6, f31, rmm # perform operation
fmul.h f3, f6, f31, rne # perform operation
fmul.h f3, f6, f31, rtz # perform operation
fmul.h f3, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmul.h f22, f7, f11, dyn # perform operation
fmul.h f22, f7, f11, rdn # perform operation
fmul.h f22, f7, f11, rmm # perform operation
fmul.h f22, f7, f11, rne # perform operation
fmul.h f22, f7, f11, rtz # perform operation
fmul.h f22, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmul.h f25, f8, f28, dyn # perform operation
fmul.h f25, f8, f28, rdn # perform operation
fmul.h f25, f8, f28, rmm # perform operation
fmul.h f25, f8, f28, rne # perform operation
fmul.h f25, f8, f28, rtz # perform operation
fmul.h f25, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f8, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmul.h f6, f7, f11, dyn # perform operation
fmul.h f6, f7, f11, rdn # perform operation
fmul.h f6, f7, f11, rmm # perform operation
fmul.h f6, f7, f11, rne # perform operation
fmul.h f6, f7, f11, rtz # perform operation
fmul.h f6, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmul.h f3, f15, f8, dyn # perform operation
fmul.h f3, f15, f8, rdn # perform operation
fmul.h f3, f15, f8, rmm # perform operation
fmul.h f3, f15, f8, rne # perform operation
fmul.h f3, f15, f8, rtz # perform operation
fmul.h f3, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmul.h f11, f23, f1, dyn # perform operation
fmul.h f11, f23, f1, rdn # perform operation
fmul.h f11, f23, f1, rmm # perform operation
fmul.h f11, f23, f1, rne # perform operation
fmul.h f11, f23, f1, rtz # perform operation
fmul.h f11, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmul.h f25, f20, f5, dyn # perform operation
fmul.h f25, f20, f5, rdn # perform operation
fmul.h f25, f20, f5, rmm # perform operation
fmul.h f25, f20, f5, rne # perform operation
fmul.h f25, f20, f5, rtz # perform operation
fmul.h f25, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmul.h f24, f7, f26, dyn # perform operation
fmul.h f24, f7, f26, rdn # perform operation
fmul.h f24, f7, f26, rmm # perform operation
fmul.h f24, f7, f26, rne # perform operation
fmul.h f24, f7, f26, rtz # perform operation
fmul.h f24, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f7, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmul.h f21, f29, f16, dyn # perform operation
fmul.h f21, f29, f16, rdn # perform operation
fmul.h f21, f29, f16, rmm # perform operation
fmul.h f21, f29, f16, rne # perform operation
fmul.h f21, f29, f16, rtz # perform operation
fmul.h f21, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmul.h f17, f11, f20, dyn # perform operation
fmul.h f17, f11, f20, rdn # perform operation
fmul.h f17, f11, f20, rmm # perform operation
fmul.h f17, f11, f20, rne # perform operation
fmul.h f17, f11, f20, rtz # perform operation
fmul.h f17, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fmul.h f7, f27, f6, dyn # perform operation
fmul.h f7, f27, f6, rdn # perform operation
fmul.h f7, f27, f6, rmm # perform operation
fmul.h f7, f27, f6, rne # perform operation
fmul.h f7, f27, f6, rtz # perform operation
fmul.h f7, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmul.h f29, f13, f27, dyn # perform operation
fmul.h f29, f13, f27, rdn # perform operation
fmul.h f29, f13, f27, rmm # perform operation
fmul.h f29, f13, f27, rne # perform operation
fmul.h f29, f13, f27, rtz # perform operation
fmul.h f29, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fmul.h f8, f26, f23, dyn # perform operation
fmul.h f8, f26, f23, rdn # perform operation
fmul.h f8, f26, f23, rmm # perform operation
fmul.h f8, f26, f23, rne # perform operation
fmul.h f8, f26, f23, rtz # perform operation
fmul.h f8, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fmul.h f8, f25, f26, dyn # perform operation
fmul.h f8, f25, f26, rdn # perform operation
fmul.h f8, f25, f26, rmm # perform operation
fmul.h f8, f25, f26, rne # perform operation
fmul.h f8, f25, f26, rtz # perform operation
fmul.h f8, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmul.h f11, f9, f17, dyn # perform operation
fmul.h f11, f9, f17, rdn # perform operation
fmul.h f11, f9, f17, rmm # perform operation
fmul.h f11, f9, f17, rne # perform operation
fmul.h f11, f9, f17, rtz # perform operation
fmul.h f11, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fmul.h f21, f3, f7, dyn # perform operation
fmul.h f21, f3, f7, rdn # perform operation
fmul.h f21, f3, f7, rmm # perform operation
fmul.h f21, f3, f7, rne # perform operation
fmul.h f21, f3, f7, rtz # perform operation
fmul.h f21, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmul.h f17, f26, f24, dyn # perform operation
fmul.h f17, f26, f24, rdn # perform operation
fmul.h f17, f26, f24, rmm # perform operation
fmul.h f17, f26, f24, rne # perform operation
fmul.h f17, f26, f24, rtz # perform operation
fmul.h f17, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f26, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
fmul.h f20, f8, f16, dyn # perform operation
fmul.h f20, f8, f16, rdn # perform operation
fmul.h f20, f8, f16, rmm # perform operation
fmul.h f20, f8, f16, rne # perform operation
fmul.h f20, f8, f16, rtz # perform operation
fmul.h f20, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f9, f3, f16, dyn # perform operation
fmul.h f9, f3, f16, rdn # perform operation
fmul.h f9, f3, f16, rmm # perform operation
fmul.h f9, f3, f16, rne # perform operation
fmul.h f9, f3, f16, rtz # perform operation
fmul.h f9, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f15, f27, f2, dyn # perform operation
fmul.h f15, f27, f2, rdn # perform operation
fmul.h f15, f27, f2, rmm # perform operation
fmul.h f15, f27, f2, rne # perform operation
fmul.h f15, f27, f2, rtz # perform operation
fmul.h f15, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f27, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
fmul.h f12, f23, f26, dyn # perform operation
fmul.h f12, f23, f26, rdn # perform operation
fmul.h f12, f23, f26, rmm # perform operation
fmul.h f12, f23, f26, rne # perform operation
fmul.h f12, f23, f26, rtz # perform operation
fmul.h f12, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f23, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f7, f15, f10, dyn # perform operation
fmul.h f7, f15, f10, rdn # perform operation
fmul.h f7, f15, f10, rmm # perform operation
fmul.h f7, f15, f10, rne # perform operation
fmul.h f7, f15, f10, rtz # perform operation
fmul.h f7, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f15, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmul.h f17, f19, f2, dyn # perform operation
fmul.h f17, f19, f2, rdn # perform operation
fmul.h f17, f19, f2, rmm # perform operation
fmul.h f17, f19, f2, rne # perform operation
fmul.h f17, f19, f2, rtz # perform operation
fmul.h f17, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmul.h f7, f21, f28, dyn # perform operation
fmul.h f7, f21, f28, rdn # perform operation
fmul.h f7, f21, f28, rmm # perform operation
fmul.h f7, f21, f28, rne # perform operation
fmul.h f7, f21, f28, rtz # perform operation
fmul.h f7, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f21, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fmul.h f28, f2, f15, dyn # perform operation
fmul.h f28, f2, f15, rdn # perform operation
fmul.h f28, f2, f15, rmm # perform operation
fmul.h f28, f2, f15, rne # perform operation
fmul.h f28, f2, f15, rtz # perform operation
fmul.h f28, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f2, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmul.h f15, f5, f22, dyn # perform operation
fmul.h f15, f5, f22, rdn # perform operation
fmul.h f15, f5, f22, rmm # perform operation
fmul.h f15, f5, f22, rne # perform operation
fmul.h f15, f5, f22, rtz # perform operation
fmul.h f15, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fmul.h f28, f10, f25, dyn # perform operation
fmul.h f28, f10, f25, rdn # perform operation
fmul.h f28, f10, f25, rmm # perform operation
fmul.h f28, f10, f25, rne # perform operation
fmul.h f28, f10, f25, rtz # perform operation
fmul.h f28, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f10, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fmul.h f24, f31, f8, dyn # perform operation
fmul.h f24, f31, f8, rdn # perform operation
fmul.h f24, f31, f8, rmm # perform operation
fmul.h f24, f31, f8, rne # perform operation
fmul.h f24, f31, f8, rtz # perform operation
fmul.h f24, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmul.h f19, f1, f29, dyn # perform operation
fmul.h f19, f1, f29, rdn # perform operation
fmul.h f19, f1, f29, rmm # perform operation
fmul.h f19, f1, f29, rne # perform operation
fmul.h f19, f1, f29, rtz # perform operation
fmul.h f19, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmul.h f9, f5, f3, dyn # perform operation
fmul.h f9, f5, f3, rdn # perform operation
fmul.h f9, f5, f3, rmm # perform operation
fmul.h f9, f5, f3, rne # perform operation
fmul.h f9, f5, f3, rtz # perform operation
fmul.h f9, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmul.h f14, f1, f9, dyn # perform operation
fmul.h f14, f1, f9, rdn # perform operation
fmul.h f14, f1, f9, rmm # perform operation
fmul.h f14, f1, f9, rne # perform operation
fmul.h f14, f1, f9, rtz # perform operation
fmul.h f14, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f1, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmul.h f29, f28, f6, dyn # perform operation
fmul.h f29, f28, f6, rdn # perform operation
fmul.h f29, f28, f6, rmm # perform operation
fmul.h f29, f28, f6, rne # perform operation
fmul.h f29, f28, f6, rtz # perform operation
fmul.h f29, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fmul.h f8, f23, f1, dyn # perform operation
fmul.h f8, f23, f1, rdn # perform operation
fmul.h f8, f23, f1, rmm # perform operation
fmul.h f8, f23, f1, rne # perform operation
fmul.h f8, f23, f1, rtz # perform operation
fmul.h f8, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmul.h f17, f9, f24, dyn # perform operation
fmul.h f17, f9, f24, rdn # perform operation
fmul.h f17, f9, f24, rmm # perform operation
fmul.h f17, f9, f24, rne # perform operation
fmul.h f17, f9, f24, rtz # perform operation
fmul.h f17, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fmul.h f6, f7, f13, dyn # perform operation
fmul.h f6, f7, f13, rdn # perform operation
fmul.h f6, f7, f13, rmm # perform operation
fmul.h f6, f7, f13, rne # perform operation
fmul.h f6, f7, f13, rtz # perform operation
fmul.h f6, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmul.h f5, f16, f23, dyn # perform operation
fmul.h f5, f16, f23, rdn # perform operation
fmul.h f5, f16, f23, rmm # perform operation
fmul.h f5, f16, f23, rne # perform operation
fmul.h f5, f16, f23, rtz # perform operation
fmul.h f5, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmul.h f8, f11, f28, dyn # perform operation
fmul.h f8, f11, f28, rdn # perform operation
fmul.h f8, f11, f28, rmm # perform operation
fmul.h f8, f11, f28, rne # perform operation
fmul.h f8, f11, f28, rtz # perform operation
fmul.h f8, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmul.h f30, f11, f24, dyn # perform operation
fmul.h f30, f11, f24, rdn # perform operation
fmul.h f30, f11, f24, rmm # perform operation
fmul.h f30, f11, f24, rne # perform operation
fmul.h f30, f11, f24, rtz # perform operation
fmul.h f30, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f11, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmul.h f8, f9, f14, dyn # perform operation
fmul.h f8, f9, f14, rdn # perform operation
fmul.h f8, f9, f14, rmm # perform operation
fmul.h f8, f9, f14, rne # perform operation
fmul.h f8, f9, f14, rtz # perform operation
fmul.h f8, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fmul.h f25, f13, f28, dyn # perform operation
fmul.h f25, f13, f28, rdn # perform operation
fmul.h f25, f13, f28, rmm # perform operation
fmul.h f25, f13, f28, rne # perform operation
fmul.h f25, f13, f28, rtz # perform operation
fmul.h f25, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmul.h f6, f1, f7, dyn # perform operation
fmul.h f6, f1, f7, rdn # perform operation
fmul.h f6, f1, f7, rmm # perform operation
fmul.h f6, f1, f7, rne # perform operation
fmul.h f6, f1, f7, rtz # perform operation
fmul.h f6, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmul.h f7, f15, f21, dyn # perform operation
fmul.h f7, f15, f21, rdn # perform operation
fmul.h f7, f15, f21, rmm # perform operation
fmul.h f7, f15, f21, rne # perform operation
fmul.h f7, f15, f21, rtz # perform operation
fmul.h f7, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f31, f27, f23, dyn # perform operation
fmul.h f31, f27, f23, rdn # perform operation
fmul.h f31, f27, f23, rmm # perform operation
fmul.h f31, f27, f23, rne # perform operation
fmul.h f31, f27, f23, rtz # perform operation
fmul.h f31, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fmul.h f31, f12, f7, dyn # perform operation
fmul.h f31, f12, f7, rdn # perform operation
fmul.h f31, f12, f7, rmm # perform operation
fmul.h f31, f12, f7, rne # perform operation
fmul.h f31, f12, f7, rtz # perform operation
fmul.h f31, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmul.h f9, f28, f8, dyn # perform operation
fmul.h f9, f28, f8, rdn # perform operation
fmul.h f9, f28, f8, rmm # perform operation
fmul.h f9, f28, f8, rne # perform operation
fmul.h f9, f28, f8, rtz # perform operation
fmul.h f9, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
fmul.h f29, f28, f24, dyn # perform operation
fmul.h f29, f28, f24, rdn # perform operation
fmul.h f29, f28, f24, rmm # perform operation
fmul.h f29, f28, f24, rne # perform operation
fmul.h f29, f28, f24, rtz # perform operation
fmul.h f29, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f28, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f13, f3, f31, dyn # perform operation
fmul.h f13, f3, f31, rdn # perform operation
fmul.h f13, f3, f31, rmm # perform operation
fmul.h f13, f3, f31, rne # perform operation
fmul.h f13, f3, f31, rtz # perform operation
fmul.h f13, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fmul.h f27, f24, f5, dyn # perform operation
fmul.h f27, f24, f5, rdn # perform operation
fmul.h f27, f24, f5, rmm # perform operation
fmul.h f27, f24, f5, rne # perform operation
fmul.h f27, f24, f5, rtz # perform operation
fmul.h f27, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
fmul.h f26, f25, f27, dyn # perform operation
fmul.h f26, f25, f27, rdn # perform operation
fmul.h f26, f25, f27, rmm # perform operation
fmul.h f26, f25, f27, rne # perform operation
fmul.h f26, f25, f27, rtz # perform operation
fmul.h f26, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmul.h f2, f24, f5, dyn # perform operation
fmul.h f2, f24, f5, rdn # perform operation
fmul.h f2, f24, f5, rmm # perform operation
fmul.h f2, f24, f5, rne # perform operation
fmul.h f2, f24, f5, rtz # perform operation
fmul.h f2, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f24, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmul.h f11, f22, f15, dyn # perform operation
fmul.h f11, f22, f15, rdn # perform operation
fmul.h f11, f22, f15, rmm # perform operation
fmul.h f11, f22, f15, rne # perform operation
fmul.h f11, f22, f15, rtz # perform operation
fmul.h f11, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmul.h f14, f17, f2, dyn # perform operation
fmul.h f14, f17, f2, rdn # perform operation
fmul.h f14, f17, f2, rmm # perform operation
fmul.h f14, f17, f2, rne # perform operation
fmul.h f14, f17, f2, rtz # perform operation
fmul.h f14, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f7, 0(x2) # load 0x0000fe00 from memory into f7
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fmul.h f21, f7, f14, dyn # perform operation
fmul.h f21, f7, f14, rdn # perform operation
fmul.h f21, f7, f14, rmm # perform operation
fmul.h f21, f7, f14, rne # perform operation
fmul.h f21, f7, f14, rtz # perform operation
fmul.h f21, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmul.h f17, f2, f27, dyn # perform operation
fmul.h f17, f2, f27, rdn # perform operation
fmul.h f17, f2, f27, rmm # perform operation
fmul.h f17, f2, f27, rne # perform operation
fmul.h f17, f2, f27, rtz # perform operation
fmul.h f17, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmul.h f28, f10, f26, dyn # perform operation
fmul.h f28, f10, f26, rdn # perform operation
fmul.h f28, f10, f26, rmm # perform operation
fmul.h f28, f10, f26, rne # perform operation
fmul.h f28, f10, f26, rtz # perform operation
fmul.h f28, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f10, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f27, 0(x2) # load 0x0000fe00 from memory into f27
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fmul.h f5, f27, f26, dyn # perform operation
fmul.h f5, f27, f26, rdn # perform operation
fmul.h f5, f27, f26, rmm # perform operation
fmul.h f5, f27, f26, rne # perform operation
fmul.h f5, f27, f26, rtz # perform operation
fmul.h f5, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fmul.h f21, f13, f2, dyn # perform operation
fmul.h f21, f13, f2, rdn # perform operation
fmul.h f21, f13, f2, rmm # perform operation
fmul.h f21, f13, f2, rne # perform operation
fmul.h f21, f13, f2, rtz # perform operation
fmul.h f21, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f3, 0(x2) # load 0x0000fe00 from memory into f3
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f19, f3, f14, dyn # perform operation
fmul.h f19, f3, f14, rdn # perform operation
fmul.h f19, f3, f14, rmm # perform operation
fmul.h f19, f3, f14, rne # perform operation
fmul.h f19, f3, f14, rtz # perform operation
fmul.h f19, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fmul.h f20, f1, f12, dyn # perform operation
fmul.h f20, f1, f12, rdn # perform operation
fmul.h f20, f1, f12, rmm # perform operation
fmul.h f20, f1, f12, rne # perform operation
fmul.h f20, f1, f12, rtz # perform operation
fmul.h f20, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f20, 0(x2) # load 0x0000fe00 from memory into f20
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fmul.h f31, f20, f17, dyn # perform operation
fmul.h f31, f20, f17, rdn # perform operation
fmul.h f31, f20, f17, rmm # perform operation
fmul.h f31, f20, f17, rne # perform operation
fmul.h f31, f20, f17, rtz # perform operation
fmul.h f31, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmul.h f6, f31, f18, dyn # perform operation
fmul.h f6, f31, f18, rdn # perform operation
fmul.h f6, f31, f18, rmm # perform operation
fmul.h f6, f31, f18, rne # perform operation
fmul.h f6, f31, f18, rtz # perform operation
fmul.h f6, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmul.h f11, f26, f19, dyn # perform operation
fmul.h f11, f26, f19, rdn # perform operation
fmul.h f11, f26, f19, rmm # perform operation
fmul.h f11, f26, f19, rne # perform operation
fmul.h f11, f26, f19, rtz # perform operation
fmul.h f11, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fmul.h f3, f2, f1, dyn # perform operation
fmul.h f3, f2, f1, rdn # perform operation
fmul.h f3, f2, f1, rmm # perform operation
fmul.h f3, f2, f1, rne # perform operation
fmul.h f3, f2, f1, rtz # perform operation
fmul.h f3, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f2, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f11, 0(x2) # load 0x0000fe00 from memory into f11
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmul.h f22, f11, f9, dyn # perform operation
fmul.h f22, f11, f9, rdn # perform operation
fmul.h f22, f11, f9, rmm # perform operation
fmul.h f22, f11, f9, rne # perform operation
fmul.h f22, f11, f9, rtz # perform operation
fmul.h f22, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f24, 0(x2) # load 0x0000fe00 from memory into f24
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f30, f24, f23, dyn # perform operation
fmul.h f30, f24, f23, rdn # perform operation
fmul.h f30, f24, f23, rmm # perform operation
fmul.h f30, f24, f23, rne # perform operation
fmul.h f30, f24, f23, rtz # perform operation
fmul.h f30, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmul.h f25, f22, f20, dyn # perform operation
fmul.h f25, f22, f20, rdn # perform operation
fmul.h f25, f22, f20, rmm # perform operation
fmul.h f25, f22, f20, rne # perform operation
fmul.h f25, f22, f20, rtz # perform operation
fmul.h f25, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f22, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f18, 0(x2) # load 0x0000fe00 from memory into f18
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fmul.h f26, f18, f24, dyn # perform operation
fmul.h f26, f18, f24, rdn # perform operation
fmul.h f26, f18, f24, rmm # perform operation
fmul.h f26, f18, f24, rne # perform operation
fmul.h f26, f18, f24, rtz # perform operation
fmul.h f26, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f8, 0(x2) # load 0x0000fe00 from memory into f8
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmul.h f9, f8, f18, dyn # perform operation
fmul.h f9, f8, f18, rdn # perform operation
fmul.h f9, f8, f18, rmm # perform operation
fmul.h f9, f8, f18, rne # perform operation
fmul.h f9, f8, f18, rtz # perform operation
fmul.h f9, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f5, 0(x2) # load 0x0000fe00 from memory into f5
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmul.h f27, f5, f3, dyn # perform operation
fmul.h f27, f5, f3, rdn # perform operation
fmul.h f27, f5, f3, rmm # perform operation
fmul.h f27, f5, f3, rne # perform operation
fmul.h f27, f5, f3, rtz # perform operation
fmul.h f27, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f16, 0(x2) # load 0x0000fe00 from memory into f16
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fmul.h f14, f16, f31, dyn # perform operation
fmul.h f14, f16, f31, rdn # perform operation
fmul.h f14, f16, f31, rmm # perform operation
fmul.h f14, f16, f31, rne # perform operation
fmul.h f14, f16, f31, rtz # perform operation
fmul.h f14, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f17, 0(x2) # load 0x0000fe00 from memory into f17
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fmul.h f21, f17, f2, dyn # perform operation
fmul.h f21, f17, f2, rdn # perform operation
fmul.h f21, f17, f2, rmm # perform operation
fmul.h f21, f17, f2, rne # perform operation
fmul.h f21, f17, f2, rtz # perform operation
fmul.h f21, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f17, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f14, 0(x2) # load 0x0000fe00 from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fmul.h f7, f14, f23, dyn # perform operation
fmul.h f7, f14, f23, rdn # perform operation
fmul.h f7, f14, f23, rmm # perform operation
fmul.h f7, f14, f23, rne # perform operation
fmul.h f7, f14, f23, rtz # perform operation
fmul.h f7, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f14, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fmul.h f29, f22, f11, dyn # perform operation
fmul.h f29, f22, f11, rdn # perform operation
fmul.h f29, f22, f11, rmm # perform operation
fmul.h f29, f22, f11, rne # perform operation
fmul.h f29, f22, f11, rtz # perform operation
fmul.h f29, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f22, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f26, 0(x2) # load 0x0000fe00 from memory into f26
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fmul.h f18, f26, f10, dyn # perform operation
fmul.h f18, f26, f10, rdn # perform operation
fmul.h f18, f26, f10, rmm # perform operation
fmul.h f18, f26, f10, rne # perform operation
fmul.h f18, f26, f10, rtz # perform operation
fmul.h f18, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f13, 0(x2) # load 0x0000fe00 from memory into f13
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmul.h f2, f13, f9, dyn # perform operation
fmul.h f2, f13, f9, rdn # perform operation
fmul.h f2, f13, f9, rmm # perform operation
fmul.h f2, f13, f9, rne # perform operation
fmul.h f2, f13, f9, rtz # perform operation
fmul.h f2, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f13, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f30, 0(x2) # load 0x0000fe00 from memory into f30
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fmul.h f27, f30, f16, dyn # perform operation
fmul.h f27, f30, f16, rdn # perform operation
fmul.h f27, f30, f16, rmm # perform operation
fmul.h f27, f30, f16, rne # perform operation
fmul.h f27, f30, f16, rtz # perform operation
fmul.h f27, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f30, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f1, 0(x2) # load 0x0000fe00 from memory into f1
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
fmul.h f22, f1, f29, dyn # perform operation
fmul.h f22, f1, f29, rdn # perform operation
fmul.h f22, f1, f29, rmm # perform operation
fmul.h f22, f1, f29, rne # perform operation
fmul.h f22, f1, f29, rtz # perform operation
fmul.h f22, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f15, 0(x2) # load 0x0000fe00 from memory into f15
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmul.h f29, f15, f18, dyn # perform operation
fmul.h f29, f15, f18, rdn # perform operation
fmul.h f29, f15, f18, rmm # perform operation
fmul.h f29, f15, f18, rne # perform operation
fmul.h f29, f15, f18, rtz # perform operation
fmul.h f29, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfe00 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f31, 0(x2) # load 0x0000fe00 from memory into f31
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmul.h f10, f31, f24, dyn # perform operation
fmul.h f10, f31, f24, rdn # perform operation
fmul.h f10, f31, f24, rmm # perform operation
fmul.h f10, f31, f24, rne # perform operation
fmul.h f10, f31, f24, rtz # perform operation
fmul.h f10, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fmul.h f16, f11, f30, dyn # perform operation
fmul.h f16, f11, f30, rdn # perform operation
fmul.h f16, f11, f30, rmm # perform operation
fmul.h f16, f11, f30, rne # perform operation
fmul.h f16, f11, f30, rtz # perform operation
fmul.h f16, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f11, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmul.h f15, f11, f10, dyn # perform operation
fmul.h f15, f11, f10, rdn # perform operation
fmul.h f15, f11, f10, rmm # perform operation
fmul.h f15, f11, f10, rne # perform operation
fmul.h f15, f11, f10, rtz # perform operation
fmul.h f15, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f11, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fmul.h f14, f28, f17, dyn # perform operation
fmul.h f14, f28, f17, rdn # perform operation
fmul.h f14, f28, f17, rmm # perform operation
fmul.h f14, f28, f17, rne # perform operation
fmul.h f14, f28, f17, rtz # perform operation
fmul.h f14, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmul.h f5, f27, f23, dyn # perform operation
fmul.h f5, f27, f23, rdn # perform operation
fmul.h f5, f27, f23, rmm # perform operation
fmul.h f5, f27, f23, rne # perform operation
fmul.h f5, f27, f23, rtz # perform operation
fmul.h f5, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmul.h f24, f14, f21, dyn # perform operation
fmul.h f24, f14, f21, rdn # perform operation
fmul.h f24, f14, f21, rmm # perform operation
fmul.h f24, f14, f21, rne # perform operation
fmul.h f24, f14, f21, rtz # perform operation
fmul.h f24, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmul.h f11, f1, f31, dyn # perform operation
fmul.h f11, f1, f31, rdn # perform operation
fmul.h f11, f1, f31, rmm # perform operation
fmul.h f11, f1, f31, rne # perform operation
fmul.h f11, f1, f31, rtz # perform operation
fmul.h f11, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmul.h f20, f5, f18, dyn # perform operation
fmul.h f20, f5, f18, rdn # perform operation
fmul.h f20, f5, f18, rmm # perform operation
fmul.h f20, f5, f18, rne # perform operation
fmul.h f20, f5, f18, rtz # perform operation
fmul.h f20, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmul.h f21, f14, f28, dyn # perform operation
fmul.h f21, f14, f28, rdn # perform operation
fmul.h f21, f14, f28, rmm # perform operation
fmul.h f21, f14, f28, rne # perform operation
fmul.h f21, f14, f28, rtz # perform operation
fmul.h f21, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fmul.h f7, f15, f14, dyn # perform operation
fmul.h f7, f15, f14, rdn # perform operation
fmul.h f7, f15, f14, rmm # perform operation
fmul.h f7, f15, f14, rne # perform operation
fmul.h f7, f15, f14, rtz # perform operation
fmul.h f7, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmul.h f30, f16, f26, dyn # perform operation
fmul.h f30, f16, f26, rdn # perform operation
fmul.h f30, f16, f26, rmm # perform operation
fmul.h f30, f16, f26, rne # perform operation
fmul.h f30, f16, f26, rtz # perform operation
fmul.h f30, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f16, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f15, f31, f21, dyn # perform operation
fmul.h f15, f31, f21, rdn # perform operation
fmul.h f15, f31, f21, rmm # perform operation
fmul.h f15, f31, f21, rne # perform operation
fmul.h f15, f31, f21, rtz # perform operation
fmul.h f15, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fmul.h f19, f17, f14, dyn # perform operation
fmul.h f19, f17, f14, rdn # perform operation
fmul.h f19, f17, f14, rmm # perform operation
fmul.h f19, f17, f14, rne # perform operation
fmul.h f19, f17, f14, rtz # perform operation
fmul.h f19, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f10, f24, f28, dyn # perform operation
fmul.h f10, f24, f28, rdn # perform operation
fmul.h f10, f24, f28, rmm # perform operation
fmul.h f10, f24, f28, rne # perform operation
fmul.h f10, f24, f28, rtz # perform operation
fmul.h f10, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f24, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fmul.h f26, f2, f25, dyn # perform operation
fmul.h f26, f2, f25, rdn # perform operation
fmul.h f26, f2, f25, rmm # perform operation
fmul.h f26, f2, f25, rne # perform operation
fmul.h f26, f2, f25, rtz # perform operation
fmul.h f26, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fmul.h f23, f15, f27, dyn # perform operation
fmul.h f23, f15, f27, rdn # perform operation
fmul.h f23, f15, f27, rmm # perform operation
fmul.h f23, f15, f27, rne # perform operation
fmul.h f23, f15, f27, rtz # perform operation
fmul.h f23, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f15, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f11, f3, f25, dyn # perform operation
fmul.h f11, f3, f25, rdn # perform operation
fmul.h f11, f3, f25, rmm # perform operation
fmul.h f11, f3, f25, rne # perform operation
fmul.h f11, f3, f25, rtz # perform operation
fmul.h f11, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f3, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fmul.h f27, f25, f28, dyn # perform operation
fmul.h f27, f25, f28, rdn # perform operation
fmul.h f27, f25, f28, rmm # perform operation
fmul.h f27, f25, f28, rne # perform operation
fmul.h f27, f25, f28, rtz # perform operation
fmul.h f27, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f25, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmul.h f20, f29, f26, dyn # perform operation
fmul.h f20, f29, f26, rdn # perform operation
fmul.h f20, f29, f26, rmm # perform operation
fmul.h f20, f29, f26, rne # perform operation
fmul.h f20, f29, f26, rtz # perform operation
fmul.h f20, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f29, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fmul.h f24, f9, f15, dyn # perform operation
fmul.h f24, f9, f15, rdn # perform operation
fmul.h f24, f9, f15, rmm # perform operation
fmul.h f24, f9, f15, rne # perform operation
fmul.h f24, f9, f15, rtz # perform operation
fmul.h f24, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f9, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmul.h f18, f5, f17, dyn # perform operation
fmul.h f18, f5, f17, rdn # perform operation
fmul.h f18, f5, f17, rmm # perform operation
fmul.h f18, f5, f17, rne # perform operation
fmul.h f18, f5, f17, rtz # perform operation
fmul.h f18, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fmul.h f29, f7, f6, dyn # perform operation
fmul.h f29, f7, f6, rdn # perform operation
fmul.h f29, f7, f6, rmm # perform operation
fmul.h f29, f7, f6, rne # perform operation
fmul.h f29, f7, f6, rtz # perform operation
fmul.h f29, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f11, f28, f23, dyn # perform operation
fmul.h f11, f28, f23, rdn # perform operation
fmul.h f11, f28, f23, rmm # perform operation
fmul.h f11, f28, f23, rne # perform operation
fmul.h f11, f28, f23, rtz # perform operation
fmul.h f11, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f28, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f10, 0(x2) # load 0x0000fe00 from memory into f10
fmul.h f2, f7, f10, dyn # perform operation
fmul.h f2, f7, f10, rdn # perform operation
fmul.h f2, f7, f10, rmm # perform operation
fmul.h f2, f7, f10, rne # perform operation
fmul.h f2, f7, f10, rtz # perform operation
fmul.h f2, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f1, f18, f16, dyn # perform operation
fmul.h f1, f18, f16, rdn # perform operation
fmul.h f1, f18, f16, rmm # perform operation
fmul.h f1, f18, f16, rne # perform operation
fmul.h f1, f18, f16, rtz # perform operation
fmul.h f1, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f18, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f29, f6, f7, dyn # perform operation
fmul.h f29, f6, f7, rdn # perform operation
fmul.h f29, f6, f7, rmm # perform operation
fmul.h f29, f6, f7, rne # perform operation
fmul.h f29, f6, f7, rtz # perform operation
fmul.h f29, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f6, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmul.h f14, f5, f8, dyn # perform operation
fmul.h f14, f5, f8, rdn # perform operation
fmul.h f14, f5, f8, rmm # perform operation
fmul.h f14, f5, f8, rne # perform operation
fmul.h f14, f5, f8, rtz # perform operation
fmul.h f14, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f15, f13, f10, dyn # perform operation
fmul.h f15, f13, f10, rdn # perform operation
fmul.h f15, f13, f10, rmm # perform operation
fmul.h f15, f13, f10, rne # perform operation
fmul.h f15, f13, f10, rtz # perform operation
fmul.h f15, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f13, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fmul.h f2, f21, f30, dyn # perform operation
fmul.h f2, f21, f30, rdn # perform operation
fmul.h f2, f21, f30, rmm # perform operation
fmul.h f2, f21, f30, rne # perform operation
fmul.h f2, f21, f30, rtz # perform operation
fmul.h f2, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmul.h f25, f14, f2, dyn # perform operation
fmul.h f25, f14, f2, rdn # perform operation
fmul.h f25, f14, f2, rmm # perform operation
fmul.h f25, f14, f2, rne # perform operation
fmul.h f25, f14, f2, rtz # perform operation
fmul.h f25, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmul.h f23, f15, f31, dyn # perform operation
fmul.h f23, f15, f31, rdn # perform operation
fmul.h f23, f15, f31, rmm # perform operation
fmul.h f23, f15, f31, rne # perform operation
fmul.h f23, f15, f31, rtz # perform operation
fmul.h f23, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmul.h f23, f7, f11, dyn # perform operation
fmul.h f23, f7, f11, rdn # perform operation
fmul.h f23, f7, f11, rmm # perform operation
fmul.h f23, f7, f11, rne # perform operation
fmul.h f23, f7, f11, rtz # perform operation
fmul.h f23, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f7, f30, f24, dyn # perform operation
fmul.h f7, f30, f24, rdn # perform operation
fmul.h f7, f30, f24, rmm # perform operation
fmul.h f7, f30, f24, rne # perform operation
fmul.h f7, f30, f24, rtz # perform operation
fmul.h f7, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f30, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmul.h f15, f19, f14, dyn # perform operation
fmul.h f15, f19, f14, rdn # perform operation
fmul.h f15, f19, f14, rmm # perform operation
fmul.h f15, f19, f14, rne # perform operation
fmul.h f15, f19, f14, rtz # perform operation
fmul.h f15, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f19, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f5, f8, f3, dyn # perform operation
fmul.h f5, f8, f3, rdn # perform operation
fmul.h f5, f8, f3, rmm # perform operation
fmul.h f5, f8, f3, rne # perform operation
fmul.h f5, f8, f3, rtz # perform operation
fmul.h f5, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f14, f30, f23, dyn # perform operation
fmul.h f14, f30, f23, rdn # perform operation
fmul.h f14, f30, f23, rmm # perform operation
fmul.h f14, f30, f23, rne # perform operation
fmul.h f14, f30, f23, rtz # perform operation
fmul.h f14, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f30, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmul.h f1, f20, f13, dyn # perform operation
fmul.h f1, f20, f13, rdn # perform operation
fmul.h f1, f20, f13, rmm # perform operation
fmul.h f1, f20, f13, rne # perform operation
fmul.h f1, f20, f13, rtz # perform operation
fmul.h f1, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f20, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmul.h f6, f12, f15, dyn # perform operation
fmul.h f6, f12, f15, rdn # perform operation
fmul.h f6, f12, f15, rmm # perform operation
fmul.h f6, f12, f15, rne # perform operation
fmul.h f6, f12, f15, rtz # perform operation
fmul.h f6, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f12, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fmul.h f6, f23, f19, dyn # perform operation
fmul.h f6, f23, f19, rdn # perform operation
fmul.h f6, f23, f19, rmm # perform operation
fmul.h f6, f23, f19, rne # perform operation
fmul.h f6, f23, f19, rtz # perform operation
fmul.h f6, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmul.h f13, f30, f3, dyn # perform operation
fmul.h f13, f30, f3, rdn # perform operation
fmul.h f13, f30, f3, rmm # perform operation
fmul.h f13, f30, f3, rne # perform operation
fmul.h f13, f30, f3, rtz # perform operation
fmul.h f13, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmul.h f9, f5, f8, dyn # perform operation
fmul.h f9, f5, f8, rdn # perform operation
fmul.h f9, f5, f8, rmm # perform operation
fmul.h f9, f5, f8, rne # perform operation
fmul.h f9, f5, f8, rtz # perform operation
fmul.h f9, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f18, f8, f15, dyn # perform operation
fmul.h f18, f8, f15, rdn # perform operation
fmul.h f18, f8, f15, rmm # perform operation
fmul.h f18, f8, f15, rne # perform operation
fmul.h f18, f8, f15, rtz # perform operation
fmul.h f18, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f8, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fmul.h f10, f21, f14, dyn # perform operation
fmul.h f10, f21, f14, rdn # perform operation
fmul.h f10, f21, f14, rmm # perform operation
fmul.h f10, f21, f14, rne # perform operation
fmul.h f10, f21, f14, rtz # perform operation
fmul.h f10, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fmul.h f10, f29, f18, dyn # perform operation
fmul.h f10, f29, f18, rdn # perform operation
fmul.h f10, f29, f18, rmm # perform operation
fmul.h f10, f29, f18, rne # perform operation
fmul.h f10, f29, f18, rtz # perform operation
fmul.h f10, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fmul.h f3, f6, f17, dyn # perform operation
fmul.h f3, f6, f17, rdn # perform operation
fmul.h f3, f6, f17, rmm # perform operation
fmul.h f3, f6, f17, rne # perform operation
fmul.h f3, f6, f17, rtz # perform operation
fmul.h f3, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fmul.h f14, f19, f2, dyn # perform operation
fmul.h f14, f19, f2, rdn # perform operation
fmul.h f14, f19, f2, rmm # perform operation
fmul.h f14, f19, f2, rne # perform operation
fmul.h f14, f19, f2, rtz # perform operation
fmul.h f14, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f19, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fmul.h f24, f3, f26, dyn # perform operation
fmul.h f24, f3, f26, rdn # perform operation
fmul.h f24, f3, f26, rmm # perform operation
fmul.h f24, f3, f26, rne # perform operation
fmul.h f24, f3, f26, rtz # perform operation
fmul.h f24, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f3, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fmul.h f16, f21, f18, dyn # perform operation
fmul.h f16, f21, f18, rdn # perform operation
fmul.h f16, f21, f18, rmm # perform operation
fmul.h f16, f21, f18, rne # perform operation
fmul.h f16, f21, f18, rtz # perform operation
fmul.h f16, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmul.h f5, f22, f9, dyn # perform operation
fmul.h f5, f22, f9, rdn # perform operation
fmul.h f5, f22, f9, rmm # perform operation
fmul.h f5, f22, f9, rne # perform operation
fmul.h f5, f22, f9, rtz # perform operation
fmul.h f5, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmul.h f22, f7, f30, dyn # perform operation
fmul.h f22, f7, f30, rdn # perform operation
fmul.h f22, f7, f30, rmm # perform operation
fmul.h f22, f7, f30, rne # perform operation
fmul.h f22, f7, f30, rtz # perform operation
fmul.h f22, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmul.h f11, f5, f27, dyn # perform operation
fmul.h f11, f5, f27, rdn # perform operation
fmul.h f11, f5, f27, rmm # perform operation
fmul.h f11, f5, f27, rne # perform operation
fmul.h f11, f5, f27, rtz # perform operation
fmul.h f11, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f5, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f28, 0(x2) # load 0x0000fe00 from memory into f28
fmul.h f6, f19, f28, dyn # perform operation
fmul.h f6, f19, f28, rdn # perform operation
fmul.h f6, f19, f28, rmm # perform operation
fmul.h f6, f19, f28, rne # perform operation
fmul.h f6, f19, f28, rtz # perform operation
fmul.h f6, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f19, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fmul.h f5, f31, f2, dyn # perform operation
fmul.h f5, f31, f2, rdn # perform operation
fmul.h f5, f31, f2, rmm # perform operation
fmul.h f5, f31, f2, rne # perform operation
fmul.h f5, f31, f2, rtz # perform operation
fmul.h f5, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmul.h f20, f9, f30, dyn # perform operation
fmul.h f20, f9, f30, rdn # perform operation
fmul.h f20, f9, f30, rmm # perform operation
fmul.h f20, f9, f30, rne # perform operation
fmul.h f20, f9, f30, rtz # perform operation
fmul.h f20, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fmul.h f30, f7, f3, dyn # perform operation
fmul.h f30, f7, f3, rdn # perform operation
fmul.h f30, f7, f3, rmm # perform operation
fmul.h f30, f7, f3, rne # perform operation
fmul.h f30, f7, f3, rtz # perform operation
fmul.h f30, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmul.h f10, f5, f19, dyn # perform operation
fmul.h f10, f5, f19, rdn # perform operation
fmul.h f10, f5, f19, rmm # perform operation
fmul.h f10, f5, f19, rne # perform operation
fmul.h f10, f5, f19, rtz # perform operation
fmul.h f10, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmul.h f21, f10, f6, dyn # perform operation
fmul.h f21, f10, f6, rdn # perform operation
fmul.h f21, f10, f6, rmm # perform operation
fmul.h f21, f10, f6, rne # perform operation
fmul.h f21, f10, f6, rtz # perform operation
fmul.h f21, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f21, 0(x2) # load 0x0000fc01 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmul.h f6, f21, f22, dyn # perform operation
fmul.h f6, f21, f22, rdn # perform operation
fmul.h f6, f21, f22, rmm # perform operation
fmul.h f6, f21, f22, rne # perform operation
fmul.h f6, f21, f22, rtz # perform operation
fmul.h f6, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f17, 0(x2) # load 0x0000fc01 from memory into f17
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fmul.h f13, f17, f16, dyn # perform operation
fmul.h f13, f17, f16, rdn # perform operation
fmul.h f13, f17, f16, rmm # perform operation
fmul.h f13, f17, f16, rne # perform operation
fmul.h f13, f17, f16, rtz # perform operation
fmul.h f13, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f22, f24, f23, dyn # perform operation
fmul.h f22, f24, f23, rdn # perform operation
fmul.h f22, f24, f23, rmm # perform operation
fmul.h f22, f24, f23, rne # perform operation
fmul.h f22, f24, f23, rtz # perform operation
fmul.h f22, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmul.h f8, f31, f3, dyn # perform operation
fmul.h f8, f31, f3, rdn # perform operation
fmul.h f8, f31, f3, rmm # perform operation
fmul.h f8, f31, f3, rne # perform operation
fmul.h f8, f31, f3, rtz # perform operation
fmul.h f8, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f31, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fmul.h f15, f24, f16, dyn # perform operation
fmul.h f15, f24, f16, rdn # perform operation
fmul.h f15, f24, f16, rmm # perform operation
fmul.h f15, f24, f16, rne # perform operation
fmul.h f15, f24, f16, rtz # perform operation
fmul.h f15, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fmul.h f25, f30, f13, dyn # perform operation
fmul.h f25, f30, f13, rdn # perform operation
fmul.h f25, f30, f13, rmm # perform operation
fmul.h f25, f30, f13, rne # perform operation
fmul.h f25, f30, f13, rtz # perform operation
fmul.h f25, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f31, 0(x2) # load 0x0000fc01 from memory into f31
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f12, f31, f27, dyn # perform operation
fmul.h f12, f31, f27, rdn # perform operation
fmul.h f12, f31, f27, rmm # perform operation
fmul.h f12, f31, f27, rne # perform operation
fmul.h f12, f31, f27, rtz # perform operation
fmul.h f12, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f31, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f25, 0(x2) # load 0x0000fc01 from memory into f25
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmul.h f10, f25, f21, dyn # perform operation
fmul.h f10, f25, f21, rdn # perform operation
fmul.h f10, f25, f21, rmm # perform operation
fmul.h f10, f25, f21, rne # perform operation
fmul.h f10, f25, f21, rtz # perform operation
fmul.h f10, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fmul.h f5, f22, f12, dyn # perform operation
fmul.h f5, f22, f12, rdn # perform operation
fmul.h f5, f22, f12, rmm # perform operation
fmul.h f5, f22, f12, rne # perform operation
fmul.h f5, f22, f12, rtz # perform operation
fmul.h f5, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fmul.h f2, f8, f9, dyn # perform operation
fmul.h f2, f8, f9, rdn # perform operation
fmul.h f2, f8, f9, rmm # perform operation
fmul.h f2, f8, f9, rne # perform operation
fmul.h f2, f8, f9, rtz # perform operation
fmul.h f2, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f8, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f5, 0(x2) # load 0x0000fc01 from memory into f5
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmul.h f17, f5, f8, dyn # perform operation
fmul.h f17, f5, f8, rdn # perform operation
fmul.h f17, f5, f8, rmm # perform operation
fmul.h f17, f5, f8, rne # perform operation
fmul.h f17, f5, f8, rtz # perform operation
fmul.h f17, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f30, 0(x2) # load 0x0000fc01 from memory into f30
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fmul.h f24, f30, f13, dyn # perform operation
fmul.h f24, f30, f13, rdn # perform operation
fmul.h f24, f30, f13, rmm # perform operation
fmul.h f24, f30, f13, rne # perform operation
fmul.h f24, f30, f13, rtz # perform operation
fmul.h f24, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f30, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmul.h f7, f24, f13, dyn # perform operation
fmul.h f7, f24, f13, rdn # perform operation
fmul.h f7, f24, f13, rmm # perform operation
fmul.h f7, f24, f13, rne # perform operation
fmul.h f7, f24, f13, rtz # perform operation
fmul.h f7, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fmul.h f24, f9, f14, dyn # perform operation
fmul.h f24, f9, f14, rdn # perform operation
fmul.h f24, f9, f14, rmm # perform operation
fmul.h f24, f9, f14, rne # perform operation
fmul.h f24, f9, f14, rtz # perform operation
fmul.h f24, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f9, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmul.h f10, f11, f3, dyn # perform operation
fmul.h f10, f11, f3, rdn # perform operation
fmul.h f10, f11, f3, rmm # perform operation
fmul.h f10, f11, f3, rne # perform operation
fmul.h f10, f11, f3, rtz # perform operation
fmul.h f10, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f7, 0(x2) # load 0x0000fc01 from memory into f7
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmul.h f12, f7, f14, dyn # perform operation
fmul.h f12, f7, f14, rdn # perform operation
fmul.h f12, f7, f14, rmm # perform operation
fmul.h f12, f7, f14, rne # perform operation
fmul.h f12, f7, f14, rtz # perform operation
fmul.h f12, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f26, 0(x2) # load 0x0000fc01 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmul.h f6, f26, f12, dyn # perform operation
fmul.h f6, f26, f12, rdn # perform operation
fmul.h f6, f26, f12, rmm # perform operation
fmul.h f6, f26, f12, rne # perform operation
fmul.h f6, f26, f12, rtz # perform operation
fmul.h f6, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f26, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmul.h f13, f8, f3, dyn # perform operation
fmul.h f13, f8, f3, rdn # perform operation
fmul.h f13, f8, f3, rmm # perform operation
fmul.h f13, f8, f3, rne # perform operation
fmul.h f13, f8, f3, rtz # perform operation
fmul.h f13, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmul.h f29, f3, f2, dyn # perform operation
fmul.h f29, f3, f2, rdn # perform operation
fmul.h f29, f3, f2, rmm # perform operation
fmul.h f29, f3, f2, rne # perform operation
fmul.h f29, f3, f2, rtz # perform operation
fmul.h f29, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fmul.h f24, f27, f1, dyn # perform operation
fmul.h f24, f27, f1, rdn # perform operation
fmul.h f24, f27, f1, rmm # perform operation
fmul.h f24, f27, f1, rne # perform operation
fmul.h f24, f27, f1, rtz # perform operation
fmul.h f24, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f27, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f9, 0(x2) # load 0x0000fc01 from memory into f9
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmul.h f17, f9, f8, dyn # perform operation
fmul.h f17, f9, f8, rdn # perform operation
fmul.h f17, f9, f8, rmm # perform operation
fmul.h f17, f9, f8, rne # perform operation
fmul.h f17, f9, f8, rtz # perform operation
fmul.h f17, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f24, 0(x2) # load 0x0000fc01 from memory into f24
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmul.h f21, f24, f3, dyn # perform operation
fmul.h f21, f24, f3, rdn # perform operation
fmul.h f21, f24, f3, rmm # perform operation
fmul.h f21, f24, f3, rne # perform operation
fmul.h f21, f24, f3, rtz # perform operation
fmul.h f21, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f22, 0(x2) # load 0x0000fe00 from memory into f22
fmul.h f14, f29, f22, dyn # perform operation
fmul.h f14, f29, f22, rdn # perform operation
fmul.h f14, f29, f22, rmm # perform operation
fmul.h f14, f29, f22, rne # perform operation
fmul.h f14, f29, f22, rtz # perform operation
fmul.h f14, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f29, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f27, 0(x2) # load 0x0000fc01 from memory into f27
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmul.h f21, f27, f26, dyn # perform operation
fmul.h f21, f27, f26, rdn # perform operation
fmul.h f21, f27, f26, rmm # perform operation
fmul.h f21, f27, f26, rne # perform operation
fmul.h f21, f27, f26, rtz # perform operation
fmul.h f21, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f22, 0(x2) # load 0x0000fc01 from memory into f22
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fmul.h f11, f22, f29, dyn # perform operation
fmul.h f11, f22, f29, rdn # perform operation
fmul.h f11, f22, f29, rmm # perform operation
fmul.h f11, f22, f29, rne # perform operation
fmul.h f11, f22, f29, rtz # perform operation
fmul.h f11, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f22, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f18, 0(x2) # load 0x0000fc01 from memory into f18
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f3, 0(x2) # load 0x0000fc01 from memory into f3
fmul.h f9, f18, f3, dyn # perform operation
fmul.h f9, f18, f3, rdn # perform operation
fmul.h f9, f18, f3, rmm # perform operation
fmul.h f9, f18, f3, rne # perform operation
fmul.h f9, f18, f3, rtz # perform operation
fmul.h f9, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f18, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f29, 0(x2) # load 0x0000fc01 from memory into f29
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmul.h f7, f29, f2, dyn # perform operation
fmul.h f7, f29, f2, rdn # perform operation
fmul.h f7, f29, f2, rmm # perform operation
fmul.h f7, f29, f2, rne # perform operation
fmul.h f7, f29, f2, rtz # perform operation
fmul.h f7, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f29, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc01 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f19, 0(x2) # load 0x0000fc01 from memory into f19
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmul.h f11, f19, f7, dyn # perform operation
fmul.h f11, f19, f7, rdn # perform operation
fmul.h f11, f19, f7, rmm # perform operation
fmul.h f11, f19, f7, rne # perform operation
fmul.h f11, f19, f7, rtz # perform operation
fmul.h f11, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmul.h f7, f9, f16, dyn # perform operation
fmul.h f7, f9, f16, rdn # perform operation
fmul.h f7, f9, f16, rmm # perform operation
fmul.h f7, f9, f16, rne # perform operation
fmul.h f7, f9, f16, rtz # perform operation
fmul.h f7, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f9, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmul.h f31, f14, f26, dyn # perform operation
fmul.h f31, f14, f26, rdn # perform operation
fmul.h f31, f14, f26, rmm # perform operation
fmul.h f31, f14, f26, rne # perform operation
fmul.h f31, f14, f26, rtz # perform operation
fmul.h f31, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f20, f7, f3, dyn # perform operation
fmul.h f20, f7, f3, rdn # perform operation
fmul.h f20, f7, f3, rmm # perform operation
fmul.h f20, f7, f3, rne # perform operation
fmul.h f20, f7, f3, rtz # perform operation
fmul.h f20, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fmul.h f12, f1, f11, dyn # perform operation
fmul.h f12, f1, f11, rdn # perform operation
fmul.h f12, f1, f11, rmm # perform operation
fmul.h f12, f1, f11, rne # perform operation
fmul.h f12, f1, f11, rtz # perform operation
fmul.h f12, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fmul.h f19, f17, f24, dyn # perform operation
fmul.h f19, f17, f24, rdn # perform operation
fmul.h f19, f17, f24, rmm # perform operation
fmul.h f19, f17, f24, rne # perform operation
fmul.h f19, f17, f24, rtz # perform operation
fmul.h f19, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f17, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fmul.h f10, f11, f12, dyn # perform operation
fmul.h f10, f11, f12, rdn # perform operation
fmul.h f10, f11, f12, rmm # perform operation
fmul.h f10, f11, f12, rne # perform operation
fmul.h f10, f11, f12, rtz # perform operation
fmul.h f10, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f11, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f3, f1, f22, dyn # perform operation
fmul.h f3, f1, f22, rdn # perform operation
fmul.h f3, f1, f22, rmm # perform operation
fmul.h f3, f1, f22, rne # perform operation
fmul.h f3, f1, f22, rtz # perform operation
fmul.h f3, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmul.h f29, f1, f25, dyn # perform operation
fmul.h f29, f1, f25, rdn # perform operation
fmul.h f29, f1, f25, rmm # perform operation
fmul.h f29, f1, f25, rne # perform operation
fmul.h f29, f1, f25, rtz # perform operation
fmul.h f29, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmul.h f12, f8, f18, dyn # perform operation
fmul.h f12, f8, f18, rdn # perform operation
fmul.h f12, f8, f18, rmm # perform operation
fmul.h f12, f8, f18, rne # perform operation
fmul.h f12, f8, f18, rtz # perform operation
fmul.h f12, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmul.h f9, f19, f17, dyn # perform operation
fmul.h f9, f19, f17, rdn # perform operation
fmul.h f9, f19, f17, rmm # perform operation
fmul.h f9, f19, f17, rne # perform operation
fmul.h f9, f19, f17, rtz # perform operation
fmul.h f9, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmul.h f22, f31, f7, dyn # perform operation
fmul.h f22, f31, f7, rdn # perform operation
fmul.h f22, f31, f7, rmm # perform operation
fmul.h f22, f31, f7, rne # perform operation
fmul.h f22, f31, f7, rtz # perform operation
fmul.h f22, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f31, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmul.h f25, f15, f24, dyn # perform operation
fmul.h f25, f15, f24, rdn # perform operation
fmul.h f25, f15, f24, rmm # perform operation
fmul.h f25, f15, f24, rne # perform operation
fmul.h f25, f15, f24, rtz # perform operation
fmul.h f25, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f2, f31, f15, dyn # perform operation
fmul.h f2, f31, f15, rdn # perform operation
fmul.h f2, f31, f15, rmm # perform operation
fmul.h f2, f31, f15, rne # perform operation
fmul.h f2, f31, f15, rtz # perform operation
fmul.h f2, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmul.h f20, f30, f5, dyn # perform operation
fmul.h f20, f30, f5, rdn # perform operation
fmul.h f20, f30, f5, rmm # perform operation
fmul.h f20, f30, f5, rne # perform operation
fmul.h f20, f30, f5, rtz # perform operation
fmul.h f20, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmul.h f30, f27, f23, dyn # perform operation
fmul.h f30, f27, f23, rdn # perform operation
fmul.h f30, f27, f23, rmm # perform operation
fmul.h f30, f27, f23, rne # perform operation
fmul.h f30, f27, f23, rtz # perform operation
fmul.h f30, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f27, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmul.h f7, f8, f21, dyn # perform operation
fmul.h f7, f8, f21, rdn # perform operation
fmul.h f7, f8, f21, rmm # perform operation
fmul.h f7, f8, f21, rne # perform operation
fmul.h f7, f8, f21, rtz # perform operation
fmul.h f7, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f8, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmul.h f20, f7, f14, dyn # perform operation
fmul.h f20, f7, f14, rdn # perform operation
fmul.h f20, f7, f14, rmm # perform operation
fmul.h f20, f7, f14, rne # perform operation
fmul.h f20, f7, f14, rtz # perform operation
fmul.h f20, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmul.h f19, f27, f25, dyn # perform operation
fmul.h f19, f27, f25, rdn # perform operation
fmul.h f19, f27, f25, rmm # perform operation
fmul.h f19, f27, f25, rne # perform operation
fmul.h f19, f27, f25, rtz # perform operation
fmul.h f19, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f27, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmul.h f2, f31, f25, dyn # perform operation
fmul.h f2, f31, f25, rdn # perform operation
fmul.h f2, f31, f25, rmm # perform operation
fmul.h f2, f31, f25, rne # perform operation
fmul.h f2, f31, f25, rtz # perform operation
fmul.h f2, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f31, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmul.h f22, f17, f23, dyn # perform operation
fmul.h f22, f17, f23, rdn # perform operation
fmul.h f22, f17, f23, rmm # perform operation
fmul.h f22, f17, f23, rne # perform operation
fmul.h f22, f17, f23, rtz # perform operation
fmul.h f22, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f17, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmul.h f18, f23, f22, dyn # perform operation
fmul.h f18, f23, f22, rdn # perform operation
fmul.h f18, f23, f22, rmm # perform operation
fmul.h f18, f23, f22, rne # perform operation
fmul.h f18, f23, f22, rtz # perform operation
fmul.h f18, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmul.h f3, f25, f20, dyn # perform operation
fmul.h f3, f25, f20, rdn # perform operation
fmul.h f3, f25, f20, rmm # perform operation
fmul.h f3, f25, f20, rne # perform operation
fmul.h f3, f25, f20, rtz # perform operation
fmul.h f3, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f21, 0(x2) # load 0x0000fe00 from memory into f21
fmul.h f25, f9, f21, dyn # perform operation
fmul.h f25, f9, f21, rdn # perform operation
fmul.h f25, f9, f21, rmm # perform operation
fmul.h f25, f9, f21, rne # perform operation
fmul.h f25, f9, f21, rtz # perform operation
fmul.h f25, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmul.h f19, f1, f21, dyn # perform operation
fmul.h f19, f1, f21, rdn # perform operation
fmul.h f19, f1, f21, rmm # perform operation
fmul.h f19, f1, f21, rne # perform operation
fmul.h f19, f1, f21, rtz # perform operation
fmul.h f19, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fmul.h f30, f11, f16, dyn # perform operation
fmul.h f30, f11, f16, rdn # perform operation
fmul.h f30, f11, f16, rmm # perform operation
fmul.h f30, f11, f16, rne # perform operation
fmul.h f30, f11, f16, rtz # perform operation
fmul.h f30, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f11, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f8, 0(x2) # load 0x0000fc01 from memory into f8
fmul.h f6, f28, f8, dyn # perform operation
fmul.h f6, f28, f8, rdn # perform operation
fmul.h f6, f28, f8, rmm # perform operation
fmul.h f6, f28, f8, rne # perform operation
fmul.h f6, f28, f8, rtz # perform operation
fmul.h f6, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f28, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fmul.h f1, f26, f9, dyn # perform operation
fmul.h f1, f26, f9, rdn # perform operation
fmul.h f1, f26, f9, rmm # perform operation
fmul.h f1, f26, f9, rne # perform operation
fmul.h f1, f26, f9, rtz # perform operation
fmul.h f1, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fmul.h f19, f21, f12, dyn # perform operation
fmul.h f19, f21, f12, rdn # perform operation
fmul.h f19, f21, f12, rmm # perform operation
fmul.h f19, f21, f12, rne # perform operation
fmul.h f19, f21, f12, rtz # perform operation
fmul.h f19, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f21, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmul.h f24, f27, f17, dyn # perform operation
fmul.h f24, f27, f17, rdn # perform operation
fmul.h f24, f27, f17, rmm # perform operation
fmul.h f24, f27, f17, rne # perform operation
fmul.h f24, f27, f17, rtz # perform operation
fmul.h f24, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f27, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fmul.h f17, f27, f8, dyn # perform operation
fmul.h f17, f27, f8, rdn # perform operation
fmul.h f17, f27, f8, rmm # perform operation
fmul.h f17, f27, f8, rne # perform operation
fmul.h f17, f27, f8, rtz # perform operation
fmul.h f17, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmul.h f8, f3, f5, dyn # perform operation
fmul.h f8, f3, f5, rdn # perform operation
fmul.h f8, f3, f5, rmm # perform operation
fmul.h f8, f3, f5, rne # perform operation
fmul.h f8, f3, f5, rtz # perform operation
fmul.h f8, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f3, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fmul.h f21, f11, f25, dyn # perform operation
fmul.h f21, f11, f25, rdn # perform operation
fmul.h f21, f11, f25, rmm # perform operation
fmul.h f21, f11, f25, rne # perform operation
fmul.h f21, f11, f25, rtz # perform operation
fmul.h f21, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f5, f24, f10, dyn # perform operation
fmul.h f5, f24, f10, rdn # perform operation
fmul.h f5, f24, f10, rmm # perform operation
fmul.h f5, f24, f10, rne # perform operation
fmul.h f5, f24, f10, rtz # perform operation
fmul.h f5, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmul.h f29, f26, f25, dyn # perform operation
fmul.h f29, f26, f25, rdn # perform operation
fmul.h f29, f26, f25, rmm # perform operation
fmul.h f29, f26, f25, rne # perform operation
fmul.h f29, f26, f25, rtz # perform operation
fmul.h f29, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f7, f17, f27, dyn # perform operation
fmul.h f7, f17, f27, rdn # perform operation
fmul.h f7, f17, f27, rmm # perform operation
fmul.h f7, f17, f27, rne # perform operation
fmul.h f7, f17, f27, rtz # perform operation
fmul.h f7, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f17, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmul.h f15, f1, f3, dyn # perform operation
fmul.h f15, f1, f3, rdn # perform operation
fmul.h f15, f1, f3, rmm # perform operation
fmul.h f15, f1, f3, rne # perform operation
fmul.h f15, f1, f3, rtz # perform operation
fmul.h f15, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f21, f7, f10, dyn # perform operation
fmul.h f21, f7, f10, rdn # perform operation
fmul.h f21, f7, f10, rmm # perform operation
fmul.h f21, f7, f10, rne # perform operation
fmul.h f21, f7, f10, rtz # perform operation
fmul.h f21, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmul.h f22, f7, f3, dyn # perform operation
fmul.h f22, f7, f3, rdn # perform operation
fmul.h f22, f7, f3, rmm # perform operation
fmul.h f22, f7, f3, rne # perform operation
fmul.h f22, f7, f3, rtz # perform operation
fmul.h f22, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f7, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fmul.h f30, f16, f6, dyn # perform operation
fmul.h f30, f16, f6, rdn # perform operation
fmul.h f30, f16, f6, rmm # perform operation
fmul.h f30, f16, f6, rne # perform operation
fmul.h f30, f16, f6, rtz # perform operation
fmul.h f30, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f16, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmul.h f15, f17, f29, dyn # perform operation
fmul.h f15, f17, f29, rdn # perform operation
fmul.h f15, f17, f29, rmm # perform operation
fmul.h f15, f17, f29, rne # perform operation
fmul.h f15, f17, f29, rtz # perform operation
fmul.h f15, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f17, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmul.h f20, f17, f13, dyn # perform operation
fmul.h f20, f17, f13, rdn # perform operation
fmul.h f20, f17, f13, rmm # perform operation
fmul.h f20, f17, f13, rne # perform operation
fmul.h f20, f17, f13, rtz # perform operation
fmul.h f20, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmul.h f3, f9, f28, dyn # perform operation
fmul.h f3, f9, f28, rdn # perform operation
fmul.h f3, f9, f28, rmm # perform operation
fmul.h f3, f9, f28, rne # perform operation
fmul.h f3, f9, f28, rtz # perform operation
fmul.h f3, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f19, f29, f15, dyn # perform operation
fmul.h f19, f29, f15, rdn # perform operation
fmul.h f19, f29, f15, rmm # perform operation
fmul.h f19, f29, f15, rne # perform operation
fmul.h f19, f29, f15, rtz # perform operation
fmul.h f19, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f29, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fmul.h f16, f29, f24, dyn # perform operation
fmul.h f16, f29, f24, rdn # perform operation
fmul.h f16, f29, f24, rmm # perform operation
fmul.h f16, f29, f24, rne # perform operation
fmul.h f16, f29, f24, rtz # perform operation
fmul.h f16, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f9, f17, f21, dyn # perform operation
fmul.h f9, f17, f21, rdn # perform operation
fmul.h f9, f17, f21, rmm # perform operation
fmul.h f9, f17, f21, rne # perform operation
fmul.h f9, f17, f21, rtz # perform operation
fmul.h f9, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fmul.h f23, f30, f31, dyn # perform operation
fmul.h f23, f30, f31, rdn # perform operation
fmul.h f23, f30, f31, rmm # perform operation
fmul.h f23, f30, f31, rne # perform operation
fmul.h f23, f30, f31, rtz # perform operation
fmul.h f23, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmul.h f5, f31, f23, dyn # perform operation
fmul.h f5, f31, f23, rdn # perform operation
fmul.h f5, f31, f23, rmm # perform operation
fmul.h f5, f31, f23, rne # perform operation
fmul.h f5, f31, f23, rtz # perform operation
fmul.h f5, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fmul.h f31, f13, f15, dyn # perform operation
fmul.h f31, f13, f15, rdn # perform operation
fmul.h f31, f13, f15, rmm # perform operation
fmul.h f31, f13, f15, rne # perform operation
fmul.h f31, f13, f15, rtz # perform operation
fmul.h f31, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f13, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmul.h f11, f14, f21, dyn # perform operation
fmul.h f11, f14, f21, rdn # perform operation
fmul.h f11, f14, f21, rmm # perform operation
fmul.h f11, f14, f21, rne # perform operation
fmul.h f11, f14, f21, rtz # perform operation
fmul.h f11, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f14, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmul.h f10, f28, f20, dyn # perform operation
fmul.h f10, f28, f20, rdn # perform operation
fmul.h f10, f28, f20, rmm # perform operation
fmul.h f10, f28, f20, rne # perform operation
fmul.h f10, f28, f20, rtz # perform operation
fmul.h f10, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f28, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfe00)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f2, 0(x2) # load 0x0000fe00 from memory into f2
fmul.h f14, f12, f2, dyn # perform operation
fmul.h f14, f12, f2, rdn # perform operation
fmul.h f14, f12, f2, rmm # perform operation
fmul.h f14, f12, f2, rne # perform operation
fmul.h f14, f12, f2, rtz # perform operation
fmul.h f14, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f12, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmul.h f15, f31, f24, dyn # perform operation
fmul.h f15, f31, f24, rdn # perform operation
fmul.h f15, f31, f24, rmm # perform operation
fmul.h f15, f31, f24, rne # perform operation
fmul.h f15, f31, f24, rtz # perform operation
fmul.h f15, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f9, f12, f7, dyn # perform operation
fmul.h f9, f12, f7, rdn # perform operation
fmul.h f9, f12, f7, rmm # perform operation
fmul.h f9, f12, f7, rne # perform operation
fmul.h f9, f12, f7, rtz # perform operation
fmul.h f9, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc01)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f16, 0(x2) # load 0x0000fc01 from memory into f16
fmul.h f23, f20, f16, dyn # perform operation
fmul.h f23, f20, f16, rdn # perform operation
fmul.h f23, f20, f16, rmm # perform operation
fmul.h f23, f20, f16, rne # perform operation
fmul.h f23, f20, f16, rtz # perform operation
fmul.h f23, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fmul.h f12, f2, f6, dyn # perform operation
fmul.h f12, f2, f6, rdn # perform operation
fmul.h f12, f2, f6, rmm # perform operation
fmul.h f12, f2, f6, rne # perform operation
fmul.h f12, f2, f6, rtz # perform operation
fmul.h f12, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f2, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmul.h f2, f29, f3, dyn # perform operation
fmul.h f2, f29, f3, rdn # perform operation
fmul.h f2, f29, f3, rmm # perform operation
fmul.h f2, f29, f3, rne # perform operation
fmul.h f2, f29, f3, rtz # perform operation
fmul.h f2, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f29, f3 # perform operation


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x715ccb8957dfbda5 # load x3 with value 0x715ccb8957dfbda5
sw x3, 0(x2) # store 0x715ccb8957dfbda5 in memory
flh f11, 0(x2) # load 0x715ccb8957dfbda5 from memory into f11
la x2, scratch
li x3, 0xc908e4f91de9ed11 # load x3 with value 0xc908e4f91de9ed11
sw x3, 0(x2) # store 0xc908e4f91de9ed11 in memory
flh f28, 0(x2) # load 0xc908e4f91de9ed11 from memory into f28
fmul.h f9, f11, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x0 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x8f93bbe5436af80f # load x3 with value 0x8f93bbe5436af80f
sw x3, 0(x2) # store 0x8f93bbe5436af80f in memory
flw f21, 0(x2) # load 0x8f93bbe5436af80f from memory into f21
fmul.h f14, f20, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f23, 0(x2) # load 0xfffe8000 from memory into f23
la x2, scratch
li x3, 0x10312defa921a02a # load x3 with value 0x10312defa921a02a
sw x3, 0(x2) # store 0x10312defa921a02a in memory
flw f31, 0(x2) # load 0x10312defa921a02a from memory into f31
fmul.h f9, f23, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f17, 0(x2) # load 0x7fff3c00 from memory into f17
la x2, scratch
li x3, 0xcb18d8d5728cab43 # load x3 with value 0xcb18d8d5728cab43
sw x3, 0(x2) # store 0xcb18d8d5728cab43 in memory
flw f8, 0(x2) # load 0xcb18d8d5728cab43 from memory into f8
fmul.h f28, f17, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f8, 0(x2) # load 0xbeefbc00 from memory into f8
la x2, scratch
li x3, 0x8284b2dee0cb31de # load x3 with value 0x8284b2dee0cb31de
sw x3, 0(x2) # store 0x8284b2dee0cb31de in memory
flw f31, 0(x2) # load 0x8284b2dee0cb31de from memory into f31
fmul.h f27, f8, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f20, 0(x2) # load 0xfeff0400 from memory into f20
la x2, scratch
li x3, 0x7c603edc9ab4d979 # load x3 with value 0x7c603edc9ab4d979
sw x3, 0(x2) # store 0x7c603edc9ab4d979 in memory
flw f7, 0(x2) # load 0x7c603edc9ab4d979 from memory into f7
fmul.h f21, f20, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f28, 0(x2) # load 0x0fff8400 from memory into f28
la x2, scratch
li x3, 0xf443397a891c8c2 # load x3 with value 0xf443397a891c8c2
sw x3, 0(x2) # store 0xf443397a891c8c2 in memory
flw f1, 0(x2) # load 0xf443397a891c8c2 from memory into f1
fmul.h f5, f28, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f12, 0(x2) # load 0xefff7bff from memory into f12
la x2, scratch
li x3, 0x6dc5b04f594a7146 # load x3 with value 0x6dc5b04f594a7146
sw x3, 0(x2) # store 0x6dc5b04f594a7146 in memory
flw f25, 0(x2) # load 0x6dc5b04f594a7146 from memory into f25
fmul.h f9, f12, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f14, 0(x2) # load 0xc0defbff from memory into f14
la x2, scratch
li x3, 0xed352fced17e3cc7 # load x3 with value 0xed352fced17e3cc7
sw x3, 0(x2) # store 0xed352fced17e3cc7 in memory
flw f28, 0(x2) # load 0xed352fced17e3cc7 from memory into f28
fmul.h f22, f14, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f27, 0(x2) # load 0x4f1a7c00 from memory into f27
la x2, scratch
li x3, 0x19e14919b43cc97b # load x3 with value 0x19e14919b43cc97b
sw x3, 0(x2) # store 0x19e14919b43cc97b in memory
flw f8, 0(x2) # load 0x19e14919b43cc97b from memory into f8
fmul.h f21, f27, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f24, 0(x2) # load 0x0ffffc00 from memory into f24
la x2, scratch
li x3, 0xf17f0fe300fc309d # load x3 with value 0xf17f0fe300fc309d
sw x3, 0(x2) # store 0xf17f0fe300fc309d in memory
flw f18, 0(x2) # load 0xf17f0fe300fc309d from memory into f18
fmul.h f30, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f24, 0(x2) # load 0xffef7e00 from memory into f24
la x2, scratch
li x3, 0x3d0be05fb8975a34 # load x3 with value 0x3d0be05fb8975a34
sw x3, 0(x2) # store 0x3d0be05fb8975a34 in memory
flw f11, 0(x2) # load 0x3d0be05fb8975a34 from memory into f11
fmul.h f8, f24, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f19, 0(x2) # load 0xfeef7fff from memory into f19
la x2, scratch
li x3, 0xa740958a62b0b423 # load x3 with value 0xa740958a62b0b423
sw x3, 0(x2) # store 0xa740958a62b0b423 in memory
flw f27, 0(x2) # load 0xa740958a62b0b423 from memory into f27
fmul.h f20, f19, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f9, 0(x2) # load 0xa1b27c01 from memory into f9
la x2, scratch
li x3, 0x718cc25ca16f77e1 # load x3 with value 0x718cc25ca16f77e1
sw x3, 0(x2) # store 0x718cc25ca16f77e1 in memory
flw f5, 0(x2) # load 0x718cc25ca16f77e1 from memory into f5
fmul.h f12, f9, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f23, 0(x2) # load 0x4fd77dff from memory into f23
la x2, scratch
li x3, 0xd289924459ac23f6 # load x3 with value 0xd289924459ac23f6
sw x3, 0(x2) # store 0xd289924459ac23f6 in memory
flw f26, 0(x2) # load 0xd289924459ac23f6 from memory into f26
fmul.h f17, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x6065210cda12db28 # load x3 with value 0x6065210cda12db28
sw x3, 0(x2) # store 0x6065210cda12db28 in memory
flw f24, 0(x2) # load 0x6065210cda12db28 from memory into f24
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.h f2, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xf178e588177d8070 # load x3 with value 0xf178e588177d8070
sw x3, 0(x2) # store 0xf178e588177d8070 in memory
flw f14, 0(x2) # load 0xf178e588177d8070 from memory into f14
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f13, 0(x2) # load 0xfffe8000 from memory into f13
fmul.h f2, f14, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0xb4ec8860d412e11a # load x3 with value 0xb4ec8860d412e11a
sw x3, 0(x2) # store 0xb4ec8860d412e11a in memory
flw f11, 0(x2) # load 0xb4ec8860d412e11a from memory into f11
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f10, 0(x2) # load 0x7fff3c00 from memory into f10
fmul.h f12, f11, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xf1290a1da9ee5c50 # load x3 with value 0xf1290a1da9ee5c50
sw x3, 0(x2) # store 0xf1290a1da9ee5c50 in memory
flw f12, 0(x2) # load 0xf1290a1da9ee5c50 from memory into f12
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f7, 0(x2) # load 0xbeefbc00 from memory into f7
fmul.h f27, f12, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0x7bc93689f8a01c83 # load x3 with value 0x7bc93689f8a01c83
sw x3, 0(x2) # store 0x7bc93689f8a01c83 in memory
flw f31, 0(x2) # load 0x7bc93689f8a01c83 from memory into f31
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f9, 0(x2) # load 0xfeff0400 from memory into f9
fmul.h f13, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0xa8b970f252670c8d # load x3 with value 0xa8b970f252670c8d
sw x3, 0(x2) # store 0xa8b970f252670c8d in memory
flw f1, 0(x2) # load 0xa8b970f252670c8d from memory into f1
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f26, 0(x2) # load 0x0fff8400 from memory into f26
fmul.h f3, f1, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xf448dfd0428de4da # load x3 with value 0xf448dfd0428de4da
sw x3, 0(x2) # store 0xf448dfd0428de4da in memory
flw f15, 0(x2) # load 0xf448dfd0428de4da from memory into f15
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f31, 0(x2) # load 0xefff7bff from memory into f31
fmul.h f6, f15, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0x280a0f245b6c36c0 # load x3 with value 0x280a0f245b6c36c0
sw x3, 0(x2) # store 0x280a0f245b6c36c0 in memory
flw f30, 0(x2) # load 0x280a0f245b6c36c0 from memory into f30
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f17, 0(x2) # load 0xc0defbff from memory into f17
fmul.h f15, f30, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x916569b958b445a5 # load x3 with value 0x916569b958b445a5
sw x3, 0(x2) # store 0x916569b958b445a5 in memory
flw f31, 0(x2) # load 0x916569b958b445a5 from memory into f31
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f3, 0(x2) # load 0x4f1a7c00 from memory into f3
fmul.h f9, f31, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0xe9dd66b4cc2db3c # load x3 with value 0xe9dd66b4cc2db3c
sw x3, 0(x2) # store 0xe9dd66b4cc2db3c in memory
flw f9, 0(x2) # load 0xe9dd66b4cc2db3c from memory into f9
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f12, 0(x2) # load 0x0ffffc00 from memory into f12
fmul.h f31, f9, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0x66e245621ff3fa5e # load x3 with value 0x66e245621ff3fa5e
sw x3, 0(x2) # store 0x66e245621ff3fa5e in memory
flw f28, 0(x2) # load 0x66e245621ff3fa5e from memory into f28
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f25, 0(x2) # load 0xffef7e00 from memory into f25
fmul.h f19, f28, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xcfd58932f0ccf126 # load x3 with value 0xcfd58932f0ccf126
sw x3, 0(x2) # store 0xcfd58932f0ccf126 in memory
flw f11, 0(x2) # load 0xcfd58932f0ccf126 from memory into f11
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f7, 0(x2) # load 0xfeef7fff from memory into f7
fmul.h f28, f11, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xde32ffd0293131e4 # load x3 with value 0xde32ffd0293131e4
sw x3, 0(x2) # store 0xde32ffd0293131e4 in memory
flw f26, 0(x2) # load 0xde32ffd0293131e4 from memory into f26
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f15, 0(x2) # load 0xa1b27c01 from memory into f15
fmul.h f27, f26, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0xc2b5aba9eb0b4ebe # load x3 with value 0xc2b5aba9eb0b4ebe
sw x3, 0(x2) # store 0xc2b5aba9eb0b4ebe in memory
flw f24, 0(x2) # load 0xc2b5aba9eb0b4ebe from memory into f24
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f7, 0(x2) # load 0x4fd77dff from memory into f7
fmul.h f25, f24, f7 # perform operation

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
