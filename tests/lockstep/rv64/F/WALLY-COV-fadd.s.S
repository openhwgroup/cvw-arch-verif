///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/F/WALLY-COV-fadd.s.S
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
add x19, x25, x8 # perform first operation
fadd.s f6, f5, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x19, x9 # perform first operation
fadd.s f5, f11, f1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x20, x24 # perform first operation
fadd.s f8, f11, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f28, f27, f11 # perform first operation
fadd.s f28, f28, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f23, f11, f10 # perform first operation
fadd.s f11, f2, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x3, x11 # perform first operation
fadd.s f11, f3, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f10, f8, f3 # perform first operation
fadd.s f10, f22, f2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f16, f17, f7 # perform first operation
fadd.s f16, f21, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
fmul.s f24, f7, f21 # perform first operation
fadd.s f24, f9, f26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f18, f1, f26 # perform first operation
fadd.s f1, f27, f16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f6, f5, f20 # perform first operation
fadd.s f20, f19, f24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
fmul.s f22, f28, f16 # perform first operation
fadd.s f8, f31, f27 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x4250b51372a36213 # load x3 with value 0x4250b51372a36213
sw x3, 0(x2) # store 0x4250b51372a36213 in memory
flw f0, 0(x2) # load 0x4250b51372a36213 from memory into f0
la x2, scratch
li x3, 0x2d0442dde7fc5555 # load x3 with value 0x2d0442dde7fc5555
sw x3, 0(x2) # store 0x2d0442dde7fc5555 in memory
flw f10, 0(x2) # load 0x2d0442dde7fc5555 from memory into f10
fadd.s f14, f0, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0x9add96d0e527db39 # load x3 with value 0x9add96d0e527db39
sw x3, 0(x2) # store 0x9add96d0e527db39 in memory
flw f1, 0(x2) # load 0x9add96d0e527db39 from memory into f1
la x2, scratch
li x3, 0x688dfc27f2cb70ed # load x3 with value 0x688dfc27f2cb70ed
sw x3, 0(x2) # store 0x688dfc27f2cb70ed in memory
flw f15, 0(x2) # load 0x688dfc27f2cb70ed from memory into f15
fadd.s f17, f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x22e2ae8e5b0d16c3 # load x3 with value 0x22e2ae8e5b0d16c3
sw x3, 0(x2) # store 0x22e2ae8e5b0d16c3 in memory
flw f2, 0(x2) # load 0x22e2ae8e5b0d16c3 from memory into f2
la x2, scratch
li x3, 0xe5c65cd8a3c52a55 # load x3 with value 0xe5c65cd8a3c52a55
sw x3, 0(x2) # store 0xe5c65cd8a3c52a55 in memory
flw f20, 0(x2) # load 0xe5c65cd8a3c52a55 from memory into f20
fadd.s f24, f2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x657182dec97ca8c7 # load x3 with value 0x657182dec97ca8c7
sw x3, 0(x2) # store 0x657182dec97ca8c7 in memory
flw f3, 0(x2) # load 0x657182dec97ca8c7 from memory into f3
la x2, scratch
li x3, 0x93fc9a3af1441364 # load x3 with value 0x93fc9a3af1441364
sw x3, 0(x2) # store 0x93fc9a3af1441364 in memory
flw f20, 0(x2) # load 0x93fc9a3af1441364 from memory into f20
fadd.s f13, f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x748c706b485b887 # load x3 with value 0x748c706b485b887
sw x3, 0(x2) # store 0x748c706b485b887 in memory
flw f4, 0(x2) # load 0x748c706b485b887 from memory into f4
la x2, scratch
li x3, 0x6489f095c76426c9 # load x3 with value 0x6489f095c76426c9
sw x3, 0(x2) # store 0x6489f095c76426c9 in memory
flw f24, 0(x2) # load 0x6489f095c76426c9 from memory into f24
fadd.s f31, f4, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6dde63a0352f6ddf # load x3 with value 0x6dde63a0352f6ddf
sw x3, 0(x2) # store 0x6dde63a0352f6ddf in memory
flw f5, 0(x2) # load 0x6dde63a0352f6ddf from memory into f5
la x2, scratch
li x3, 0x6d399e033d2946ea # load x3 with value 0x6d399e033d2946ea
sw x3, 0(x2) # store 0x6d399e033d2946ea in memory
flw f19, 0(x2) # load 0x6d399e033d2946ea from memory into f19
fadd.s f28, f5, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6f3c5c699f70db99 # load x3 with value 0x6f3c5c699f70db99
sw x3, 0(x2) # store 0x6f3c5c699f70db99 in memory
flw f6, 0(x2) # load 0x6f3c5c699f70db99 from memory into f6
la x2, scratch
li x3, 0xbe75bb56dfaffa6 # load x3 with value 0xbe75bb56dfaffa6
sw x3, 0(x2) # store 0xbe75bb56dfaffa6 in memory
flw f21, 0(x2) # load 0xbe75bb56dfaffa6 from memory into f21
fadd.s f31, f6, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4b4844f08286d317 # load x3 with value 0x4b4844f08286d317
sw x3, 0(x2) # store 0x4b4844f08286d317 in memory
flw f7, 0(x2) # load 0x4b4844f08286d317 from memory into f7
la x2, scratch
li x3, 0xfdddbe6fdec2aff1 # load x3 with value 0xfdddbe6fdec2aff1
sw x3, 0(x2) # store 0xfdddbe6fdec2aff1 in memory
flw f25, 0(x2) # load 0xfdddbe6fdec2aff1 from memory into f25
fadd.s f3, f7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x6e2166c76b1c8e4e # load x3 with value 0x6e2166c76b1c8e4e
sw x3, 0(x2) # store 0x6e2166c76b1c8e4e in memory
flw f8, 0(x2) # load 0x6e2166c76b1c8e4e from memory into f8
la x2, scratch
li x3, 0xdd07eb75c7f72f60 # load x3 with value 0xdd07eb75c7f72f60
sw x3, 0(x2) # store 0xdd07eb75c7f72f60 in memory
flw f16, 0(x2) # load 0xdd07eb75c7f72f60 from memory into f16
fadd.s f17, f8, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0xdfadc427fee87317 # load x3 with value 0xdfadc427fee87317
sw x3, 0(x2) # store 0xdfadc427fee87317 in memory
flw f9, 0(x2) # load 0xdfadc427fee87317 from memory into f9
la x2, scratch
li x3, 0xa7a7ceb87571556e # load x3 with value 0xa7a7ceb87571556e
sw x3, 0(x2) # store 0xa7a7ceb87571556e in memory
flw f13, 0(x2) # load 0xa7a7ceb87571556e from memory into f13
fadd.s f12, f9, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0xe0d2942fc4261819 # load x3 with value 0xe0d2942fc4261819
sw x3, 0(x2) # store 0xe0d2942fc4261819 in memory
flw f10, 0(x2) # load 0xe0d2942fc4261819 from memory into f10
la x2, scratch
li x3, 0x20054879ef8c8cfc # load x3 with value 0x20054879ef8c8cfc
sw x3, 0(x2) # store 0x20054879ef8c8cfc in memory
flw f15, 0(x2) # load 0x20054879ef8c8cfc from memory into f15
fadd.s f25, f10, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x18a41d446dc22fe # load x3 with value 0x18a41d446dc22fe
sw x3, 0(x2) # store 0x18a41d446dc22fe in memory
flw f11, 0(x2) # load 0x18a41d446dc22fe from memory into f11
la x2, scratch
li x3, 0x968bb5b49f51f00f # load x3 with value 0x968bb5b49f51f00f
sw x3, 0(x2) # store 0x968bb5b49f51f00f in memory
flw f13, 0(x2) # load 0x968bb5b49f51f00f from memory into f13
fadd.s f22, f11, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x277de4460e0d4b16 # load x3 with value 0x277de4460e0d4b16
sw x3, 0(x2) # store 0x277de4460e0d4b16 in memory
flw f12, 0(x2) # load 0x277de4460e0d4b16 from memory into f12
la x2, scratch
li x3, 0xc844fe009bfcfe2e # load x3 with value 0xc844fe009bfcfe2e
sw x3, 0(x2) # store 0xc844fe009bfcfe2e in memory
flw f7, 0(x2) # load 0xc844fe009bfcfe2e from memory into f7
fadd.s f10, f12, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x9a64d2c134892134 # load x3 with value 0x9a64d2c134892134
sw x3, 0(x2) # store 0x9a64d2c134892134 in memory
flw f13, 0(x2) # load 0x9a64d2c134892134 from memory into f13
la x2, scratch
li x3, 0x5c9e17c73bf60415 # load x3 with value 0x5c9e17c73bf60415
sw x3, 0(x2) # store 0x5c9e17c73bf60415 in memory
flw f7, 0(x2) # load 0x5c9e17c73bf60415 from memory into f7
fadd.s f18, f13, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0xc5141b1f5087c355 # load x3 with value 0xc5141b1f5087c355
sw x3, 0(x2) # store 0xc5141b1f5087c355 in memory
flw f14, 0(x2) # load 0xc5141b1f5087c355 from memory into f14
la x2, scratch
li x3, 0x6df99480d1f58cfd # load x3 with value 0x6df99480d1f58cfd
sw x3, 0(x2) # store 0x6df99480d1f58cfd in memory
flw f22, 0(x2) # load 0x6df99480d1f58cfd from memory into f22
fadd.s f24, f14, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0x57d80020e28f69fb # load x3 with value 0x57d80020e28f69fb
sw x3, 0(x2) # store 0x57d80020e28f69fb in memory
flw f15, 0(x2) # load 0x57d80020e28f69fb from memory into f15
la x2, scratch
li x3, 0xa544ac82fc2b8af # load x3 with value 0xa544ac82fc2b8af
sw x3, 0(x2) # store 0xa544ac82fc2b8af in memory
flw f3, 0(x2) # load 0xa544ac82fc2b8af from memory into f3
fadd.s f31, f15, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0xaf3d4e23d915050d # load x3 with value 0xaf3d4e23d915050d
sw x3, 0(x2) # store 0xaf3d4e23d915050d in memory
flw f16, 0(x2) # load 0xaf3d4e23d915050d from memory into f16
la x2, scratch
li x3, 0xdde944816c78824b # load x3 with value 0xdde944816c78824b
sw x3, 0(x2) # store 0xdde944816c78824b in memory
flw f22, 0(x2) # load 0xdde944816c78824b from memory into f22
fadd.s f1, f16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x270a452b8f3d72f # load x3 with value 0x270a452b8f3d72f
sw x3, 0(x2) # store 0x270a452b8f3d72f in memory
flw f17, 0(x2) # load 0x270a452b8f3d72f from memory into f17
la x2, scratch
li x3, 0x27b2368e048a407b # load x3 with value 0x27b2368e048a407b
sw x3, 0(x2) # store 0x27b2368e048a407b in memory
flw f21, 0(x2) # load 0x27b2368e048a407b from memory into f21
fadd.s f20, f17, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0xa4571c950c234a0d # load x3 with value 0xa4571c950c234a0d
sw x3, 0(x2) # store 0xa4571c950c234a0d in memory
flw f18, 0(x2) # load 0xa4571c950c234a0d from memory into f18
la x2, scratch
li x3, 0x692af7528d05e12 # load x3 with value 0x692af7528d05e12
sw x3, 0(x2) # store 0x692af7528d05e12 in memory
flw f19, 0(x2) # load 0x692af7528d05e12 from memory into f19
fadd.s f17, f18, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xeea5434e08247ae0 # load x3 with value 0xeea5434e08247ae0
sw x3, 0(x2) # store 0xeea5434e08247ae0 in memory
flw f19, 0(x2) # load 0xeea5434e08247ae0 from memory into f19
la x2, scratch
li x3, 0x10c5eb33ebfac44d # load x3 with value 0x10c5eb33ebfac44d
sw x3, 0(x2) # store 0x10c5eb33ebfac44d in memory
flw f13, 0(x2) # load 0x10c5eb33ebfac44d from memory into f13
fadd.s f27, f19, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0x5f1a1cb780153e04 # load x3 with value 0x5f1a1cb780153e04
sw x3, 0(x2) # store 0x5f1a1cb780153e04 in memory
flw f20, 0(x2) # load 0x5f1a1cb780153e04 from memory into f20
la x2, scratch
li x3, 0xffd588f46774ae39 # load x3 with value 0xffd588f46774ae39
sw x3, 0(x2) # store 0xffd588f46774ae39 in memory
flw f19, 0(x2) # load 0xffd588f46774ae39 from memory into f19
fadd.s f25, f20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0x59681cefc63c1699 # load x3 with value 0x59681cefc63c1699
sw x3, 0(x2) # store 0x59681cefc63c1699 in memory
flw f21, 0(x2) # load 0x59681cefc63c1699 from memory into f21
la x2, scratch
li x3, 0x6a92d8b17aa62836 # load x3 with value 0x6a92d8b17aa62836
sw x3, 0(x2) # store 0x6a92d8b17aa62836 in memory
flw f25, 0(x2) # load 0x6a92d8b17aa62836 from memory into f25
fadd.s f27, f21, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0xd348837230e68d13 # load x3 with value 0xd348837230e68d13
sw x3, 0(x2) # store 0xd348837230e68d13 in memory
flw f22, 0(x2) # load 0xd348837230e68d13 from memory into f22
la x2, scratch
li x3, 0x602fc77c668b2bac # load x3 with value 0x602fc77c668b2bac
sw x3, 0(x2) # store 0x602fc77c668b2bac in memory
flw f13, 0(x2) # load 0x602fc77c668b2bac from memory into f13
fadd.s f17, f22, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x8fa8acdafd06ce67 # load x3 with value 0x8fa8acdafd06ce67
sw x3, 0(x2) # store 0x8fa8acdafd06ce67 in memory
flw f23, 0(x2) # load 0x8fa8acdafd06ce67 from memory into f23
la x2, scratch
li x3, 0xd6f9b706891b8499 # load x3 with value 0xd6f9b706891b8499
sw x3, 0(x2) # store 0xd6f9b706891b8499 in memory
flw f7, 0(x2) # load 0xd6f9b706891b8499 from memory into f7
fadd.s f1, f23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0x74286be0c27bc6d6 # load x3 with value 0x74286be0c27bc6d6
sw x3, 0(x2) # store 0x74286be0c27bc6d6 in memory
flw f24, 0(x2) # load 0x74286be0c27bc6d6 from memory into f24
la x2, scratch
li x3, 0x41b353980b71ba9b # load x3 with value 0x41b353980b71ba9b
sw x3, 0(x2) # store 0x41b353980b71ba9b in memory
flw f11, 0(x2) # load 0x41b353980b71ba9b from memory into f11
fadd.s f29, f24, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0x78b216546142b652 # load x3 with value 0x78b216546142b652
sw x3, 0(x2) # store 0x78b216546142b652 in memory
flw f25, 0(x2) # load 0x78b216546142b652 from memory into f25
la x2, scratch
li x3, 0xcfca618eea7c0acb # load x3 with value 0xcfca618eea7c0acb
sw x3, 0(x2) # store 0xcfca618eea7c0acb in memory
flw f18, 0(x2) # load 0xcfca618eea7c0acb from memory into f18
fadd.s f14, f25, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0xeb1fb617bf2b18d # load x3 with value 0xeb1fb617bf2b18d
sw x3, 0(x2) # store 0xeb1fb617bf2b18d in memory
flw f26, 0(x2) # load 0xeb1fb617bf2b18d from memory into f26
la x2, scratch
li x3, 0xa8ade26197fb6a49 # load x3 with value 0xa8ade26197fb6a49
sw x3, 0(x2) # store 0xa8ade26197fb6a49 in memory
flw f15, 0(x2) # load 0xa8ade26197fb6a49 from memory into f15
fadd.s f30, f26, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0xa70dba7134946b87 # load x3 with value 0xa70dba7134946b87
sw x3, 0(x2) # store 0xa70dba7134946b87 in memory
flw f27, 0(x2) # load 0xa70dba7134946b87 from memory into f27
la x2, scratch
li x3, 0x2614c582c326a034 # load x3 with value 0x2614c582c326a034
sw x3, 0(x2) # store 0x2614c582c326a034 in memory
flw f18, 0(x2) # load 0x2614c582c326a034 from memory into f18
fadd.s f17, f27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x15aab887f39035e2 # load x3 with value 0x15aab887f39035e2
sw x3, 0(x2) # store 0x15aab887f39035e2 in memory
flw f28, 0(x2) # load 0x15aab887f39035e2 from memory into f28
la x2, scratch
li x3, 0xc711b85427690d78 # load x3 with value 0xc711b85427690d78
sw x3, 0(x2) # store 0xc711b85427690d78 in memory
flw f27, 0(x2) # load 0xc711b85427690d78 from memory into f27
fadd.s f29, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0xc978ab753ff1e03e # load x3 with value 0xc978ab753ff1e03e
sw x3, 0(x2) # store 0xc978ab753ff1e03e in memory
flw f29, 0(x2) # load 0xc978ab753ff1e03e from memory into f29
la x2, scratch
li x3, 0xa338dada21c391b3 # load x3 with value 0xa338dada21c391b3
sw x3, 0(x2) # store 0xa338dada21c391b3 in memory
flw f10, 0(x2) # load 0xa338dada21c391b3 from memory into f10
fadd.s f6, f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xc093e113e7b6b051 # load x3 with value 0xc093e113e7b6b051
sw x3, 0(x2) # store 0xc093e113e7b6b051 in memory
flw f30, 0(x2) # load 0xc093e113e7b6b051 from memory into f30
la x2, scratch
li x3, 0xd09d852858e54d09 # load x3 with value 0xd09d852858e54d09
sw x3, 0(x2) # store 0xd09d852858e54d09 in memory
flw f29, 0(x2) # load 0xd09d852858e54d09 from memory into f29
fadd.s f19, f30, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0x4f48fbdec3f2c795 # load x3 with value 0x4f48fbdec3f2c795
sw x3, 0(x2) # store 0x4f48fbdec3f2c795 in memory
flw f31, 0(x2) # load 0x4f48fbdec3f2c795 from memory into f31
la x2, scratch
li x3, 0x5a89c591e5af3a22 # load x3 with value 0x5a89c591e5af3a22
sw x3, 0(x2) # store 0x5a89c591e5af3a22 in memory
flw f16, 0(x2) # load 0x5a89c591e5af3a22 from memory into f16
fadd.s f22, f31, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x694680ca3c571525 # load x3 with value 0x694680ca3c571525
sw x3, 0(x2) # store 0x694680ca3c571525 in memory
flw f12, 0(x2) # load 0x694680ca3c571525 from memory into f12
la x2, scratch
li x3, 0x171b4ea80723603d # load x3 with value 0x171b4ea80723603d
sw x3, 0(x2) # store 0x171b4ea80723603d in memory
flw f0, 0(x2) # load 0x171b4ea80723603d from memory into f0
fadd.s f27, f12, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xb9115a73354081e8 # load x3 with value 0xb9115a73354081e8
sw x3, 0(x2) # store 0xb9115a73354081e8 in memory
flw f31, 0(x2) # load 0xb9115a73354081e8 from memory into f31
la x2, scratch
li x3, 0xcba2661af0c3544e # load x3 with value 0xcba2661af0c3544e
sw x3, 0(x2) # store 0xcba2661af0c3544e in memory
flw f1, 0(x2) # load 0xcba2661af0c3544e from memory into f1
fadd.s f17, f31, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9ec79911291cf22 # load x3 with value 0x9ec79911291cf22
sw x3, 0(x2) # store 0x9ec79911291cf22 in memory
flw f16, 0(x2) # load 0x9ec79911291cf22 from memory into f16
la x2, scratch
li x3, 0x3ddae1e2c8bd5ab5 # load x3 with value 0x3ddae1e2c8bd5ab5
sw x3, 0(x2) # store 0x3ddae1e2c8bd5ab5 in memory
flw f2, 0(x2) # load 0x3ddae1e2c8bd5ab5 from memory into f2
fadd.s f20, f16, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xc4ae243c19a10cff # load x3 with value 0xc4ae243c19a10cff
sw x3, 0(x2) # store 0xc4ae243c19a10cff in memory
flw f28, 0(x2) # load 0xc4ae243c19a10cff from memory into f28
la x2, scratch
li x3, 0x3ba8de31cb8cbd1b # load x3 with value 0x3ba8de31cb8cbd1b
sw x3, 0(x2) # store 0x3ba8de31cb8cbd1b in memory
flw f3, 0(x2) # load 0x3ba8de31cb8cbd1b from memory into f3
fadd.s f1, f28, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xcfa48441d66c594a # load x3 with value 0xcfa48441d66c594a
sw x3, 0(x2) # store 0xcfa48441d66c594a in memory
flw f29, 0(x2) # load 0xcfa48441d66c594a from memory into f29
la x2, scratch
li x3, 0xb968cbf2ec6d68f8 # load x3 with value 0xb968cbf2ec6d68f8
sw x3, 0(x2) # store 0xb968cbf2ec6d68f8 in memory
flw f4, 0(x2) # load 0xb968cbf2ec6d68f8 from memory into f4
fadd.s f27, f29, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2933581da92633dd # load x3 with value 0x2933581da92633dd
sw x3, 0(x2) # store 0x2933581da92633dd in memory
flw f7, 0(x2) # load 0x2933581da92633dd from memory into f7
la x2, scratch
li x3, 0x85864b3237e7e7e1 # load x3 with value 0x85864b3237e7e7e1
sw x3, 0(x2) # store 0x85864b3237e7e7e1 in memory
flw f5, 0(x2) # load 0x85864b3237e7e7e1 from memory into f5
fadd.s f30, f7, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5f1a22f24f5e65d3 # load x3 with value 0x5f1a22f24f5e65d3
sw x3, 0(x2) # store 0x5f1a22f24f5e65d3 in memory
flw f17, 0(x2) # load 0x5f1a22f24f5e65d3 from memory into f17
la x2, scratch
li x3, 0x5ef0789c17048c30 # load x3 with value 0x5ef0789c17048c30
sw x3, 0(x2) # store 0x5ef0789c17048c30 in memory
flw f6, 0(x2) # load 0x5ef0789c17048c30 from memory into f6
fadd.s f19, f17, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xac08be94569a8126 # load x3 with value 0xac08be94569a8126
sw x3, 0(x2) # store 0xac08be94569a8126 in memory
flw f29, 0(x2) # load 0xac08be94569a8126 from memory into f29
la x2, scratch
li x3, 0xd88bf3412882de70 # load x3 with value 0xd88bf3412882de70
sw x3, 0(x2) # store 0xd88bf3412882de70 in memory
flw f7, 0(x2) # load 0xd88bf3412882de70 from memory into f7
fadd.s f10, f29, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x8ee72a21fe5a6f8 # load x3 with value 0x8ee72a21fe5a6f8
sw x3, 0(x2) # store 0x8ee72a21fe5a6f8 in memory
flw f23, 0(x2) # load 0x8ee72a21fe5a6f8 from memory into f23
la x2, scratch
li x3, 0x1475feeaadfc18d6 # load x3 with value 0x1475feeaadfc18d6
sw x3, 0(x2) # store 0x1475feeaadfc18d6 in memory
flw f8, 0(x2) # load 0x1475feeaadfc18d6 from memory into f8
fadd.s f26, f23, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xf72e4a09e53af7b3 # load x3 with value 0xf72e4a09e53af7b3
sw x3, 0(x2) # store 0xf72e4a09e53af7b3 in memory
flw f28, 0(x2) # load 0xf72e4a09e53af7b3 from memory into f28
la x2, scratch
li x3, 0x3ac6733ba8133747 # load x3 with value 0x3ac6733ba8133747
sw x3, 0(x2) # store 0x3ac6733ba8133747 in memory
flw f9, 0(x2) # load 0x3ac6733ba8133747 from memory into f9
fadd.s f25, f28, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xed740c0b401eb1e0 # load x3 with value 0xed740c0b401eb1e0
sw x3, 0(x2) # store 0xed740c0b401eb1e0 in memory
flw f5, 0(x2) # load 0xed740c0b401eb1e0 from memory into f5
la x2, scratch
li x3, 0x28b32c653f67902d # load x3 with value 0x28b32c653f67902d
sw x3, 0(x2) # store 0x28b32c653f67902d in memory
flw f10, 0(x2) # load 0x28b32c653f67902d from memory into f10
fadd.s f15, f5, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0xb6c706e9093f2480 # load x3 with value 0xb6c706e9093f2480
sw x3, 0(x2) # store 0xb6c706e9093f2480 in memory
flw f26, 0(x2) # load 0xb6c706e9093f2480 from memory into f26
la x2, scratch
li x3, 0xb0fd66c04137a2a1 # load x3 with value 0xb0fd66c04137a2a1
sw x3, 0(x2) # store 0xb0fd66c04137a2a1 in memory
flw f11, 0(x2) # load 0xb0fd66c04137a2a1 from memory into f11
fadd.s f31, f26, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x490dadab81535d5a # load x3 with value 0x490dadab81535d5a
sw x3, 0(x2) # store 0x490dadab81535d5a in memory
flw f20, 0(x2) # load 0x490dadab81535d5a from memory into f20
la x2, scratch
li x3, 0x6c6e28de195263ec # load x3 with value 0x6c6e28de195263ec
sw x3, 0(x2) # store 0x6c6e28de195263ec in memory
flw f12, 0(x2) # load 0x6c6e28de195263ec from memory into f12
fadd.s f6, f20, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x89554e5e381064f7 # load x3 with value 0x89554e5e381064f7
sw x3, 0(x2) # store 0x89554e5e381064f7 in memory
flw f19, 0(x2) # load 0x89554e5e381064f7 from memory into f19
la x2, scratch
li x3, 0xbd1483e248d95fd6 # load x3 with value 0xbd1483e248d95fd6
sw x3, 0(x2) # store 0xbd1483e248d95fd6 in memory
flw f13, 0(x2) # load 0xbd1483e248d95fd6 from memory into f13
fadd.s f17, f19, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0x63e0108437821111 # load x3 with value 0x63e0108437821111
sw x3, 0(x2) # store 0x63e0108437821111 in memory
flw f8, 0(x2) # load 0x63e0108437821111 from memory into f8
la x2, scratch
li x3, 0x6903f156468b9312 # load x3 with value 0x6903f156468b9312
sw x3, 0(x2) # store 0x6903f156468b9312 in memory
flw f14, 0(x2) # load 0x6903f156468b9312 from memory into f14
fadd.s f15, f8, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x847a44dcb52653ed # load x3 with value 0x847a44dcb52653ed
sw x3, 0(x2) # store 0x847a44dcb52653ed in memory
flw f19, 0(x2) # load 0x847a44dcb52653ed from memory into f19
la x2, scratch
li x3, 0xc8a0957702a5d42e # load x3 with value 0xc8a0957702a5d42e
sw x3, 0(x2) # store 0xc8a0957702a5d42e in memory
flw f15, 0(x2) # load 0xc8a0957702a5d42e from memory into f15
fadd.s f24, f19, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x52f4865c51a8e7f # load x3 with value 0x52f4865c51a8e7f
sw x3, 0(x2) # store 0x52f4865c51a8e7f in memory
flw f26, 0(x2) # load 0x52f4865c51a8e7f from memory into f26
la x2, scratch
li x3, 0x4de4a4c38ab82704 # load x3 with value 0x4de4a4c38ab82704
sw x3, 0(x2) # store 0x4de4a4c38ab82704 in memory
flw f16, 0(x2) # load 0x4de4a4c38ab82704 from memory into f16
fadd.s f9, f26, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xd433065638a61fe5 # load x3 with value 0xd433065638a61fe5
sw x3, 0(x2) # store 0xd433065638a61fe5 in memory
flw f19, 0(x2) # load 0xd433065638a61fe5 from memory into f19
la x2, scratch
li x3, 0x128a4953a04d7204 # load x3 with value 0x128a4953a04d7204
sw x3, 0(x2) # store 0x128a4953a04d7204 in memory
flw f17, 0(x2) # load 0x128a4953a04d7204 from memory into f17
fadd.s f31, f19, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x70d3e22e9895dcbf # load x3 with value 0x70d3e22e9895dcbf
sw x3, 0(x2) # store 0x70d3e22e9895dcbf in memory
flw f21, 0(x2) # load 0x70d3e22e9895dcbf from memory into f21
la x2, scratch
li x3, 0xa4d7b5987eee0401 # load x3 with value 0xa4d7b5987eee0401
sw x3, 0(x2) # store 0xa4d7b5987eee0401 in memory
flw f18, 0(x2) # load 0xa4d7b5987eee0401 from memory into f18
fadd.s f2, f21, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xb599b700a9e2bbdf # load x3 with value 0xb599b700a9e2bbdf
sw x3, 0(x2) # store 0xb599b700a9e2bbdf in memory
flw f25, 0(x2) # load 0xb599b700a9e2bbdf from memory into f25
la x2, scratch
li x3, 0x2d4890ab0b3eea7e # load x3 with value 0x2d4890ab0b3eea7e
sw x3, 0(x2) # store 0x2d4890ab0b3eea7e in memory
flw f19, 0(x2) # load 0x2d4890ab0b3eea7e from memory into f19
fadd.s f21, f25, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x15d43276f80d3d63 # load x3 with value 0x15d43276f80d3d63
sw x3, 0(x2) # store 0x15d43276f80d3d63 in memory
flw f19, 0(x2) # load 0x15d43276f80d3d63 from memory into f19
la x2, scratch
li x3, 0x663cab6270be9af2 # load x3 with value 0x663cab6270be9af2
sw x3, 0(x2) # store 0x663cab6270be9af2 in memory
flw f20, 0(x2) # load 0x663cab6270be9af2 from memory into f20
fadd.s f29, f19, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x89fc0b34e07f5610 # load x3 with value 0x89fc0b34e07f5610
sw x3, 0(x2) # store 0x89fc0b34e07f5610 in memory
flw f14, 0(x2) # load 0x89fc0b34e07f5610 from memory into f14
la x2, scratch
li x3, 0xe85091b48e89d8ca # load x3 with value 0xe85091b48e89d8ca
sw x3, 0(x2) # store 0xe85091b48e89d8ca in memory
flw f21, 0(x2) # load 0xe85091b48e89d8ca from memory into f21
fadd.s f23, f14, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0xfe614142da56326c # load x3 with value 0xfe614142da56326c
sw x3, 0(x2) # store 0xfe614142da56326c in memory
flw f9, 0(x2) # load 0xfe614142da56326c from memory into f9
la x2, scratch
li x3, 0x112596fa43ed96b5 # load x3 with value 0x112596fa43ed96b5
sw x3, 0(x2) # store 0x112596fa43ed96b5 in memory
flw f22, 0(x2) # load 0x112596fa43ed96b5 from memory into f22
fadd.s f29, f9, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xe698b938589ea81c # load x3 with value 0xe698b938589ea81c
sw x3, 0(x2) # store 0xe698b938589ea81c in memory
flw f8, 0(x2) # load 0xe698b938589ea81c from memory into f8
la x2, scratch
li x3, 0xa16404614cf87a65 # load x3 with value 0xa16404614cf87a65
sw x3, 0(x2) # store 0xa16404614cf87a65 in memory
flw f23, 0(x2) # load 0xa16404614cf87a65 from memory into f23
fadd.s f21, f8, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x871404b004e43546 # load x3 with value 0x871404b004e43546
sw x3, 0(x2) # store 0x871404b004e43546 in memory
flw f10, 0(x2) # load 0x871404b004e43546 from memory into f10
la x2, scratch
li x3, 0x1664593d9619daf3 # load x3 with value 0x1664593d9619daf3
sw x3, 0(x2) # store 0x1664593d9619daf3 in memory
flw f24, 0(x2) # load 0x1664593d9619daf3 from memory into f24
fadd.s f14, f10, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x2716172c988382a7 # load x3 with value 0x2716172c988382a7
sw x3, 0(x2) # store 0x2716172c988382a7 in memory
flw f20, 0(x2) # load 0x2716172c988382a7 from memory into f20
la x2, scratch
li x3, 0xf11b7ad6b6363dff # load x3 with value 0xf11b7ad6b6363dff
sw x3, 0(x2) # store 0xf11b7ad6b6363dff in memory
flw f25, 0(x2) # load 0xf11b7ad6b6363dff from memory into f25
fadd.s f9, f20, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x9334e02ccaf8a9f5 # load x3 with value 0x9334e02ccaf8a9f5
sw x3, 0(x2) # store 0x9334e02ccaf8a9f5 in memory
flw f29, 0(x2) # load 0x9334e02ccaf8a9f5 from memory into f29
la x2, scratch
li x3, 0x74467991780fa578 # load x3 with value 0x74467991780fa578
sw x3, 0(x2) # store 0x74467991780fa578 in memory
flw f26, 0(x2) # load 0x74467991780fa578 from memory into f26
fadd.s f30, f29, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x7c10cc808054ca20 # load x3 with value 0x7c10cc808054ca20
sw x3, 0(x2) # store 0x7c10cc808054ca20 in memory
flw f17, 0(x2) # load 0x7c10cc808054ca20 from memory into f17
la x2, scratch
li x3, 0x3d820f86da6bca49 # load x3 with value 0x3d820f86da6bca49
sw x3, 0(x2) # store 0x3d820f86da6bca49 in memory
flw f27, 0(x2) # load 0x3d820f86da6bca49 from memory into f27
fadd.s f10, f17, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x315d95da0b207f9b # load x3 with value 0x315d95da0b207f9b
sw x3, 0(x2) # store 0x315d95da0b207f9b in memory
flw f2, 0(x2) # load 0x315d95da0b207f9b from memory into f2
la x2, scratch
li x3, 0x8c2ed4fb8bdb50d3 # load x3 with value 0x8c2ed4fb8bdb50d3
sw x3, 0(x2) # store 0x8c2ed4fb8bdb50d3 in memory
flw f28, 0(x2) # load 0x8c2ed4fb8bdb50d3 from memory into f28
fadd.s f25, f2, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xe0a8f35b533c8817 # load x3 with value 0xe0a8f35b533c8817
sw x3, 0(x2) # store 0xe0a8f35b533c8817 in memory
flw f13, 0(x2) # load 0xe0a8f35b533c8817 from memory into f13
la x2, scratch
li x3, 0x95c9b6a40ba42729 # load x3 with value 0x95c9b6a40ba42729
sw x3, 0(x2) # store 0x95c9b6a40ba42729 in memory
flw f29, 0(x2) # load 0x95c9b6a40ba42729 from memory into f29
fadd.s f30, f13, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x9623dea1b9024013 # load x3 with value 0x9623dea1b9024013
sw x3, 0(x2) # store 0x9623dea1b9024013 in memory
flw f6, 0(x2) # load 0x9623dea1b9024013 from memory into f6
la x2, scratch
li x3, 0x720ecec94adbc259 # load x3 with value 0x720ecec94adbc259
sw x3, 0(x2) # store 0x720ecec94adbc259 in memory
flw f30, 0(x2) # load 0x720ecec94adbc259 from memory into f30
fadd.s f11, f6, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x6ab3c8bb0375bc3c # load x3 with value 0x6ab3c8bb0375bc3c
sw x3, 0(x2) # store 0x6ab3c8bb0375bc3c in memory
flw f30, 0(x2) # load 0x6ab3c8bb0375bc3c from memory into f30
la x2, scratch
li x3, 0xd8b620bf30b05549 # load x3 with value 0xd8b620bf30b05549
sw x3, 0(x2) # store 0xd8b620bf30b05549 in memory
flw f31, 0(x2) # load 0xd8b620bf30b05549 from memory into f31
fadd.s f5, f30, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
la x2, scratch
li x3, 0xcb00d3ad50259e35 # load x3 with value 0xcb00d3ad50259e35
sw x3, 0(x2) # store 0xcb00d3ad50259e35 in memory
flw f29, 0(x2) # load 0xcb00d3ad50259e35 from memory into f29
la x2, scratch
li x3, 0x19aabfa142c35574 # load x3 with value 0x19aabfa142c35574
sw x3, 0(x2) # store 0x19aabfa142c35574 in memory
flw f18, 0(x2) # load 0x19aabfa142c35574 from memory into f18
fadd.s f0, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x2, scratch
li x3, 0x1f144fe017ed85c4 # load x3 with value 0x1f144fe017ed85c4
sw x3, 0(x2) # store 0x1f144fe017ed85c4 in memory
flw f3, 0(x2) # load 0x1f144fe017ed85c4 from memory into f3
la x2, scratch
li x3, 0x4a10e29c244fdec6 # load x3 with value 0x4a10e29c244fdec6
sw x3, 0(x2) # store 0x4a10e29c244fdec6 in memory
flw f19, 0(x2) # load 0x4a10e29c244fdec6 from memory into f19
fadd.s f1, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x2, scratch
li x3, 0x882656a23c7e3c1e # load x3 with value 0x882656a23c7e3c1e
sw x3, 0(x2) # store 0x882656a23c7e3c1e in memory
flw f28, 0(x2) # load 0x882656a23c7e3c1e from memory into f28
la x2, scratch
li x3, 0xbf592d4515f4825e # load x3 with value 0xbf592d4515f4825e
sw x3, 0(x2) # store 0xbf592d4515f4825e in memory
flw f18, 0(x2) # load 0xbf592d4515f4825e from memory into f18
fadd.s f2, f28, f18 # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x2, scratch
li x3, 0x9691fdaeca8e6937 # load x3 with value 0x9691fdaeca8e6937
sw x3, 0(x2) # store 0x9691fdaeca8e6937 in memory
flw f9, 0(x2) # load 0x9691fdaeca8e6937 from memory into f9
la x2, scratch
li x3, 0x1eddab17738a28de # load x3 with value 0x1eddab17738a28de
sw x3, 0(x2) # store 0x1eddab17738a28de in memory
flw f26, 0(x2) # load 0x1eddab17738a28de from memory into f26
fadd.s f3, f9, f26 # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x56eb93861925e9e8 # load x3 with value 0x56eb93861925e9e8
sw x3, 0(x2) # store 0x56eb93861925e9e8 in memory
flw f1, 0(x2) # load 0x56eb93861925e9e8 from memory into f1
la x2, scratch
li x3, 0x6b2777b663183a9c # load x3 with value 0x6b2777b663183a9c
sw x3, 0(x2) # store 0x6b2777b663183a9c in memory
flw f29, 0(x2) # load 0x6b2777b663183a9c from memory into f29
fadd.s f4, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xb3f8e38f4c1cddea # load x3 with value 0xb3f8e38f4c1cddea
sw x3, 0(x2) # store 0xb3f8e38f4c1cddea in memory
flw f8, 0(x2) # load 0xb3f8e38f4c1cddea from memory into f8
la x2, scratch
li x3, 0xbcffc32fecab582b # load x3 with value 0xbcffc32fecab582b
sw x3, 0(x2) # store 0xbcffc32fecab582b in memory
flw f12, 0(x2) # load 0xbcffc32fecab582b from memory into f12
fadd.s f5, f8, f12 # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x21db15952ab1a9e9 # load x3 with value 0x21db15952ab1a9e9
sw x3, 0(x2) # store 0x21db15952ab1a9e9 in memory
flw f12, 0(x2) # load 0x21db15952ab1a9e9 from memory into f12
la x2, scratch
li x3, 0xaa726cf2d76a6a51 # load x3 with value 0xaa726cf2d76a6a51
sw x3, 0(x2) # store 0xaa726cf2d76a6a51 in memory
flw f22, 0(x2) # load 0xaa726cf2d76a6a51 from memory into f22
fadd.s f6, f12, f22 # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd319397b9bbd091c # load x3 with value 0xd319397b9bbd091c
sw x3, 0(x2) # store 0xd319397b9bbd091c in memory
flw f14, 0(x2) # load 0xd319397b9bbd091c from memory into f14
la x2, scratch
li x3, 0xeeefd630a8327b50 # load x3 with value 0xeeefd630a8327b50
sw x3, 0(x2) # store 0xeeefd630a8327b50 in memory
flw f19, 0(x2) # load 0xeeefd630a8327b50 from memory into f19
fadd.s f7, f14, f19 # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x2, scratch
li x3, 0x59df80f6e8abae9a # load x3 with value 0x59df80f6e8abae9a
sw x3, 0(x2) # store 0x59df80f6e8abae9a in memory
flw f17, 0(x2) # load 0x59df80f6e8abae9a from memory into f17
la x2, scratch
li x3, 0xbad7efc775dbc3ea # load x3 with value 0xbad7efc775dbc3ea
sw x3, 0(x2) # store 0xbad7efc775dbc3ea in memory
flw f3, 0(x2) # load 0xbad7efc775dbc3ea from memory into f3
fadd.s f8, f17, f3 # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x2, scratch
li x3, 0x3b26c0b6dc6c871d # load x3 with value 0x3b26c0b6dc6c871d
sw x3, 0(x2) # store 0x3b26c0b6dc6c871d in memory
flw f28, 0(x2) # load 0x3b26c0b6dc6c871d from memory into f28
la x2, scratch
li x3, 0x3c836516f765cc29 # load x3 with value 0x3c836516f765cc29
sw x3, 0(x2) # store 0x3c836516f765cc29 in memory
flw f30, 0(x2) # load 0x3c836516f765cc29 from memory into f30
fadd.s f9, f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x2, scratch
li x3, 0xfad57c5ccc6d4173 # load x3 with value 0xfad57c5ccc6d4173
sw x3, 0(x2) # store 0xfad57c5ccc6d4173 in memory
flw f18, 0(x2) # load 0xfad57c5ccc6d4173 from memory into f18
la x2, scratch
li x3, 0xd8ac4ee444c57952 # load x3 with value 0xd8ac4ee444c57952
sw x3, 0(x2) # store 0xd8ac4ee444c57952 in memory
flw f1, 0(x2) # load 0xd8ac4ee444c57952 from memory into f1
fadd.s f10, f18, f1 # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x2, scratch
li x3, 0xe075a4b40ed6bb51 # load x3 with value 0xe075a4b40ed6bb51
sw x3, 0(x2) # store 0xe075a4b40ed6bb51 in memory
flw f23, 0(x2) # load 0xe075a4b40ed6bb51 from memory into f23
la x2, scratch
li x3, 0xcb07479f6bf8be9b # load x3 with value 0xcb07479f6bf8be9b
sw x3, 0(x2) # store 0xcb07479f6bf8be9b in memory
flw f15, 0(x2) # load 0xcb07479f6bf8be9b from memory into f15
fadd.s f11, f23, f15 # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x2, scratch
li x3, 0xf2d62f0f629946d3 # load x3 with value 0xf2d62f0f629946d3
sw x3, 0(x2) # store 0xf2d62f0f629946d3 in memory
flw f23, 0(x2) # load 0xf2d62f0f629946d3 from memory into f23
la x2, scratch
li x3, 0xe5502d0db401a7cd # load x3 with value 0xe5502d0db401a7cd
sw x3, 0(x2) # store 0xe5502d0db401a7cd in memory
flw f25, 0(x2) # load 0xe5502d0db401a7cd from memory into f25
fadd.s f12, f23, f25 # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x2, scratch
li x3, 0x74618e5f364ca9cb # load x3 with value 0x74618e5f364ca9cb
sw x3, 0(x2) # store 0x74618e5f364ca9cb in memory
flw f20, 0(x2) # load 0x74618e5f364ca9cb from memory into f20
la x2, scratch
li x3, 0x3f85d8fd2ee1c74d # load x3 with value 0x3f85d8fd2ee1c74d
sw x3, 0(x2) # store 0x3f85d8fd2ee1c74d in memory
flw f23, 0(x2) # load 0x3f85d8fd2ee1c74d from memory into f23
fadd.s f13, f20, f23 # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x2, scratch
li x3, 0x4b9f02fb4ee89f78 # load x3 with value 0x4b9f02fb4ee89f78
sw x3, 0(x2) # store 0x4b9f02fb4ee89f78 in memory
flw f31, 0(x2) # load 0x4b9f02fb4ee89f78 from memory into f31
la x2, scratch
li x3, 0xb1d531f1500d49d0 # load x3 with value 0xb1d531f1500d49d0
sw x3, 0(x2) # store 0xb1d531f1500d49d0 in memory
flw f29, 0(x2) # load 0xb1d531f1500d49d0 from memory into f29
fadd.s f14, f31, f29 # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x2, scratch
li x3, 0x30e6728ac399ea0e # load x3 with value 0x30e6728ac399ea0e
sw x3, 0(x2) # store 0x30e6728ac399ea0e in memory
flw f31, 0(x2) # load 0x30e6728ac399ea0e from memory into f31
la x2, scratch
li x3, 0x3d80055b5571c6c3 # load x3 with value 0x3d80055b5571c6c3
sw x3, 0(x2) # store 0x3d80055b5571c6c3 in memory
flw f3, 0(x2) # load 0x3d80055b5571c6c3 from memory into f3
fadd.s f15, f31, f3 # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x2, scratch
li x3, 0xdb975e947bbc46da # load x3 with value 0xdb975e947bbc46da
sw x3, 0(x2) # store 0xdb975e947bbc46da in memory
flw f3, 0(x2) # load 0xdb975e947bbc46da from memory into f3
la x2, scratch
li x3, 0x3c8ac1122910f143 # load x3 with value 0x3c8ac1122910f143
sw x3, 0(x2) # store 0x3c8ac1122910f143 in memory
flw f17, 0(x2) # load 0x3c8ac1122910f143 from memory into f17
fadd.s f16, f3, f17 # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x2, scratch
li x3, 0x57bf76a8de3284e0 # load x3 with value 0x57bf76a8de3284e0
sw x3, 0(x2) # store 0x57bf76a8de3284e0 in memory
flw f2, 0(x2) # load 0x57bf76a8de3284e0 from memory into f2
la x2, scratch
li x3, 0xf1f080cb55b8e000 # load x3 with value 0xf1f080cb55b8e000
sw x3, 0(x2) # store 0xf1f080cb55b8e000 in memory
flw f7, 0(x2) # load 0xf1f080cb55b8e000 from memory into f7
fadd.s f17, f2, f7 # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x2, scratch
li x3, 0x3c011e3e49ef6be0 # load x3 with value 0x3c011e3e49ef6be0
sw x3, 0(x2) # store 0x3c011e3e49ef6be0 in memory
flw f31, 0(x2) # load 0x3c011e3e49ef6be0 from memory into f31
la x2, scratch
li x3, 0x624948d119c45571 # load x3 with value 0x624948d119c45571
sw x3, 0(x2) # store 0x624948d119c45571 in memory
flw f20, 0(x2) # load 0x624948d119c45571 from memory into f20
fadd.s f18, f31, f20 # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x2, scratch
li x3, 0x55595b881605a551 # load x3 with value 0x55595b881605a551
sw x3, 0(x2) # store 0x55595b881605a551 in memory
flw f18, 0(x2) # load 0x55595b881605a551 from memory into f18
la x2, scratch
li x3, 0xe723c9b94be8d779 # load x3 with value 0xe723c9b94be8d779
sw x3, 0(x2) # store 0xe723c9b94be8d779 in memory
flw f14, 0(x2) # load 0xe723c9b94be8d779 from memory into f14
fadd.s f19, f18, f14 # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x2, scratch
li x3, 0xb6479f220e91be63 # load x3 with value 0xb6479f220e91be63
sw x3, 0(x2) # store 0xb6479f220e91be63 in memory
flw f5, 0(x2) # load 0xb6479f220e91be63 from memory into f5
la x2, scratch
li x3, 0x32cba76d4be071f9 # load x3 with value 0x32cba76d4be071f9
sw x3, 0(x2) # store 0x32cba76d4be071f9 in memory
flw f25, 0(x2) # load 0x32cba76d4be071f9 from memory into f25
fadd.s f20, f5, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x2, scratch
li x3, 0x4080e42b08ea3c7d # load x3 with value 0x4080e42b08ea3c7d
sw x3, 0(x2) # store 0x4080e42b08ea3c7d in memory
flw f14, 0(x2) # load 0x4080e42b08ea3c7d from memory into f14
la x2, scratch
li x3, 0xe11d4ae1258ae5aa # load x3 with value 0xe11d4ae1258ae5aa
sw x3, 0(x2) # store 0xe11d4ae1258ae5aa in memory
flw f31, 0(x2) # load 0xe11d4ae1258ae5aa from memory into f31
fadd.s f21, f14, f31 # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x2, scratch
li x3, 0xdc58f3f7281e4aef # load x3 with value 0xdc58f3f7281e4aef
sw x3, 0(x2) # store 0xdc58f3f7281e4aef in memory
flw f10, 0(x2) # load 0xdc58f3f7281e4aef from memory into f10
la x2, scratch
li x3, 0xe9b9e5540d5657b # load x3 with value 0xe9b9e5540d5657b
sw x3, 0(x2) # store 0xe9b9e5540d5657b in memory
flw f20, 0(x2) # load 0xe9b9e5540d5657b from memory into f20
fadd.s f22, f10, f20 # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x2, scratch
li x3, 0xab7c2224768a411a # load x3 with value 0xab7c2224768a411a
sw x3, 0(x2) # store 0xab7c2224768a411a in memory
flw f13, 0(x2) # load 0xab7c2224768a411a from memory into f13
la x2, scratch
li x3, 0x6da17a70e69afb9d # load x3 with value 0x6da17a70e69afb9d
sw x3, 0(x2) # store 0x6da17a70e69afb9d in memory
flw f30, 0(x2) # load 0x6da17a70e69afb9d from memory into f30
fadd.s f23, f13, f30 # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x2, scratch
li x3, 0xc0d45db8d0ba0e7a # load x3 with value 0xc0d45db8d0ba0e7a
sw x3, 0(x2) # store 0xc0d45db8d0ba0e7a in memory
flw f9, 0(x2) # load 0xc0d45db8d0ba0e7a from memory into f9
la x2, scratch
li x3, 0x9150bb5f18195aee # load x3 with value 0x9150bb5f18195aee
sw x3, 0(x2) # store 0x9150bb5f18195aee in memory
flw f6, 0(x2) # load 0x9150bb5f18195aee from memory into f6
fadd.s f24, f9, f6 # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x2, scratch
li x3, 0x979c45f0fd119163 # load x3 with value 0x979c45f0fd119163
sw x3, 0(x2) # store 0x979c45f0fd119163 in memory
flw f3, 0(x2) # load 0x979c45f0fd119163 from memory into f3
la x2, scratch
li x3, 0x852bee299cccbc81 # load x3 with value 0x852bee299cccbc81
sw x3, 0(x2) # store 0x852bee299cccbc81 in memory
flw f22, 0(x2) # load 0x852bee299cccbc81 from memory into f22
fadd.s f25, f3, f22 # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x2, scratch
li x3, 0x6146adcf7a066d50 # load x3 with value 0x6146adcf7a066d50
sw x3, 0(x2) # store 0x6146adcf7a066d50 in memory
flw f12, 0(x2) # load 0x6146adcf7a066d50 from memory into f12
la x2, scratch
li x3, 0x3d2e9fb5da58f941 # load x3 with value 0x3d2e9fb5da58f941
sw x3, 0(x2) # store 0x3d2e9fb5da58f941 in memory
flw f22, 0(x2) # load 0x3d2e9fb5da58f941 from memory into f22
fadd.s f26, f12, f22 # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x2, scratch
li x3, 0x107b7b203038a921 # load x3 with value 0x107b7b203038a921
sw x3, 0(x2) # store 0x107b7b203038a921 in memory
flw f5, 0(x2) # load 0x107b7b203038a921 from memory into f5
la x2, scratch
li x3, 0xfc147b055d5395fc # load x3 with value 0xfc147b055d5395fc
sw x3, 0(x2) # store 0xfc147b055d5395fc in memory
flw f20, 0(x2) # load 0xfc147b055d5395fc from memory into f20
fadd.s f27, f5, f20 # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x2, scratch
li x3, 0x74bc35c80ca321a6 # load x3 with value 0x74bc35c80ca321a6
sw x3, 0(x2) # store 0x74bc35c80ca321a6 in memory
flw f24, 0(x2) # load 0x74bc35c80ca321a6 from memory into f24
la x2, scratch
li x3, 0x3dee9fa844d5e356 # load x3 with value 0x3dee9fa844d5e356
sw x3, 0(x2) # store 0x3dee9fa844d5e356 in memory
flw f2, 0(x2) # load 0x3dee9fa844d5e356 from memory into f2
fadd.s f28, f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x2, scratch
li x3, 0xdf7841dc1b6a6c80 # load x3 with value 0xdf7841dc1b6a6c80
sw x3, 0(x2) # store 0xdf7841dc1b6a6c80 in memory
flw f22, 0(x2) # load 0xdf7841dc1b6a6c80 from memory into f22
la x2, scratch
li x3, 0xc84ab8944945dd72 # load x3 with value 0xc84ab8944945dd72
sw x3, 0(x2) # store 0xc84ab8944945dd72 in memory
flw f20, 0(x2) # load 0xc84ab8944945dd72 from memory into f20
fadd.s f29, f22, f20 # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x2, scratch
li x3, 0x183c35e0d709ab03 # load x3 with value 0x183c35e0d709ab03
sw x3, 0(x2) # store 0x183c35e0d709ab03 in memory
flw f2, 0(x2) # load 0x183c35e0d709ab03 from memory into f2
la x2, scratch
li x3, 0xad2486f018537d06 # load x3 with value 0xad2486f018537d06
sw x3, 0(x2) # store 0xad2486f018537d06 in memory
flw f17, 0(x2) # load 0xad2486f018537d06 from memory into f17
fadd.s f30, f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x2, scratch
li x3, 0x2aa8e2e82e97224c # load x3 with value 0x2aa8e2e82e97224c
sw x3, 0(x2) # store 0x2aa8e2e82e97224c in memory
flw f19, 0(x2) # load 0x2aa8e2e82e97224c from memory into f19
la x2, scratch
li x3, 0xfe96aab962525563 # load x3 with value 0xfe96aab962525563
sw x3, 0(x2) # store 0xfe96aab962525563 in memory
flw f23, 0(x2) # load 0xfe96aab962525563 from memory into f23
fadd.s f31, f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xef7f67e1ad8e0c70 # load x3 with value 0xef7f67e1ad8e0c70
sw x3, 0(x2) # store 0xef7f67e1ad8e0c70 in memory
flw f15, 0(x2) # load 0xef7f67e1ad8e0c70 from memory into f15
fadd.s f14, f31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0xdb8a8352213b69bd # load x3 with value 0xdb8a8352213b69bd
sw x3, 0(x2) # store 0xdb8a8352213b69bd in memory
flw f10, 0(x2) # load 0xdb8a8352213b69bd from memory into f10
fadd.s f18, f25, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x608ae8a62ef00fb8 # load x3 with value 0x608ae8a62ef00fb8
sw x3, 0(x2) # store 0x608ae8a62ef00fb8 in memory
flw f12, 0(x2) # load 0x608ae8a62ef00fb8 from memory into f12
fadd.s f18, f17, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0xdc1da8a105f6a138 # load x3 with value 0xdc1da8a105f6a138
sw x3, 0(x2) # store 0xdc1da8a105f6a138 in memory
flw f5, 0(x2) # load 0xdc1da8a105f6a138 from memory into f5
fadd.s f24, f8, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0xda52170a2aa6b03a # load x3 with value 0xda52170a2aa6b03a
sw x3, 0(x2) # store 0xda52170a2aa6b03a in memory
flw f16, 0(x2) # load 0xda52170a2aa6b03a from memory into f16
fadd.s f11, f31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0xa59cd82f563992f2 # load x3 with value 0xa59cd82f563992f2
sw x3, 0(x2) # store 0xa59cd82f563992f2 in memory
flw f10, 0(x2) # load 0xa59cd82f563992f2 from memory into f10
fadd.s f14, f18, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
la x2, scratch
li x3, 0x5ffcc27a354fa12 # load x3 with value 0x5ffcc27a354fa12
sw x3, 0(x2) # store 0x5ffcc27a354fa12 in memory
flw f24, 0(x2) # load 0x5ffcc27a354fa12 from memory into f24
fadd.s f20, f16, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
la x2, scratch
li x3, 0x1af9e2b6493d2bb6 # load x3 with value 0x1af9e2b6493d2bb6
sw x3, 0(x2) # store 0x1af9e2b6493d2bb6 in memory
flw f21, 0(x2) # load 0x1af9e2b6493d2bb6 from memory into f21
fadd.s f6, f18, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
la x2, scratch
li x3, 0xa0ff22a2eb9476c7 # load x3 with value 0xa0ff22a2eb9476c7
sw x3, 0(x2) # store 0xa0ff22a2eb9476c7 in memory
flw f15, 0(x2) # load 0xa0ff22a2eb9476c7 from memory into f15
fadd.s f20, f25, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0xd47680d347c463a5 # load x3 with value 0xd47680d347c463a5
sw x3, 0(x2) # store 0xd47680d347c463a5 in memory
flw f29, 0(x2) # load 0xd47680d347c463a5 from memory into f29
fadd.s f7, f1, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
la x2, scratch
li x3, 0xf9f4c8cc1b96a177 # load x3 with value 0xf9f4c8cc1b96a177
sw x3, 0(x2) # store 0xf9f4c8cc1b96a177 in memory
flw f25, 0(x2) # load 0xf9f4c8cc1b96a177 from memory into f25
fadd.s f17, f20, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0x1d0a66d18b96eaf0 # load x3 with value 0x1d0a66d18b96eaf0
sw x3, 0(x2) # store 0x1d0a66d18b96eaf0 in memory
flw f1, 0(x2) # load 0x1d0a66d18b96eaf0 from memory into f1
fadd.s f28, f13, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
la x2, scratch
li x3, 0xa53ee5ff13346068 # load x3 with value 0xa53ee5ff13346068
sw x3, 0(x2) # store 0xa53ee5ff13346068 in memory
flw f12, 0(x2) # load 0xa53ee5ff13346068 from memory into f12
fadd.s f11, f13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x6e8f991714e70127 # load x3 with value 0x6e8f991714e70127
sw x3, 0(x2) # store 0x6e8f991714e70127 in memory
flw f25, 0(x2) # load 0x6e8f991714e70127 from memory into f25
fadd.s f10, f23, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
la x2, scratch
li x3, 0x203e77b4f1d5bf84 # load x3 with value 0x203e77b4f1d5bf84
sw x3, 0(x2) # store 0x203e77b4f1d5bf84 in memory
flw f15, 0(x2) # load 0x203e77b4f1d5bf84 from memory into f15
fadd.s f3, f5, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x4737ea02977a4230 # load x3 with value 0x4737ea02977a4230
sw x3, 0(x2) # store 0x4737ea02977a4230 in memory
flw f9, 0(x2) # load 0x4737ea02977a4230 from memory into f9
fadd.s f3, f6, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x3a45852e499a40c3 # load x3 with value 0x3a45852e499a40c3
sw x3, 0(x2) # store 0x3a45852e499a40c3 in memory
flw f21, 0(x2) # load 0x3a45852e499a40c3 from memory into f21
fadd.s f3, f11, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0xf64f6d8d63fd6bf0 # load x3 with value 0xf64f6d8d63fd6bf0
sw x3, 0(x2) # store 0xf64f6d8d63fd6bf0 in memory
flw f21, 0(x2) # load 0xf64f6d8d63fd6bf0 from memory into f21
fadd.s f28, f3, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0xe9b92e7eb976bd3f # load x3 with value 0xe9b92e7eb976bd3f
sw x3, 0(x2) # store 0xe9b92e7eb976bd3f in memory
flw f24, 0(x2) # load 0xe9b92e7eb976bd3f from memory into f24
fadd.s f25, f11, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0x686d97291db4ca64 # load x3 with value 0x686d97291db4ca64
sw x3, 0(x2) # store 0x686d97291db4ca64 in memory
flw f9, 0(x2) # load 0x686d97291db4ca64 from memory into f9
fadd.s f31, f18, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0xba2b0b99bf9aff0 # load x3 with value 0xba2b0b99bf9aff0
sw x3, 0(x2) # store 0xba2b0b99bf9aff0 in memory
flw f22, 0(x2) # load 0xba2b0b99bf9aff0 from memory into f22
fadd.s f30, f7, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0xa0596a920193f81 # load x3 with value 0xa0596a920193f81
sw x3, 0(x2) # store 0xa0596a920193f81 in memory
flw f3, 0(x2) # load 0xa0596a920193f81 from memory into f3
fadd.s f16, f10, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0x138b8b6bcde05a6e # load x3 with value 0x138b8b6bcde05a6e
sw x3, 0(x2) # store 0x138b8b6bcde05a6e in memory
flw f20, 0(x2) # load 0x138b8b6bcde05a6e from memory into f20
fadd.s f18, f13, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0x84dc7dd91da9e736 # load x3 with value 0x84dc7dd91da9e736
sw x3, 0(x2) # store 0x84dc7dd91da9e736 in memory
flw f1, 0(x2) # load 0x84dc7dd91da9e736 from memory into f1
fadd.s f21, f9, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
la x2, scratch
li x3, 0x6c12d0596630dfd4 # load x3 with value 0x6c12d0596630dfd4
sw x3, 0(x2) # store 0x6c12d0596630dfd4 in memory
flw f20, 0(x2) # load 0x6c12d0596630dfd4 from memory into f20
fadd.s f18, f14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f27, 0(x2) # load 0xffbfffff from memory into f27
la x2, scratch
li x3, 0x7d1b4c115ac89820 # load x3 with value 0x7d1b4c115ac89820
sw x3, 0(x2) # store 0x7d1b4c115ac89820 in memory
flw f11, 0(x2) # load 0x7d1b4c115ac89820 from memory into f11
fadd.s f29, f27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0x1fc93c84918acf56 # load x3 with value 0x1fc93c84918acf56
sw x3, 0(x2) # store 0x1fc93c84918acf56 in memory
flw f3, 0(x2) # load 0x1fc93c84918acf56 from memory into f3
fadd.s f13, f19, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
la x2, scratch
li x3, 0xfbfb2fa30150e655 # load x3 with value 0xfbfb2fa30150e655
sw x3, 0(x2) # store 0xfbfb2fa30150e655 in memory
flw f7, 0(x2) # load 0xfbfb2fa30150e655 from memory into f7
fadd.s f15, f22, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x8ccf783c2615201c # load x3 with value 0x8ccf783c2615201c
sw x3, 0(x2) # store 0x8ccf783c2615201c in memory
flw f11, 0(x2) # load 0x8ccf783c2615201c from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f28, f11, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x135f463b630f9449 # load x3 with value 0x135f463b630f9449
sw x3, 0(x2) # store 0x135f463b630f9449 in memory
flw f23, 0(x2) # load 0x135f463b630f9449 from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fadd.s f30, f23, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x14daef1688beaba3 # load x3 with value 0x14daef1688beaba3
sw x3, 0(x2) # store 0x14daef1688beaba3 in memory
flw f22, 0(x2) # load 0x14daef1688beaba3 from memory into f22
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fadd.s f21, f22, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x9422648fdc772029 # load x3 with value 0x9422648fdc772029
sw x3, 0(x2) # store 0x9422648fdc772029 in memory
flw f23, 0(x2) # load 0x9422648fdc772029 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f1, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0xb0c7c423c147771c # load x3 with value 0xb0c7c423c147771c
sw x3, 0(x2) # store 0xb0c7c423c147771c in memory
flw f23, 0(x2) # load 0xb0c7c423c147771c from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fadd.s f11, f23, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xe079a003686ec4bd # load x3 with value 0xe079a003686ec4bd
sw x3, 0(x2) # store 0xe079a003686ec4bd in memory
flw f18, 0(x2) # load 0xe079a003686ec4bd from memory into f18
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fadd.s f25, f18, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x5eed8e55f2e01067 # load x3 with value 0x5eed8e55f2e01067
sw x3, 0(x2) # store 0x5eed8e55f2e01067 in memory
flw f27, 0(x2) # load 0x5eed8e55f2e01067 from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fadd.s f7, f27, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x7f71589ec07f7589 # load x3 with value 0x7f71589ec07f7589
sw x3, 0(x2) # store 0x7f71589ec07f7589 in memory
flw f28, 0(x2) # load 0x7f71589ec07f7589 from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fadd.s f2, f28, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0xd854d0b220a01fc4 # load x3 with value 0xd854d0b220a01fc4
sw x3, 0(x2) # store 0xd854d0b220a01fc4 in memory
flw f30, 0(x2) # load 0xd854d0b220a01fc4 from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fadd.s f2, f30, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x9fdc05d8ea5d99c6 # load x3 with value 0x9fdc05d8ea5d99c6
sw x3, 0(x2) # store 0x9fdc05d8ea5d99c6 in memory
flw f25, 0(x2) # load 0x9fdc05d8ea5d99c6 from memory into f25
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f3, f25, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x936405c430fd51cd # load x3 with value 0x936405c430fd51cd
sw x3, 0(x2) # store 0x936405c430fd51cd in memory
flw f12, 0(x2) # load 0x936405c430fd51cd from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fadd.s f6, f12, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0x3dc17a204bf2a7b9 # load x3 with value 0x3dc17a204bf2a7b9
sw x3, 0(x2) # store 0x3dc17a204bf2a7b9 in memory
flw f25, 0(x2) # load 0x3dc17a204bf2a7b9 from memory into f25
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fadd.s f7, f25, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0xd7595587059f1bd3 # load x3 with value 0xd7595587059f1bd3
sw x3, 0(x2) # store 0xd7595587059f1bd3 in memory
flw f17, 0(x2) # load 0xd7595587059f1bd3 from memory into f17
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fadd.s f19, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x2a2352b79ce141d1 # load x3 with value 0x2a2352b79ce141d1
sw x3, 0(x2) # store 0x2a2352b79ce141d1 in memory
flw f10, 0(x2) # load 0x2a2352b79ce141d1 from memory into f10
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fadd.s f23, f10, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0xbf4675cf51cc7c06 # load x3 with value 0xbf4675cf51cc7c06
sw x3, 0(x2) # store 0xbf4675cf51cc7c06 in memory
flw f24, 0(x2) # load 0xbf4675cf51cc7c06 from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fadd.s f3, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x8c53545b459b2b0a # load x3 with value 0x8c53545b459b2b0a
sw x3, 0(x2) # store 0x8c53545b459b2b0a in memory
flw f20, 0(x2) # load 0x8c53545b459b2b0a from memory into f20
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fadd.s f16, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x9b94690b2418df77 # load x3 with value 0x9b94690b2418df77
sw x3, 0(x2) # store 0x9b94690b2418df77 in memory
flw f10, 0(x2) # load 0x9b94690b2418df77 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fadd.s f17, f10, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x6628b943c0da27bb # load x3 with value 0x6628b943c0da27bb
sw x3, 0(x2) # store 0x6628b943c0da27bb in memory
flw f26, 0(x2) # load 0x6628b943c0da27bb from memory into f26
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
fadd.s f7, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0xde4001bec35a8d85 # load x3 with value 0xde4001bec35a8d85
sw x3, 0(x2) # store 0xde4001bec35a8d85 in memory
flw f1, 0(x2) # load 0xde4001bec35a8d85 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fadd.s f15, f1, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xb4037ea67b9ba2af # load x3 with value 0xb4037ea67b9ba2af
sw x3, 0(x2) # store 0xb4037ea67b9ba2af in memory
flw f29, 0(x2) # load 0xb4037ea67b9ba2af from memory into f29
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fadd.s f25, f29, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x93281455b9345a7e # load x3 with value 0x93281455b9345a7e
sw x3, 0(x2) # store 0x93281455b9345a7e in memory
flw f17, 0(x2) # load 0x93281455b9345a7e from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fadd.s f15, f17, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x8fdb692698589862 # load x3 with value 0x8fdb692698589862
sw x3, 0(x2) # store 0x8fdb692698589862 in memory
flw f14, 0(x2) # load 0x8fdb692698589862 from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fadd.s f16, f14, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0xdf6f3f3ae26ea66b # load x3 with value 0xdf6f3f3ae26ea66b
sw x3, 0(x2) # store 0xdf6f3f3ae26ea66b in memory
flw f12, 0(x2) # load 0xdf6f3f3ae26ea66b from memory into f12
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f10, 0(x2) # load 0xffffffff from memory into f10
fadd.s f15, f12, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x3ffcc0c1ec6e0a7d # load x3 with value 0x3ffcc0c1ec6e0a7d
sw x3, 0(x2) # store 0x3ffcc0c1ec6e0a7d in memory
flw f20, 0(x2) # load 0x3ffcc0c1ec6e0a7d from memory into f20
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fadd.s f5, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x8797d56f08298175 # load x3 with value 0x8797d56f08298175
sw x3, 0(x2) # store 0x8797d56f08298175 in memory
flw f8, 0(x2) # load 0x8797d56f08298175 from memory into f8
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f10, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xa30e11d523668e5b # load x3 with value 0xa30e11d523668e5b
sw x3, 0(x2) # store 0xa30e11d523668e5b in memory
flw f6, 0(x2) # load 0xa30e11d523668e5b from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
fadd.s f19, f6, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x669778e21e0b8be6 # load x3 with value 0x669778e21e0b8be6
sw x3, 0(x2) # store 0x669778e21e0b8be6 in memory
flw f26, 0(x2) # load 0x669778e21e0b8be6 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fadd.s f5, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0xc879352868f66de7 # load x3 with value 0xc879352868f66de7
sw x3, 0(x2) # store 0xc879352868f66de7 in memory
flw f11, 0(x2) # load 0xc879352868f66de7 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fadd.s f17, f11, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
la x2, scratch
li x3, 0x7dc1b78cd9c3c026 # load x3 with value 0x7dc1b78cd9c3c026
sw x3, 0(x2) # store 0x7dc1b78cd9c3c026 in memory
flw f0, 0(x2) # load 0x7dc1b78cd9c3c026 from memory into f0
la x2, scratch
li x3, 0x1632ffe06a3bb758 # load x3 with value 0x1632ffe06a3bb758
sw x3, 0(x2) # store 0x1632ffe06a3bb758 in memory
flw f31, 0(x2) # load 0x1632ffe06a3bb758 from memory into f31
fadd.s f0, f0, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
la x2, scratch
li x3, 0xc7aa056143d17186 # load x3 with value 0xc7aa056143d17186
sw x3, 0(x2) # store 0xc7aa056143d17186 in memory
flw f1, 0(x2) # load 0xc7aa056143d17186 from memory into f1
la x2, scratch
li x3, 0xcd6890ad682f4853 # load x3 with value 0xcd6890ad682f4853
sw x3, 0(x2) # store 0xcd6890ad682f4853 in memory
flw f5, 0(x2) # load 0xcd6890ad682f4853 from memory into f5
fadd.s f1, f1, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
la x2, scratch
li x3, 0xd460f6364e262de5 # load x3 with value 0xd460f6364e262de5
sw x3, 0(x2) # store 0xd460f6364e262de5 in memory
flw f2, 0(x2) # load 0xd460f6364e262de5 from memory into f2
la x2, scratch
li x3, 0x327bd3ae608b4aee # load x3 with value 0x327bd3ae608b4aee
sw x3, 0(x2) # store 0x327bd3ae608b4aee in memory
flw f12, 0(x2) # load 0x327bd3ae608b4aee from memory into f12
fadd.s f2, f2, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
la x2, scratch
li x3, 0x7cbcf503f6269a21 # load x3 with value 0x7cbcf503f6269a21
sw x3, 0(x2) # store 0x7cbcf503f6269a21 in memory
flw f3, 0(x2) # load 0x7cbcf503f6269a21 from memory into f3
la x2, scratch
li x3, 0xd194b83d4fafcc5b # load x3 with value 0xd194b83d4fafcc5b
sw x3, 0(x2) # store 0xd194b83d4fafcc5b in memory
flw f6, 0(x2) # load 0xd194b83d4fafcc5b from memory into f6
fadd.s f3, f3, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc5fa9af91b38ffae # load x3 with value 0xc5fa9af91b38ffae
sw x3, 0(x2) # store 0xc5fa9af91b38ffae in memory
flw f4, 0(x2) # load 0xc5fa9af91b38ffae from memory into f4
la x2, scratch
li x3, 0xd55f605b4aea1abd # load x3 with value 0xd55f605b4aea1abd
sw x3, 0(x2) # store 0xd55f605b4aea1abd in memory
flw f16, 0(x2) # load 0xd55f605b4aea1abd from memory into f16
fadd.s f4, f4, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x98064bc6376d4a7 # load x3 with value 0x98064bc6376d4a7
sw x3, 0(x2) # store 0x98064bc6376d4a7 in memory
flw f5, 0(x2) # load 0x98064bc6376d4a7 from memory into f5
la x2, scratch
li x3, 0xe1107d516cb44aee # load x3 with value 0xe1107d516cb44aee
sw x3, 0(x2) # store 0xe1107d516cb44aee in memory
flw f8, 0(x2) # load 0xe1107d516cb44aee from memory into f8
fadd.s f5, f5, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xaaa56fea8c2bd1e3 # load x3 with value 0xaaa56fea8c2bd1e3
sw x3, 0(x2) # store 0xaaa56fea8c2bd1e3 in memory
flw f6, 0(x2) # load 0xaaa56fea8c2bd1e3 from memory into f6
la x2, scratch
li x3, 0x6b7cf118fa4463b4 # load x3 with value 0x6b7cf118fa4463b4
sw x3, 0(x2) # store 0x6b7cf118fa4463b4 in memory
flw f18, 0(x2) # load 0x6b7cf118fa4463b4 from memory into f18
fadd.s f6, f6, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x51e59f7e3bb658ed # load x3 with value 0x51e59f7e3bb658ed
sw x3, 0(x2) # store 0x51e59f7e3bb658ed in memory
flw f7, 0(x2) # load 0x51e59f7e3bb658ed from memory into f7
la x2, scratch
li x3, 0xca59c7ead3bc2d4d # load x3 with value 0xca59c7ead3bc2d4d
sw x3, 0(x2) # store 0xca59c7ead3bc2d4d in memory
flw f26, 0(x2) # load 0xca59c7ead3bc2d4d from memory into f26
fadd.s f7, f7, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
la x2, scratch
li x3, 0x610bc60e83454769 # load x3 with value 0x610bc60e83454769
sw x3, 0(x2) # store 0x610bc60e83454769 in memory
flw f8, 0(x2) # load 0x610bc60e83454769 from memory into f8
la x2, scratch
li x3, 0xb526ef0585ac43fd # load x3 with value 0xb526ef0585ac43fd
sw x3, 0(x2) # store 0xb526ef0585ac43fd in memory
flw f21, 0(x2) # load 0xb526ef0585ac43fd from memory into f21
fadd.s f8, f8, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
la x2, scratch
li x3, 0xbbc3635ddcf92e7a # load x3 with value 0xbbc3635ddcf92e7a
sw x3, 0(x2) # store 0xbbc3635ddcf92e7a in memory
flw f9, 0(x2) # load 0xbbc3635ddcf92e7a from memory into f9
la x2, scratch
li x3, 0xcf1480771e9e3d59 # load x3 with value 0xcf1480771e9e3d59
sw x3, 0(x2) # store 0xcf1480771e9e3d59 in memory
flw f9, 0(x2) # load 0xcf1480771e9e3d59 from memory into f9
fadd.s f9, f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
la x2, scratch
li x3, 0xb0a51708c65e40aa # load x3 with value 0xb0a51708c65e40aa
sw x3, 0(x2) # store 0xb0a51708c65e40aa in memory
flw f10, 0(x2) # load 0xb0a51708c65e40aa from memory into f10
la x2, scratch
li x3, 0xcf75ea53b11e1045 # load x3 with value 0xcf75ea53b11e1045
sw x3, 0(x2) # store 0xcf75ea53b11e1045 in memory
flw f6, 0(x2) # load 0xcf75ea53b11e1045 from memory into f6
fadd.s f10, f10, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
la x2, scratch
li x3, 0x3f6ff735b6c390f1 # load x3 with value 0x3f6ff735b6c390f1
sw x3, 0(x2) # store 0x3f6ff735b6c390f1 in memory
flw f11, 0(x2) # load 0x3f6ff735b6c390f1 from memory into f11
la x2, scratch
li x3, 0x7b82c08922982c3 # load x3 with value 0x7b82c08922982c3
sw x3, 0(x2) # store 0x7b82c08922982c3 in memory
flw f18, 0(x2) # load 0x7b82c08922982c3 from memory into f18
fadd.s f11, f11, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
la x2, scratch
li x3, 0x2be87aaf07de448a # load x3 with value 0x2be87aaf07de448a
sw x3, 0(x2) # store 0x2be87aaf07de448a in memory
flw f12, 0(x2) # load 0x2be87aaf07de448a from memory into f12
la x2, scratch
li x3, 0x4bb1b5d4d262e664 # load x3 with value 0x4bb1b5d4d262e664
sw x3, 0(x2) # store 0x4bb1b5d4d262e664 in memory
flw f22, 0(x2) # load 0x4bb1b5d4d262e664 from memory into f22
fadd.s f12, f12, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
la x2, scratch
li x3, 0xb05ea886a9d2fc95 # load x3 with value 0xb05ea886a9d2fc95
sw x3, 0(x2) # store 0xb05ea886a9d2fc95 in memory
flw f13, 0(x2) # load 0xb05ea886a9d2fc95 from memory into f13
la x2, scratch
li x3, 0x5c75b2fc1c6355ae # load x3 with value 0x5c75b2fc1c6355ae
sw x3, 0(x2) # store 0x5c75b2fc1c6355ae in memory
flw f24, 0(x2) # load 0x5c75b2fc1c6355ae from memory into f24
fadd.s f13, f13, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
la x2, scratch
li x3, 0x1b433e30496adc27 # load x3 with value 0x1b433e30496adc27
sw x3, 0(x2) # store 0x1b433e30496adc27 in memory
flw f14, 0(x2) # load 0x1b433e30496adc27 from memory into f14
la x2, scratch
li x3, 0xf0a86c1ea63446f2 # load x3 with value 0xf0a86c1ea63446f2
sw x3, 0(x2) # store 0xf0a86c1ea63446f2 in memory
flw f29, 0(x2) # load 0xf0a86c1ea63446f2 from memory into f29
fadd.s f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
la x2, scratch
li x3, 0xb6a7cea6a3b74b26 # load x3 with value 0xb6a7cea6a3b74b26
sw x3, 0(x2) # store 0xb6a7cea6a3b74b26 in memory
flw f15, 0(x2) # load 0xb6a7cea6a3b74b26 from memory into f15
la x2, scratch
li x3, 0x46cb374229eef91b # load x3 with value 0x46cb374229eef91b
sw x3, 0(x2) # store 0x46cb374229eef91b in memory
flw f17, 0(x2) # load 0x46cb374229eef91b from memory into f17
fadd.s f15, f15, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
la x2, scratch
li x3, 0x2fe35b924329fbbd # load x3 with value 0x2fe35b924329fbbd
sw x3, 0(x2) # store 0x2fe35b924329fbbd in memory
flw f16, 0(x2) # load 0x2fe35b924329fbbd from memory into f16
la x2, scratch
li x3, 0x34e3e577b8b28e7 # load x3 with value 0x34e3e577b8b28e7
sw x3, 0(x2) # store 0x34e3e577b8b28e7 in memory
flw f28, 0(x2) # load 0x34e3e577b8b28e7 from memory into f28
fadd.s f16, f16, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
la x2, scratch
li x3, 0xac76e7eaf8ec6ea7 # load x3 with value 0xac76e7eaf8ec6ea7
sw x3, 0(x2) # store 0xac76e7eaf8ec6ea7 in memory
flw f17, 0(x2) # load 0xac76e7eaf8ec6ea7 from memory into f17
la x2, scratch
li x3, 0xa1413fed653712b3 # load x3 with value 0xa1413fed653712b3
sw x3, 0(x2) # store 0xa1413fed653712b3 in memory
flw f14, 0(x2) # load 0xa1413fed653712b3 from memory into f14
fadd.s f17, f17, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
la x2, scratch
li x3, 0x633a2f8614473d73 # load x3 with value 0x633a2f8614473d73
sw x3, 0(x2) # store 0x633a2f8614473d73 in memory
flw f18, 0(x2) # load 0x633a2f8614473d73 from memory into f18
la x2, scratch
li x3, 0xbbe4cd8668fab72f # load x3 with value 0xbbe4cd8668fab72f
sw x3, 0(x2) # store 0xbbe4cd8668fab72f in memory
flw f3, 0(x2) # load 0xbbe4cd8668fab72f from memory into f3
fadd.s f18, f18, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
la x2, scratch
li x3, 0xb0a33ac09a7ef89b # load x3 with value 0xb0a33ac09a7ef89b
sw x3, 0(x2) # store 0xb0a33ac09a7ef89b in memory
flw f19, 0(x2) # load 0xb0a33ac09a7ef89b from memory into f19
la x2, scratch
li x3, 0xc10ed412dec6bcf9 # load x3 with value 0xc10ed412dec6bcf9
sw x3, 0(x2) # store 0xc10ed412dec6bcf9 in memory
flw f27, 0(x2) # load 0xc10ed412dec6bcf9 from memory into f27
fadd.s f19, f19, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
la x2, scratch
li x3, 0x8406370babf8983e # load x3 with value 0x8406370babf8983e
sw x3, 0(x2) # store 0x8406370babf8983e in memory
flw f20, 0(x2) # load 0x8406370babf8983e from memory into f20
la x2, scratch
li x3, 0x567a8d972cd2a5ca # load x3 with value 0x567a8d972cd2a5ca
sw x3, 0(x2) # store 0x567a8d972cd2a5ca in memory
flw f19, 0(x2) # load 0x567a8d972cd2a5ca from memory into f19
fadd.s f20, f20, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
la x2, scratch
li x3, 0x1c1116e56990af3 # load x3 with value 0x1c1116e56990af3
sw x3, 0(x2) # store 0x1c1116e56990af3 in memory
flw f21, 0(x2) # load 0x1c1116e56990af3 from memory into f21
la x2, scratch
li x3, 0xce4110e42605fca3 # load x3 with value 0xce4110e42605fca3
sw x3, 0(x2) # store 0xce4110e42605fca3 in memory
flw f6, 0(x2) # load 0xce4110e42605fca3 from memory into f6
fadd.s f21, f21, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
la x2, scratch
li x3, 0x5601f442e7764994 # load x3 with value 0x5601f442e7764994
sw x3, 0(x2) # store 0x5601f442e7764994 in memory
flw f22, 0(x2) # load 0x5601f442e7764994 from memory into f22
la x2, scratch
li x3, 0xa6af91335c0d0617 # load x3 with value 0xa6af91335c0d0617
sw x3, 0(x2) # store 0xa6af91335c0d0617 in memory
flw f30, 0(x2) # load 0xa6af91335c0d0617 from memory into f30
fadd.s f22, f22, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
la x2, scratch
li x3, 0xcc32546e2fdb2857 # load x3 with value 0xcc32546e2fdb2857
sw x3, 0(x2) # store 0xcc32546e2fdb2857 in memory
flw f23, 0(x2) # load 0xcc32546e2fdb2857 from memory into f23
la x2, scratch
li x3, 0xb1d746a6cb73c08c # load x3 with value 0xb1d746a6cb73c08c
sw x3, 0(x2) # store 0xb1d746a6cb73c08c in memory
flw f17, 0(x2) # load 0xb1d746a6cb73c08c from memory into f17
fadd.s f23, f23, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
la x2, scratch
li x3, 0xf35faf55f17f1be8 # load x3 with value 0xf35faf55f17f1be8
sw x3, 0(x2) # store 0xf35faf55f17f1be8 in memory
flw f24, 0(x2) # load 0xf35faf55f17f1be8 from memory into f24
la x2, scratch
li x3, 0x813d911ace257a0d # load x3 with value 0x813d911ace257a0d
sw x3, 0(x2) # store 0x813d911ace257a0d in memory
flw f25, 0(x2) # load 0x813d911ace257a0d from memory into f25
fadd.s f24, f24, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
la x2, scratch
li x3, 0x276379cb1a1a49ff # load x3 with value 0x276379cb1a1a49ff
sw x3, 0(x2) # store 0x276379cb1a1a49ff in memory
flw f25, 0(x2) # load 0x276379cb1a1a49ff from memory into f25
la x2, scratch
li x3, 0x819621173ea9b89f # load x3 with value 0x819621173ea9b89f
sw x3, 0(x2) # store 0x819621173ea9b89f in memory
flw f11, 0(x2) # load 0x819621173ea9b89f from memory into f11
fadd.s f25, f25, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
la x2, scratch
li x3, 0xc980ed09f2e98ecd # load x3 with value 0xc980ed09f2e98ecd
sw x3, 0(x2) # store 0xc980ed09f2e98ecd in memory
flw f26, 0(x2) # load 0xc980ed09f2e98ecd from memory into f26
la x2, scratch
li x3, 0x96cb17c1a155c907 # load x3 with value 0x96cb17c1a155c907
sw x3, 0(x2) # store 0x96cb17c1a155c907 in memory
flw f5, 0(x2) # load 0x96cb17c1a155c907 from memory into f5
fadd.s f26, f26, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
la x2, scratch
li x3, 0xfb37461d5df28c43 # load x3 with value 0xfb37461d5df28c43
sw x3, 0(x2) # store 0xfb37461d5df28c43 in memory
flw f27, 0(x2) # load 0xfb37461d5df28c43 from memory into f27
la x2, scratch
li x3, 0x9b8875ad8a261325 # load x3 with value 0x9b8875ad8a261325
sw x3, 0(x2) # store 0x9b8875ad8a261325 in memory
flw f28, 0(x2) # load 0x9b8875ad8a261325 from memory into f28
fadd.s f27, f27, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
la x2, scratch
li x3, 0x2f208adce0c39369 # load x3 with value 0x2f208adce0c39369
sw x3, 0(x2) # store 0x2f208adce0c39369 in memory
flw f28, 0(x2) # load 0x2f208adce0c39369 from memory into f28
la x2, scratch
li x3, 0xc848278f2d39b7dc # load x3 with value 0xc848278f2d39b7dc
sw x3, 0(x2) # store 0xc848278f2d39b7dc in memory
flw f27, 0(x2) # load 0xc848278f2d39b7dc from memory into f27
fadd.s f28, f28, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
la x2, scratch
li x3, 0xef9fe64a1730bf0d # load x3 with value 0xef9fe64a1730bf0d
sw x3, 0(x2) # store 0xef9fe64a1730bf0d in memory
flw f29, 0(x2) # load 0xef9fe64a1730bf0d from memory into f29
la x2, scratch
li x3, 0xad505c4d43f85157 # load x3 with value 0xad505c4d43f85157
sw x3, 0(x2) # store 0xad505c4d43f85157 in memory
flw f27, 0(x2) # load 0xad505c4d43f85157 from memory into f27
fadd.s f29, f29, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
la x2, scratch
li x3, 0xdcff172219692368 # load x3 with value 0xdcff172219692368
sw x3, 0(x2) # store 0xdcff172219692368 in memory
flw f30, 0(x2) # load 0xdcff172219692368 from memory into f30
la x2, scratch
li x3, 0xa42cffa3449b3c32 # load x3 with value 0xa42cffa3449b3c32
sw x3, 0(x2) # store 0xa42cffa3449b3c32 in memory
flw f5, 0(x2) # load 0xa42cffa3449b3c32 from memory into f5
fadd.s f30, f30, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
la x2, scratch
li x3, 0x18d06f152bd890f9 # load x3 with value 0x18d06f152bd890f9
sw x3, 0(x2) # store 0x18d06f152bd890f9 in memory
flw f31, 0(x2) # load 0x18d06f152bd890f9 from memory into f31
la x2, scratch
li x3, 0xa64d7f8cf5220191 # load x3 with value 0xa64d7f8cf5220191
sw x3, 0(x2) # store 0xa64d7f8cf5220191 in memory
flw f27, 0(x2) # load 0xa64d7f8cf5220191 from memory into f27
fadd.s f31, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
la x2, scratch
li x3, 0x66a4fa7810f2c226 # load x3 with value 0x66a4fa7810f2c226
sw x3, 0(x2) # store 0x66a4fa7810f2c226 in memory
flw f14, 0(x2) # load 0x66a4fa7810f2c226 from memory into f14
la x2, scratch
li x3, 0x25fdf2741e2951b3 # load x3 with value 0x25fdf2741e2951b3
sw x3, 0(x2) # store 0x25fdf2741e2951b3 in memory
flw f0, 0(x2) # load 0x25fdf2741e2951b3 from memory into f0
fadd.s f0, f14, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
la x2, scratch
li x3, 0xfdbe96fbb1ca58f8 # load x3 with value 0xfdbe96fbb1ca58f8
sw x3, 0(x2) # store 0xfdbe96fbb1ca58f8 in memory
flw f1, 0(x2) # load 0xfdbe96fbb1ca58f8 from memory into f1
la x2, scratch
li x3, 0x429d66b159f8b186 # load x3 with value 0x429d66b159f8b186
sw x3, 0(x2) # store 0x429d66b159f8b186 in memory
flw f1, 0(x2) # load 0x429d66b159f8b186 from memory into f1
fadd.s f1, f1, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
la x2, scratch
li x3, 0x1f3287e1aa23332d # load x3 with value 0x1f3287e1aa23332d
sw x3, 0(x2) # store 0x1f3287e1aa23332d in memory
flw f21, 0(x2) # load 0x1f3287e1aa23332d from memory into f21
la x2, scratch
li x3, 0x139460f8e58c2135 # load x3 with value 0x139460f8e58c2135
sw x3, 0(x2) # store 0x139460f8e58c2135 in memory
flw f2, 0(x2) # load 0x139460f8e58c2135 from memory into f2
fadd.s f2, f21, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
la x2, scratch
li x3, 0xc407db46aabaa1a # load x3 with value 0xc407db46aabaa1a
sw x3, 0(x2) # store 0xc407db46aabaa1a in memory
flw f9, 0(x2) # load 0xc407db46aabaa1a from memory into f9
la x2, scratch
li x3, 0x20febc1ce062a35a # load x3 with value 0x20febc1ce062a35a
sw x3, 0(x2) # store 0x20febc1ce062a35a in memory
flw f3, 0(x2) # load 0x20febc1ce062a35a from memory into f3
fadd.s f3, f9, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3e8b70b2bf6d4e2e # load x3 with value 0x3e8b70b2bf6d4e2e
sw x3, 0(x2) # store 0x3e8b70b2bf6d4e2e in memory
flw f20, 0(x2) # load 0x3e8b70b2bf6d4e2e from memory into f20
la x2, scratch
li x3, 0x865ed0711ff64cfd # load x3 with value 0x865ed0711ff64cfd
sw x3, 0(x2) # store 0x865ed0711ff64cfd in memory
flw f4, 0(x2) # load 0x865ed0711ff64cfd from memory into f4
fadd.s f4, f20, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xadfe020b71df0036 # load x3 with value 0xadfe020b71df0036
sw x3, 0(x2) # store 0xadfe020b71df0036 in memory
flw f17, 0(x2) # load 0xadfe020b71df0036 from memory into f17
la x2, scratch
li x3, 0xac635f4965218aca # load x3 with value 0xac635f4965218aca
sw x3, 0(x2) # store 0xac635f4965218aca in memory
flw f5, 0(x2) # load 0xac635f4965218aca from memory into f5
fadd.s f5, f17, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe6c206a97d851646 # load x3 with value 0xe6c206a97d851646
sw x3, 0(x2) # store 0xe6c206a97d851646 in memory
flw f26, 0(x2) # load 0xe6c206a97d851646 from memory into f26
la x2, scratch
li x3, 0x31ddd0baebb8b84f # load x3 with value 0x31ddd0baebb8b84f
sw x3, 0(x2) # store 0x31ddd0baebb8b84f in memory
flw f6, 0(x2) # load 0x31ddd0baebb8b84f from memory into f6
fadd.s f6, f26, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x42e09f015d4bbb5c # load x3 with value 0x42e09f015d4bbb5c
sw x3, 0(x2) # store 0x42e09f015d4bbb5c in memory
flw f27, 0(x2) # load 0x42e09f015d4bbb5c from memory into f27
la x2, scratch
li x3, 0x1ff7d39367a52503 # load x3 with value 0x1ff7d39367a52503
sw x3, 0(x2) # store 0x1ff7d39367a52503 in memory
flw f7, 0(x2) # load 0x1ff7d39367a52503 from memory into f7
fadd.s f7, f27, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
la x2, scratch
li x3, 0x506d2d03e6bf066c # load x3 with value 0x506d2d03e6bf066c
sw x3, 0(x2) # store 0x506d2d03e6bf066c in memory
flw f22, 0(x2) # load 0x506d2d03e6bf066c from memory into f22
la x2, scratch
li x3, 0xf4b569fff189e1dd # load x3 with value 0xf4b569fff189e1dd
sw x3, 0(x2) # store 0xf4b569fff189e1dd in memory
flw f8, 0(x2) # load 0xf4b569fff189e1dd from memory into f8
fadd.s f8, f22, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
la x2, scratch
li x3, 0xf9e81122e583b42d # load x3 with value 0xf9e81122e583b42d
sw x3, 0(x2) # store 0xf9e81122e583b42d in memory
flw f10, 0(x2) # load 0xf9e81122e583b42d from memory into f10
la x2, scratch
li x3, 0x11a0965ed858758f # load x3 with value 0x11a0965ed858758f
sw x3, 0(x2) # store 0x11a0965ed858758f in memory
flw f9, 0(x2) # load 0x11a0965ed858758f from memory into f9
fadd.s f9, f10, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
la x2, scratch
li x3, 0x59b3e1f5c425bad6 # load x3 with value 0x59b3e1f5c425bad6
sw x3, 0(x2) # store 0x59b3e1f5c425bad6 in memory
flw f10, 0(x2) # load 0x59b3e1f5c425bad6 from memory into f10
la x2, scratch
li x3, 0x20e9fca18cab466b # load x3 with value 0x20e9fca18cab466b
sw x3, 0(x2) # store 0x20e9fca18cab466b in memory
flw f10, 0(x2) # load 0x20e9fca18cab466b from memory into f10
fadd.s f10, f10, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
la x2, scratch
li x3, 0x158bcbb605078af3 # load x3 with value 0x158bcbb605078af3
sw x3, 0(x2) # store 0x158bcbb605078af3 in memory
flw f21, 0(x2) # load 0x158bcbb605078af3 from memory into f21
la x2, scratch
li x3, 0xd84544f99d066b65 # load x3 with value 0xd84544f99d066b65
sw x3, 0(x2) # store 0xd84544f99d066b65 in memory
flw f11, 0(x2) # load 0xd84544f99d066b65 from memory into f11
fadd.s f11, f21, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
la x2, scratch
li x3, 0xdcb4fc33e4ecee87 # load x3 with value 0xdcb4fc33e4ecee87
sw x3, 0(x2) # store 0xdcb4fc33e4ecee87 in memory
flw f13, 0(x2) # load 0xdcb4fc33e4ecee87 from memory into f13
la x2, scratch
li x3, 0x2ee937435f866172 # load x3 with value 0x2ee937435f866172
sw x3, 0(x2) # store 0x2ee937435f866172 in memory
flw f12, 0(x2) # load 0x2ee937435f866172 from memory into f12
fadd.s f12, f13, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
la x2, scratch
li x3, 0x1f7caab22d0980e9 # load x3 with value 0x1f7caab22d0980e9
sw x3, 0(x2) # store 0x1f7caab22d0980e9 in memory
flw f31, 0(x2) # load 0x1f7caab22d0980e9 from memory into f31
la x2, scratch
li x3, 0xd7c5cb503ca90f4 # load x3 with value 0xd7c5cb503ca90f4
sw x3, 0(x2) # store 0xd7c5cb503ca90f4 in memory
flw f13, 0(x2) # load 0xd7c5cb503ca90f4 from memory into f13
fadd.s f13, f31, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
la x2, scratch
li x3, 0xed0c5db464170122 # load x3 with value 0xed0c5db464170122
sw x3, 0(x2) # store 0xed0c5db464170122 in memory
flw f20, 0(x2) # load 0xed0c5db464170122 from memory into f20
la x2, scratch
li x3, 0x9f2c2ae161d03aa7 # load x3 with value 0x9f2c2ae161d03aa7
sw x3, 0(x2) # store 0x9f2c2ae161d03aa7 in memory
flw f14, 0(x2) # load 0x9f2c2ae161d03aa7 from memory into f14
fadd.s f14, f20, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
la x2, scratch
li x3, 0x1af4e465af4ce604 # load x3 with value 0x1af4e465af4ce604
sw x3, 0(x2) # store 0x1af4e465af4ce604 in memory
flw f2, 0(x2) # load 0x1af4e465af4ce604 from memory into f2
la x2, scratch
li x3, 0x5ea4c2542821d30d # load x3 with value 0x5ea4c2542821d30d
sw x3, 0(x2) # store 0x5ea4c2542821d30d in memory
flw f15, 0(x2) # load 0x5ea4c2542821d30d from memory into f15
fadd.s f15, f2, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
la x2, scratch
li x3, 0x9bebdbb2ab9a052a # load x3 with value 0x9bebdbb2ab9a052a
sw x3, 0(x2) # store 0x9bebdbb2ab9a052a in memory
flw f28, 0(x2) # load 0x9bebdbb2ab9a052a from memory into f28
la x2, scratch
li x3, 0x38f113a4fc39b7b2 # load x3 with value 0x38f113a4fc39b7b2
sw x3, 0(x2) # store 0x38f113a4fc39b7b2 in memory
flw f16, 0(x2) # load 0x38f113a4fc39b7b2 from memory into f16
fadd.s f16, f28, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
la x2, scratch
li x3, 0x3e4fa6128612b66c # load x3 with value 0x3e4fa6128612b66c
sw x3, 0(x2) # store 0x3e4fa6128612b66c in memory
flw f14, 0(x2) # load 0x3e4fa6128612b66c from memory into f14
la x2, scratch
li x3, 0xadd717a657536f98 # load x3 with value 0xadd717a657536f98
sw x3, 0(x2) # store 0xadd717a657536f98 in memory
flw f17, 0(x2) # load 0xadd717a657536f98 from memory into f17
fadd.s f17, f14, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
la x2, scratch
li x3, 0x101b44490edee975 # load x3 with value 0x101b44490edee975
sw x3, 0(x2) # store 0x101b44490edee975 in memory
flw f5, 0(x2) # load 0x101b44490edee975 from memory into f5
la x2, scratch
li x3, 0x3830565e74d88d5e # load x3 with value 0x3830565e74d88d5e
sw x3, 0(x2) # store 0x3830565e74d88d5e in memory
flw f18, 0(x2) # load 0x3830565e74d88d5e from memory into f18
fadd.s f18, f5, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
la x2, scratch
li x3, 0x2bf764effa796988 # load x3 with value 0x2bf764effa796988
sw x3, 0(x2) # store 0x2bf764effa796988 in memory
flw f22, 0(x2) # load 0x2bf764effa796988 from memory into f22
la x2, scratch
li x3, 0x690189d30acd412b # load x3 with value 0x690189d30acd412b
sw x3, 0(x2) # store 0x690189d30acd412b in memory
flw f19, 0(x2) # load 0x690189d30acd412b from memory into f19
fadd.s f19, f22, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
la x2, scratch
li x3, 0xc95c23c53d0a4744 # load x3 with value 0xc95c23c53d0a4744
sw x3, 0(x2) # store 0xc95c23c53d0a4744 in memory
flw f2, 0(x2) # load 0xc95c23c53d0a4744 from memory into f2
la x2, scratch
li x3, 0x4532dfd8d7b72792 # load x3 with value 0x4532dfd8d7b72792
sw x3, 0(x2) # store 0x4532dfd8d7b72792 in memory
flw f20, 0(x2) # load 0x4532dfd8d7b72792 from memory into f20
fadd.s f20, f2, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
la x2, scratch
li x3, 0xccb3caa2e146818e # load x3 with value 0xccb3caa2e146818e
sw x3, 0(x2) # store 0xccb3caa2e146818e in memory
flw f29, 0(x2) # load 0xccb3caa2e146818e from memory into f29
la x2, scratch
li x3, 0x14835e612095c24c # load x3 with value 0x14835e612095c24c
sw x3, 0(x2) # store 0x14835e612095c24c in memory
flw f21, 0(x2) # load 0x14835e612095c24c from memory into f21
fadd.s f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
la x2, scratch
li x3, 0x26378118c3c20245 # load x3 with value 0x26378118c3c20245
sw x3, 0(x2) # store 0x26378118c3c20245 in memory
flw f22, 0(x2) # load 0x26378118c3c20245 from memory into f22
la x2, scratch
li x3, 0xe9d04dbe09ebf32f # load x3 with value 0xe9d04dbe09ebf32f
sw x3, 0(x2) # store 0xe9d04dbe09ebf32f in memory
flw f22, 0(x2) # load 0xe9d04dbe09ebf32f from memory into f22
fadd.s f22, f22, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
la x2, scratch
li x3, 0xfaef63f977497525 # load x3 with value 0xfaef63f977497525
sw x3, 0(x2) # store 0xfaef63f977497525 in memory
flw f11, 0(x2) # load 0xfaef63f977497525 from memory into f11
la x2, scratch
li x3, 0xb1e7973f8d8e4704 # load x3 with value 0xb1e7973f8d8e4704
sw x3, 0(x2) # store 0xb1e7973f8d8e4704 in memory
flw f23, 0(x2) # load 0xb1e7973f8d8e4704 from memory into f23
fadd.s f23, f11, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
la x2, scratch
li x3, 0x1137e81204a6f085 # load x3 with value 0x1137e81204a6f085
sw x3, 0(x2) # store 0x1137e81204a6f085 in memory
flw f23, 0(x2) # load 0x1137e81204a6f085 from memory into f23
la x2, scratch
li x3, 0xae6fceee24c98ccb # load x3 with value 0xae6fceee24c98ccb
sw x3, 0(x2) # store 0xae6fceee24c98ccb in memory
flw f24, 0(x2) # load 0xae6fceee24c98ccb from memory into f24
fadd.s f24, f23, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
la x2, scratch
li x3, 0x2671a1abdbeb7971 # load x3 with value 0x2671a1abdbeb7971
sw x3, 0(x2) # store 0x2671a1abdbeb7971 in memory
flw f25, 0(x2) # load 0x2671a1abdbeb7971 from memory into f25
la x2, scratch
li x3, 0xc94584c797b68156 # load x3 with value 0xc94584c797b68156
sw x3, 0(x2) # store 0xc94584c797b68156 in memory
flw f25, 0(x2) # load 0xc94584c797b68156 from memory into f25
fadd.s f25, f25, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
la x2, scratch
li x3, 0xebef1f7850835a18 # load x3 with value 0xebef1f7850835a18
sw x3, 0(x2) # store 0xebef1f7850835a18 in memory
flw f27, 0(x2) # load 0xebef1f7850835a18 from memory into f27
la x2, scratch
li x3, 0x269c4a199cd76ec1 # load x3 with value 0x269c4a199cd76ec1
sw x3, 0(x2) # store 0x269c4a199cd76ec1 in memory
flw f26, 0(x2) # load 0x269c4a199cd76ec1 from memory into f26
fadd.s f26, f27, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
la x2, scratch
li x3, 0xee6481082691a78b # load x3 with value 0xee6481082691a78b
sw x3, 0(x2) # store 0xee6481082691a78b in memory
flw f22, 0(x2) # load 0xee6481082691a78b from memory into f22
la x2, scratch
li x3, 0xfcdc78439e2efda4 # load x3 with value 0xfcdc78439e2efda4
sw x3, 0(x2) # store 0xfcdc78439e2efda4 in memory
flw f27, 0(x2) # load 0xfcdc78439e2efda4 from memory into f27
fadd.s f27, f22, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
la x2, scratch
li x3, 0x52da7d359c456270 # load x3 with value 0x52da7d359c456270
sw x3, 0(x2) # store 0x52da7d359c456270 in memory
flw f22, 0(x2) # load 0x52da7d359c456270 from memory into f22
la x2, scratch
li x3, 0x7591c88248612f9b # load x3 with value 0x7591c88248612f9b
sw x3, 0(x2) # store 0x7591c88248612f9b in memory
flw f28, 0(x2) # load 0x7591c88248612f9b from memory into f28
fadd.s f28, f22, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
la x2, scratch
li x3, 0xc11af6111fa5bc09 # load x3 with value 0xc11af6111fa5bc09
sw x3, 0(x2) # store 0xc11af6111fa5bc09 in memory
flw f10, 0(x2) # load 0xc11af6111fa5bc09 from memory into f10
la x2, scratch
li x3, 0x5ddf6a4dea1995b6 # load x3 with value 0x5ddf6a4dea1995b6
sw x3, 0(x2) # store 0x5ddf6a4dea1995b6 in memory
flw f29, 0(x2) # load 0x5ddf6a4dea1995b6 from memory into f29
fadd.s f29, f10, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
la x2, scratch
li x3, 0x5562c3d83fcbcbbb # load x3 with value 0x5562c3d83fcbcbbb
sw x3, 0(x2) # store 0x5562c3d83fcbcbbb in memory
flw f20, 0(x2) # load 0x5562c3d83fcbcbbb from memory into f20
la x2, scratch
li x3, 0x155d6621e14704a2 # load x3 with value 0x155d6621e14704a2
sw x3, 0(x2) # store 0x155d6621e14704a2 in memory
flw f30, 0(x2) # load 0x155d6621e14704a2 from memory into f30
fadd.s f30, f20, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
la x2, scratch
li x3, 0xa21dfd217b3fb156 # load x3 with value 0xa21dfd217b3fb156
sw x3, 0(x2) # store 0xa21dfd217b3fb156 in memory
flw f3, 0(x2) # load 0xa21dfd217b3fb156 from memory into f3
la x2, scratch
li x3, 0xd676897be936526b # load x3 with value 0xd676897be936526b
sw x3, 0(x2) # store 0xd676897be936526b in memory
flw f31, 0(x2) # load 0xd676897be936526b from memory into f31
fadd.s f31, f3, f31 # perform operation

# Testcase cp_frm
la x2, scratch
li x3, 0xb61cd81a5c378e99 # load x3 with value 0xb61cd81a5c378e99
sw x3, 0(x2) # store 0xb61cd81a5c378e99 in memory
flw f14, 0(x2) # load 0xb61cd81a5c378e99 from memory into f14
la x2, scratch
li x3, 0x19b86422ddc732fa # load x3 with value 0x19b86422ddc732fa
sw x3, 0(x2) # store 0x19b86422ddc732fa in memory
flw f20, 0(x2) # load 0x19b86422ddc732fa from memory into f20
fadd.s f26, f14, f20, dyn # perform operation
fadd.s f26, f14, f20, rdn # perform operation
fadd.s f26, f14, f20, rmm # perform operation
fadd.s f26, f14, f20, rne # perform operation
fadd.s f26, f14, f20, rtz # perform operation
fadd.s f26, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f14, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fadd.s f16, f9, f29, dyn # perform operation
fadd.s f16, f9, f29, rdn # perform operation
fadd.s f16, f9, f29, rmm # perform operation
fadd.s f16, f9, f29, rne # perform operation
fadd.s f16, f9, f29, rtz # perform operation
fadd.s f16, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fadd.s f29, f9, f17, dyn # perform operation
fadd.s f29, f9, f17, rdn # perform operation
fadd.s f29, f9, f17, rmm # perform operation
fadd.s f29, f9, f17, rne # perform operation
fadd.s f29, f9, f17, rtz # perform operation
fadd.s f29, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fadd.s f15, f20, f18, dyn # perform operation
fadd.s f15, f20, f18, rdn # perform operation
fadd.s f15, f20, f18, rmm # perform operation
fadd.s f15, f20, f18, rne # perform operation
fadd.s f15, f20, f18, rtz # perform operation
fadd.s f15, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f20, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fadd.s f17, f31, f30, dyn # perform operation
fadd.s f17, f31, f30, rdn # perform operation
fadd.s f17, f31, f30, rmm # perform operation
fadd.s f17, f31, f30, rne # perform operation
fadd.s f17, f31, f30, rtz # perform operation
fadd.s f17, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fadd.s f14, f29, f13, dyn # perform operation
fadd.s f14, f29, f13, rdn # perform operation
fadd.s f14, f29, f13, rmm # perform operation
fadd.s f14, f29, f13, rne # perform operation
fadd.s f14, f29, f13, rtz # perform operation
fadd.s f14, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fadd.s f15, f21, f14, dyn # perform operation
fadd.s f15, f21, f14, rdn # perform operation
fadd.s f15, f21, f14, rmm # perform operation
fadd.s f15, f21, f14, rne # perform operation
fadd.s f15, f21, f14, rtz # perform operation
fadd.s f15, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fadd.s f10, f28, f19, dyn # perform operation
fadd.s f10, f28, f19, rdn # perform operation
fadd.s f10, f28, f19, rmm # perform operation
fadd.s f10, f28, f19, rne # perform operation
fadd.s f10, f28, f19, rtz # perform operation
fadd.s f10, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fadd.s f10, f17, f14, dyn # perform operation
fadd.s f10, f17, f14, rdn # perform operation
fadd.s f10, f17, f14, rmm # perform operation
fadd.s f10, f17, f14, rne # perform operation
fadd.s f10, f17, f14, rtz # perform operation
fadd.s f10, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fadd.s f3, f8, f31, dyn # perform operation
fadd.s f3, f8, f31, rdn # perform operation
fadd.s f3, f8, f31, rmm # perform operation
fadd.s f3, f8, f31, rne # perform operation
fadd.s f3, f8, f31, rtz # perform operation
fadd.s f3, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fadd.s f29, f8, f24, dyn # perform operation
fadd.s f29, f8, f24, rdn # perform operation
fadd.s f29, f8, f24, rmm # perform operation
fadd.s f29, f8, f24, rne # perform operation
fadd.s f29, f8, f24, rtz # perform operation
fadd.s f29, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f8, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f21, f9, f24, dyn # perform operation
fadd.s f21, f9, f24, rdn # perform operation
fadd.s f21, f9, f24, rmm # perform operation
fadd.s f21, f9, f24, rne # perform operation
fadd.s f21, f9, f24, rtz # perform operation
fadd.s f21, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f9, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fadd.s f18, f13, f14, dyn # perform operation
fadd.s f18, f13, f14, rdn # perform operation
fadd.s f18, f13, f14, rmm # perform operation
fadd.s f18, f13, f14, rne # perform operation
fadd.s f18, f13, f14, rtz # perform operation
fadd.s f18, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f13, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fadd.s f12, f11, f25, dyn # perform operation
fadd.s f12, f11, f25, rdn # perform operation
fadd.s f12, f11, f25, rmm # perform operation
fadd.s f12, f11, f25, rne # perform operation
fadd.s f12, f11, f25, rtz # perform operation
fadd.s f12, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fadd.s f11, f23, f24, dyn # perform operation
fadd.s f11, f23, f24, rdn # perform operation
fadd.s f11, f23, f24, rmm # perform operation
fadd.s f11, f23, f24, rne # perform operation
fadd.s f11, f23, f24, rtz # perform operation
fadd.s f11, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fadd.s f17, f19, f26, dyn # perform operation
fadd.s f17, f19, f26, rdn # perform operation
fadd.s f17, f19, f26, rmm # perform operation
fadd.s f17, f19, f26, rne # perform operation
fadd.s f17, f19, f26, rtz # perform operation
fadd.s f17, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f19, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fadd.s f20, f18, f24, dyn # perform operation
fadd.s f20, f18, f24, rdn # perform operation
fadd.s f20, f18, f24, rmm # perform operation
fadd.s f20, f18, f24, rne # perform operation
fadd.s f20, f18, f24, rtz # perform operation
fadd.s f20, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fadd.s f5, f29, f24, dyn # perform operation
fadd.s f5, f29, f24, rdn # perform operation
fadd.s f5, f29, f24, rmm # perform operation
fadd.s f5, f29, f24, rne # perform operation
fadd.s f5, f29, f24, rtz # perform operation
fadd.s f5, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f29, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fadd.s f6, f13, f20, dyn # perform operation
fadd.s f6, f13, f20, rdn # perform operation
fadd.s f6, f13, f20, rmm # perform operation
fadd.s f6, f13, f20, rne # perform operation
fadd.s f6, f13, f20, rtz # perform operation
fadd.s f6, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f11, f24, f15, dyn # perform operation
fadd.s f11, f24, f15, rdn # perform operation
fadd.s f11, f24, f15, rmm # perform operation
fadd.s f11, f24, f15, rne # perform operation
fadd.s f11, f24, f15, rtz # perform operation
fadd.s f11, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f24, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fadd.s f7, f22, f13, dyn # perform operation
fadd.s f7, f22, f13, rdn # perform operation
fadd.s f7, f22, f13, rmm # perform operation
fadd.s f7, f22, f13, rne # perform operation
fadd.s f7, f22, f13, rtz # perform operation
fadd.s f7, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fadd.s f25, f22, f1, dyn # perform operation
fadd.s f25, f22, f1, rdn # perform operation
fadd.s f25, f22, f1, rmm # perform operation
fadd.s f25, f22, f1, rne # perform operation
fadd.s f25, f22, f1, rtz # perform operation
fadd.s f25, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f23, f27, f12, dyn # perform operation
fadd.s f23, f27, f12, rdn # perform operation
fadd.s f23, f27, f12, rmm # perform operation
fadd.s f23, f27, f12, rne # perform operation
fadd.s f23, f27, f12, rtz # perform operation
fadd.s f23, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fadd.s f14, f1, f2, dyn # perform operation
fadd.s f14, f1, f2, rdn # perform operation
fadd.s f14, f1, f2, rmm # perform operation
fadd.s f14, f1, f2, rne # perform operation
fadd.s f14, f1, f2, rtz # perform operation
fadd.s f14, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fadd.s f23, f13, f7, dyn # perform operation
fadd.s f23, f13, f7, rdn # perform operation
fadd.s f23, f13, f7, rmm # perform operation
fadd.s f23, f13, f7, rne # perform operation
fadd.s f23, f13, f7, rtz # perform operation
fadd.s f23, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f13, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fadd.s f2, f19, f21, dyn # perform operation
fadd.s f2, f19, f21, rdn # perform operation
fadd.s f2, f19, f21, rmm # perform operation
fadd.s f2, f19, f21, rne # perform operation
fadd.s f2, f19, f21, rtz # perform operation
fadd.s f2, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fadd.s f13, f17, f25, dyn # perform operation
fadd.s f13, f17, f25, rdn # perform operation
fadd.s f13, f17, f25, rmm # perform operation
fadd.s f13, f17, f25, rne # perform operation
fadd.s f13, f17, f25, rtz # perform operation
fadd.s f13, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f17, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fadd.s f16, f8, f26, dyn # perform operation
fadd.s f16, f8, f26, rdn # perform operation
fadd.s f16, f8, f26, rmm # perform operation
fadd.s f16, f8, f26, rne # perform operation
fadd.s f16, f8, f26, rtz # perform operation
fadd.s f16, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fadd.s f14, f19, f7, dyn # perform operation
fadd.s f14, f19, f7, rdn # perform operation
fadd.s f14, f19, f7, rmm # perform operation
fadd.s f14, f19, f7, rne # perform operation
fadd.s f14, f19, f7, rtz # perform operation
fadd.s f14, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fadd.s f16, f6, f18, dyn # perform operation
fadd.s f16, f6, f18, rdn # perform operation
fadd.s f16, f6, f18, rmm # perform operation
fadd.s f16, f6, f18, rne # perform operation
fadd.s f16, f6, f18, rtz # perform operation
fadd.s f16, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f6, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fadd.s f20, f24, f12, dyn # perform operation
fadd.s f20, f24, f12, rdn # perform operation
fadd.s f20, f24, f12, rmm # perform operation
fadd.s f20, f24, f12, rne # perform operation
fadd.s f20, f24, f12, rtz # perform operation
fadd.s f20, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fadd.s f2, f13, f26, dyn # perform operation
fadd.s f2, f13, f26, rdn # perform operation
fadd.s f2, f13, f26, rmm # perform operation
fadd.s f2, f13, f26, rne # perform operation
fadd.s f2, f13, f26, rtz # perform operation
fadd.s f2, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fadd.s f29, f18, f7, dyn # perform operation
fadd.s f29, f18, f7, rdn # perform operation
fadd.s f29, f18, f7, rmm # perform operation
fadd.s f29, f18, f7, rne # perform operation
fadd.s f29, f18, f7, rtz # perform operation
fadd.s f29, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fadd.s f8, f27, f6, dyn # perform operation
fadd.s f8, f27, f6, rdn # perform operation
fadd.s f8, f27, f6, rmm # perform operation
fadd.s f8, f27, f6, rne # perform operation
fadd.s f8, f27, f6, rtz # perform operation
fadd.s f8, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fadd.s f23, f28, f10, dyn # perform operation
fadd.s f23, f28, f10, rdn # perform operation
fadd.s f23, f28, f10, rmm # perform operation
fadd.s f23, f28, f10, rne # perform operation
fadd.s f23, f28, f10, rtz # perform operation
fadd.s f23, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fadd.s f19, f27, f8, dyn # perform operation
fadd.s f19, f27, f8, rdn # perform operation
fadd.s f19, f27, f8, rmm # perform operation
fadd.s f19, f27, f8, rne # perform operation
fadd.s f19, f27, f8, rtz # perform operation
fadd.s f19, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fadd.s f14, f21, f10, dyn # perform operation
fadd.s f14, f21, f10, rdn # perform operation
fadd.s f14, f21, f10, rmm # perform operation
fadd.s f14, f21, f10, rne # perform operation
fadd.s f14, f21, f10, rtz # perform operation
fadd.s f14, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f21, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fadd.s f27, f20, f2, dyn # perform operation
fadd.s f27, f20, f2, rdn # perform operation
fadd.s f27, f20, f2, rmm # perform operation
fadd.s f27, f20, f2, rne # perform operation
fadd.s f27, f20, f2, rtz # perform operation
fadd.s f27, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fadd.s f30, f27, f31, dyn # perform operation
fadd.s f30, f27, f31, rdn # perform operation
fadd.s f30, f27, f31, rmm # perform operation
fadd.s f30, f27, f31, rne # perform operation
fadd.s f30, f27, f31, rtz # perform operation
fadd.s f30, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f13, f1, f24, dyn # perform operation
fadd.s f13, f1, f24, rdn # perform operation
fadd.s f13, f1, f24, rmm # perform operation
fadd.s f13, f1, f24, rne # perform operation
fadd.s f13, f1, f24, rtz # perform operation
fadd.s f13, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f1, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fadd.s f6, f7, f13, dyn # perform operation
fadd.s f6, f7, f13, rdn # perform operation
fadd.s f6, f7, f13, rmm # perform operation
fadd.s f6, f7, f13, rne # perform operation
fadd.s f6, f7, f13, rtz # perform operation
fadd.s f6, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f7, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fadd.s f1, f11, f27, dyn # perform operation
fadd.s f1, f11, f27, rdn # perform operation
fadd.s f1, f11, f27, rmm # perform operation
fadd.s f1, f11, f27, rne # perform operation
fadd.s f1, f11, f27, rtz # perform operation
fadd.s f1, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fadd.s f16, f26, f31, dyn # perform operation
fadd.s f16, f26, f31, rdn # perform operation
fadd.s f16, f26, f31, rmm # perform operation
fadd.s f16, f26, f31, rne # perform operation
fadd.s f16, f26, f31, rtz # perform operation
fadd.s f16, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f26, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fadd.s f13, f31, f24, dyn # perform operation
fadd.s f13, f31, f24, rdn # perform operation
fadd.s f13, f31, f24, rmm # perform operation
fadd.s f13, f31, f24, rne # perform operation
fadd.s f13, f31, f24, rtz # perform operation
fadd.s f13, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f15, f28, f6, dyn # perform operation
fadd.s f15, f28, f6, rdn # perform operation
fadd.s f15, f28, f6, rmm # perform operation
fadd.s f15, f28, f6, rne # perform operation
fadd.s f15, f28, f6, rtz # perform operation
fadd.s f15, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f28, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fadd.s f14, f13, f21, dyn # perform operation
fadd.s f14, f13, f21, rdn # perform operation
fadd.s f14, f13, f21, rmm # perform operation
fadd.s f14, f13, f21, rne # perform operation
fadd.s f14, f13, f21, rtz # perform operation
fadd.s f14, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f9, f2, f21, dyn # perform operation
fadd.s f9, f2, f21, rdn # perform operation
fadd.s f9, f2, f21, rmm # perform operation
fadd.s f9, f2, f21, rne # perform operation
fadd.s f9, f2, f21, rtz # perform operation
fadd.s f9, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f28, f18, f15, dyn # perform operation
fadd.s f28, f18, f15, rdn # perform operation
fadd.s f28, f18, f15, rmm # perform operation
fadd.s f28, f18, f15, rne # perform operation
fadd.s f28, f18, f15, rtz # perform operation
fadd.s f28, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f18, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fadd.s f5, f1, f6, dyn # perform operation
fadd.s f5, f1, f6, rdn # perform operation
fadd.s f5, f1, f6, rmm # perform operation
fadd.s f5, f1, f6, rne # perform operation
fadd.s f5, f1, f6, rtz # perform operation
fadd.s f5, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f1, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fadd.s f7, f25, f30, dyn # perform operation
fadd.s f7, f25, f30, rdn # perform operation
fadd.s f7, f25, f30, rmm # perform operation
fadd.s f7, f25, f30, rne # perform operation
fadd.s f7, f25, f30, rtz # perform operation
fadd.s f7, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fadd.s f5, f29, f23, dyn # perform operation
fadd.s f5, f29, f23, rdn # perform operation
fadd.s f5, f29, f23, rmm # perform operation
fadd.s f5, f29, f23, rne # perform operation
fadd.s f5, f29, f23, rtz # perform operation
fadd.s f5, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f29, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fadd.s f19, f15, f14, dyn # perform operation
fadd.s f19, f15, f14, rdn # perform operation
fadd.s f19, f15, f14, rmm # perform operation
fadd.s f19, f15, f14, rne # perform operation
fadd.s f19, f15, f14, rtz # perform operation
fadd.s f19, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f15, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f29, f7, f30, dyn # perform operation
fadd.s f29, f7, f30, rdn # perform operation
fadd.s f29, f7, f30, rmm # perform operation
fadd.s f29, f7, f30, rne # perform operation
fadd.s f29, f7, f30, rtz # perform operation
fadd.s f29, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fadd.s f11, f31, f19, dyn # perform operation
fadd.s f11, f31, f19, rdn # perform operation
fadd.s f11, f31, f19, rmm # perform operation
fadd.s f11, f31, f19, rne # perform operation
fadd.s f11, f31, f19, rtz # perform operation
fadd.s f11, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
fadd.s f8, f12, f11, dyn # perform operation
fadd.s f8, f12, f11, rdn # perform operation
fadd.s f8, f12, f11, rmm # perform operation
fadd.s f8, f12, f11, rne # perform operation
fadd.s f8, f12, f11, rtz # perform operation
fadd.s f8, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f12, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f30, f14, f15, dyn # perform operation
fadd.s f30, f14, f15, rdn # perform operation
fadd.s f30, f14, f15, rmm # perform operation
fadd.s f30, f14, f15, rne # perform operation
fadd.s f30, f14, f15, rtz # perform operation
fadd.s f30, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f14, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f3, f14, f19, dyn # perform operation
fadd.s f3, f14, f19, rdn # perform operation
fadd.s f3, f14, f19, rmm # perform operation
fadd.s f3, f14, f19, rne # perform operation
fadd.s f3, f14, f19, rtz # perform operation
fadd.s f3, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fadd.s f8, f27, f21, dyn # perform operation
fadd.s f8, f27, f21, rdn # perform operation
fadd.s f8, f27, f21, rmm # perform operation
fadd.s f8, f27, f21, rne # perform operation
fadd.s f8, f27, f21, rtz # perform operation
fadd.s f8, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fadd.s f28, f30, f10, dyn # perform operation
fadd.s f28, f30, f10, rdn # perform operation
fadd.s f28, f30, f10, rmm # perform operation
fadd.s f28, f30, f10, rne # perform operation
fadd.s f28, f30, f10, rtz # perform operation
fadd.s f28, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fadd.s f14, f2, f27, dyn # perform operation
fadd.s f14, f2, f27, rdn # perform operation
fadd.s f14, f2, f27, rmm # perform operation
fadd.s f14, f2, f27, rne # perform operation
fadd.s f14, f2, f27, rtz # perform operation
fadd.s f14, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fadd.s f11, f29, f16, dyn # perform operation
fadd.s f11, f29, f16, rdn # perform operation
fadd.s f11, f29, f16, rmm # perform operation
fadd.s f11, f29, f16, rne # perform operation
fadd.s f11, f29, f16, rtz # perform operation
fadd.s f11, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f10, f9, f30, dyn # perform operation
fadd.s f10, f9, f30, rdn # perform operation
fadd.s f10, f9, f30, rmm # perform operation
fadd.s f10, f9, f30, rne # perform operation
fadd.s f10, f9, f30, rtz # perform operation
fadd.s f10, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fadd.s f30, f23, f17, dyn # perform operation
fadd.s f30, f23, f17, rdn # perform operation
fadd.s f30, f23, f17, rmm # perform operation
fadd.s f30, f23, f17, rne # perform operation
fadd.s f30, f23, f17, rtz # perform operation
fadd.s f30, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fadd.s f16, f17, f14, dyn # perform operation
fadd.s f16, f17, f14, rdn # perform operation
fadd.s f16, f17, f14, rmm # perform operation
fadd.s f16, f17, f14, rne # perform operation
fadd.s f16, f17, f14, rtz # perform operation
fadd.s f16, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f17, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f2, f25, f29, dyn # perform operation
fadd.s f2, f25, f29, rdn # perform operation
fadd.s f2, f25, f29, rmm # perform operation
fadd.s f2, f25, f29, rne # perform operation
fadd.s f2, f25, f29, rtz # perform operation
fadd.s f2, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f16, f6, f3, dyn # perform operation
fadd.s f16, f6, f3, rdn # perform operation
fadd.s f16, f6, f3, rmm # perform operation
fadd.s f16, f6, f3, rne # perform operation
fadd.s f16, f6, f3, rtz # perform operation
fadd.s f16, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fadd.s f1, f14, f24, dyn # perform operation
fadd.s f1, f14, f24, rdn # perform operation
fadd.s f1, f14, f24, rmm # perform operation
fadd.s f1, f14, f24, rne # perform operation
fadd.s f1, f14, f24, rtz # perform operation
fadd.s f1, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fadd.s f23, f12, f10, dyn # perform operation
fadd.s f23, f12, f10, rdn # perform operation
fadd.s f23, f12, f10, rmm # perform operation
fadd.s f23, f12, f10, rne # perform operation
fadd.s f23, f12, f10, rtz # perform operation
fadd.s f23, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f12, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fadd.s f19, f7, f1, dyn # perform operation
fadd.s f19, f7, f1, rdn # perform operation
fadd.s f19, f7, f1, rmm # perform operation
fadd.s f19, f7, f1, rne # perform operation
fadd.s f19, f7, f1, rtz # perform operation
fadd.s f19, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fadd.s f27, f16, f31, dyn # perform operation
fadd.s f27, f16, f31, rdn # perform operation
fadd.s f27, f16, f31, rmm # perform operation
fadd.s f27, f16, f31, rne # perform operation
fadd.s f27, f16, f31, rtz # perform operation
fadd.s f27, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fadd.s f6, f27, f11, dyn # perform operation
fadd.s f6, f27, f11, rdn # perform operation
fadd.s f6, f27, f11, rmm # perform operation
fadd.s f6, f27, f11, rne # perform operation
fadd.s f6, f27, f11, rtz # perform operation
fadd.s f6, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f27, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fadd.s f2, f3, f8, dyn # perform operation
fadd.s f2, f3, f8, rdn # perform operation
fadd.s f2, f3, f8, rmm # perform operation
fadd.s f2, f3, f8, rne # perform operation
fadd.s f2, f3, f8, rtz # perform operation
fadd.s f2, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fadd.s f15, f31, f22, dyn # perform operation
fadd.s f15, f31, f22, rdn # perform operation
fadd.s f15, f31, f22, rmm # perform operation
fadd.s f15, f31, f22, rne # perform operation
fadd.s f15, f31, f22, rtz # perform operation
fadd.s f15, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f31, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fadd.s f6, f23, f2, dyn # perform operation
fadd.s f6, f23, f2, rdn # perform operation
fadd.s f6, f23, f2, rmm # perform operation
fadd.s f6, f23, f2, rne # perform operation
fadd.s f6, f23, f2, rtz # perform operation
fadd.s f6, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fadd.s f28, f1, f22, dyn # perform operation
fadd.s f28, f1, f22, rdn # perform operation
fadd.s f28, f1, f22, rmm # perform operation
fadd.s f28, f1, f22, rne # perform operation
fadd.s f28, f1, f22, rtz # perform operation
fadd.s f28, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f1, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f3, f15, f22, dyn # perform operation
fadd.s f3, f15, f22, rdn # perform operation
fadd.s f3, f15, f22, rmm # perform operation
fadd.s f3, f15, f22, rne # perform operation
fadd.s f3, f15, f22, rtz # perform operation
fadd.s f3, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fadd.s f7, f18, f14, dyn # perform operation
fadd.s f7, f18, f14, rdn # perform operation
fadd.s f7, f18, f14, rmm # perform operation
fadd.s f7, f18, f14, rne # perform operation
fadd.s f7, f18, f14, rtz # perform operation
fadd.s f7, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fadd.s f24, f6, f28, dyn # perform operation
fadd.s f24, f6, f28, rdn # perform operation
fadd.s f24, f6, f28, rmm # perform operation
fadd.s f24, f6, f28, rne # perform operation
fadd.s f24, f6, f28, rtz # perform operation
fadd.s f24, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f6, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f23, f16, f1, dyn # perform operation
fadd.s f23, f16, f1, rdn # perform operation
fadd.s f23, f16, f1, rmm # perform operation
fadd.s f23, f16, f1, rne # perform operation
fadd.s f23, f16, f1, rtz # perform operation
fadd.s f23, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fadd.s f14, f18, f2, dyn # perform operation
fadd.s f14, f18, f2, rdn # perform operation
fadd.s f14, f18, f2, rmm # perform operation
fadd.s f14, f18, f2, rne # perform operation
fadd.s f14, f18, f2, rtz # perform operation
fadd.s f14, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f18, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fadd.s f21, f30, f25, dyn # perform operation
fadd.s f21, f30, f25, rdn # perform operation
fadd.s f21, f30, f25, rmm # perform operation
fadd.s f21, f30, f25, rne # perform operation
fadd.s f21, f30, f25, rtz # perform operation
fadd.s f21, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fadd.s f13, f12, f28, dyn # perform operation
fadd.s f13, f12, f28, rdn # perform operation
fadd.s f13, f12, f28, rmm # perform operation
fadd.s f13, f12, f28, rne # perform operation
fadd.s f13, f12, f28, rtz # perform operation
fadd.s f13, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fadd.s f28, f13, f21, dyn # perform operation
fadd.s f28, f13, f21, rdn # perform operation
fadd.s f28, f13, f21, rmm # perform operation
fadd.s f28, f13, f21, rne # perform operation
fadd.s f28, f13, f21, rtz # perform operation
fadd.s f28, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f13, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fadd.s f18, f2, f14, dyn # perform operation
fadd.s f18, f2, f14, rdn # perform operation
fadd.s f18, f2, f14, rmm # perform operation
fadd.s f18, f2, f14, rne # perform operation
fadd.s f18, f2, f14, rtz # perform operation
fadd.s f18, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f2, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fadd.s f8, f16, f5, dyn # perform operation
fadd.s f8, f16, f5, rdn # perform operation
fadd.s f8, f16, f5, rmm # perform operation
fadd.s f8, f16, f5, rne # perform operation
fadd.s f8, f16, f5, rtz # perform operation
fadd.s f8, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f16, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fadd.s f26, f25, f29, dyn # perform operation
fadd.s f26, f25, f29, rdn # perform operation
fadd.s f26, f25, f29, rmm # perform operation
fadd.s f26, f25, f29, rne # perform operation
fadd.s f26, f25, f29, rtz # perform operation
fadd.s f26, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fadd.s f14, f20, f5, dyn # perform operation
fadd.s f14, f20, f5, rdn # perform operation
fadd.s f14, f20, f5, rmm # perform operation
fadd.s f14, f20, f5, rne # perform operation
fadd.s f14, f20, f5, rtz # perform operation
fadd.s f14, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f20, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fadd.s f15, f8, f26, dyn # perform operation
fadd.s f15, f8, f26, rdn # perform operation
fadd.s f15, f8, f26, rmm # perform operation
fadd.s f15, f8, f26, rne # perform operation
fadd.s f15, f8, f26, rtz # perform operation
fadd.s f15, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f8, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fadd.s f26, f18, f21, dyn # perform operation
fadd.s f26, f18, f21, rdn # perform operation
fadd.s f26, f18, f21, rmm # perform operation
fadd.s f26, f18, f21, rne # perform operation
fadd.s f26, f18, f21, rtz # perform operation
fadd.s f26, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fadd.s f6, f23, f31, dyn # perform operation
fadd.s f6, f23, f31, rdn # perform operation
fadd.s f6, f23, f31, rmm # perform operation
fadd.s f6, f23, f31, rne # perform operation
fadd.s f6, f23, f31, rtz # perform operation
fadd.s f6, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f23, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fadd.s f15, f11, f29, dyn # perform operation
fadd.s f15, f11, f29, rdn # perform operation
fadd.s f15, f11, f29, rmm # perform operation
fadd.s f15, f11, f29, rne # perform operation
fadd.s f15, f11, f29, rtz # perform operation
fadd.s f15, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fadd.s f6, f24, f3, dyn # perform operation
fadd.s f6, f24, f3, rdn # perform operation
fadd.s f6, f24, f3, rmm # perform operation
fadd.s f6, f24, f3, rne # perform operation
fadd.s f6, f24, f3, rtz # perform operation
fadd.s f6, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f19, f11, f29, dyn # perform operation
fadd.s f19, f11, f29, rdn # perform operation
fadd.s f19, f11, f29, rmm # perform operation
fadd.s f19, f11, f29, rne # perform operation
fadd.s f19, f11, f29, rtz # perform operation
fadd.s f19, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f11, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fadd.s f31, f8, f7, dyn # perform operation
fadd.s f31, f8, f7, rdn # perform operation
fadd.s f31, f8, f7, rmm # perform operation
fadd.s f31, f8, f7, rne # perform operation
fadd.s f31, f8, f7, rtz # perform operation
fadd.s f31, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fadd.s f8, f21, f19, dyn # perform operation
fadd.s f8, f21, f19, rdn # perform operation
fadd.s f8, f21, f19, rmm # perform operation
fadd.s f8, f21, f19, rne # perform operation
fadd.s f8, f21, f19, rtz # perform operation
fadd.s f8, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f21, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fadd.s f8, f1, f2, dyn # perform operation
fadd.s f8, f1, f2, rdn # perform operation
fadd.s f8, f1, f2, rmm # perform operation
fadd.s f8, f1, f2, rne # perform operation
fadd.s f8, f1, f2, rtz # perform operation
fadd.s f8, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fadd.s f9, f24, f31, dyn # perform operation
fadd.s f9, f24, f31, rdn # perform operation
fadd.s f9, f24, f31, rmm # perform operation
fadd.s f9, f24, f31, rne # perform operation
fadd.s f9, f24, f31, rtz # perform operation
fadd.s f9, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fadd.s f5, f13, f28, dyn # perform operation
fadd.s f5, f13, f28, rdn # perform operation
fadd.s f5, f13, f28, rmm # perform operation
fadd.s f5, f13, f28, rne # perform operation
fadd.s f5, f13, f28, rtz # perform operation
fadd.s f5, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fadd.s f30, f17, f21, dyn # perform operation
fadd.s f30, f17, f21, rdn # perform operation
fadd.s f30, f17, f21, rmm # perform operation
fadd.s f30, f17, f21, rne # perform operation
fadd.s f30, f17, f21, rtz # perform operation
fadd.s f30, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fadd.s f8, f21, f7, dyn # perform operation
fadd.s f8, f21, f7, rdn # perform operation
fadd.s f8, f21, f7, rmm # perform operation
fadd.s f8, f21, f7, rne # perform operation
fadd.s f8, f21, f7, rtz # perform operation
fadd.s f8, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f21, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fadd.s f8, f13, f17, dyn # perform operation
fadd.s f8, f13, f17, rdn # perform operation
fadd.s f8, f13, f17, rmm # perform operation
fadd.s f8, f13, f17, rne # perform operation
fadd.s f8, f13, f17, rtz # perform operation
fadd.s f8, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fadd.s f26, f15, f24, dyn # perform operation
fadd.s f26, f15, f24, rdn # perform operation
fadd.s f26, f15, f24, rmm # perform operation
fadd.s f26, f15, f24, rne # perform operation
fadd.s f26, f15, f24, rtz # perform operation
fadd.s f26, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fadd.s f29, f9, f2, dyn # perform operation
fadd.s f29, f9, f2, rdn # perform operation
fadd.s f29, f9, f2, rmm # perform operation
fadd.s f29, f9, f2, rne # perform operation
fadd.s f29, f9, f2, rtz # perform operation
fadd.s f29, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fadd.s f10, f1, f27, dyn # perform operation
fadd.s f10, f1, f27, rdn # perform operation
fadd.s f10, f1, f27, rmm # perform operation
fadd.s f10, f1, f27, rne # perform operation
fadd.s f10, f1, f27, rtz # perform operation
fadd.s f10, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fadd.s f11, f19, f3, dyn # perform operation
fadd.s f11, f19, f3, rdn # perform operation
fadd.s f11, f19, f3, rmm # perform operation
fadd.s f11, f19, f3, rne # perform operation
fadd.s f11, f19, f3, rtz # perform operation
fadd.s f11, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fadd.s f5, f17, f3, dyn # perform operation
fadd.s f5, f17, f3, rdn # perform operation
fadd.s f5, f17, f3, rmm # perform operation
fadd.s f5, f17, f3, rne # perform operation
fadd.s f5, f17, f3, rtz # perform operation
fadd.s f5, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f17, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fadd.s f2, f8, f22, dyn # perform operation
fadd.s f2, f8, f22, rdn # perform operation
fadd.s f2, f8, f22, rmm # perform operation
fadd.s f2, f8, f22, rne # perform operation
fadd.s f2, f8, f22, rtz # perform operation
fadd.s f2, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fadd.s f25, f18, f31, dyn # perform operation
fadd.s f25, f18, f31, rdn # perform operation
fadd.s f25, f18, f31, rmm # perform operation
fadd.s f25, f18, f31, rne # perform operation
fadd.s f25, f18, f31, rtz # perform operation
fadd.s f25, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f10, f19, f18, dyn # perform operation
fadd.s f10, f19, f18, rdn # perform operation
fadd.s f10, f19, f18, rmm # perform operation
fadd.s f10, f19, f18, rne # perform operation
fadd.s f10, f19, f18, rtz # perform operation
fadd.s f10, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fadd.s f12, f31, f2, dyn # perform operation
fadd.s f12, f31, f2, rdn # perform operation
fadd.s f12, f31, f2, rmm # perform operation
fadd.s f12, f31, f2, rne # perform operation
fadd.s f12, f31, f2, rtz # perform operation
fadd.s f12, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f24, 0(x2) # load 0xffbfffff from memory into f24
fadd.s f17, f7, f24, dyn # perform operation
fadd.s f17, f7, f24, rdn # perform operation
fadd.s f17, f7, f24, rmm # perform operation
fadd.s f17, f7, f24, rne # perform operation
fadd.s f17, f7, f24, rtz # perform operation
fadd.s f17, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fadd.s f7, f20, f11, dyn # perform operation
fadd.s f7, f20, f11, rdn # perform operation
fadd.s f7, f20, f11, rmm # perform operation
fadd.s f7, f20, f11, rne # perform operation
fadd.s f7, f20, f11, rtz # perform operation
fadd.s f7, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f20, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f9, f21, f20, dyn # perform operation
fadd.s f9, f21, f20, rdn # perform operation
fadd.s f9, f21, f20, rmm # perform operation
fadd.s f9, f21, f20, rne # perform operation
fadd.s f9, f21, f20, rtz # perform operation
fadd.s f9, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f21, f31, f9, dyn # perform operation
fadd.s f21, f31, f9, rdn # perform operation
fadd.s f21, f31, f9, rmm # perform operation
fadd.s f21, f31, f9, rne # perform operation
fadd.s f21, f31, f9, rtz # perform operation
fadd.s f21, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f31, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fadd.s f9, f24, f12, dyn # perform operation
fadd.s f9, f24, f12, rdn # perform operation
fadd.s f9, f24, f12, rmm # perform operation
fadd.s f9, f24, f12, rne # perform operation
fadd.s f9, f24, f12, rtz # perform operation
fadd.s f9, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fadd.s f28, f3, f30, dyn # perform operation
fadd.s f28, f3, f30, rdn # perform operation
fadd.s f28, f3, f30, rmm # perform operation
fadd.s f28, f3, f30, rne # perform operation
fadd.s f28, f3, f30, rtz # perform operation
fadd.s f28, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f3, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fadd.s f17, f15, f9, dyn # perform operation
fadd.s f17, f15, f9, rdn # perform operation
fadd.s f17, f15, f9, rmm # perform operation
fadd.s f17, f15, f9, rne # perform operation
fadd.s f17, f15, f9, rtz # perform operation
fadd.s f17, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f15, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fadd.s f3, f28, f21, dyn # perform operation
fadd.s f3, f28, f21, rdn # perform operation
fadd.s f3, f28, f21, rmm # perform operation
fadd.s f3, f28, f21, rne # perform operation
fadd.s f3, f28, f21, rtz # perform operation
fadd.s f3, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f28, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fadd.s f9, f12, f16, dyn # perform operation
fadd.s f9, f12, f16, rdn # perform operation
fadd.s f9, f12, f16, rmm # perform operation
fadd.s f9, f12, f16, rne # perform operation
fadd.s f9, f12, f16, rtz # perform operation
fadd.s f9, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fadd.s f22, f17, f9, dyn # perform operation
fadd.s f22, f17, f9, rdn # perform operation
fadd.s f22, f17, f9, rmm # perform operation
fadd.s f22, f17, f9, rne # perform operation
fadd.s f22, f17, f9, rtz # perform operation
fadd.s f22, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f17, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fadd.s f1, f2, f21, dyn # perform operation
fadd.s f1, f2, f21, rdn # perform operation
fadd.s f1, f2, f21, rmm # perform operation
fadd.s f1, f2, f21, rne # perform operation
fadd.s f1, f2, f21, rtz # perform operation
fadd.s f1, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fadd.s f1, f29, f5, dyn # perform operation
fadd.s f1, f29, f5, rdn # perform operation
fadd.s f1, f29, f5, rmm # perform operation
fadd.s f1, f29, f5, rne # perform operation
fadd.s f1, f29, f5, rtz # perform operation
fadd.s f1, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fadd.s f10, f30, f29, dyn # perform operation
fadd.s f10, f30, f29, rdn # perform operation
fadd.s f10, f30, f29, rmm # perform operation
fadd.s f10, f30, f29, rne # perform operation
fadd.s f10, f30, f29, rtz # perform operation
fadd.s f10, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fadd.s f20, f11, f31, dyn # perform operation
fadd.s f20, f11, f31, rdn # perform operation
fadd.s f20, f11, f31, rmm # perform operation
fadd.s f20, f11, f31, rne # perform operation
fadd.s f20, f11, f31, rtz # perform operation
fadd.s f20, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fadd.s f17, f1, f21, dyn # perform operation
fadd.s f17, f1, f21, rdn # perform operation
fadd.s f17, f1, f21, rmm # perform operation
fadd.s f17, f1, f21, rne # perform operation
fadd.s f17, f1, f21, rtz # perform operation
fadd.s f17, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f1, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fadd.s f13, f27, f20, dyn # perform operation
fadd.s f13, f27, f20, rdn # perform operation
fadd.s f13, f27, f20, rmm # perform operation
fadd.s f13, f27, f20, rne # perform operation
fadd.s f13, f27, f20, rtz # perform operation
fadd.s f13, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f27, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fadd.s f16, f1, f28, dyn # perform operation
fadd.s f16, f1, f28, rdn # perform operation
fadd.s f16, f1, f28, rmm # perform operation
fadd.s f16, f1, f28, rne # perform operation
fadd.s f16, f1, f28, rtz # perform operation
fadd.s f16, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f1, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fadd.s f1, f14, f7, dyn # perform operation
fadd.s f1, f14, f7, rdn # perform operation
fadd.s f1, f14, f7, rmm # perform operation
fadd.s f1, f14, f7, rne # perform operation
fadd.s f1, f14, f7, rtz # perform operation
fadd.s f1, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f14, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fadd.s f7, f9, f1, dyn # perform operation
fadd.s f7, f9, f1, rdn # perform operation
fadd.s f7, f9, f1, rmm # perform operation
fadd.s f7, f9, f1, rne # perform operation
fadd.s f7, f9, f1, rtz # perform operation
fadd.s f7, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f9, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fadd.s f17, f15, f21, dyn # perform operation
fadd.s f17, f15, f21, rdn # perform operation
fadd.s f17, f15, f21, rmm # perform operation
fadd.s f17, f15, f21, rne # perform operation
fadd.s f17, f15, f21, rtz # perform operation
fadd.s f17, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fadd.s f7, f31, f20, dyn # perform operation
fadd.s f7, f31, f20, rdn # perform operation
fadd.s f7, f31, f20, rmm # perform operation
fadd.s f7, f31, f20, rne # perform operation
fadd.s f7, f31, f20, rtz # perform operation
fadd.s f7, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f31, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f25, f10, f6, dyn # perform operation
fadd.s f25, f10, f6, rdn # perform operation
fadd.s f25, f10, f6, rmm # perform operation
fadd.s f25, f10, f6, rne # perform operation
fadd.s f25, f10, f6, rtz # perform operation
fadd.s f25, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f10, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fadd.s f24, f19, f12, dyn # perform operation
fadd.s f24, f19, f12, rdn # perform operation
fadd.s f24, f19, f12, rmm # perform operation
fadd.s f24, f19, f12, rne # perform operation
fadd.s f24, f19, f12, rtz # perform operation
fadd.s f24, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fadd.s f26, f23, f24, dyn # perform operation
fadd.s f26, f23, f24, rdn # perform operation
fadd.s f26, f23, f24, rmm # perform operation
fadd.s f26, f23, f24, rne # perform operation
fadd.s f26, f23, f24, rtz # perform operation
fadd.s f26, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fadd.s f9, f2, f22, dyn # perform operation
fadd.s f9, f2, f22, rdn # perform operation
fadd.s f9, f2, f22, rmm # perform operation
fadd.s f9, f2, f22, rne # perform operation
fadd.s f9, f2, f22, rtz # perform operation
fadd.s f9, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f2, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fadd.s f29, f24, f31, dyn # perform operation
fadd.s f29, f24, f31, rdn # perform operation
fadd.s f29, f24, f31, rmm # perform operation
fadd.s f29, f24, f31, rne # perform operation
fadd.s f29, f24, f31, rtz # perform operation
fadd.s f29, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fadd.s f21, f12, f27, dyn # perform operation
fadd.s f21, f12, f27, rdn # perform operation
fadd.s f21, f12, f27, rmm # perform operation
fadd.s f21, f12, f27, rne # perform operation
fadd.s f21, f12, f27, rtz # perform operation
fadd.s f21, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f12, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fadd.s f20, f19, f9, dyn # perform operation
fadd.s f20, f19, f9, rdn # perform operation
fadd.s f20, f19, f9, rmm # perform operation
fadd.s f20, f19, f9, rne # perform operation
fadd.s f20, f19, f9, rtz # perform operation
fadd.s f20, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f19, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fadd.s f11, f30, f3, dyn # perform operation
fadd.s f11, f30, f3, rdn # perform operation
fadd.s f11, f30, f3, rmm # perform operation
fadd.s f11, f30, f3, rne # perform operation
fadd.s f11, f30, f3, rtz # perform operation
fadd.s f11, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fadd.s f27, f18, f14, dyn # perform operation
fadd.s f27, f18, f14, rdn # perform operation
fadd.s f27, f18, f14, rmm # perform operation
fadd.s f27, f18, f14, rne # perform operation
fadd.s f27, f18, f14, rtz # perform operation
fadd.s f27, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fadd.s f30, f2, f21, dyn # perform operation
fadd.s f30, f2, f21, rdn # perform operation
fadd.s f30, f2, f21, rmm # perform operation
fadd.s f30, f2, f21, rne # perform operation
fadd.s f30, f2, f21, rtz # perform operation
fadd.s f30, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fadd.s f5, f18, f22, dyn # perform operation
fadd.s f5, f18, f22, rdn # perform operation
fadd.s f5, f18, f22, rmm # perform operation
fadd.s f5, f18, f22, rne # perform operation
fadd.s f5, f18, f22, rtz # perform operation
fadd.s f5, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f18, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fadd.s f8, f5, f13, dyn # perform operation
fadd.s f8, f5, f13, rdn # perform operation
fadd.s f8, f5, f13, rmm # perform operation
fadd.s f8, f5, f13, rne # perform operation
fadd.s f8, f5, f13, rtz # perform operation
fadd.s f8, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f5, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fadd.s f10, f21, f22, dyn # perform operation
fadd.s f10, f21, f22, rdn # perform operation
fadd.s f10, f21, f22, rmm # perform operation
fadd.s f10, f21, f22, rne # perform operation
fadd.s f10, f21, f22, rtz # perform operation
fadd.s f10, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f5, f31, f18, dyn # perform operation
fadd.s f5, f31, f18, rdn # perform operation
fadd.s f5, f31, f18, rmm # perform operation
fadd.s f5, f31, f18, rne # perform operation
fadd.s f5, f31, f18, rtz # perform operation
fadd.s f5, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f31, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fadd.s f13, f18, f11, dyn # perform operation
fadd.s f13, f18, f11, rdn # perform operation
fadd.s f13, f18, f11, rmm # perform operation
fadd.s f13, f18, f11, rne # perform operation
fadd.s f13, f18, f11, rtz # perform operation
fadd.s f13, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fadd.s f19, f5, f2, dyn # perform operation
fadd.s f19, f5, f2, rdn # perform operation
fadd.s f19, f5, f2, rmm # perform operation
fadd.s f19, f5, f2, rne # perform operation
fadd.s f19, f5, f2, rtz # perform operation
fadd.s f19, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f5, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fadd.s f25, f23, f17, dyn # perform operation
fadd.s f25, f23, f17, rdn # perform operation
fadd.s f25, f23, f17, rmm # perform operation
fadd.s f25, f23, f17, rne # perform operation
fadd.s f25, f23, f17, rtz # perform operation
fadd.s f25, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f26, f28, f29, dyn # perform operation
fadd.s f26, f28, f29, rdn # perform operation
fadd.s f26, f28, f29, rmm # perform operation
fadd.s f26, f28, f29, rne # perform operation
fadd.s f26, f28, f29, rtz # perform operation
fadd.s f26, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f28, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fadd.s f30, f20, f22, dyn # perform operation
fadd.s f30, f20, f22, rdn # perform operation
fadd.s f30, f20, f22, rmm # perform operation
fadd.s f30, f20, f22, rne # perform operation
fadd.s f30, f20, f22, rtz # perform operation
fadd.s f30, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f20, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fadd.s f18, f30, f22, dyn # perform operation
fadd.s f18, f30, f22, rdn # perform operation
fadd.s f18, f30, f22, rmm # perform operation
fadd.s f18, f30, f22, rne # perform operation
fadd.s f18, f30, f22, rtz # perform operation
fadd.s f18, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f30, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fadd.s f2, f1, f10, dyn # perform operation
fadd.s f2, f1, f10, rdn # perform operation
fadd.s f2, f1, f10, rmm # perform operation
fadd.s f2, f1, f10, rne # perform operation
fadd.s f2, f1, f10, rtz # perform operation
fadd.s f2, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f1, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fadd.s f12, f29, f1, dyn # perform operation
fadd.s f12, f29, f1, rdn # perform operation
fadd.s f12, f29, f1, rmm # perform operation
fadd.s f12, f29, f1, rne # perform operation
fadd.s f12, f29, f1, rtz # perform operation
fadd.s f12, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f29, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fadd.s f20, f14, f5, dyn # perform operation
fadd.s f20, f14, f5, rdn # perform operation
fadd.s f20, f14, f5, rmm # perform operation
fadd.s f20, f14, f5, rne # perform operation
fadd.s f20, f14, f5, rtz # perform operation
fadd.s f20, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fadd.s f1, f13, f19, dyn # perform operation
fadd.s f1, f13, f19, rdn # perform operation
fadd.s f1, f13, f19, rmm # perform operation
fadd.s f1, f13, f19, rne # perform operation
fadd.s f1, f13, f19, rtz # perform operation
fadd.s f1, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f13, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fadd.s f27, f28, f10, dyn # perform operation
fadd.s f27, f28, f10, rdn # perform operation
fadd.s f27, f28, f10, rmm # perform operation
fadd.s f27, f28, f10, rne # perform operation
fadd.s f27, f28, f10, rtz # perform operation
fadd.s f27, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f28, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fadd.s f30, f11, f17, dyn # perform operation
fadd.s f30, f11, f17, rdn # perform operation
fadd.s f30, f11, f17, rmm # perform operation
fadd.s f30, f11, f17, rne # perform operation
fadd.s f30, f11, f17, rtz # perform operation
fadd.s f30, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fadd.s f7, f5, f31, dyn # perform operation
fadd.s f7, f5, f31, rdn # perform operation
fadd.s f7, f5, f31, rmm # perform operation
fadd.s f7, f5, f31, rne # perform operation
fadd.s f7, f5, f31, rtz # perform operation
fadd.s f7, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f5, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fadd.s f7, f28, f2, dyn # perform operation
fadd.s f7, f28, f2, rdn # perform operation
fadd.s f7, f28, f2, rmm # perform operation
fadd.s f7, f28, f2, rne # perform operation
fadd.s f7, f28, f2, rtz # perform operation
fadd.s f7, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fadd.s f25, f14, f31, dyn # perform operation
fadd.s f25, f14, f31, rdn # perform operation
fadd.s f25, f14, f31, rmm # perform operation
fadd.s f25, f14, f31, rne # perform operation
fadd.s f25, f14, f31, rtz # perform operation
fadd.s f25, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f14, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fadd.s f24, f15, f19, dyn # perform operation
fadd.s f24, f15, f19, rdn # perform operation
fadd.s f24, f15, f19, rmm # perform operation
fadd.s f24, f15, f19, rne # perform operation
fadd.s f24, f15, f19, rtz # perform operation
fadd.s f24, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fadd.s f3, f15, f7, dyn # perform operation
fadd.s f3, f15, f7, rdn # perform operation
fadd.s f3, f15, f7, rmm # perform operation
fadd.s f3, f15, f7, rne # perform operation
fadd.s f3, f15, f7, rtz # perform operation
fadd.s f3, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fadd.s f13, f6, f26, dyn # perform operation
fadd.s f13, f6, f26, rdn # perform operation
fadd.s f13, f6, f26, rmm # perform operation
fadd.s f13, f6, f26, rne # perform operation
fadd.s f13, f6, f26, rtz # perform operation
fadd.s f13, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f25, 0(x2) # load 0xffffffff from memory into f25
fadd.s f20, f29, f25, dyn # perform operation
fadd.s f20, f29, f25, rdn # perform operation
fadd.s f20, f29, f25, rmm # perform operation
fadd.s f20, f29, f25, rne # perform operation
fadd.s f20, f29, f25, rtz # perform operation
fadd.s f20, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fadd.s f18, f9, f28, dyn # perform operation
fadd.s f18, f9, f28, rdn # perform operation
fadd.s f18, f9, f28, rmm # perform operation
fadd.s f18, f9, f28, rne # perform operation
fadd.s f18, f9, f28, rtz # perform operation
fadd.s f18, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fadd.s f7, f21, f23, dyn # perform operation
fadd.s f7, f21, f23, rdn # perform operation
fadd.s f7, f21, f23, rmm # perform operation
fadd.s f7, f21, f23, rne # perform operation
fadd.s f7, f21, f23, rtz # perform operation
fadd.s f7, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
fadd.s f27, f16, f1, dyn # perform operation
fadd.s f27, f16, f1, rdn # perform operation
fadd.s f27, f16, f1, rmm # perform operation
fadd.s f27, f16, f1, rne # perform operation
fadd.s f27, f16, f1, rtz # perform operation
fadd.s f27, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f16, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fadd.s f27, f22, f6, dyn # perform operation
fadd.s f27, f22, f6, rdn # perform operation
fadd.s f27, f22, f6, rmm # perform operation
fadd.s f27, f22, f6, rne # perform operation
fadd.s f27, f22, f6, rtz # perform operation
fadd.s f27, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fadd.s f3, f11, f31, dyn # perform operation
fadd.s f3, f11, f31, rdn # perform operation
fadd.s f3, f11, f31, rmm # perform operation
fadd.s f3, f11, f31, rne # perform operation
fadd.s f3, f11, f31, rtz # perform operation
fadd.s f3, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f11, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fadd.s f10, f6, f15, dyn # perform operation
fadd.s f10, f6, f15, rdn # perform operation
fadd.s f10, f6, f15, rmm # perform operation
fadd.s f10, f6, f15, rne # perform operation
fadd.s f10, f6, f15, rtz # perform operation
fadd.s f10, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f6, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fadd.s f14, f21, f22, dyn # perform operation
fadd.s f14, f21, f22, rdn # perform operation
fadd.s f14, f21, f22, rmm # perform operation
fadd.s f14, f21, f22, rne # perform operation
fadd.s f14, f21, f22, rtz # perform operation
fadd.s f14, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f28, f25, f1, dyn # perform operation
fadd.s f28, f25, f1, rdn # perform operation
fadd.s f28, f25, f1, rmm # perform operation
fadd.s f28, f25, f1, rne # perform operation
fadd.s f28, f25, f1, rtz # perform operation
fadd.s f28, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f30, f11, f3, dyn # perform operation
fadd.s f30, f11, f3, rdn # perform operation
fadd.s f30, f11, f3, rmm # perform operation
fadd.s f30, f11, f3, rne # perform operation
fadd.s f30, f11, f3, rtz # perform operation
fadd.s f30, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fadd.s f15, f29, f5, dyn # perform operation
fadd.s f15, f29, f5, rdn # perform operation
fadd.s f15, f29, f5, rmm # perform operation
fadd.s f15, f29, f5, rne # perform operation
fadd.s f15, f29, f5, rtz # perform operation
fadd.s f15, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f29, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fadd.s f31, f28, f26, dyn # perform operation
fadd.s f31, f28, f26, rdn # perform operation
fadd.s f31, f28, f26, rmm # perform operation
fadd.s f31, f28, f26, rne # perform operation
fadd.s f31, f28, f26, rtz # perform operation
fadd.s f31, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fadd.s f8, f30, f29, dyn # perform operation
fadd.s f8, f30, f29, rdn # perform operation
fadd.s f8, f30, f29, rmm # perform operation
fadd.s f8, f30, f29, rne # perform operation
fadd.s f8, f30, f29, rtz # perform operation
fadd.s f8, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fadd.s f10, f30, f26, dyn # perform operation
fadd.s f10, f30, f26, rdn # perform operation
fadd.s f10, f30, f26, rmm # perform operation
fadd.s f10, f30, f26, rne # perform operation
fadd.s f10, f30, f26, rtz # perform operation
fadd.s f10, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f30, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f13, f31, f19, dyn # perform operation
fadd.s f13, f31, f19, rdn # perform operation
fadd.s f13, f31, f19, rmm # perform operation
fadd.s f13, f31, f19, rne # perform operation
fadd.s f13, f31, f19, rtz # perform operation
fadd.s f13, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f31, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f25, f29, f28, dyn # perform operation
fadd.s f25, f29, f28, rdn # perform operation
fadd.s f25, f29, f28, rmm # perform operation
fadd.s f25, f29, f28, rne # perform operation
fadd.s f25, f29, f28, rtz # perform operation
fadd.s f25, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fadd.s f11, f12, f29, dyn # perform operation
fadd.s f11, f12, f29, rdn # perform operation
fadd.s f11, f12, f29, rmm # perform operation
fadd.s f11, f12, f29, rne # perform operation
fadd.s f11, f12, f29, rtz # perform operation
fadd.s f11, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fadd.s f11, f31, f5, dyn # perform operation
fadd.s f11, f31, f5, rdn # perform operation
fadd.s f11, f31, f5, rmm # perform operation
fadd.s f11, f31, f5, rne # perform operation
fadd.s f11, f31, f5, rtz # perform operation
fadd.s f11, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fadd.s f25, f13, f26, dyn # perform operation
fadd.s f25, f13, f26, rdn # perform operation
fadd.s f25, f13, f26, rmm # perform operation
fadd.s f25, f13, f26, rne # perform operation
fadd.s f25, f13, f26, rtz # perform operation
fadd.s f25, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f13, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fadd.s f27, f23, f6, dyn # perform operation
fadd.s f27, f23, f6, rdn # perform operation
fadd.s f27, f23, f6, rmm # perform operation
fadd.s f27, f23, f6, rne # perform operation
fadd.s f27, f23, f6, rtz # perform operation
fadd.s f27, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f23, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fadd.s f11, f17, f31, dyn # perform operation
fadd.s f11, f17, f31, rdn # perform operation
fadd.s f11, f17, f31, rmm # perform operation
fadd.s f11, f17, f31, rne # perform operation
fadd.s f11, f17, f31, rtz # perform operation
fadd.s f11, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f17, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fadd.s f7, f24, f30, dyn # perform operation
fadd.s f7, f24, f30, rdn # perform operation
fadd.s f7, f24, f30, rmm # perform operation
fadd.s f7, f24, f30, rne # perform operation
fadd.s f7, f24, f30, rtz # perform operation
fadd.s f7, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f24, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fadd.s f18, f31, f14, dyn # perform operation
fadd.s f18, f31, f14, rdn # perform operation
fadd.s f18, f31, f14, rmm # perform operation
fadd.s f18, f31, f14, rne # perform operation
fadd.s f18, f31, f14, rtz # perform operation
fadd.s f18, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fadd.s f14, f23, f2, dyn # perform operation
fadd.s f14, f23, f2, rdn # perform operation
fadd.s f14, f23, f2, rmm # perform operation
fadd.s f14, f23, f2, rne # perform operation
fadd.s f14, f23, f2, rtz # perform operation
fadd.s f14, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fadd.s f22, f21, f18, dyn # perform operation
fadd.s f22, f21, f18, rdn # perform operation
fadd.s f22, f21, f18, rmm # perform operation
fadd.s f22, f21, f18, rne # perform operation
fadd.s f22, f21, f18, rtz # perform operation
fadd.s f22, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fadd.s f13, f21, f23, dyn # perform operation
fadd.s f13, f21, f23, rdn # perform operation
fadd.s f13, f21, f23, rmm # perform operation
fadd.s f13, f21, f23, rne # perform operation
fadd.s f13, f21, f23, rtz # perform operation
fadd.s f13, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f8, f23, f16, dyn # perform operation
fadd.s f8, f23, f16, rdn # perform operation
fadd.s f8, f23, f16, rmm # perform operation
fadd.s f8, f23, f16, rne # perform operation
fadd.s f8, f23, f16, rtz # perform operation
fadd.s f8, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f23, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fadd.s f14, f23, f8, dyn # perform operation
fadd.s f14, f23, f8, rdn # perform operation
fadd.s f14, f23, f8, rmm # perform operation
fadd.s f14, f23, f8, rne # perform operation
fadd.s f14, f23, f8, rtz # perform operation
fadd.s f14, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fadd.s f2, f14, f16, dyn # perform operation
fadd.s f2, f14, f16, rdn # perform operation
fadd.s f2, f14, f16, rmm # perform operation
fadd.s f2, f14, f16, rne # perform operation
fadd.s f2, f14, f16, rtz # perform operation
fadd.s f2, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f14, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f19, f5, f1, dyn # perform operation
fadd.s f19, f5, f1, rdn # perform operation
fadd.s f19, f5, f1, rmm # perform operation
fadd.s f19, f5, f1, rne # perform operation
fadd.s f19, f5, f1, rtz # perform operation
fadd.s f19, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fadd.s f26, f30, f7, dyn # perform operation
fadd.s f26, f30, f7, rdn # perform operation
fadd.s f26, f30, f7, rmm # perform operation
fadd.s f26, f30, f7, rne # perform operation
fadd.s f26, f30, f7, rtz # perform operation
fadd.s f26, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fadd.s f24, f28, f14, dyn # perform operation
fadd.s f24, f28, f14, rdn # perform operation
fadd.s f24, f28, f14, rmm # perform operation
fadd.s f24, f28, f14, rne # perform operation
fadd.s f24, f28, f14, rtz # perform operation
fadd.s f24, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fadd.s f24, f3, f21, dyn # perform operation
fadd.s f24, f3, f21, rdn # perform operation
fadd.s f24, f3, f21, rmm # perform operation
fadd.s f24, f3, f21, rne # perform operation
fadd.s f24, f3, f21, rtz # perform operation
fadd.s f24, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f3, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fadd.s f18, f30, f1, dyn # perform operation
fadd.s f18, f30, f1, rdn # perform operation
fadd.s f18, f30, f1, rmm # perform operation
fadd.s f18, f30, f1, rne # perform operation
fadd.s f18, f30, f1, rtz # perform operation
fadd.s f18, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fadd.s f17, f5, f3, dyn # perform operation
fadd.s f17, f5, f3, rdn # perform operation
fadd.s f17, f5, f3, rmm # perform operation
fadd.s f17, f5, f3, rne # perform operation
fadd.s f17, f5, f3, rtz # perform operation
fadd.s f17, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f5, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fadd.s f11, f29, f19, dyn # perform operation
fadd.s f11, f29, f19, rdn # perform operation
fadd.s f11, f29, f19, rmm # perform operation
fadd.s f11, f29, f19, rne # perform operation
fadd.s f11, f29, f19, rtz # perform operation
fadd.s f11, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f29, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fadd.s f18, f23, f24, dyn # perform operation
fadd.s f18, f23, f24, rdn # perform operation
fadd.s f18, f23, f24, rmm # perform operation
fadd.s f18, f23, f24, rne # perform operation
fadd.s f18, f23, f24, rtz # perform operation
fadd.s f18, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f23, f3, f8, dyn # perform operation
fadd.s f23, f3, f8, rdn # perform operation
fadd.s f23, f3, f8, rmm # perform operation
fadd.s f23, f3, f8, rne # perform operation
fadd.s f23, f3, f8, rtz # perform operation
fadd.s f23, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fadd.s f16, f3, f14, dyn # perform operation
fadd.s f16, f3, f14, rdn # perform operation
fadd.s f16, f3, f14, rmm # perform operation
fadd.s f16, f3, f14, rne # perform operation
fadd.s f16, f3, f14, rtz # perform operation
fadd.s f16, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fadd.s f2, f3, f8, dyn # perform operation
fadd.s f2, f3, f8, rdn # perform operation
fadd.s f2, f3, f8, rmm # perform operation
fadd.s f2, f3, f8, rne # perform operation
fadd.s f2, f3, f8, rtz # perform operation
fadd.s f2, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fadd.s f17, f3, f20, dyn # perform operation
fadd.s f17, f3, f20, rdn # perform operation
fadd.s f17, f3, f20, rmm # perform operation
fadd.s f17, f3, f20, rne # perform operation
fadd.s f17, f3, f20, rtz # perform operation
fadd.s f17, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f3, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fadd.s f22, f25, f9, dyn # perform operation
fadd.s f22, f25, f9, rdn # perform operation
fadd.s f22, f25, f9, rmm # perform operation
fadd.s f22, f25, f9, rne # perform operation
fadd.s f22, f25, f9, rtz # perform operation
fadd.s f22, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f25, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fadd.s f17, f21, f22, dyn # perform operation
fadd.s f17, f21, f22, rdn # perform operation
fadd.s f17, f21, f22, rmm # perform operation
fadd.s f17, f21, f22, rne # perform operation
fadd.s f17, f21, f22, rtz # perform operation
fadd.s f17, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f21, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f15, f30, f10, dyn # perform operation
fadd.s f15, f30, f10, rdn # perform operation
fadd.s f15, f30, f10, rmm # perform operation
fadd.s f15, f30, f10, rne # perform operation
fadd.s f15, f30, f10, rtz # perform operation
fadd.s f15, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fadd.s f14, f10, f20, dyn # perform operation
fadd.s f14, f10, f20, rdn # perform operation
fadd.s f14, f10, f20, rmm # perform operation
fadd.s f14, f10, f20, rne # perform operation
fadd.s f14, f10, f20, rtz # perform operation
fadd.s f14, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f10, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fadd.s f19, f13, f11, dyn # perform operation
fadd.s f19, f13, f11, rdn # perform operation
fadd.s f19, f13, f11, rmm # perform operation
fadd.s f19, f13, f11, rne # perform operation
fadd.s f19, f13, f11, rtz # perform operation
fadd.s f19, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fadd.s f26, f30, f25, dyn # perform operation
fadd.s f26, f30, f25, rdn # perform operation
fadd.s f26, f30, f25, rmm # perform operation
fadd.s f26, f30, f25, rne # perform operation
fadd.s f26, f30, f25, rtz # perform operation
fadd.s f26, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fadd.s f10, f14, f28, dyn # perform operation
fadd.s f10, f14, f28, rdn # perform operation
fadd.s f10, f14, f28, rmm # perform operation
fadd.s f10, f14, f28, rne # perform operation
fadd.s f10, f14, f28, rtz # perform operation
fadd.s f10, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f14, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fadd.s f19, f5, f24, dyn # perform operation
fadd.s f19, f5, f24, rdn # perform operation
fadd.s f19, f5, f24, rmm # perform operation
fadd.s f19, f5, f24, rne # perform operation
fadd.s f19, f5, f24, rtz # perform operation
fadd.s f19, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fadd.s f3, f21, f26, dyn # perform operation
fadd.s f3, f21, f26, rdn # perform operation
fadd.s f3, f21, f26, rmm # perform operation
fadd.s f3, f21, f26, rne # perform operation
fadd.s f3, f21, f26, rtz # perform operation
fadd.s f3, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fadd.s f24, f19, f31, dyn # perform operation
fadd.s f24, f19, f31, rdn # perform operation
fadd.s f24, f19, f31, rmm # perform operation
fadd.s f24, f19, f31, rne # perform operation
fadd.s f24, f19, f31, rtz # perform operation
fadd.s f24, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f19, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fadd.s f27, f1, f5, dyn # perform operation
fadd.s f27, f1, f5, rdn # perform operation
fadd.s f27, f1, f5, rmm # perform operation
fadd.s f27, f1, f5, rne # perform operation
fadd.s f27, f1, f5, rtz # perform operation
fadd.s f27, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fadd.s f11, f21, f29, dyn # perform operation
fadd.s f11, f21, f29, rdn # perform operation
fadd.s f11, f21, f29, rmm # perform operation
fadd.s f11, f21, f29, rne # perform operation
fadd.s f11, f21, f29, rtz # perform operation
fadd.s f11, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fadd.s f20, f5, f9, dyn # perform operation
fadd.s f20, f5, f9, rdn # perform operation
fadd.s f20, f5, f9, rmm # perform operation
fadd.s f20, f5, f9, rne # perform operation
fadd.s f20, f5, f9, rtz # perform operation
fadd.s f20, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f5, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fadd.s f27, f24, f22, dyn # perform operation
fadd.s f27, f24, f22, rdn # perform operation
fadd.s f27, f24, f22, rmm # perform operation
fadd.s f27, f24, f22, rne # perform operation
fadd.s f27, f24, f22, rtz # perform operation
fadd.s f27, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f24, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fadd.s f17, f22, f15, dyn # perform operation
fadd.s f17, f22, f15, rdn # perform operation
fadd.s f17, f22, f15, rmm # perform operation
fadd.s f17, f22, f15, rne # perform operation
fadd.s f17, f22, f15, rtz # perform operation
fadd.s f17, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f22, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fadd.s f1, f27, f24, dyn # perform operation
fadd.s f1, f27, f24, rdn # perform operation
fadd.s f1, f27, f24, rmm # perform operation
fadd.s f1, f27, f24, rne # perform operation
fadd.s f1, f27, f24, rtz # perform operation
fadd.s f1, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fadd.s f19, f11, f7, dyn # perform operation
fadd.s f19, f11, f7, rdn # perform operation
fadd.s f19, f11, f7, rmm # perform operation
fadd.s f19, f11, f7, rne # perform operation
fadd.s f19, f11, f7, rtz # perform operation
fadd.s f19, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fadd.s f16, f14, f26, dyn # perform operation
fadd.s f16, f14, f26, rdn # perform operation
fadd.s f16, f14, f26, rmm # perform operation
fadd.s f16, f14, f26, rne # perform operation
fadd.s f16, f14, f26, rtz # perform operation
fadd.s f16, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f14, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f15, 0(x2) # load 0xffbfffff from memory into f15
fadd.s f6, f23, f15, dyn # perform operation
fadd.s f6, f23, f15, rdn # perform operation
fadd.s f6, f23, f15, rmm # perform operation
fadd.s f6, f23, f15, rne # perform operation
fadd.s f6, f23, f15, rtz # perform operation
fadd.s f6, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f23, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fadd.s f28, f30, f3, dyn # perform operation
fadd.s f28, f30, f3, rdn # perform operation
fadd.s f28, f30, f3, rmm # perform operation
fadd.s f28, f30, f3, rne # perform operation
fadd.s f28, f30, f3, rtz # perform operation
fadd.s f28, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f30, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fadd.s f8, f25, f29, dyn # perform operation
fadd.s f8, f25, f29, rdn # perform operation
fadd.s f8, f25, f29, rmm # perform operation
fadd.s f8, f25, f29, rne # perform operation
fadd.s f8, f25, f29, rtz # perform operation
fadd.s f8, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f25, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fadd.s f19, f10, f17, dyn # perform operation
fadd.s f19, f10, f17, rdn # perform operation
fadd.s f19, f10, f17, rmm # perform operation
fadd.s f19, f10, f17, rne # perform operation
fadd.s f19, f10, f17, rtz # perform operation
fadd.s f19, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f10, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f16, f14, f18, dyn # perform operation
fadd.s f16, f14, f18, rdn # perform operation
fadd.s f16, f14, f18, rmm # perform operation
fadd.s f16, f14, f18, rne # perform operation
fadd.s f16, f14, f18, rtz # perform operation
fadd.s f16, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f14, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fadd.s f28, f16, f21, dyn # perform operation
fadd.s f28, f16, f21, rdn # perform operation
fadd.s f28, f16, f21, rmm # perform operation
fadd.s f28, f16, f21, rne # perform operation
fadd.s f28, f16, f21, rtz # perform operation
fadd.s f28, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f16, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fadd.s f31, f20, f24, dyn # perform operation
fadd.s f31, f20, f24, rdn # perform operation
fadd.s f31, f20, f24, rmm # perform operation
fadd.s f31, f20, f24, rne # perform operation
fadd.s f31, f20, f24, rtz # perform operation
fadd.s f31, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fadd.s f3, f28, f12, dyn # perform operation
fadd.s f3, f28, f12, rdn # perform operation
fadd.s f3, f28, f12, rmm # perform operation
fadd.s f3, f28, f12, rne # perform operation
fadd.s f3, f28, f12, rtz # perform operation
fadd.s f3, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f28, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fadd.s f15, f24, f19, dyn # perform operation
fadd.s f15, f24, f19, rdn # perform operation
fadd.s f15, f24, f19, rmm # perform operation
fadd.s f15, f24, f19, rne # perform operation
fadd.s f15, f24, f19, rtz # perform operation
fadd.s f15, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f24, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fadd.s f20, f13, f8, dyn # perform operation
fadd.s f20, f13, f8, rdn # perform operation
fadd.s f20, f13, f8, rmm # perform operation
fadd.s f20, f13, f8, rne # perform operation
fadd.s f20, f13, f8, rtz # perform operation
fadd.s f20, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f13, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fadd.s f7, f16, f31, dyn # perform operation
fadd.s f7, f16, f31, rdn # perform operation
fadd.s f7, f16, f31, rmm # perform operation
fadd.s f7, f16, f31, rne # perform operation
fadd.s f7, f16, f31, rtz # perform operation
fadd.s f7, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f10, f23, f3, dyn # perform operation
fadd.s f10, f23, f3, rdn # perform operation
fadd.s f10, f23, f3, rmm # perform operation
fadd.s f10, f23, f3, rne # perform operation
fadd.s f10, f23, f3, rtz # perform operation
fadd.s f10, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fadd.s f14, f6, f13, dyn # perform operation
fadd.s f14, f6, f13, rdn # perform operation
fadd.s f14, f6, f13, rmm # perform operation
fadd.s f14, f6, f13, rne # perform operation
fadd.s f14, f6, f13, rtz # perform operation
fadd.s f14, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f6, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f27, f29, f7, dyn # perform operation
fadd.s f27, f29, f7, rdn # perform operation
fadd.s f27, f29, f7, rmm # perform operation
fadd.s f27, f29, f7, rne # perform operation
fadd.s f27, f29, f7, rtz # perform operation
fadd.s f27, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fadd.s f19, f31, f8, dyn # perform operation
fadd.s f19, f31, f8, rdn # perform operation
fadd.s f19, f31, f8, rmm # perform operation
fadd.s f19, f31, f8, rne # perform operation
fadd.s f19, f31, f8, rtz # perform operation
fadd.s f19, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fadd.s f25, f21, f5, dyn # perform operation
fadd.s f25, f21, f5, rdn # perform operation
fadd.s f25, f21, f5, rmm # perform operation
fadd.s f25, f21, f5, rne # perform operation
fadd.s f25, f21, f5, rtz # perform operation
fadd.s f25, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f21, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fadd.s f27, f23, f3, dyn # perform operation
fadd.s f27, f23, f3, rdn # perform operation
fadd.s f27, f23, f3, rmm # perform operation
fadd.s f27, f23, f3, rne # perform operation
fadd.s f27, f23, f3, rtz # perform operation
fadd.s f27, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fadd.s f5, f20, f9, dyn # perform operation
fadd.s f5, f20, f9, rdn # perform operation
fadd.s f5, f20, f9, rmm # perform operation
fadd.s f5, f20, f9, rne # perform operation
fadd.s f5, f20, f9, rtz # perform operation
fadd.s f5, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f20, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fadd.s f12, f22, f24, dyn # perform operation
fadd.s f12, f22, f24, rdn # perform operation
fadd.s f12, f22, f24, rmm # perform operation
fadd.s f12, f22, f24, rne # perform operation
fadd.s f12, f22, f24, rtz # perform operation
fadd.s f12, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f22, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fadd.s f7, f27, f24, dyn # perform operation
fadd.s f7, f27, f24, rdn # perform operation
fadd.s f7, f27, f24, rmm # perform operation
fadd.s f7, f27, f24, rne # perform operation
fadd.s f7, f27, f24, rtz # perform operation
fadd.s f7, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f27, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fadd.s f27, f16, f28, dyn # perform operation
fadd.s f27, f16, f28, rdn # perform operation
fadd.s f27, f16, f28, rmm # perform operation
fadd.s f27, f16, f28, rne # perform operation
fadd.s f27, f16, f28, rtz # perform operation
fadd.s f27, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f16, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fadd.s f20, f29, f11, dyn # perform operation
fadd.s f20, f29, f11, rdn # perform operation
fadd.s f20, f29, f11, rmm # perform operation
fadd.s f20, f29, f11, rne # perform operation
fadd.s f20, f29, f11, rtz # perform operation
fadd.s f20, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f29, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fadd.s f5, f9, f28, dyn # perform operation
fadd.s f5, f9, f28, rdn # perform operation
fadd.s f5, f9, f28, rmm # perform operation
fadd.s f5, f9, f28, rne # perform operation
fadd.s f5, f9, f28, rtz # perform operation
fadd.s f5, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f9, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f14, f21, f16, dyn # perform operation
fadd.s f14, f21, f16, rdn # perform operation
fadd.s f14, f21, f16, rmm # perform operation
fadd.s f14, f21, f16, rne # perform operation
fadd.s f14, f21, f16, rtz # perform operation
fadd.s f14, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f21, f5, f1, dyn # perform operation
fadd.s f21, f5, f1, rdn # perform operation
fadd.s f21, f5, f1, rmm # perform operation
fadd.s f21, f5, f1, rne # perform operation
fadd.s f21, f5, f1, rtz # perform operation
fadd.s f21, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fadd.s f20, f11, f5, dyn # perform operation
fadd.s f20, f11, f5, rdn # perform operation
fadd.s f20, f11, f5, rmm # perform operation
fadd.s f20, f11, f5, rne # perform operation
fadd.s f20, f11, f5, rtz # perform operation
fadd.s f20, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f11, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fadd.s f31, f27, f19, dyn # perform operation
fadd.s f31, f27, f19, rdn # perform operation
fadd.s f31, f27, f19, rmm # perform operation
fadd.s f31, f27, f19, rne # perform operation
fadd.s f31, f27, f19, rtz # perform operation
fadd.s f31, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fadd.s f16, f7, f9, dyn # perform operation
fadd.s f16, f7, f9, rdn # perform operation
fadd.s f16, f7, f9, rmm # perform operation
fadd.s f16, f7, f9, rne # perform operation
fadd.s f16, f7, f9, rtz # perform operation
fadd.s f16, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f7, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fadd.s f16, f8, f19, dyn # perform operation
fadd.s f16, f8, f19, rdn # perform operation
fadd.s f16, f8, f19, rmm # perform operation
fadd.s f16, f8, f19, rne # perform operation
fadd.s f16, f8, f19, rtz # perform operation
fadd.s f16, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f8, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fadd.s f20, f11, f21, dyn # perform operation
fadd.s f20, f11, f21, rdn # perform operation
fadd.s f20, f11, f21, rmm # perform operation
fadd.s f20, f11, f21, rne # perform operation
fadd.s f20, f11, f21, rtz # perform operation
fadd.s f20, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f29, f27, f19, dyn # perform operation
fadd.s f29, f27, f19, rdn # perform operation
fadd.s f29, f27, f19, rmm # perform operation
fadd.s f29, f27, f19, rne # perform operation
fadd.s f29, f27, f19, rtz # perform operation
fadd.s f29, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f18, f10, f9, dyn # perform operation
fadd.s f18, f10, f9, rdn # perform operation
fadd.s f18, f10, f9, rmm # perform operation
fadd.s f18, f10, f9, rne # perform operation
fadd.s f18, f10, f9, rtz # perform operation
fadd.s f18, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f10, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fadd.s f14, f21, f16, dyn # perform operation
fadd.s f14, f21, f16, rdn # perform operation
fadd.s f14, f21, f16, rmm # perform operation
fadd.s f14, f21, f16, rne # perform operation
fadd.s f14, f21, f16, rtz # perform operation
fadd.s f14, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fadd.s f20, f12, f22, dyn # perform operation
fadd.s f20, f12, f22, rdn # perform operation
fadd.s f20, f12, f22, rmm # perform operation
fadd.s f20, f12, f22, rne # perform operation
fadd.s f20, f12, f22, rtz # perform operation
fadd.s f20, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f12, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fadd.s f14, f20, f10, dyn # perform operation
fadd.s f14, f20, f10, rdn # perform operation
fadd.s f14, f20, f10, rmm # perform operation
fadd.s f14, f20, f10, rne # perform operation
fadd.s f14, f20, f10, rtz # perform operation
fadd.s f14, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f20, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fadd.s f6, f18, f29, dyn # perform operation
fadd.s f6, f18, f29, rdn # perform operation
fadd.s f6, f18, f29, rmm # perform operation
fadd.s f6, f18, f29, rne # perform operation
fadd.s f6, f18, f29, rtz # perform operation
fadd.s f6, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f18, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fadd.s f1, f21, f29, dyn # perform operation
fadd.s f1, f21, f29, rdn # perform operation
fadd.s f1, f21, f29, rmm # perform operation
fadd.s f1, f21, f29, rne # perform operation
fadd.s f1, f21, f29, rtz # perform operation
fadd.s f1, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fadd.s f16, f25, f22, dyn # perform operation
fadd.s f16, f25, f22, rdn # perform operation
fadd.s f16, f25, f22, rmm # perform operation
fadd.s f16, f25, f22, rne # perform operation
fadd.s f16, f25, f22, rtz # perform operation
fadd.s f16, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f25, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fadd.s f24, f30, f8, dyn # perform operation
fadd.s f24, f30, f8, rdn # perform operation
fadd.s f24, f30, f8, rmm # perform operation
fadd.s f24, f30, f8, rne # perform operation
fadd.s f24, f30, f8, rtz # perform operation
fadd.s f24, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f30, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fadd.s f1, f27, f15, dyn # perform operation
fadd.s f1, f27, f15, rdn # perform operation
fadd.s f1, f27, f15, rmm # perform operation
fadd.s f1, f27, f15, rne # perform operation
fadd.s f1, f27, f15, rtz # perform operation
fadd.s f1, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fadd.s f17, f15, f6, dyn # perform operation
fadd.s f17, f15, f6, rdn # perform operation
fadd.s f17, f15, f6, rmm # perform operation
fadd.s f17, f15, f6, rne # perform operation
fadd.s f17, f15, f6, rtz # perform operation
fadd.s f17, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fadd.s f27, f24, f20, dyn # perform operation
fadd.s f27, f24, f20, rdn # perform operation
fadd.s f27, f24, f20, rmm # perform operation
fadd.s f27, f24, f20, rne # perform operation
fadd.s f27, f24, f20, rtz # perform operation
fadd.s f27, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f19, f15, f17, dyn # perform operation
fadd.s f19, f15, f17, rdn # perform operation
fadd.s f19, f15, f17, rmm # perform operation
fadd.s f19, f15, f17, rne # perform operation
fadd.s f19, f15, f17, rtz # perform operation
fadd.s f19, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f15, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fadd.s f31, f29, f10, dyn # perform operation
fadd.s f31, f29, f10, rdn # perform operation
fadd.s f31, f29, f10, rmm # perform operation
fadd.s f31, f29, f10, rne # perform operation
fadd.s f31, f29, f10, rtz # perform operation
fadd.s f31, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fadd.s f3, f31, f1, dyn # perform operation
fadd.s f3, f31, f1, rdn # perform operation
fadd.s f3, f31, f1, rmm # perform operation
fadd.s f3, f31, f1, rne # perform operation
fadd.s f3, f31, f1, rtz # perform operation
fadd.s f3, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f31, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fadd.s f1, f20, f12, dyn # perform operation
fadd.s f1, f20, f12, rdn # perform operation
fadd.s f1, f20, f12, rmm # perform operation
fadd.s f1, f20, f12, rne # perform operation
fadd.s f1, f20, f12, rtz # perform operation
fadd.s f1, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fadd.s f1, f31, f11, dyn # perform operation
fadd.s f1, f31, f11, rdn # perform operation
fadd.s f1, f31, f11, rmm # perform operation
fadd.s f1, f31, f11, rne # perform operation
fadd.s f1, f31, f11, rtz # perform operation
fadd.s f1, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fadd.s f10, f26, f6, dyn # perform operation
fadd.s f10, f26, f6, rdn # perform operation
fadd.s f10, f26, f6, rmm # perform operation
fadd.s f10, f26, f6, rne # perform operation
fadd.s f10, f26, f6, rtz # perform operation
fadd.s f10, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fadd.s f28, f2, f12, dyn # perform operation
fadd.s f28, f2, f12, rdn # perform operation
fadd.s f28, f2, f12, rmm # perform operation
fadd.s f28, f2, f12, rne # perform operation
fadd.s f28, f2, f12, rtz # perform operation
fadd.s f28, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fadd.s f27, f1, f3, dyn # perform operation
fadd.s f27, f1, f3, rdn # perform operation
fadd.s f27, f1, f3, rmm # perform operation
fadd.s f27, f1, f3, rne # perform operation
fadd.s f27, f1, f3, rtz # perform operation
fadd.s f27, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f1, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fadd.s f27, f28, f26, dyn # perform operation
fadd.s f27, f28, f26, rdn # perform operation
fadd.s f27, f28, f26, rmm # perform operation
fadd.s f27, f28, f26, rne # perform operation
fadd.s f27, f28, f26, rtz # perform operation
fadd.s f27, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f28, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fadd.s f8, f1, f12, dyn # perform operation
fadd.s f8, f1, f12, rdn # perform operation
fadd.s f8, f1, f12, rmm # perform operation
fadd.s f8, f1, f12, rne # perform operation
fadd.s f8, f1, f12, rtz # perform operation
fadd.s f8, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f1, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fadd.s f20, f8, f29, dyn # perform operation
fadd.s f20, f8, f29, rdn # perform operation
fadd.s f20, f8, f29, rmm # perform operation
fadd.s f20, f8, f29, rne # perform operation
fadd.s f20, f8, f29, rtz # perform operation
fadd.s f20, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
fadd.s f20, f14, f5, dyn # perform operation
fadd.s f20, f14, f5, rdn # perform operation
fadd.s f20, f14, f5, rmm # perform operation
fadd.s f20, f14, f5, rne # perform operation
fadd.s f20, f14, f5, rtz # perform operation
fadd.s f20, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f3, f31, f30, dyn # perform operation
fadd.s f3, f31, f30, rdn # perform operation
fadd.s f3, f31, f30, rmm # perform operation
fadd.s f3, f31, f30, rne # perform operation
fadd.s f3, f31, f30, rtz # perform operation
fadd.s f3, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fadd.s f8, f22, f17, dyn # perform operation
fadd.s f8, f22, f17, rdn # perform operation
fadd.s f8, f22, f17, rmm # perform operation
fadd.s f8, f22, f17, rne # perform operation
fadd.s f8, f22, f17, rtz # perform operation
fadd.s f8, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f22, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fadd.s f21, f23, f19, dyn # perform operation
fadd.s f21, f23, f19, rdn # perform operation
fadd.s f21, f23, f19, rmm # perform operation
fadd.s f21, f23, f19, rne # perform operation
fadd.s f21, f23, f19, rtz # perform operation
fadd.s f21, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fadd.s f31, f8, f22, dyn # perform operation
fadd.s f31, f8, f22, rdn # perform operation
fadd.s f31, f8, f22, rmm # perform operation
fadd.s f31, f8, f22, rne # perform operation
fadd.s f31, f8, f22, rtz # perform operation
fadd.s f31, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fadd.s f23, f2, f13, dyn # perform operation
fadd.s f23, f2, f13, rdn # perform operation
fadd.s f23, f2, f13, rmm # perform operation
fadd.s f23, f2, f13, rne # perform operation
fadd.s f23, f2, f13, rtz # perform operation
fadd.s f23, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fadd.s f10, f15, f2, dyn # perform operation
fadd.s f10, f15, f2, rdn # perform operation
fadd.s f10, f15, f2, rmm # perform operation
fadd.s f10, f15, f2, rne # perform operation
fadd.s f10, f15, f2, rtz # perform operation
fadd.s f10, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f15, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fadd.s f10, f26, f30, dyn # perform operation
fadd.s f10, f26, f30, rdn # perform operation
fadd.s f10, f26, f30, rmm # perform operation
fadd.s f10, f26, f30, rne # perform operation
fadd.s f10, f26, f30, rtz # perform operation
fadd.s f10, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f19, f26, f29, dyn # perform operation
fadd.s f19, f26, f29, rdn # perform operation
fadd.s f19, f26, f29, rmm # perform operation
fadd.s f19, f26, f29, rne # perform operation
fadd.s f19, f26, f29, rtz # perform operation
fadd.s f19, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f31, f15, f25, dyn # perform operation
fadd.s f31, f15, f25, rdn # perform operation
fadd.s f31, f15, f25, rmm # perform operation
fadd.s f31, f15, f25, rne # perform operation
fadd.s f31, f15, f25, rtz # perform operation
fadd.s f31, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fadd.s f30, f29, f8, dyn # perform operation
fadd.s f30, f29, f8, rdn # perform operation
fadd.s f30, f29, f8, rmm # perform operation
fadd.s f30, f29, f8, rne # perform operation
fadd.s f30, f29, f8, rtz # perform operation
fadd.s f30, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f29, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fadd.s f26, f25, f12, dyn # perform operation
fadd.s f26, f25, f12, rdn # perform operation
fadd.s f26, f25, f12, rmm # perform operation
fadd.s f26, f25, f12, rne # perform operation
fadd.s f26, f25, f12, rtz # perform operation
fadd.s f26, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f25, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fadd.s f5, f23, f20, dyn # perform operation
fadd.s f5, f23, f20, rdn # perform operation
fadd.s f5, f23, f20, rmm # perform operation
fadd.s f5, f23, f20, rne # perform operation
fadd.s f5, f23, f20, rtz # perform operation
fadd.s f5, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fadd.s f9, f29, f7, dyn # perform operation
fadd.s f9, f29, f7, rdn # perform operation
fadd.s f9, f29, f7, rmm # perform operation
fadd.s f9, f29, f7, rne # perform operation
fadd.s f9, f29, f7, rtz # perform operation
fadd.s f9, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f29, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f25, f2, f3, dyn # perform operation
fadd.s f25, f2, f3, rdn # perform operation
fadd.s f25, f2, f3, rmm # perform operation
fadd.s f25, f2, f3, rne # perform operation
fadd.s f25, f2, f3, rtz # perform operation
fadd.s f25, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f2, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fadd.s f26, f9, f29, dyn # perform operation
fadd.s f26, f9, f29, rdn # perform operation
fadd.s f26, f9, f29, rmm # perform operation
fadd.s f26, f9, f29, rne # perform operation
fadd.s f26, f9, f29, rtz # perform operation
fadd.s f26, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f9, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f10, f9, f7, dyn # perform operation
fadd.s f10, f9, f7, rdn # perform operation
fadd.s f10, f9, f7, rmm # perform operation
fadd.s f10, f9, f7, rne # perform operation
fadd.s f10, f9, f7, rtz # perform operation
fadd.s f10, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fadd.s f14, f26, f23, dyn # perform operation
fadd.s f14, f26, f23, rdn # perform operation
fadd.s f14, f26, f23, rmm # perform operation
fadd.s f14, f26, f23, rne # perform operation
fadd.s f14, f26, f23, rtz # perform operation
fadd.s f14, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f26, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fadd.s f16, f7, f14, dyn # perform operation
fadd.s f16, f7, f14, rdn # perform operation
fadd.s f16, f7, f14, rmm # perform operation
fadd.s f16, f7, f14, rne # perform operation
fadd.s f16, f7, f14, rtz # perform operation
fadd.s f16, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f7, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fadd.s f3, f22, f13, dyn # perform operation
fadd.s f3, f22, f13, rdn # perform operation
fadd.s f3, f22, f13, rmm # perform operation
fadd.s f3, f22, f13, rne # perform operation
fadd.s f3, f22, f13, rtz # perform operation
fadd.s f3, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f22, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fadd.s f22, f31, f15, dyn # perform operation
fadd.s f22, f31, f15, rdn # perform operation
fadd.s f22, f31, f15, rmm # perform operation
fadd.s f22, f31, f15, rne # perform operation
fadd.s f22, f31, f15, rtz # perform operation
fadd.s f22, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f31, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fadd.s f31, f11, f22, dyn # perform operation
fadd.s f31, f11, f22, rdn # perform operation
fadd.s f31, f11, f22, rmm # perform operation
fadd.s f31, f11, f22, rne # perform operation
fadd.s f31, f11, f22, rtz # perform operation
fadd.s f31, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fadd.s f11, f23, f7, dyn # perform operation
fadd.s f11, f23, f7, rdn # perform operation
fadd.s f11, f23, f7, rmm # perform operation
fadd.s f11, f23, f7, rne # perform operation
fadd.s f11, f23, f7, rtz # perform operation
fadd.s f11, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f23, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fadd.s f31, f26, f29, dyn # perform operation
fadd.s f31, f26, f29, rdn # perform operation
fadd.s f31, f26, f29, rmm # perform operation
fadd.s f31, f26, f29, rne # perform operation
fadd.s f31, f26, f29, rtz # perform operation
fadd.s f31, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fadd.s f22, f27, f30, dyn # perform operation
fadd.s f22, f27, f30, rdn # perform operation
fadd.s f22, f27, f30, rmm # perform operation
fadd.s f22, f27, f30, rne # perform operation
fadd.s f22, f27, f30, rtz # perform operation
fadd.s f22, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fadd.s f20, f24, f10, dyn # perform operation
fadd.s f20, f24, f10, rdn # perform operation
fadd.s f20, f24, f10, rmm # perform operation
fadd.s f20, f24, f10, rne # perform operation
fadd.s f20, f24, f10, rtz # perform operation
fadd.s f20, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f24, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fadd.s f27, f16, f10, dyn # perform operation
fadd.s f27, f16, f10, rdn # perform operation
fadd.s f27, f16, f10, rmm # perform operation
fadd.s f27, f16, f10, rne # perform operation
fadd.s f27, f16, f10, rtz # perform operation
fadd.s f27, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fadd.s f22, f7, f28, dyn # perform operation
fadd.s f22, f7, f28, rdn # perform operation
fadd.s f22, f7, f28, rmm # perform operation
fadd.s f22, f7, f28, rne # perform operation
fadd.s f22, f7, f28, rtz # perform operation
fadd.s f22, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f7, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fadd.s f7, f30, f18, dyn # perform operation
fadd.s f7, f30, f18, rdn # perform operation
fadd.s f7, f30, f18, rmm # perform operation
fadd.s f7, f30, f18, rne # perform operation
fadd.s f7, f30, f18, rtz # perform operation
fadd.s f7, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f30, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fadd.s f17, f3, f19, dyn # perform operation
fadd.s f17, f3, f19, rdn # perform operation
fadd.s f17, f3, f19, rmm # perform operation
fadd.s f17, f3, f19, rne # perform operation
fadd.s f17, f3, f19, rtz # perform operation
fadd.s f17, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f3, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fadd.s f26, f1, f27, dyn # perform operation
fadd.s f26, f1, f27, rdn # perform operation
fadd.s f26, f1, f27, rmm # perform operation
fadd.s f26, f1, f27, rne # perform operation
fadd.s f26, f1, f27, rtz # perform operation
fadd.s f26, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
fadd.s f27, f31, f23, dyn # perform operation
fadd.s f27, f31, f23, rdn # perform operation
fadd.s f27, f31, f23, rmm # perform operation
fadd.s f27, f31, f23, rne # perform operation
fadd.s f27, f31, f23, rtz # perform operation
fadd.s f27, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fadd.s f3, f6, f17, dyn # perform operation
fadd.s f3, f6, f17, rdn # perform operation
fadd.s f3, f6, f17, rmm # perform operation
fadd.s f3, f6, f17, rne # perform operation
fadd.s f3, f6, f17, rtz # perform operation
fadd.s f3, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fadd.s f6, f11, f26, dyn # perform operation
fadd.s f6, f11, f26, rdn # perform operation
fadd.s f6, f11, f26, rmm # perform operation
fadd.s f6, f11, f26, rne # perform operation
fadd.s f6, f11, f26, rtz # perform operation
fadd.s f6, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fadd.s f6, f8, f18, dyn # perform operation
fadd.s f6, f8, f18, rdn # perform operation
fadd.s f6, f8, f18, rmm # perform operation
fadd.s f6, f8, f18, rne # perform operation
fadd.s f6, f8, f18, rtz # perform operation
fadd.s f6, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fadd.s f1, f31, f14, dyn # perform operation
fadd.s f1, f31, f14, rdn # perform operation
fadd.s f1, f31, f14, rmm # perform operation
fadd.s f1, f31, f14, rne # perform operation
fadd.s f1, f31, f14, rtz # perform operation
fadd.s f1, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f31, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fadd.s f28, f24, f13, dyn # perform operation
fadd.s f28, f24, f13, rdn # perform operation
fadd.s f28, f24, f13, rmm # perform operation
fadd.s f28, f24, f13, rne # perform operation
fadd.s f28, f24, f13, rtz # perform operation
fadd.s f28, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f24, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f31, f22, f3, dyn # perform operation
fadd.s f31, f22, f3, rdn # perform operation
fadd.s f31, f22, f3, rmm # perform operation
fadd.s f31, f22, f3, rne # perform operation
fadd.s f31, f22, f3, rtz # perform operation
fadd.s f31, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f22, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fadd.s f27, f24, f20, dyn # perform operation
fadd.s f27, f24, f20, rdn # perform operation
fadd.s f27, f24, f20, rmm # perform operation
fadd.s f27, f24, f20, rne # perform operation
fadd.s f27, f24, f20, rtz # perform operation
fadd.s f27, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fadd.s f18, f28, f15, dyn # perform operation
fadd.s f18, f28, f15, rdn # perform operation
fadd.s f18, f28, f15, rmm # perform operation
fadd.s f18, f28, f15, rne # perform operation
fadd.s f18, f28, f15, rtz # perform operation
fadd.s f18, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f28, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fadd.s f16, f24, f18, dyn # perform operation
fadd.s f16, f24, f18, rdn # perform operation
fadd.s f16, f24, f18, rmm # perform operation
fadd.s f16, f24, f18, rne # perform operation
fadd.s f16, f24, f18, rtz # perform operation
fadd.s f16, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f24, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f2, f20, f29, dyn # perform operation
fadd.s f2, f20, f29, rdn # perform operation
fadd.s f2, f20, f29, rmm # perform operation
fadd.s f2, f20, f29, rne # perform operation
fadd.s f2, f20, f29, rtz # perform operation
fadd.s f2, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f20, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fadd.s f31, f25, f6, dyn # perform operation
fadd.s f31, f25, f6, rdn # perform operation
fadd.s f31, f25, f6, rmm # perform operation
fadd.s f31, f25, f6, rne # perform operation
fadd.s f31, f25, f6, rtz # perform operation
fadd.s f31, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fadd.s f5, f10, f27, dyn # perform operation
fadd.s f5, f10, f27, rdn # perform operation
fadd.s f5, f10, f27, rmm # perform operation
fadd.s f5, f10, f27, rne # perform operation
fadd.s f5, f10, f27, rtz # perform operation
fadd.s f5, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f23, f5, f24, dyn # perform operation
fadd.s f23, f5, f24, rdn # perform operation
fadd.s f23, f5, f24, rmm # perform operation
fadd.s f23, f5, f24, rne # perform operation
fadd.s f23, f5, f24, rtz # perform operation
fadd.s f23, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f5, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fadd.s f23, f2, f19, dyn # perform operation
fadd.s f23, f2, f19, rdn # perform operation
fadd.s f23, f2, f19, rmm # perform operation
fadd.s f23, f2, f19, rne # perform operation
fadd.s f23, f2, f19, rtz # perform operation
fadd.s f23, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f2, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fadd.s f6, f22, f12, dyn # perform operation
fadd.s f6, f22, f12, rdn # perform operation
fadd.s f6, f22, f12, rmm # perform operation
fadd.s f6, f22, f12, rne # perform operation
fadd.s f6, f22, f12, rtz # perform operation
fadd.s f6, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f22, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fadd.s f6, f29, f16, dyn # perform operation
fadd.s f6, f29, f16, rdn # perform operation
fadd.s f6, f29, f16, rmm # perform operation
fadd.s f6, f29, f16, rne # perform operation
fadd.s f6, f29, f16, rtz # perform operation
fadd.s f6, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f29, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fadd.s f14, f24, f6, dyn # perform operation
fadd.s f14, f24, f6, rdn # perform operation
fadd.s f14, f24, f6, rmm # perform operation
fadd.s f14, f24, f6, rne # perform operation
fadd.s f14, f24, f6, rtz # perform operation
fadd.s f14, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f24, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fadd.s f9, f29, f14, dyn # perform operation
fadd.s f9, f29, f14, rdn # perform operation
fadd.s f9, f29, f14, rmm # perform operation
fadd.s f9, f29, f14, rne # perform operation
fadd.s f9, f29, f14, rtz # perform operation
fadd.s f9, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f29, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fadd.s f26, f17, f5, dyn # perform operation
fadd.s f26, f17, f5, rdn # perform operation
fadd.s f26, f17, f5, rmm # perform operation
fadd.s f26, f17, f5, rne # perform operation
fadd.s f26, f17, f5, rtz # perform operation
fadd.s f26, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f17, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fadd.s f28, f26, f27, dyn # perform operation
fadd.s f28, f26, f27, rdn # perform operation
fadd.s f28, f26, f27, rmm # perform operation
fadd.s f28, f26, f27, rne # perform operation
fadd.s f28, f26, f27, rtz # perform operation
fadd.s f28, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fadd.s f17, f27, f10, dyn # perform operation
fadd.s f17, f27, f10, rdn # perform operation
fadd.s f17, f27, f10, rmm # perform operation
fadd.s f17, f27, f10, rne # perform operation
fadd.s f17, f27, f10, rtz # perform operation
fadd.s f17, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f27, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fadd.s f15, f13, f23, dyn # perform operation
fadd.s f15, f13, f23, rdn # perform operation
fadd.s f15, f13, f23, rmm # perform operation
fadd.s f15, f13, f23, rne # perform operation
fadd.s f15, f13, f23, rtz # perform operation
fadd.s f15, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fadd.s f23, f5, f14, dyn # perform operation
fadd.s f23, f5, f14, rdn # perform operation
fadd.s f23, f5, f14, rmm # perform operation
fadd.s f23, f5, f14, rne # perform operation
fadd.s f23, f5, f14, rtz # perform operation
fadd.s f23, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fadd.s f18, f30, f7, dyn # perform operation
fadd.s f18, f30, f7, rdn # perform operation
fadd.s f18, f30, f7, rmm # perform operation
fadd.s f18, f30, f7, rne # perform operation
fadd.s f18, f30, f7, rtz # perform operation
fadd.s f18, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f30, 0(x2) # load 0xffffffff from memory into f30
fadd.s f9, f2, f30, dyn # perform operation
fadd.s f9, f2, f30, rdn # perform operation
fadd.s f9, f2, f30, rmm # perform operation
fadd.s f9, f2, f30, rne # perform operation
fadd.s f9, f2, f30, rtz # perform operation
fadd.s f9, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f2, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fadd.s f22, f18, f6, dyn # perform operation
fadd.s f22, f18, f6, rdn # perform operation
fadd.s f22, f18, f6, rmm # perform operation
fadd.s f22, f18, f6, rne # perform operation
fadd.s f22, f18, f6, rtz # perform operation
fadd.s f22, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f18, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f17, f30, f31, dyn # perform operation
fadd.s f17, f30, f31, rdn # perform operation
fadd.s f17, f30, f31, rmm # perform operation
fadd.s f17, f30, f31, rne # perform operation
fadd.s f17, f30, f31, rtz # perform operation
fadd.s f17, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f30, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
fadd.s f25, f3, f18, dyn # perform operation
fadd.s f25, f3, f18, rdn # perform operation
fadd.s f25, f3, f18, rmm # perform operation
fadd.s f25, f3, f18, rne # perform operation
fadd.s f25, f3, f18, rtz # perform operation
fadd.s f25, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fadd.s f17, f21, f25, dyn # perform operation
fadd.s f17, f21, f25, rdn # perform operation
fadd.s f17, f21, f25, rmm # perform operation
fadd.s f17, f21, f25, rne # perform operation
fadd.s f17, f21, f25, rtz # perform operation
fadd.s f17, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fadd.s f11, f21, f26, dyn # perform operation
fadd.s f11, f21, f26, rdn # perform operation
fadd.s f11, f21, f26, rmm # perform operation
fadd.s f11, f21, f26, rne # perform operation
fadd.s f11, f21, f26, rtz # perform operation
fadd.s f11, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f21, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fadd.s f17, f3, f7, dyn # perform operation
fadd.s f17, f3, f7, rdn # perform operation
fadd.s f17, f3, f7, rmm # perform operation
fadd.s f17, f3, f7, rne # perform operation
fadd.s f17, f3, f7, rtz # perform operation
fadd.s f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fadd.s f15, f23, f3, dyn # perform operation
fadd.s f15, f23, f3, rdn # perform operation
fadd.s f15, f23, f3, rmm # perform operation
fadd.s f15, f23, f3, rne # perform operation
fadd.s f15, f23, f3, rtz # perform operation
fadd.s f15, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fadd.s f12, f28, f19, dyn # perform operation
fadd.s f12, f28, f19, rdn # perform operation
fadd.s f12, f28, f19, rmm # perform operation
fadd.s f12, f28, f19, rne # perform operation
fadd.s f12, f28, f19, rtz # perform operation
fadd.s f12, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f28, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fadd.s f17, f26, f10, dyn # perform operation
fadd.s f17, f26, f10, rdn # perform operation
fadd.s f17, f26, f10, rmm # perform operation
fadd.s f17, f26, f10, rne # perform operation
fadd.s f17, f26, f10, rtz # perform operation
fadd.s f17, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f26, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fadd.s f9, f30, f5, dyn # perform operation
fadd.s f9, f30, f5, rdn # perform operation
fadd.s f9, f30, f5, rmm # perform operation
fadd.s f9, f30, f5, rne # perform operation
fadd.s f9, f30, f5, rtz # perform operation
fadd.s f9, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f30, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fadd.s f6, f10, f27, dyn # perform operation
fadd.s f6, f10, f27, rdn # perform operation
fadd.s f6, f10, f27, rmm # perform operation
fadd.s f6, f10, f27, rne # perform operation
fadd.s f6, f10, f27, rtz # perform operation
fadd.s f6, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fadd.s f15, f27, f22, dyn # perform operation
fadd.s f15, f27, f22, rdn # perform operation
fadd.s f15, f27, f22, rmm # perform operation
fadd.s f15, f27, f22, rne # perform operation
fadd.s f15, f27, f22, rtz # perform operation
fadd.s f15, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fadd.s f1, f15, f3, dyn # perform operation
fadd.s f1, f15, f3, rdn # perform operation
fadd.s f1, f15, f3, rmm # perform operation
fadd.s f1, f15, f3, rne # perform operation
fadd.s f1, f15, f3, rtz # perform operation
fadd.s f1, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fadd.s f17, f11, f20, dyn # perform operation
fadd.s f17, f11, f20, rdn # perform operation
fadd.s f17, f11, f20, rmm # perform operation
fadd.s f17, f11, f20, rne # perform operation
fadd.s f17, f11, f20, rtz # perform operation
fadd.s f17, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f11, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fadd.s f1, f11, f3, dyn # perform operation
fadd.s f1, f11, f3, rdn # perform operation
fadd.s f1, f11, f3, rmm # perform operation
fadd.s f1, f11, f3, rne # perform operation
fadd.s f1, f11, f3, rtz # perform operation
fadd.s f1, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f11, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fadd.s f16, f20, f30, dyn # perform operation
fadd.s f16, f20, f30, rdn # perform operation
fadd.s f16, f20, f30, rmm # perform operation
fadd.s f16, f20, f30, rne # perform operation
fadd.s f16, f20, f30, rtz # perform operation
fadd.s f16, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f20, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fadd.s f18, f24, f23, dyn # perform operation
fadd.s f18, f24, f23, rdn # perform operation
fadd.s f18, f24, f23, rmm # perform operation
fadd.s f18, f24, f23, rne # perform operation
fadd.s f18, f24, f23, rtz # perform operation
fadd.s f18, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f24, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fadd.s f6, f12, f3, dyn # perform operation
fadd.s f6, f12, f3, rdn # perform operation
fadd.s f6, f12, f3, rmm # perform operation
fadd.s f6, f12, f3, rne # perform operation
fadd.s f6, f12, f3, rtz # perform operation
fadd.s f6, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f12, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fadd.s f28, f29, f30, dyn # perform operation
fadd.s f28, f29, f30, rdn # perform operation
fadd.s f28, f29, f30, rmm # perform operation
fadd.s f28, f29, f30, rne # perform operation
fadd.s f28, f29, f30, rtz # perform operation
fadd.s f28, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f29, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fadd.s f26, f21, f23, dyn # perform operation
fadd.s f26, f21, f23, rdn # perform operation
fadd.s f26, f21, f23, rmm # perform operation
fadd.s f26, f21, f23, rne # perform operation
fadd.s f26, f21, f23, rtz # perform operation
fadd.s f26, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fadd.s f19, f1, f7, dyn # perform operation
fadd.s f19, f1, f7, rdn # perform operation
fadd.s f19, f1, f7, rmm # perform operation
fadd.s f19, f1, f7, rne # perform operation
fadd.s f19, f1, f7, rtz # perform operation
fadd.s f19, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f1, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fadd.s f9, f17, f16, dyn # perform operation
fadd.s f9, f17, f16, rdn # perform operation
fadd.s f9, f17, f16, rmm # perform operation
fadd.s f9, f17, f16, rne # perform operation
fadd.s f9, f17, f16, rtz # perform operation
fadd.s f9, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f17, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fadd.s f15, f29, f17, dyn # perform operation
fadd.s f15, f29, f17, rdn # perform operation
fadd.s f15, f29, f17, rmm # perform operation
fadd.s f15, f29, f17, rne # perform operation
fadd.s f15, f29, f17, rtz # perform operation
fadd.s f15, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f29, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f24, f19, f22, dyn # perform operation
fadd.s f24, f19, f22, rdn # perform operation
fadd.s f24, f19, f22, rmm # perform operation
fadd.s f24, f19, f22, rne # perform operation
fadd.s f24, f19, f22, rtz # perform operation
fadd.s f24, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f19, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fadd.s f2, f7, f16, dyn # perform operation
fadd.s f2, f7, f16, rdn # perform operation
fadd.s f2, f7, f16, rmm # perform operation
fadd.s f2, f7, f16, rne # perform operation
fadd.s f2, f7, f16, rtz # perform operation
fadd.s f2, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f7, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fadd.s f24, f17, f1, dyn # perform operation
fadd.s f24, f17, f1, rdn # perform operation
fadd.s f24, f17, f1, rmm # perform operation
fadd.s f24, f17, f1, rne # perform operation
fadd.s f24, f17, f1, rtz # perform operation
fadd.s f24, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f17, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fadd.s f5, f15, f31, dyn # perform operation
fadd.s f5, f15, f31, rdn # perform operation
fadd.s f5, f15, f31, rmm # perform operation
fadd.s f5, f15, f31, rne # perform operation
fadd.s f5, f15, f31, rtz # perform operation
fadd.s f5, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fadd.s f22, f15, f31, dyn # perform operation
fadd.s f22, f15, f31, rdn # perform operation
fadd.s f22, f15, f31, rmm # perform operation
fadd.s f22, f15, f31, rne # perform operation
fadd.s f22, f15, f31, rtz # perform operation
fadd.s f22, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f11, f7, f21, dyn # perform operation
fadd.s f11, f7, f21, rdn # perform operation
fadd.s f11, f7, f21, rmm # perform operation
fadd.s f11, f7, f21, rne # perform operation
fadd.s f11, f7, f21, rtz # perform operation
fadd.s f11, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f7, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fadd.s f25, f20, f1, dyn # perform operation
fadd.s f25, f20, f1, rdn # perform operation
fadd.s f25, f20, f1, rmm # perform operation
fadd.s f25, f20, f1, rne # perform operation
fadd.s f25, f20, f1, rtz # perform operation
fadd.s f25, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f20, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
fadd.s f5, f21, f16, dyn # perform operation
fadd.s f5, f21, f16, rdn # perform operation
fadd.s f5, f21, f16, rmm # perform operation
fadd.s f5, f21, f16, rne # perform operation
fadd.s f5, f21, f16, rtz # perform operation
fadd.s f5, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fadd.s f25, f22, f9, dyn # perform operation
fadd.s f25, f22, f9, rdn # perform operation
fadd.s f25, f22, f9, rmm # perform operation
fadd.s f25, f22, f9, rne # perform operation
fadd.s f25, f22, f9, rtz # perform operation
fadd.s f25, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f22, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fadd.s f1, f5, f16, dyn # perform operation
fadd.s f1, f5, f16, rdn # perform operation
fadd.s f1, f5, f16, rmm # perform operation
fadd.s f1, f5, f16, rne # perform operation
fadd.s f1, f5, f16, rtz # perform operation
fadd.s f1, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fadd.s f26, f7, f30, dyn # perform operation
fadd.s f26, f7, f30, rdn # perform operation
fadd.s f26, f7, f30, rmm # perform operation
fadd.s f26, f7, f30, rne # perform operation
fadd.s f26, f7, f30, rtz # perform operation
fadd.s f26, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f7, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fadd.s f29, f2, f25, dyn # perform operation
fadd.s f29, f2, f25, rdn # perform operation
fadd.s f29, f2, f25, rmm # perform operation
fadd.s f29, f2, f25, rne # perform operation
fadd.s f29, f2, f25, rtz # perform operation
fadd.s f29, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fadd.s f8, f15, f21, dyn # perform operation
fadd.s f8, f15, f21, rdn # perform operation
fadd.s f8, f15, f21, rmm # perform operation
fadd.s f8, f15, f21, rne # perform operation
fadd.s f8, f15, f21, rtz # perform operation
fadd.s f8, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f22, f26, f25, dyn # perform operation
fadd.s f22, f26, f25, rdn # perform operation
fadd.s f22, f26, f25, rmm # perform operation
fadd.s f22, f26, f25, rne # perform operation
fadd.s f22, f26, f25, rtz # perform operation
fadd.s f22, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f26, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fadd.s f25, f29, f10, dyn # perform operation
fadd.s f25, f29, f10, rdn # perform operation
fadd.s f25, f29, f10, rmm # perform operation
fadd.s f25, f29, f10, rne # perform operation
fadd.s f25, f29, f10, rtz # perform operation
fadd.s f25, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f6, f13, f20, dyn # perform operation
fadd.s f6, f13, f20, rdn # perform operation
fadd.s f6, f13, f20, rmm # perform operation
fadd.s f6, f13, f20, rne # perform operation
fadd.s f6, f13, f20, rtz # perform operation
fadd.s f6, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fadd.s f29, f9, f23, dyn # perform operation
fadd.s f29, f9, f23, rdn # perform operation
fadd.s f29, f9, f23, rmm # perform operation
fadd.s f29, f9, f23, rne # perform operation
fadd.s f29, f9, f23, rtz # perform operation
fadd.s f29, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fadd.s f10, f16, f23, dyn # perform operation
fadd.s f10, f16, f23, rdn # perform operation
fadd.s f10, f16, f23, rmm # perform operation
fadd.s f10, f16, f23, rne # perform operation
fadd.s f10, f16, f23, rtz # perform operation
fadd.s f10, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fadd.s f15, f5, f25, dyn # perform operation
fadd.s f15, f5, f25, rdn # perform operation
fadd.s f15, f5, f25, rmm # perform operation
fadd.s f15, f5, f25, rne # perform operation
fadd.s f15, f5, f25, rtz # perform operation
fadd.s f15, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fadd.s f26, f1, f29, dyn # perform operation
fadd.s f26, f1, f29, rdn # perform operation
fadd.s f26, f1, f29, rmm # perform operation
fadd.s f26, f1, f29, rne # perform operation
fadd.s f26, f1, f29, rtz # perform operation
fadd.s f26, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fadd.s f26, f23, f20, dyn # perform operation
fadd.s f26, f23, f20, rdn # perform operation
fadd.s f26, f23, f20, rmm # perform operation
fadd.s f26, f23, f20, rne # perform operation
fadd.s f26, f23, f20, rtz # perform operation
fadd.s f26, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fadd.s f8, f28, f2, dyn # perform operation
fadd.s f8, f28, f2, rdn # perform operation
fadd.s f8, f28, f2, rmm # perform operation
fadd.s f8, f28, f2, rne # perform operation
fadd.s f8, f28, f2, rtz # perform operation
fadd.s f8, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f28, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fadd.s f13, f26, f21, dyn # perform operation
fadd.s f13, f26, f21, rdn # perform operation
fadd.s f13, f26, f21, rmm # perform operation
fadd.s f13, f26, f21, rne # perform operation
fadd.s f13, f26, f21, rtz # perform operation
fadd.s f13, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f26, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fadd.s f12, f9, f13, dyn # perform operation
fadd.s f12, f9, f13, rdn # perform operation
fadd.s f12, f9, f13, rmm # perform operation
fadd.s f12, f9, f13, rne # perform operation
fadd.s f12, f9, f13, rtz # perform operation
fadd.s f12, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f9, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fadd.s f8, f30, f19, dyn # perform operation
fadd.s f8, f30, f19, rdn # perform operation
fadd.s f8, f30, f19, rmm # perform operation
fadd.s f8, f30, f19, rne # perform operation
fadd.s f8, f30, f19, rtz # perform operation
fadd.s f8, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f30, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f10, f30, f25, dyn # perform operation
fadd.s f10, f30, f25, rdn # perform operation
fadd.s f10, f30, f25, rmm # perform operation
fadd.s f10, f30, f25, rne # perform operation
fadd.s f10, f30, f25, rtz # perform operation
fadd.s f10, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fadd.s f17, f27, f12, dyn # perform operation
fadd.s f17, f27, f12, rdn # perform operation
fadd.s f17, f27, f12, rmm # perform operation
fadd.s f17, f27, f12, rne # perform operation
fadd.s f17, f27, f12, rtz # perform operation
fadd.s f17, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fadd.s f5, f7, f8, dyn # perform operation
fadd.s f5, f7, f8, rdn # perform operation
fadd.s f5, f7, f8, rmm # perform operation
fadd.s f5, f7, f8, rne # perform operation
fadd.s f5, f7, f8, rtz # perform operation
fadd.s f5, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fadd.s f8, f9, f3, dyn # perform operation
fadd.s f8, f9, f3, rdn # perform operation
fadd.s f8, f9, f3, rmm # perform operation
fadd.s f8, f9, f3, rne # perform operation
fadd.s f8, f9, f3, rtz # perform operation
fadd.s f8, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fadd.s f14, f17, f13, dyn # perform operation
fadd.s f14, f17, f13, rdn # perform operation
fadd.s f14, f17, f13, rmm # perform operation
fadd.s f14, f17, f13, rne # perform operation
fadd.s f14, f17, f13, rtz # perform operation
fadd.s f14, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fadd.s f12, f2, f7, dyn # perform operation
fadd.s f12, f2, f7, rdn # perform operation
fadd.s f12, f2, f7, rmm # perform operation
fadd.s f12, f2, f7, rne # perform operation
fadd.s f12, f2, f7, rtz # perform operation
fadd.s f12, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f2, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fadd.s f1, f23, f5, dyn # perform operation
fadd.s f1, f23, f5, rdn # perform operation
fadd.s f1, f23, f5, rmm # perform operation
fadd.s f1, f23, f5, rne # perform operation
fadd.s f1, f23, f5, rtz # perform operation
fadd.s f1, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f23, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f16, 0(x2) # load 0xffffffff from memory into f16
fadd.s f24, f21, f16, dyn # perform operation
fadd.s f24, f21, f16, rdn # perform operation
fadd.s f24, f21, f16, rmm # perform operation
fadd.s f24, f21, f16, rne # perform operation
fadd.s f24, f21, f16, rtz # perform operation
fadd.s f24, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f21, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f3, f10, f30, dyn # perform operation
fadd.s f3, f10, f30, rdn # perform operation
fadd.s f3, f10, f30, rmm # perform operation
fadd.s f3, f10, f30, rne # perform operation
fadd.s f3, f10, f30, rtz # perform operation
fadd.s f3, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f10, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fadd.s f26, f25, f6, dyn # perform operation
fadd.s f26, f25, f6, rdn # perform operation
fadd.s f26, f25, f6, rmm # perform operation
fadd.s f26, f25, f6, rne # perform operation
fadd.s f26, f25, f6, rtz # perform operation
fadd.s f26, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f25, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fadd.s f29, f30, f25, dyn # perform operation
fadd.s f29, f30, f25, rdn # perform operation
fadd.s f29, f30, f25, rmm # perform operation
fadd.s f29, f30, f25, rne # perform operation
fadd.s f29, f30, f25, rtz # perform operation
fadd.s f29, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f30, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fadd.s f11, f14, f30, dyn # perform operation
fadd.s f11, f14, f30, rdn # perform operation
fadd.s f11, f14, f30, rmm # perform operation
fadd.s f11, f14, f30, rne # perform operation
fadd.s f11, f14, f30, rtz # perform operation
fadd.s f11, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f14, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fadd.s f17, f18, f10, dyn # perform operation
fadd.s f17, f18, f10, rdn # perform operation
fadd.s f17, f18, f10, rmm # perform operation
fadd.s f17, f18, f10, rne # perform operation
fadd.s f17, f18, f10, rtz # perform operation
fadd.s f17, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f18, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fadd.s f25, f18, f1, dyn # perform operation
fadd.s f25, f18, f1, rdn # perform operation
fadd.s f25, f18, f1, rmm # perform operation
fadd.s f25, f18, f1, rne # perform operation
fadd.s f25, f18, f1, rtz # perform operation
fadd.s f25, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fadd.s f5, f30, f21, dyn # perform operation
fadd.s f5, f30, f21, rdn # perform operation
fadd.s f5, f30, f21, rmm # perform operation
fadd.s f5, f30, f21, rne # perform operation
fadd.s f5, f30, f21, rtz # perform operation
fadd.s f5, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fadd.s f21, f31, f5, dyn # perform operation
fadd.s f21, f31, f5, rdn # perform operation
fadd.s f21, f31, f5, rmm # perform operation
fadd.s f21, f31, f5, rne # perform operation
fadd.s f21, f31, f5, rtz # perform operation
fadd.s f21, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fadd.s f21, f23, f17, dyn # perform operation
fadd.s f21, f23, f17, rdn # perform operation
fadd.s f21, f23, f17, rmm # perform operation
fadd.s f21, f23, f17, rne # perform operation
fadd.s f21, f23, f17, rtz # perform operation
fadd.s f21, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fadd.s f1, f22, f19, dyn # perform operation
fadd.s f1, f22, f19, rdn # perform operation
fadd.s f1, f22, f19, rmm # perform operation
fadd.s f1, f22, f19, rne # perform operation
fadd.s f1, f22, f19, rtz # perform operation
fadd.s f1, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fadd.s f23, f1, f13, dyn # perform operation
fadd.s f23, f1, f13, rdn # perform operation
fadd.s f23, f1, f13, rmm # perform operation
fadd.s f23, f1, f13, rne # perform operation
fadd.s f23, f1, f13, rtz # perform operation
fadd.s f23, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fadd.s f14, f2, f29, dyn # perform operation
fadd.s f14, f2, f29, rdn # perform operation
fadd.s f14, f2, f29, rmm # perform operation
fadd.s f14, f2, f29, rne # perform operation
fadd.s f14, f2, f29, rtz # perform operation
fadd.s f14, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fadd.s f27, f11, f22, dyn # perform operation
fadd.s f27, f11, f22, rdn # perform operation
fadd.s f27, f11, f22, rmm # perform operation
fadd.s f27, f11, f22, rne # perform operation
fadd.s f27, f11, f22, rtz # perform operation
fadd.s f27, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f11, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fadd.s f15, f23, f20, dyn # perform operation
fadd.s f15, f23, f20, rdn # perform operation
fadd.s f15, f23, f20, rmm # perform operation
fadd.s f15, f23, f20, rne # perform operation
fadd.s f15, f23, f20, rtz # perform operation
fadd.s f15, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fadd.s f22, f12, f25, dyn # perform operation
fadd.s f22, f12, f25, rdn # perform operation
fadd.s f22, f12, f25, rmm # perform operation
fadd.s f22, f12, f25, rne # perform operation
fadd.s f22, f12, f25, rtz # perform operation
fadd.s f22, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fadd.s f24, f17, f30, dyn # perform operation
fadd.s f24, f17, f30, rdn # perform operation
fadd.s f24, f17, f30, rmm # perform operation
fadd.s f24, f17, f30, rne # perform operation
fadd.s f24, f17, f30, rtz # perform operation
fadd.s f24, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fadd.s f28, f15, f8, dyn # perform operation
fadd.s f28, f15, f8, rdn # perform operation
fadd.s f28, f15, f8, rmm # perform operation
fadd.s f28, f15, f8, rne # perform operation
fadd.s f28, f15, f8, rtz # perform operation
fadd.s f28, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f15, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fadd.s f17, f14, f24, dyn # perform operation
fadd.s f17, f14, f24, rdn # perform operation
fadd.s f17, f14, f24, rmm # perform operation
fadd.s f17, f14, f24, rne # perform operation
fadd.s f17, f14, f24, rtz # perform operation
fadd.s f17, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fadd.s f31, f3, f17, dyn # perform operation
fadd.s f31, f3, f17, rdn # perform operation
fadd.s f31, f3, f17, rmm # perform operation
fadd.s f31, f3, f17, rne # perform operation
fadd.s f31, f3, f17, rtz # perform operation
fadd.s f31, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fadd.s f14, f9, f19, dyn # perform operation
fadd.s f14, f9, f19, rdn # perform operation
fadd.s f14, f9, f19, rmm # perform operation
fadd.s f14, f9, f19, rne # perform operation
fadd.s f14, f9, f19, rtz # perform operation
fadd.s f14, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fadd.s f3, f15, f31, dyn # perform operation
fadd.s f3, f15, f31, rdn # perform operation
fadd.s f3, f15, f31, rmm # perform operation
fadd.s f3, f15, f31, rne # perform operation
fadd.s f3, f15, f31, rtz # perform operation
fadd.s f3, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fadd.s f27, f18, f7, dyn # perform operation
fadd.s f27, f18, f7, rdn # perform operation
fadd.s f27, f18, f7, rmm # perform operation
fadd.s f27, f18, f7, rne # perform operation
fadd.s f27, f18, f7, rtz # perform operation
fadd.s f27, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f18, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f9, f25, f21, dyn # perform operation
fadd.s f9, f25, f21, rdn # perform operation
fadd.s f9, f25, f21, rmm # perform operation
fadd.s f9, f25, f21, rne # perform operation
fadd.s f9, f25, f21, rtz # perform operation
fadd.s f9, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f25, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fadd.s f2, f8, f17, dyn # perform operation
fadd.s f2, f8, f17, rdn # perform operation
fadd.s f2, f8, f17, rmm # perform operation
fadd.s f2, f8, f17, rne # perform operation
fadd.s f2, f8, f17, rtz # perform operation
fadd.s f2, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fadd.s f13, f15, f24, dyn # perform operation
fadd.s f13, f15, f24, rdn # perform operation
fadd.s f13, f15, f24, rmm # perform operation
fadd.s f13, f15, f24, rne # perform operation
fadd.s f13, f15, f24, rtz # perform operation
fadd.s f13, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fadd.s f10, f20, f27, dyn # perform operation
fadd.s f10, f20, f27, rdn # perform operation
fadd.s f10, f20, f27, rmm # perform operation
fadd.s f10, f20, f27, rne # perform operation
fadd.s f10, f20, f27, rtz # perform operation
fadd.s f10, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f20, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f9, f19, f12, dyn # perform operation
fadd.s f9, f19, f12, rdn # perform operation
fadd.s f9, f19, f12, rmm # perform operation
fadd.s f9, f19, f12, rne # perform operation
fadd.s f9, f19, f12, rtz # perform operation
fadd.s f9, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f19, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fadd.s f22, f7, f17, dyn # perform operation
fadd.s f22, f7, f17, rdn # perform operation
fadd.s f22, f7, f17, rmm # perform operation
fadd.s f22, f7, f17, rne # perform operation
fadd.s f22, f7, f17, rtz # perform operation
fadd.s f22, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f7, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fadd.s f5, f24, f11, dyn # perform operation
fadd.s f5, f24, f11, rdn # perform operation
fadd.s f5, f24, f11, rmm # perform operation
fadd.s f5, f24, f11, rne # perform operation
fadd.s f5, f24, f11, rtz # perform operation
fadd.s f5, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f24, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fadd.s f26, f1, f27, dyn # perform operation
fadd.s f26, f1, f27, rdn # perform operation
fadd.s f26, f1, f27, rmm # perform operation
fadd.s f26, f1, f27, rne # perform operation
fadd.s f26, f1, f27, rtz # perform operation
fadd.s f26, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fadd.s f1, f20, f2, dyn # perform operation
fadd.s f1, f20, f2, rdn # perform operation
fadd.s f1, f20, f2, rmm # perform operation
fadd.s f1, f20, f2, rne # perform operation
fadd.s f1, f20, f2, rtz # perform operation
fadd.s f1, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fadd.s f3, f15, f12, dyn # perform operation
fadd.s f3, f15, f12, rdn # perform operation
fadd.s f3, f15, f12, rmm # perform operation
fadd.s f3, f15, f12, rne # perform operation
fadd.s f3, f15, f12, rtz # perform operation
fadd.s f3, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fadd.s f21, f26, f5, dyn # perform operation
fadd.s f21, f26, f5, rdn # perform operation
fadd.s f21, f26, f5, rmm # perform operation
fadd.s f21, f26, f5, rne # perform operation
fadd.s f21, f26, f5, rtz # perform operation
fadd.s f21, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f26, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fadd.s f9, f8, f10, dyn # perform operation
fadd.s f9, f8, f10, rdn # perform operation
fadd.s f9, f8, f10, rmm # perform operation
fadd.s f9, f8, f10, rne # perform operation
fadd.s f9, f8, f10, rtz # perform operation
fadd.s f9, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f8, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fadd.s f21, f30, f1, dyn # perform operation
fadd.s f21, f30, f1, rdn # perform operation
fadd.s f21, f30, f1, rmm # perform operation
fadd.s f21, f30, f1, rne # perform operation
fadd.s f21, f30, f1, rtz # perform operation
fadd.s f21, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f30, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fadd.s f28, f16, f15, dyn # perform operation
fadd.s f28, f16, f15, rdn # perform operation
fadd.s f28, f16, f15, rmm # perform operation
fadd.s f28, f16, f15, rne # perform operation
fadd.s f28, f16, f15, rtz # perform operation
fadd.s f28, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f16, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f7, f21, f25, dyn # perform operation
fadd.s f7, f21, f25, rdn # perform operation
fadd.s f7, f21, f25, rmm # perform operation
fadd.s f7, f21, f25, rne # perform operation
fadd.s f7, f21, f25, rtz # perform operation
fadd.s f7, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fadd.s f7, f6, f14, dyn # perform operation
fadd.s f7, f6, f14, rdn # perform operation
fadd.s f7, f6, f14, rmm # perform operation
fadd.s f7, f6, f14, rne # perform operation
fadd.s f7, f6, f14, rtz # perform operation
fadd.s f7, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fadd.s f27, f30, f29, dyn # perform operation
fadd.s f27, f30, f29, rdn # perform operation
fadd.s f27, f30, f29, rmm # perform operation
fadd.s f27, f30, f29, rne # perform operation
fadd.s f27, f30, f29, rtz # perform operation
fadd.s f27, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fadd.s f14, f6, f26, dyn # perform operation
fadd.s f14, f6, f26, rdn # perform operation
fadd.s f14, f6, f26, rmm # perform operation
fadd.s f14, f6, f26, rne # perform operation
fadd.s f14, f6, f26, rtz # perform operation
fadd.s f14, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f6, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fadd.s f25, f16, f10, dyn # perform operation
fadd.s f25, f16, f10, rdn # perform operation
fadd.s f25, f16, f10, rmm # perform operation
fadd.s f25, f16, f10, rne # perform operation
fadd.s f25, f16, f10, rtz # perform operation
fadd.s f25, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f16, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f25, f21, f23, dyn # perform operation
fadd.s f25, f21, f23, rdn # perform operation
fadd.s f25, f21, f23, rmm # perform operation
fadd.s f25, f21, f23, rne # perform operation
fadd.s f25, f21, f23, rtz # perform operation
fadd.s f25, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f21, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f5, f29, f28, dyn # perform operation
fadd.s f5, f29, f28, rdn # perform operation
fadd.s f5, f29, f28, rmm # perform operation
fadd.s f5, f29, f28, rne # perform operation
fadd.s f5, f29, f28, rtz # perform operation
fadd.s f5, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f29, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fadd.s f20, f14, f1, dyn # perform operation
fadd.s f20, f14, f1, rdn # perform operation
fadd.s f20, f14, f1, rmm # perform operation
fadd.s f20, f14, f1, rne # perform operation
fadd.s f20, f14, f1, rtz # perform operation
fadd.s f20, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fadd.s f8, f10, f2, dyn # perform operation
fadd.s f8, f10, f2, rdn # perform operation
fadd.s f8, f10, f2, rmm # perform operation
fadd.s f8, f10, f2, rne # perform operation
fadd.s f8, f10, f2, rtz # perform operation
fadd.s f8, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fadd.s f3, f25, f27, dyn # perform operation
fadd.s f3, f25, f27, rdn # perform operation
fadd.s f3, f25, f27, rmm # perform operation
fadd.s f3, f25, f27, rne # perform operation
fadd.s f3, f25, f27, rtz # perform operation
fadd.s f3, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f25, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fadd.s f24, f10, f14, dyn # perform operation
fadd.s f24, f10, f14, rdn # perform operation
fadd.s f24, f10, f14, rmm # perform operation
fadd.s f24, f10, f14, rne # perform operation
fadd.s f24, f10, f14, rtz # perform operation
fadd.s f24, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f25, f23, f2, dyn # perform operation
fadd.s f25, f23, f2, rdn # perform operation
fadd.s f25, f23, f2, rmm # perform operation
fadd.s f25, f23, f2, rne # perform operation
fadd.s f25, f23, f2, rtz # perform operation
fadd.s f25, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fadd.s f17, f13, f11, dyn # perform operation
fadd.s f17, f13, f11, rdn # perform operation
fadd.s f17, f13, f11, rmm # perform operation
fadd.s f17, f13, f11, rne # perform operation
fadd.s f17, f13, f11, rtz # perform operation
fadd.s f17, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f13, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fadd.s f29, f16, f22, dyn # perform operation
fadd.s f29, f16, f22, rdn # perform operation
fadd.s f29, f16, f22, rmm # perform operation
fadd.s f29, f16, f22, rne # perform operation
fadd.s f29, f16, f22, rtz # perform operation
fadd.s f29, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f16, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f28, f2, f21, dyn # perform operation
fadd.s f28, f2, f21, rdn # perform operation
fadd.s f28, f2, f21, rmm # perform operation
fadd.s f28, f2, f21, rne # perform operation
fadd.s f28, f2, f21, rtz # perform operation
fadd.s f28, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f2, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fadd.s f5, f21, f30, dyn # perform operation
fadd.s f5, f21, f30, rdn # perform operation
fadd.s f5, f21, f30, rmm # perform operation
fadd.s f5, f21, f30, rne # perform operation
fadd.s f5, f21, f30, rtz # perform operation
fadd.s f5, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fadd.s f19, f1, f5, dyn # perform operation
fadd.s f19, f1, f5, rdn # perform operation
fadd.s f19, f1, f5, rmm # perform operation
fadd.s f19, f1, f5, rne # perform operation
fadd.s f19, f1, f5, rtz # perform operation
fadd.s f19, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fadd.s f29, f23, f21, dyn # perform operation
fadd.s f29, f23, f21, rdn # perform operation
fadd.s f29, f23, f21, rmm # perform operation
fadd.s f29, f23, f21, rne # perform operation
fadd.s f29, f23, f21, rtz # perform operation
fadd.s f29, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f23, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fadd.s f28, f6, f22, dyn # perform operation
fadd.s f28, f6, f22, rdn # perform operation
fadd.s f28, f6, f22, rmm # perform operation
fadd.s f28, f6, f22, rne # perform operation
fadd.s f28, f6, f22, rtz # perform operation
fadd.s f28, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f6, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
fadd.s f15, f11, f26, dyn # perform operation
fadd.s f15, f11, f26, rdn # perform operation
fadd.s f15, f11, f26, rmm # perform operation
fadd.s f15, f11, f26, rne # perform operation
fadd.s f15, f11, f26, rtz # perform operation
fadd.s f15, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fadd.s f12, f16, f25, dyn # perform operation
fadd.s f12, f16, f25, rdn # perform operation
fadd.s f12, f16, f25, rmm # perform operation
fadd.s f12, f16, f25, rne # perform operation
fadd.s f12, f16, f25, rtz # perform operation
fadd.s f12, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f16, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f23, f12, f16, dyn # perform operation
fadd.s f23, f12, f16, rdn # perform operation
fadd.s f23, f12, f16, rmm # perform operation
fadd.s f23, f12, f16, rne # perform operation
fadd.s f23, f12, f16, rtz # perform operation
fadd.s f23, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f12, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f17, 0(x2) # load 0xffbfffff from memory into f17
fadd.s f22, f12, f17, dyn # perform operation
fadd.s f22, f12, f17, rdn # perform operation
fadd.s f22, f12, f17, rmm # perform operation
fadd.s f22, f12, f17, rne # perform operation
fadd.s f22, f12, f17, rtz # perform operation
fadd.s f22, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f12, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fadd.s f7, f26, f29, dyn # perform operation
fadd.s f7, f26, f29, rdn # perform operation
fadd.s f7, f26, f29, rmm # perform operation
fadd.s f7, f26, f29, rne # perform operation
fadd.s f7, f26, f29, rtz # perform operation
fadd.s f7, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fadd.s f29, f1, f13, dyn # perform operation
fadd.s f29, f1, f13, rdn # perform operation
fadd.s f29, f1, f13, rmm # perform operation
fadd.s f29, f1, f13, rne # perform operation
fadd.s f29, f1, f13, rtz # perform operation
fadd.s f29, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f1, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fadd.s f8, f21, f30, dyn # perform operation
fadd.s f8, f21, f30, rdn # perform operation
fadd.s f8, f21, f30, rmm # perform operation
fadd.s f8, f21, f30, rne # perform operation
fadd.s f8, f21, f30, rtz # perform operation
fadd.s f8, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f21, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fadd.s f24, f25, f20, dyn # perform operation
fadd.s f24, f25, f20, rdn # perform operation
fadd.s f24, f25, f20, rmm # perform operation
fadd.s f24, f25, f20, rne # perform operation
fadd.s f24, f25, f20, rtz # perform operation
fadd.s f24, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fadd.s f26, f2, f17, dyn # perform operation
fadd.s f26, f2, f17, rdn # perform operation
fadd.s f26, f2, f17, rmm # perform operation
fadd.s f26, f2, f17, rne # perform operation
fadd.s f26, f2, f17, rtz # perform operation
fadd.s f26, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f2, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f1, f15, f18, dyn # perform operation
fadd.s f1, f15, f18, rdn # perform operation
fadd.s f1, f15, f18, rmm # perform operation
fadd.s f1, f15, f18, rne # perform operation
fadd.s f1, f15, f18, rtz # perform operation
fadd.s f1, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f15, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f12, f20, f2, dyn # perform operation
fadd.s f12, f20, f2, rdn # perform operation
fadd.s f12, f20, f2, rmm # perform operation
fadd.s f12, f20, f2, rne # perform operation
fadd.s f12, f20, f2, rtz # perform operation
fadd.s f12, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fadd.s f21, f13, f30, dyn # perform operation
fadd.s f21, f13, f30, rdn # perform operation
fadd.s f21, f13, f30, rmm # perform operation
fadd.s f21, f13, f30, rne # perform operation
fadd.s f21, f13, f30, rtz # perform operation
fadd.s f21, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f13, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fadd.s f8, f20, f16, dyn # perform operation
fadd.s f8, f20, f16, rdn # perform operation
fadd.s f8, f20, f16, rmm # perform operation
fadd.s f8, f20, f16, rne # perform operation
fadd.s f8, f20, f16, rtz # perform operation
fadd.s f8, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f20, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fadd.s f23, f22, f19, dyn # perform operation
fadd.s f23, f22, f19, rdn # perform operation
fadd.s f23, f22, f19, rmm # perform operation
fadd.s f23, f22, f19, rne # perform operation
fadd.s f23, f22, f19, rtz # perform operation
fadd.s f23, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fadd.s f13, f7, f27, dyn # perform operation
fadd.s f13, f7, f27, rdn # perform operation
fadd.s f13, f7, f27, rmm # perform operation
fadd.s f13, f7, f27, rne # perform operation
fadd.s f13, f7, f27, rtz # perform operation
fadd.s f13, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f7, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fadd.s f29, f31, f11, dyn # perform operation
fadd.s f29, f31, f11, rdn # perform operation
fadd.s f29, f31, f11, rmm # perform operation
fadd.s f29, f31, f11, rne # perform operation
fadd.s f29, f31, f11, rtz # perform operation
fadd.s f29, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fadd.s f24, f25, f30, dyn # perform operation
fadd.s f24, f25, f30, rdn # perform operation
fadd.s f24, f25, f30, rmm # perform operation
fadd.s f24, f25, f30, rne # perform operation
fadd.s f24, f25, f30, rtz # perform operation
fadd.s f24, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f25, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fadd.s f16, f26, f19, dyn # perform operation
fadd.s f16, f26, f19, rdn # perform operation
fadd.s f16, f26, f19, rmm # perform operation
fadd.s f16, f26, f19, rne # perform operation
fadd.s f16, f26, f19, rtz # perform operation
fadd.s f16, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fadd.s f7, f30, f15, dyn # perform operation
fadd.s f7, f30, f15, rdn # perform operation
fadd.s f7, f30, f15, rmm # perform operation
fadd.s f7, f30, f15, rne # perform operation
fadd.s f7, f30, f15, rtz # perform operation
fadd.s f7, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f30, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fadd.s f13, f6, f20, dyn # perform operation
fadd.s f13, f6, f20, rdn # perform operation
fadd.s f13, f6, f20, rmm # perform operation
fadd.s f13, f6, f20, rne # perform operation
fadd.s f13, f6, f20, rtz # perform operation
fadd.s f13, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f23, f8, f2, dyn # perform operation
fadd.s f23, f8, f2, rdn # perform operation
fadd.s f23, f8, f2, rmm # perform operation
fadd.s f23, f8, f2, rne # perform operation
fadd.s f23, f8, f2, rtz # perform operation
fadd.s f23, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f27, f7, f6, dyn # perform operation
fadd.s f27, f7, f6, rdn # perform operation
fadd.s f27, f7, f6, rmm # perform operation
fadd.s f27, f7, f6, rne # perform operation
fadd.s f27, f7, f6, rtz # perform operation
fadd.s f27, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f7, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fadd.s f6, f25, f23, dyn # perform operation
fadd.s f6, f25, f23, rdn # perform operation
fadd.s f6, f25, f23, rmm # perform operation
fadd.s f6, f25, f23, rne # perform operation
fadd.s f6, f25, f23, rtz # perform operation
fadd.s f6, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f25, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f15, f17, f21, dyn # perform operation
fadd.s f15, f17, f21, rdn # perform operation
fadd.s f15, f17, f21, rmm # perform operation
fadd.s f15, f17, f21, rne # perform operation
fadd.s f15, f17, f21, rtz # perform operation
fadd.s f15, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f17, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f1, f27, f6, dyn # perform operation
fadd.s f1, f27, f6, rdn # perform operation
fadd.s f1, f27, f6, rmm # perform operation
fadd.s f1, f27, f6, rne # perform operation
fadd.s f1, f27, f6, rtz # perform operation
fadd.s f1, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fadd.s f15, f2, f20, dyn # perform operation
fadd.s f15, f2, f20, rdn # perform operation
fadd.s f15, f2, f20, rmm # perform operation
fadd.s f15, f2, f20, rne # perform operation
fadd.s f15, f2, f20, rtz # perform operation
fadd.s f15, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f2, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fadd.s f3, f6, f31, dyn # perform operation
fadd.s f3, f6, f31, rdn # perform operation
fadd.s f3, f6, f31, rmm # perform operation
fadd.s f3, f6, f31, rne # perform operation
fadd.s f3, f6, f31, rtz # perform operation
fadd.s f3, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f6, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fadd.s f15, f11, f19, dyn # perform operation
fadd.s f15, f11, f19, rdn # perform operation
fadd.s f15, f11, f19, rmm # perform operation
fadd.s f15, f11, f19, rne # perform operation
fadd.s f15, f11, f19, rtz # perform operation
fadd.s f15, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fadd.s f2, f6, f14, dyn # perform operation
fadd.s f2, f6, f14, rdn # perform operation
fadd.s f2, f6, f14, rmm # perform operation
fadd.s f2, f6, f14, rne # perform operation
fadd.s f2, f6, f14, rtz # perform operation
fadd.s f2, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f6, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fadd.s f15, f1, f17, dyn # perform operation
fadd.s f15, f1, f17, rdn # perform operation
fadd.s f15, f1, f17, rmm # perform operation
fadd.s f15, f1, f17, rne # perform operation
fadd.s f15, f1, f17, rtz # perform operation
fadd.s f15, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f1, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fadd.s f20, f27, f15, dyn # perform operation
fadd.s f20, f27, f15, rdn # perform operation
fadd.s f20, f27, f15, rmm # perform operation
fadd.s f20, f27, f15, rne # perform operation
fadd.s f20, f27, f15, rtz # perform operation
fadd.s f20, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f27, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f2, 0(x2) # load 0xffbfffff from memory into f2
fadd.s f16, f20, f2, dyn # perform operation
fadd.s f16, f20, f2, rdn # perform operation
fadd.s f16, f20, f2, rmm # perform operation
fadd.s f16, f20, f2, rne # perform operation
fadd.s f16, f20, f2, rtz # perform operation
fadd.s f16, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fadd.s f2, f23, f8, dyn # perform operation
fadd.s f2, f23, f8, rdn # perform operation
fadd.s f2, f23, f8, rmm # perform operation
fadd.s f2, f23, f8, rne # perform operation
fadd.s f2, f23, f8, rtz # perform operation
fadd.s f2, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f23, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fadd.s f14, f3, f27, dyn # perform operation
fadd.s f14, f3, f27, rdn # perform operation
fadd.s f14, f3, f27, rmm # perform operation
fadd.s f14, f3, f27, rne # perform operation
fadd.s f14, f3, f27, rtz # perform operation
fadd.s f14, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fadd.s f23, f3, f27, dyn # perform operation
fadd.s f23, f3, f27, rdn # perform operation
fadd.s f23, f3, f27, rmm # perform operation
fadd.s f23, f3, f27, rne # perform operation
fadd.s f23, f3, f27, rtz # perform operation
fadd.s f23, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fadd.s f31, f22, f25, dyn # perform operation
fadd.s f31, f22, f25, rdn # perform operation
fadd.s f31, f22, f25, rmm # perform operation
fadd.s f31, f22, f25, rne # perform operation
fadd.s f31, f22, f25, rtz # perform operation
fadd.s f31, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fadd.s f2, f24, f20, dyn # perform operation
fadd.s f2, f24, f20, rdn # perform operation
fadd.s f2, f24, f20, rmm # perform operation
fadd.s f2, f24, f20, rne # perform operation
fadd.s f2, f24, f20, rtz # perform operation
fadd.s f2, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f24, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f22, f3, f8, dyn # perform operation
fadd.s f22, f3, f8, rdn # perform operation
fadd.s f22, f3, f8, rmm # perform operation
fadd.s f22, f3, f8, rne # perform operation
fadd.s f22, f3, f8, rtz # perform operation
fadd.s f22, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fadd.s f10, f24, f21, dyn # perform operation
fadd.s f10, f24, f21, rdn # perform operation
fadd.s f10, f24, f21, rmm # perform operation
fadd.s f10, f24, f21, rne # perform operation
fadd.s f10, f24, f21, rtz # perform operation
fadd.s f10, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f24, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fadd.s f28, f3, f16, dyn # perform operation
fadd.s f28, f3, f16, rdn # perform operation
fadd.s f28, f3, f16, rmm # perform operation
fadd.s f28, f3, f16, rne # perform operation
fadd.s f28, f3, f16, rtz # perform operation
fadd.s f28, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f3, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fadd.s f3, f20, f2, dyn # perform operation
fadd.s f3, f20, f2, rdn # perform operation
fadd.s f3, f20, f2, rmm # perform operation
fadd.s f3, f20, f2, rne # perform operation
fadd.s f3, f20, f2, rtz # perform operation
fadd.s f3, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f20, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fadd.s f12, f22, f1, dyn # perform operation
fadd.s f12, f22, f1, rdn # perform operation
fadd.s f12, f22, f1, rmm # perform operation
fadd.s f12, f22, f1, rne # perform operation
fadd.s f12, f22, f1, rtz # perform operation
fadd.s f12, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fadd.s f28, f14, f27, dyn # perform operation
fadd.s f28, f14, f27, rdn # perform operation
fadd.s f28, f14, f27, rmm # perform operation
fadd.s f28, f14, f27, rne # perform operation
fadd.s f28, f14, f27, rtz # perform operation
fadd.s f28, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fadd.s f31, f8, f1, dyn # perform operation
fadd.s f31, f8, f1, rdn # perform operation
fadd.s f31, f8, f1, rmm # perform operation
fadd.s f31, f8, f1, rne # perform operation
fadd.s f31, f8, f1, rtz # perform operation
fadd.s f31, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fadd.s f7, f8, f18, dyn # perform operation
fadd.s f7, f8, f18, rdn # perform operation
fadd.s f7, f8, f18, rmm # perform operation
fadd.s f7, f8, f18, rne # perform operation
fadd.s f7, f8, f18, rtz # perform operation
fadd.s f7, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fadd.s f15, f28, f27, dyn # perform operation
fadd.s f15, f28, f27, rdn # perform operation
fadd.s f15, f28, f27, rmm # perform operation
fadd.s f15, f28, f27, rne # perform operation
fadd.s f15, f28, f27, rtz # perform operation
fadd.s f15, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fadd.s f1, f3, f28, dyn # perform operation
fadd.s f1, f3, f28, rdn # perform operation
fadd.s f1, f3, f28, rmm # perform operation
fadd.s f1, f3, f28, rne # perform operation
fadd.s f1, f3, f28, rtz # perform operation
fadd.s f1, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f3, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fadd.s f31, f9, f2, dyn # perform operation
fadd.s f31, f9, f2, rdn # perform operation
fadd.s f31, f9, f2, rmm # perform operation
fadd.s f31, f9, f2, rne # perform operation
fadd.s f31, f9, f2, rtz # perform operation
fadd.s f31, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f9, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fadd.s f13, f8, f6, dyn # perform operation
fadd.s f13, f8, f6, rdn # perform operation
fadd.s f13, f8, f6, rmm # perform operation
fadd.s f13, f8, f6, rne # perform operation
fadd.s f13, f8, f6, rtz # perform operation
fadd.s f13, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fadd.s f31, f3, f2, dyn # perform operation
fadd.s f31, f3, f2, rdn # perform operation
fadd.s f31, f3, f2, rmm # perform operation
fadd.s f31, f3, f2, rne # perform operation
fadd.s f31, f3, f2, rtz # perform operation
fadd.s f31, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fadd.s f2, f27, f26, dyn # perform operation
fadd.s f2, f27, f26, rdn # perform operation
fadd.s f2, f27, f26, rmm # perform operation
fadd.s f2, f27, f26, rne # perform operation
fadd.s f2, f27, f26, rtz # perform operation
fadd.s f2, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f27, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fadd.s f7, f9, f27, dyn # perform operation
fadd.s f7, f9, f27, rdn # perform operation
fadd.s f7, f9, f27, rmm # perform operation
fadd.s f7, f9, f27, rne # perform operation
fadd.s f7, f9, f27, rtz # perform operation
fadd.s f7, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f9, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fadd.s f18, f16, f29, dyn # perform operation
fadd.s f18, f16, f29, rdn # perform operation
fadd.s f18, f16, f29, rmm # perform operation
fadd.s f18, f16, f29, rne # perform operation
fadd.s f18, f16, f29, rtz # perform operation
fadd.s f18, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f16, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fadd.s f6, f7, f8, dyn # perform operation
fadd.s f6, f7, f8, rdn # perform operation
fadd.s f6, f7, f8, rmm # perform operation
fadd.s f6, f7, f8, rne # perform operation
fadd.s f6, f7, f8, rtz # perform operation
fadd.s f6, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f20, f15, f16, dyn # perform operation
fadd.s f20, f15, f16, rdn # perform operation
fadd.s f20, f15, f16, rmm # perform operation
fadd.s f20, f15, f16, rne # perform operation
fadd.s f20, f15, f16, rtz # perform operation
fadd.s f20, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fadd.s f7, f21, f13, dyn # perform operation
fadd.s f7, f21, f13, rdn # perform operation
fadd.s f7, f21, f13, rmm # perform operation
fadd.s f7, f21, f13, rne # perform operation
fadd.s f7, f21, f13, rtz # perform operation
fadd.s f7, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f24, 0(x2) # load 0xffffffff from memory into f24
fadd.s f12, f20, f24, dyn # perform operation
fadd.s f12, f20, f24, rdn # perform operation
fadd.s f12, f20, f24, rmm # perform operation
fadd.s f12, f20, f24, rne # perform operation
fadd.s f12, f20, f24, rtz # perform operation
fadd.s f12, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f20, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f23, f29, f18, dyn # perform operation
fadd.s f23, f29, f18, rdn # perform operation
fadd.s f23, f29, f18, rmm # perform operation
fadd.s f23, f29, f18, rne # perform operation
fadd.s f23, f29, f18, rtz # perform operation
fadd.s f23, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f29, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fadd.s f27, f17, f11, dyn # perform operation
fadd.s f27, f17, f11, rdn # perform operation
fadd.s f27, f17, f11, rmm # perform operation
fadd.s f27, f17, f11, rne # perform operation
fadd.s f27, f17, f11, rtz # perform operation
fadd.s f27, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f17, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
fadd.s f17, f15, f25, dyn # perform operation
fadd.s f17, f15, f25, rdn # perform operation
fadd.s f17, f15, f25, rmm # perform operation
fadd.s f17, f15, f25, rne # perform operation
fadd.s f17, f15, f25, rtz # perform operation
fadd.s f17, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f15, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fadd.s f10, f7, f24, dyn # perform operation
fadd.s f10, f7, f24, rdn # perform operation
fadd.s f10, f7, f24, rmm # perform operation
fadd.s f10, f7, f24, rne # perform operation
fadd.s f10, f7, f24, rtz # perform operation
fadd.s f10, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f7, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fadd.s f16, f19, f10, dyn # perform operation
fadd.s f16, f19, f10, rdn # perform operation
fadd.s f16, f19, f10, rmm # perform operation
fadd.s f16, f19, f10, rne # perform operation
fadd.s f16, f19, f10, rtz # perform operation
fadd.s f16, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f19, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fadd.s f18, f14, f2, dyn # perform operation
fadd.s f18, f14, f2, rdn # perform operation
fadd.s f18, f14, f2, rmm # perform operation
fadd.s f18, f14, f2, rne # perform operation
fadd.s f18, f14, f2, rtz # perform operation
fadd.s f18, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f14, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fadd.s f18, f19, f25, dyn # perform operation
fadd.s f18, f19, f25, rdn # perform operation
fadd.s f18, f19, f25, rmm # perform operation
fadd.s f18, f19, f25, rne # perform operation
fadd.s f18, f19, f25, rtz # perform operation
fadd.s f18, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f19, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fadd.s f11, f8, f31, dyn # perform operation
fadd.s f11, f8, f31, rdn # perform operation
fadd.s f11, f8, f31, rmm # perform operation
fadd.s f11, f8, f31, rne # perform operation
fadd.s f11, f8, f31, rtz # perform operation
fadd.s f11, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f8, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f24, f21, f18, dyn # perform operation
fadd.s f24, f21, f18, rdn # perform operation
fadd.s f24, f21, f18, rmm # perform operation
fadd.s f24, f21, f18, rne # perform operation
fadd.s f24, f21, f18, rtz # perform operation
fadd.s f24, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fadd.s f12, f7, f29, dyn # perform operation
fadd.s f12, f7, f29, rdn # perform operation
fadd.s f12, f7, f29, rmm # perform operation
fadd.s f12, f7, f29, rne # perform operation
fadd.s f12, f7, f29, rtz # perform operation
fadd.s f12, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f23, f25, f20, dyn # perform operation
fadd.s f23, f25, f20, rdn # perform operation
fadd.s f23, f25, f20, rmm # perform operation
fadd.s f23, f25, f20, rne # perform operation
fadd.s f23, f25, f20, rtz # perform operation
fadd.s f23, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f25, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fadd.s f16, f5, f6, dyn # perform operation
fadd.s f16, f5, f6, rdn # perform operation
fadd.s f16, f5, f6, rmm # perform operation
fadd.s f16, f5, f6, rne # perform operation
fadd.s f16, f5, f6, rtz # perform operation
fadd.s f16, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f5, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
fadd.s f13, f6, f8, dyn # perform operation
fadd.s f13, f6, f8, rdn # perform operation
fadd.s f13, f6, f8, rmm # perform operation
fadd.s f13, f6, f8, rne # perform operation
fadd.s f13, f6, f8, rtz # perform operation
fadd.s f13, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fadd.s f14, f2, f13, dyn # perform operation
fadd.s f14, f2, f13, rdn # perform operation
fadd.s f14, f2, f13, rmm # perform operation
fadd.s f14, f2, f13, rne # perform operation
fadd.s f14, f2, f13, rtz # perform operation
fadd.s f14, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f2, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f19, f27, f30, dyn # perform operation
fadd.s f19, f27, f30, rdn # perform operation
fadd.s f19, f27, f30, rmm # perform operation
fadd.s f19, f27, f30, rne # perform operation
fadd.s f19, f27, f30, rtz # perform operation
fadd.s f19, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fadd.s f5, f8, f16, dyn # perform operation
fadd.s f5, f8, f16, rdn # perform operation
fadd.s f5, f8, f16, rmm # perform operation
fadd.s f5, f8, f16, rne # perform operation
fadd.s f5, f8, f16, rtz # perform operation
fadd.s f5, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f8, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fadd.s f13, f12, f25, dyn # perform operation
fadd.s f13, f12, f25, rdn # perform operation
fadd.s f13, f12, f25, rmm # perform operation
fadd.s f13, f12, f25, rne # perform operation
fadd.s f13, f12, f25, rtz # perform operation
fadd.s f13, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fadd.s f18, f6, f2, dyn # perform operation
fadd.s f18, f6, f2, rdn # perform operation
fadd.s f18, f6, f2, rmm # perform operation
fadd.s f18, f6, f2, rne # perform operation
fadd.s f18, f6, f2, rtz # perform operation
fadd.s f18, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f6, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fadd.s f6, f19, f21, dyn # perform operation
fadd.s f6, f19, f21, rdn # perform operation
fadd.s f6, f19, f21, rmm # perform operation
fadd.s f6, f19, f21, rne # perform operation
fadd.s f6, f19, f21, rtz # perform operation
fadd.s f6, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f19, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fadd.s f23, f26, f28, dyn # perform operation
fadd.s f23, f26, f28, rdn # perform operation
fadd.s f23, f26, f28, rmm # perform operation
fadd.s f23, f26, f28, rne # perform operation
fadd.s f23, f26, f28, rtz # perform operation
fadd.s f23, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f26, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f3, f8, f6, dyn # perform operation
fadd.s f3, f8, f6, rdn # perform operation
fadd.s f3, f8, f6, rmm # perform operation
fadd.s f3, f8, f6, rne # perform operation
fadd.s f3, f8, f6, rtz # perform operation
fadd.s f3, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fadd.s f31, f3, f8, dyn # perform operation
fadd.s f31, f3, f8, rdn # perform operation
fadd.s f31, f3, f8, rmm # perform operation
fadd.s f31, f3, f8, rne # perform operation
fadd.s f31, f3, f8, rtz # perform operation
fadd.s f31, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fadd.s f24, f11, f26, dyn # perform operation
fadd.s f24, f11, f26, rdn # perform operation
fadd.s f24, f11, f26, rmm # perform operation
fadd.s f24, f11, f26, rne # perform operation
fadd.s f24, f11, f26, rtz # perform operation
fadd.s f24, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f11, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fadd.s f12, f11, f7, dyn # perform operation
fadd.s f12, f11, f7, rdn # perform operation
fadd.s f12, f11, f7, rmm # perform operation
fadd.s f12, f11, f7, rne # perform operation
fadd.s f12, f11, f7, rtz # perform operation
fadd.s f12, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f11, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fadd.s f29, f22, f1, dyn # perform operation
fadd.s f29, f22, f1, rdn # perform operation
fadd.s f29, f22, f1, rmm # perform operation
fadd.s f29, f22, f1, rne # perform operation
fadd.s f29, f22, f1, rtz # perform operation
fadd.s f29, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f22, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fadd.s f28, f27, f8, dyn # perform operation
fadd.s f28, f27, f8, rdn # perform operation
fadd.s f28, f27, f8, rmm # perform operation
fadd.s f28, f27, f8, rne # perform operation
fadd.s f28, f27, f8, rtz # perform operation
fadd.s f28, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f27, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fadd.s f1, f23, f29, dyn # perform operation
fadd.s f1, f23, f29, rdn # perform operation
fadd.s f1, f23, f29, rmm # perform operation
fadd.s f1, f23, f29, rne # perform operation
fadd.s f1, f23, f29, rtz # perform operation
fadd.s f1, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fadd.s f29, f27, f18, dyn # perform operation
fadd.s f29, f27, f18, rdn # perform operation
fadd.s f29, f27, f18, rmm # perform operation
fadd.s f29, f27, f18, rne # perform operation
fadd.s f29, f27, f18, rtz # perform operation
fadd.s f29, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f22, f25, f1, dyn # perform operation
fadd.s f22, f25, f1, rdn # perform operation
fadd.s f22, f25, f1, rmm # perform operation
fadd.s f22, f25, f1, rne # perform operation
fadd.s f22, f25, f1, rtz # perform operation
fadd.s f22, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f25, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fadd.s f15, f30, f12, dyn # perform operation
fadd.s f15, f30, f12, rdn # perform operation
fadd.s f15, f30, f12, rmm # perform operation
fadd.s f15, f30, f12, rne # perform operation
fadd.s f15, f30, f12, rtz # perform operation
fadd.s f15, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
fadd.s f13, f27, f19, dyn # perform operation
fadd.s f13, f27, f19, rdn # perform operation
fadd.s f13, f27, f19, rmm # perform operation
fadd.s f13, f27, f19, rne # perform operation
fadd.s f13, f27, f19, rtz # perform operation
fadd.s f13, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f27, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fadd.s f8, f31, f12, dyn # perform operation
fadd.s f8, f31, f12, rdn # perform operation
fadd.s f8, f31, f12, rmm # perform operation
fadd.s f8, f31, f12, rne # perform operation
fadd.s f8, f31, f12, rtz # perform operation
fadd.s f8, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f31, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f18, f17, f20, dyn # perform operation
fadd.s f18, f17, f20, rdn # perform operation
fadd.s f18, f17, f20, rmm # perform operation
fadd.s f18, f17, f20, rne # perform operation
fadd.s f18, f17, f20, rtz # perform operation
fadd.s f18, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f17, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fadd.s f3, f9, f26, dyn # perform operation
fadd.s f3, f9, f26, rdn # perform operation
fadd.s f3, f9, f26, rmm # perform operation
fadd.s f3, f9, f26, rne # perform operation
fadd.s f3, f9, f26, rtz # perform operation
fadd.s f3, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fadd.s f21, f9, f19, dyn # perform operation
fadd.s f21, f9, f19, rdn # perform operation
fadd.s f21, f9, f19, rmm # perform operation
fadd.s f21, f9, f19, rne # perform operation
fadd.s f21, f9, f19, rtz # perform operation
fadd.s f21, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f9, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fadd.s f18, f11, f25, dyn # perform operation
fadd.s f18, f11, f25, rdn # perform operation
fadd.s f18, f11, f25, rmm # perform operation
fadd.s f18, f11, f25, rne # perform operation
fadd.s f18, f11, f25, rtz # perform operation
fadd.s f18, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f11, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fadd.s f23, f7, f5, dyn # perform operation
fadd.s f23, f7, f5, rdn # perform operation
fadd.s f23, f7, f5, rmm # perform operation
fadd.s f23, f7, f5, rne # perform operation
fadd.s f23, f7, f5, rtz # perform operation
fadd.s f23, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f7, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fadd.s f25, f31, f11, dyn # perform operation
fadd.s f25, f31, f11, rdn # perform operation
fadd.s f25, f31, f11, rmm # perform operation
fadd.s f25, f31, f11, rne # perform operation
fadd.s f25, f31, f11, rtz # perform operation
fadd.s f25, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f31, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fadd.s f21, f10, f16, dyn # perform operation
fadd.s f21, f10, f16, rdn # perform operation
fadd.s f21, f10, f16, rmm # perform operation
fadd.s f21, f10, f16, rne # perform operation
fadd.s f21, f10, f16, rtz # perform operation
fadd.s f21, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f10, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fadd.s f14, f31, f23, dyn # perform operation
fadd.s f14, f31, f23, rdn # perform operation
fadd.s f14, f31, f23, rmm # perform operation
fadd.s f14, f31, f23, rne # perform operation
fadd.s f14, f31, f23, rtz # perform operation
fadd.s f14, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f31, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fadd.s f3, f15, f26, dyn # perform operation
fadd.s f3, f15, f26, rdn # perform operation
fadd.s f3, f15, f26, rmm # perform operation
fadd.s f3, f15, f26, rne # perform operation
fadd.s f3, f15, f26, rtz # perform operation
fadd.s f3, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fadd.s f7, f10, f31, dyn # perform operation
fadd.s f7, f10, f31, rdn # perform operation
fadd.s f7, f10, f31, rmm # perform operation
fadd.s f7, f10, f31, rne # perform operation
fadd.s f7, f10, f31, rtz # perform operation
fadd.s f7, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f10, f7, f20, dyn # perform operation
fadd.s f10, f7, f20, rdn # perform operation
fadd.s f10, f7, f20, rmm # perform operation
fadd.s f10, f7, f20, rne # perform operation
fadd.s f10, f7, f20, rtz # perform operation
fadd.s f10, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f7, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fadd.s f10, f20, f31, dyn # perform operation
fadd.s f10, f20, f31, rdn # perform operation
fadd.s f10, f20, f31, rmm # perform operation
fadd.s f10, f20, f31, rne # perform operation
fadd.s f10, f20, f31, rtz # perform operation
fadd.s f10, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f20, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fadd.s f25, f10, f2, dyn # perform operation
fadd.s f25, f10, f2, rdn # perform operation
fadd.s f25, f10, f2, rmm # perform operation
fadd.s f25, f10, f2, rne # perform operation
fadd.s f25, f10, f2, rtz # perform operation
fadd.s f25, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f10, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fadd.s f23, f16, f17, dyn # perform operation
fadd.s f23, f16, f17, rdn # perform operation
fadd.s f23, f16, f17, rmm # perform operation
fadd.s f23, f16, f17, rne # perform operation
fadd.s f23, f16, f17, rtz # perform operation
fadd.s f23, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fadd.s f29, f31, f5, dyn # perform operation
fadd.s f29, f31, f5, rdn # perform operation
fadd.s f29, f31, f5, rmm # perform operation
fadd.s f29, f31, f5, rne # perform operation
fadd.s f29, f31, f5, rtz # perform operation
fadd.s f29, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f31, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fadd.s f23, f27, f3, dyn # perform operation
fadd.s f23, f27, f3, rdn # perform operation
fadd.s f23, f27, f3, rmm # perform operation
fadd.s f23, f27, f3, rne # perform operation
fadd.s f23, f27, f3, rtz # perform operation
fadd.s f23, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f27, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fadd.s f5, f7, f31, dyn # perform operation
fadd.s f5, f7, f31, rdn # perform operation
fadd.s f5, f7, f31, rmm # perform operation
fadd.s f5, f7, f31, rne # perform operation
fadd.s f5, f7, f31, rtz # perform operation
fadd.s f5, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f7, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fadd.s f19, f10, f7, dyn # perform operation
fadd.s f19, f10, f7, rdn # perform operation
fadd.s f19, f10, f7, rmm # perform operation
fadd.s f19, f10, f7, rne # perform operation
fadd.s f19, f10, f7, rtz # perform operation
fadd.s f19, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f10, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fadd.s f1, f31, f29, dyn # perform operation
fadd.s f1, f31, f29, rdn # perform operation
fadd.s f1, f31, f29, rmm # perform operation
fadd.s f1, f31, f29, rne # perform operation
fadd.s f1, f31, f29, rtz # perform operation
fadd.s f1, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f31, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fadd.s f11, f22, f2, dyn # perform operation
fadd.s f11, f22, f2, rdn # perform operation
fadd.s f11, f22, f2, rmm # perform operation
fadd.s f11, f22, f2, rne # perform operation
fadd.s f11, f22, f2, rtz # perform operation
fadd.s f11, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f22, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fadd.s f20, f8, f29, dyn # perform operation
fadd.s f20, f8, f29, rdn # perform operation
fadd.s f20, f8, f29, rmm # perform operation
fadd.s f20, f8, f29, rne # perform operation
fadd.s f20, f8, f29, rtz # perform operation
fadd.s f20, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fadd.s f23, f29, f13, dyn # perform operation
fadd.s f23, f29, f13, rdn # perform operation
fadd.s f23, f29, f13, rmm # perform operation
fadd.s f23, f29, f13, rne # perform operation
fadd.s f23, f29, f13, rtz # perform operation
fadd.s f23, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f29, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f13, f7, f1, dyn # perform operation
fadd.s f13, f7, f1, rdn # perform operation
fadd.s f13, f7, f1, rmm # perform operation
fadd.s f13, f7, f1, rne # perform operation
fadd.s f13, f7, f1, rtz # perform operation
fadd.s f13, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f7, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fadd.s f30, f18, f14, dyn # perform operation
fadd.s f30, f18, f14, rdn # perform operation
fadd.s f30, f18, f14, rmm # perform operation
fadd.s f30, f18, f14, rne # perform operation
fadd.s f30, f18, f14, rtz # perform operation
fadd.s f30, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f18, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f11, f28, f1, dyn # perform operation
fadd.s f11, f28, f1, rdn # perform operation
fadd.s f11, f28, f1, rmm # perform operation
fadd.s f11, f28, f1, rne # perform operation
fadd.s f11, f28, f1, rtz # perform operation
fadd.s f11, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f28, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f14, f29, f20, dyn # perform operation
fadd.s f14, f29, f20, rdn # perform operation
fadd.s f14, f29, f20, rmm # perform operation
fadd.s f14, f29, f20, rne # perform operation
fadd.s f14, f29, f20, rtz # perform operation
fadd.s f14, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f29, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
fadd.s f10, f24, f31, dyn # perform operation
fadd.s f10, f24, f31, rdn # perform operation
fadd.s f10, f24, f31, rmm # perform operation
fadd.s f10, f24, f31, rne # perform operation
fadd.s f10, f24, f31, rtz # perform operation
fadd.s f10, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f24, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fadd.s f7, f16, f23, dyn # perform operation
fadd.s f7, f16, f23, rdn # perform operation
fadd.s f7, f16, f23, rmm # perform operation
fadd.s f7, f16, f23, rne # perform operation
fadd.s f7, f16, f23, rtz # perform operation
fadd.s f7, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f16, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fadd.s f10, f3, f14, dyn # perform operation
fadd.s f10, f3, f14, rdn # perform operation
fadd.s f10, f3, f14, rmm # perform operation
fadd.s f10, f3, f14, rne # perform operation
fadd.s f10, f3, f14, rtz # perform operation
fadd.s f10, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f3, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fadd.s f8, f23, f10, dyn # perform operation
fadd.s f8, f23, f10, rdn # perform operation
fadd.s f8, f23, f10, rmm # perform operation
fadd.s f8, f23, f10, rne # perform operation
fadd.s f8, f23, f10, rtz # perform operation
fadd.s f8, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f23, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fadd.s f19, f8, f2, dyn # perform operation
fadd.s f19, f8, f2, rdn # perform operation
fadd.s f19, f8, f2, rmm # perform operation
fadd.s f19, f8, f2, rne # perform operation
fadd.s f19, f8, f2, rtz # perform operation
fadd.s f19, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f8, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fadd.s f24, f11, f21, dyn # perform operation
fadd.s f24, f11, f21, rdn # perform operation
fadd.s f24, f11, f21, rmm # perform operation
fadd.s f24, f11, f21, rne # perform operation
fadd.s f24, f11, f21, rtz # perform operation
fadd.s f24, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f11, f8, f18, dyn # perform operation
fadd.s f11, f8, f18, rdn # perform operation
fadd.s f11, f8, f18, rmm # perform operation
fadd.s f11, f8, f18, rne # perform operation
fadd.s f11, f8, f18, rtz # perform operation
fadd.s f11, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f8, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fadd.s f30, f11, f17, dyn # perform operation
fadd.s f30, f11, f17, rdn # perform operation
fadd.s f30, f11, f17, rmm # perform operation
fadd.s f30, f11, f17, rne # perform operation
fadd.s f30, f11, f17, rtz # perform operation
fadd.s f30, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f11, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f5, f1, f20, dyn # perform operation
fadd.s f5, f1, f20, rdn # perform operation
fadd.s f5, f1, f20, rmm # perform operation
fadd.s f5, f1, f20, rne # perform operation
fadd.s f5, f1, f20, rtz # perform operation
fadd.s f5, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f1, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fadd.s f23, f7, f10, dyn # perform operation
fadd.s f23, f7, f10, rdn # perform operation
fadd.s f23, f7, f10, rmm # perform operation
fadd.s f23, f7, f10, rne # perform operation
fadd.s f23, f7, f10, rtz # perform operation
fadd.s f23, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f7, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fadd.s f13, f15, f6, dyn # perform operation
fadd.s f13, f15, f6, rdn # perform operation
fadd.s f13, f15, f6, rmm # perform operation
fadd.s f13, f15, f6, rne # perform operation
fadd.s f13, f15, f6, rtz # perform operation
fadd.s f13, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f31, f15, f19, dyn # perform operation
fadd.s f31, f15, f19, rdn # perform operation
fadd.s f31, f15, f19, rmm # perform operation
fadd.s f31, f15, f19, rne # perform operation
fadd.s f31, f15, f19, rtz # perform operation
fadd.s f31, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fadd.s f25, f27, f22, dyn # perform operation
fadd.s f25, f27, f22, rdn # perform operation
fadd.s f25, f27, f22, rmm # perform operation
fadd.s f25, f27, f22, rne # perform operation
fadd.s f25, f27, f22, rtz # perform operation
fadd.s f25, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f27, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fadd.s f9, f10, f5, dyn # perform operation
fadd.s f9, f10, f5, rdn # perform operation
fadd.s f9, f10, f5, rmm # perform operation
fadd.s f9, f10, f5, rne # perform operation
fadd.s f9, f10, f5, rtz # perform operation
fadd.s f9, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f10, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fadd.s f8, f13, f25, dyn # perform operation
fadd.s f8, f13, f25, rdn # perform operation
fadd.s f8, f13, f25, rmm # perform operation
fadd.s f8, f13, f25, rne # perform operation
fadd.s f8, f13, f25, rtz # perform operation
fadd.s f8, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f13, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fadd.s f11, f6, f5, dyn # perform operation
fadd.s f11, f6, f5, rdn # perform operation
fadd.s f11, f6, f5, rmm # perform operation
fadd.s f11, f6, f5, rne # perform operation
fadd.s f11, f6, f5, rtz # perform operation
fadd.s f11, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f6, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fadd.s f18, f8, f30, dyn # perform operation
fadd.s f18, f8, f30, rdn # perform operation
fadd.s f18, f8, f30, rmm # perform operation
fadd.s f18, f8, f30, rne # perform operation
fadd.s f18, f8, f30, rtz # perform operation
fadd.s f18, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f8, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fadd.s f30, f7, f29, dyn # perform operation
fadd.s f30, f7, f29, rdn # perform operation
fadd.s f30, f7, f29, rmm # perform operation
fadd.s f30, f7, f29, rne # perform operation
fadd.s f30, f7, f29, rtz # perform operation
fadd.s f30, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f7, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fadd.s f19, f12, f14, dyn # perform operation
fadd.s f19, f12, f14, rdn # perform operation
fadd.s f19, f12, f14, rmm # perform operation
fadd.s f19, f12, f14, rne # perform operation
fadd.s f19, f12, f14, rtz # perform operation
fadd.s f19, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f12, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fadd.s f6, f19, f17, dyn # perform operation
fadd.s f6, f19, f17, rdn # perform operation
fadd.s f6, f19, f17, rmm # perform operation
fadd.s f6, f19, f17, rne # perform operation
fadd.s f6, f19, f17, rtz # perform operation
fadd.s f6, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f19, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fadd.s f26, f31, f30, dyn # perform operation
fadd.s f26, f31, f30, rdn # perform operation
fadd.s f26, f31, f30, rmm # perform operation
fadd.s f26, f31, f30, rne # perform operation
fadd.s f26, f31, f30, rtz # perform operation
fadd.s f26, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f31, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fadd.s f3, f20, f25, dyn # perform operation
fadd.s f3, f20, f25, rdn # perform operation
fadd.s f3, f20, f25, rmm # perform operation
fadd.s f3, f20, f25, rne # perform operation
fadd.s f3, f20, f25, rtz # perform operation
fadd.s f3, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f20, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fadd.s f3, f21, f14, dyn # perform operation
fadd.s f3, f21, f14, rdn # perform operation
fadd.s f3, f21, f14, rmm # perform operation
fadd.s f3, f21, f14, rne # perform operation
fadd.s f3, f21, f14, rtz # perform operation
fadd.s f3, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f21, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fadd.s f7, f11, f2, dyn # perform operation
fadd.s f7, f11, f2, rdn # perform operation
fadd.s f7, f11, f2, rmm # perform operation
fadd.s f7, f11, f2, rne # perform operation
fadd.s f7, f11, f2, rtz # perform operation
fadd.s f7, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f11, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fadd.s f10, f30, f17, dyn # perform operation
fadd.s f10, f30, f17, rdn # perform operation
fadd.s f10, f30, f17, rmm # perform operation
fadd.s f10, f30, f17, rne # perform operation
fadd.s f10, f30, f17, rtz # perform operation
fadd.s f10, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f30, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fadd.s f11, f1, f19, dyn # perform operation
fadd.s f11, f1, f19, rdn # perform operation
fadd.s f11, f1, f19, rmm # perform operation
fadd.s f11, f1, f19, rne # perform operation
fadd.s f11, f1, f19, rtz # perform operation
fadd.s f11, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f1, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fadd.s f9, f10, f27, dyn # perform operation
fadd.s f9, f10, f27, rdn # perform operation
fadd.s f9, f10, f27, rmm # perform operation
fadd.s f9, f10, f27, rne # perform operation
fadd.s f9, f10, f27, rtz # perform operation
fadd.s f9, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f10, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fadd.s f7, f13, f6, dyn # perform operation
fadd.s f7, f13, f6, rdn # perform operation
fadd.s f7, f13, f6, rmm # perform operation
fadd.s f7, f13, f6, rne # perform operation
fadd.s f7, f13, f6, rtz # perform operation
fadd.s f7, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f13, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f29, 0(x2) # load 0xffbfffff from memory into f29
fadd.s f13, f1, f29, dyn # perform operation
fadd.s f13, f1, f29, rdn # perform operation
fadd.s f13, f1, f29, rmm # perform operation
fadd.s f13, f1, f29, rne # perform operation
fadd.s f13, f1, f29, rtz # perform operation
fadd.s f13, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fadd.s f22, f14, f12, dyn # perform operation
fadd.s f22, f14, f12, rdn # perform operation
fadd.s f22, f14, f12, rmm # perform operation
fadd.s f22, f14, f12, rne # perform operation
fadd.s f22, f14, f12, rtz # perform operation
fadd.s f22, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fadd.s f16, f28, f30, dyn # perform operation
fadd.s f16, f28, f30, rdn # perform operation
fadd.s f16, f28, f30, rmm # perform operation
fadd.s f16, f28, f30, rne # perform operation
fadd.s f16, f28, f30, rtz # perform operation
fadd.s f16, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f28, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fadd.s f27, f8, f29, dyn # perform operation
fadd.s f27, f8, f29, rdn # perform operation
fadd.s f27, f8, f29, rmm # perform operation
fadd.s f27, f8, f29, rne # perform operation
fadd.s f27, f8, f29, rtz # perform operation
fadd.s f27, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f8, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fadd.s f1, f25, f10, dyn # perform operation
fadd.s f1, f25, f10, rdn # perform operation
fadd.s f1, f25, f10, rmm # perform operation
fadd.s f1, f25, f10, rne # perform operation
fadd.s f1, f25, f10, rtz # perform operation
fadd.s f1, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f25, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fadd.s f11, f19, f20, dyn # perform operation
fadd.s f11, f19, f20, rdn # perform operation
fadd.s f11, f19, f20, rmm # perform operation
fadd.s f11, f19, f20, rne # perform operation
fadd.s f11, f19, f20, rtz # perform operation
fadd.s f11, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f30, f3, f8, dyn # perform operation
fadd.s f30, f3, f8, rdn # perform operation
fadd.s f30, f3, f8, rmm # perform operation
fadd.s f30, f3, f8, rne # perform operation
fadd.s f30, f3, f8, rtz # perform operation
fadd.s f30, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f3, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f14, f5, f30, dyn # perform operation
fadd.s f14, f5, f30, rdn # perform operation
fadd.s f14, f5, f30, rmm # perform operation
fadd.s f14, f5, f30, rne # perform operation
fadd.s f14, f5, f30, rtz # perform operation
fadd.s f14, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f5, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fadd.s f11, f3, f31, dyn # perform operation
fadd.s f11, f3, f31, rdn # perform operation
fadd.s f11, f3, f31, rmm # perform operation
fadd.s f11, f3, f31, rne # perform operation
fadd.s f11, f3, f31, rtz # perform operation
fadd.s f11, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f3, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fadd.s f10, f19, f1, dyn # perform operation
fadd.s f10, f19, f1, rdn # perform operation
fadd.s f10, f19, f1, rmm # perform operation
fadd.s f10, f19, f1, rne # perform operation
fadd.s f10, f19, f1, rtz # perform operation
fadd.s f10, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f19, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fadd.s f12, f9, f23, dyn # perform operation
fadd.s f12, f9, f23, rdn # perform operation
fadd.s f12, f9, f23, rmm # perform operation
fadd.s f12, f9, f23, rne # perform operation
fadd.s f12, f9, f23, rtz # perform operation
fadd.s f12, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fadd.s f8, f30, f10, dyn # perform operation
fadd.s f8, f30, f10, rdn # perform operation
fadd.s f8, f30, f10, rmm # perform operation
fadd.s f8, f30, f10, rne # perform operation
fadd.s f8, f30, f10, rtz # perform operation
fadd.s f8, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f30, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fadd.s f22, f27, f14, dyn # perform operation
fadd.s f22, f27, f14, rdn # perform operation
fadd.s f22, f27, f14, rmm # perform operation
fadd.s f22, f27, f14, rne # perform operation
fadd.s f22, f27, f14, rtz # perform operation
fadd.s f22, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f25, f19, f7, dyn # perform operation
fadd.s f25, f19, f7, rdn # perform operation
fadd.s f25, f19, f7, rmm # perform operation
fadd.s f25, f19, f7, rne # perform operation
fadd.s f25, f19, f7, rtz # perform operation
fadd.s f25, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f19, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fadd.s f23, f27, f30, dyn # perform operation
fadd.s f23, f27, f30, rdn # perform operation
fadd.s f23, f27, f30, rmm # perform operation
fadd.s f23, f27, f30, rne # perform operation
fadd.s f23, f27, f30, rtz # perform operation
fadd.s f23, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fadd.s f1, f26, f16, dyn # perform operation
fadd.s f1, f26, f16, rdn # perform operation
fadd.s f1, f26, f16, rmm # perform operation
fadd.s f1, f26, f16, rne # perform operation
fadd.s f1, f26, f16, rtz # perform operation
fadd.s f1, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f26, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f6, f13, f12, dyn # perform operation
fadd.s f6, f13, f12, rdn # perform operation
fadd.s f6, f13, f12, rmm # perform operation
fadd.s f6, f13, f12, rne # perform operation
fadd.s f6, f13, f12, rtz # perform operation
fadd.s f6, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f13, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f20, f13, f2, dyn # perform operation
fadd.s f20, f13, f2, rdn # perform operation
fadd.s f20, f13, f2, rmm # perform operation
fadd.s f20, f13, f2, rne # perform operation
fadd.s f20, f13, f2, rtz # perform operation
fadd.s f20, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f13, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fadd.s f23, f6, f29, dyn # perform operation
fadd.s f23, f6, f29, rdn # perform operation
fadd.s f23, f6, f29, rmm # perform operation
fadd.s f23, f6, f29, rne # perform operation
fadd.s f23, f6, f29, rtz # perform operation
fadd.s f23, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f6, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fadd.s f6, f28, f31, dyn # perform operation
fadd.s f6, f28, f31, rdn # perform operation
fadd.s f6, f28, f31, rmm # perform operation
fadd.s f6, f28, f31, rne # perform operation
fadd.s f6, f28, f31, rtz # perform operation
fadd.s f6, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f28, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fadd.s f7, f18, f11, dyn # perform operation
fadd.s f7, f18, f11, rdn # perform operation
fadd.s f7, f18, f11, rmm # perform operation
fadd.s f7, f18, f11, rne # perform operation
fadd.s f7, f18, f11, rtz # perform operation
fadd.s f7, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fadd.s f21, f18, f11, dyn # perform operation
fadd.s f21, f18, f11, rdn # perform operation
fadd.s f21, f18, f11, rmm # perform operation
fadd.s f21, f18, f11, rne # perform operation
fadd.s f21, f18, f11, rtz # perform operation
fadd.s f21, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f18, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fadd.s f26, f19, f3, dyn # perform operation
fadd.s f26, f19, f3, rdn # perform operation
fadd.s f26, f19, f3, rmm # perform operation
fadd.s f26, f19, f3, rne # perform operation
fadd.s f26, f19, f3, rtz # perform operation
fadd.s f26, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f19, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fadd.s f27, f5, f12, dyn # perform operation
fadd.s f27, f5, f12, rdn # perform operation
fadd.s f27, f5, f12, rmm # perform operation
fadd.s f27, f5, f12, rne # perform operation
fadd.s f27, f5, f12, rtz # perform operation
fadd.s f27, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f5, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fadd.s f5, f3, f6, dyn # perform operation
fadd.s f5, f3, f6, rdn # perform operation
fadd.s f5, f3, f6, rmm # perform operation
fadd.s f5, f3, f6, rne # perform operation
fadd.s f5, f3, f6, rtz # perform operation
fadd.s f5, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f3, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
fadd.s f26, f10, f18, dyn # perform operation
fadd.s f26, f10, f18, rdn # perform operation
fadd.s f26, f10, f18, rmm # perform operation
fadd.s f26, f10, f18, rne # perform operation
fadd.s f26, f10, f18, rtz # perform operation
fadd.s f26, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f10, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fadd.s f10, f15, f26, dyn # perform operation
fadd.s f10, f15, f26, rdn # perform operation
fadd.s f10, f15, f26, rmm # perform operation
fadd.s f10, f15, f26, rne # perform operation
fadd.s f10, f15, f26, rtz # perform operation
fadd.s f10, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f15, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f1, f19, f20, dyn # perform operation
fadd.s f1, f19, f20, rdn # perform operation
fadd.s f1, f19, f20, rmm # perform operation
fadd.s f1, f19, f20, rne # perform operation
fadd.s f1, f19, f20, rtz # perform operation
fadd.s f1, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
fadd.s f31, f30, f21, dyn # perform operation
fadd.s f31, f30, f21, rdn # perform operation
fadd.s f31, f30, f21, rmm # perform operation
fadd.s f31, f30, f21, rne # perform operation
fadd.s f31, f30, f21, rtz # perform operation
fadd.s f31, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f30, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fadd.s f5, f1, f30, dyn # perform operation
fadd.s f5, f1, f30, rdn # perform operation
fadd.s f5, f1, f30, rmm # perform operation
fadd.s f5, f1, f30, rne # perform operation
fadd.s f5, f1, f30, rtz # perform operation
fadd.s f5, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f1, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fadd.s f25, f26, f15, dyn # perform operation
fadd.s f25, f26, f15, rdn # perform operation
fadd.s f25, f26, f15, rmm # perform operation
fadd.s f25, f26, f15, rne # perform operation
fadd.s f25, f26, f15, rtz # perform operation
fadd.s f25, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fadd.s f6, f17, f15, dyn # perform operation
fadd.s f6, f17, f15, rdn # perform operation
fadd.s f6, f17, f15, rmm # perform operation
fadd.s f6, f17, f15, rne # perform operation
fadd.s f6, f17, f15, rtz # perform operation
fadd.s f6, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f17, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fadd.s f28, f2, f27, dyn # perform operation
fadd.s f28, f2, f27, rdn # perform operation
fadd.s f28, f2, f27, rmm # perform operation
fadd.s f28, f2, f27, rne # perform operation
fadd.s f28, f2, f27, rtz # perform operation
fadd.s f28, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f2, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fadd.s f10, f31, f26, dyn # perform operation
fadd.s f10, f31, f26, rdn # perform operation
fadd.s f10, f31, f26, rmm # perform operation
fadd.s f10, f31, f26, rne # perform operation
fadd.s f10, f31, f26, rtz # perform operation
fadd.s f10, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fadd.s f25, f9, f10, dyn # perform operation
fadd.s f25, f9, f10, rdn # perform operation
fadd.s f25, f9, f10, rmm # perform operation
fadd.s f25, f9, f10, rne # perform operation
fadd.s f25, f9, f10, rtz # perform operation
fadd.s f25, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f9, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fadd.s f31, f26, f19, dyn # perform operation
fadd.s f31, f26, f19, rdn # perform operation
fadd.s f31, f26, f19, rmm # perform operation
fadd.s f31, f26, f19, rne # perform operation
fadd.s f31, f26, f19, rtz # perform operation
fadd.s f31, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f26, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fadd.s f20, f14, f24, dyn # perform operation
fadd.s f20, f14, f24, rdn # perform operation
fadd.s f20, f14, f24, rmm # perform operation
fadd.s f20, f14, f24, rne # perform operation
fadd.s f20, f14, f24, rtz # perform operation
fadd.s f20, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f23, 0(x2) # load 0xffffffff from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fadd.s f8, f23, f1, dyn # perform operation
fadd.s f8, f23, f1, rdn # perform operation
fadd.s f8, f23, f1, rmm # perform operation
fadd.s f8, f23, f1, rne # perform operation
fadd.s f8, f23, f1, rtz # perform operation
fadd.s f8, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f23, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f18, 0(x2) # load 0xffffffff from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fadd.s f23, f18, f13, dyn # perform operation
fadd.s f23, f18, f13, rdn # perform operation
fadd.s f23, f18, f13, rmm # perform operation
fadd.s f23, f18, f13, rne # perform operation
fadd.s f23, f18, f13, rtz # perform operation
fadd.s f23, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f18, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f11, 0(x2) # load 0xffffffff from memory into f11
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fadd.s f28, f11, f8, dyn # perform operation
fadd.s f28, f11, f8, rdn # perform operation
fadd.s f28, f11, f8, rmm # perform operation
fadd.s f28, f11, f8, rne # perform operation
fadd.s f28, f11, f8, rtz # perform operation
fadd.s f28, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f11, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f19, f22, f10, dyn # perform operation
fadd.s f19, f22, f10, rdn # perform operation
fadd.s f19, f22, f10, rmm # perform operation
fadd.s f19, f22, f10, rne # perform operation
fadd.s f19, f22, f10, rtz # perform operation
fadd.s f19, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f22, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fadd.s f23, f1, f27, dyn # perform operation
fadd.s f23, f1, f27, rdn # perform operation
fadd.s f23, f1, f27, rmm # perform operation
fadd.s f23, f1, f27, rne # perform operation
fadd.s f23, f1, f27, rtz # perform operation
fadd.s f23, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f1, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f6, 0(x2) # load 0xffffffff from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f20, f6, f17, dyn # perform operation
fadd.s f20, f6, f17, rdn # perform operation
fadd.s f20, f6, f17, rmm # perform operation
fadd.s f20, f6, f17, rne # perform operation
fadd.s f20, f6, f17, rtz # perform operation
fadd.s f20, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fadd.s f15, f5, f19, dyn # perform operation
fadd.s f15, f5, f19, rdn # perform operation
fadd.s f15, f5, f19, rmm # perform operation
fadd.s f15, f5, f19, rne # perform operation
fadd.s f15, f5, f19, rtz # perform operation
fadd.s f15, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fadd.s f13, f14, f19, dyn # perform operation
fadd.s f13, f14, f19, rdn # perform operation
fadd.s f13, f14, f19, rmm # perform operation
fadd.s f13, f14, f19, rne # perform operation
fadd.s f13, f14, f19, rtz # perform operation
fadd.s f13, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f14, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f24, f1, f25, dyn # perform operation
fadd.s f24, f1, f25, rdn # perform operation
fadd.s f24, f1, f25, rmm # perform operation
fadd.s f24, f1, f25, rne # perform operation
fadd.s f24, f1, f25, rtz # perform operation
fadd.s f24, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f6, f5, f25, dyn # perform operation
fadd.s f6, f5, f25, rdn # perform operation
fadd.s f6, f5, f25, rmm # perform operation
fadd.s f6, f5, f25, rne # perform operation
fadd.s f6, f5, f25, rtz # perform operation
fadd.s f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f21, 0(x2) # load 0xffffffff from memory into f21
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
fadd.s f18, f21, f24, dyn # perform operation
fadd.s f18, f21, f24, rdn # perform operation
fadd.s f18, f21, f24, rmm # perform operation
fadd.s f18, f21, f24, rne # perform operation
fadd.s f18, f21, f24, rtz # perform operation
fadd.s f18, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f21, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f8, 0(x2) # load 0xffffffff from memory into f8
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fadd.s f21, f8, f17, dyn # perform operation
fadd.s f21, f8, f17, rdn # perform operation
fadd.s f21, f8, f17, rmm # perform operation
fadd.s f21, f8, f17, rne # perform operation
fadd.s f21, f8, f17, rtz # perform operation
fadd.s f21, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f8, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f27, 0(x2) # load 0xffffffff from memory into f27
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fadd.s f9, f27, f12, dyn # perform operation
fadd.s f9, f27, f12, rdn # perform operation
fadd.s f9, f27, f12, rmm # perform operation
fadd.s f9, f27, f12, rne # perform operation
fadd.s f9, f27, f12, rtz # perform operation
fadd.s f9, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fadd.s f6, f9, f30, dyn # perform operation
fadd.s f6, f9, f30, rdn # perform operation
fadd.s f6, f9, f30, rmm # perform operation
fadd.s f6, f9, f30, rne # perform operation
fadd.s f6, f9, f30, rtz # perform operation
fadd.s f6, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f9, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f15, 0(x2) # load 0xffffffff from memory into f15
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f20, f15, f16, dyn # perform operation
fadd.s f20, f15, f16, rdn # perform operation
fadd.s f20, f15, f16, rmm # perform operation
fadd.s f20, f15, f16, rne # perform operation
fadd.s f20, f15, f16, rtz # perform operation
fadd.s f20, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f15, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fadd.s f20, f5, f16, dyn # perform operation
fadd.s f20, f5, f16, rdn # perform operation
fadd.s f20, f5, f16, rmm # perform operation
fadd.s f20, f5, f16, rne # perform operation
fadd.s f20, f5, f16, rtz # perform operation
fadd.s f20, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f5, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f19, 0(x2) # load 0xffffffff from memory into f19
fadd.s f15, f22, f19, dyn # perform operation
fadd.s f15, f22, f19, rdn # perform operation
fadd.s f15, f22, f19, rmm # perform operation
fadd.s f15, f22, f19, rne # perform operation
fadd.s f15, f22, f19, rtz # perform operation
fadd.s f15, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f22, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f5, 0(x2) # load 0xffffffff from memory into f5
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fadd.s f17, f5, f28, dyn # perform operation
fadd.s f17, f5, f28, rdn # perform operation
fadd.s f17, f5, f28, rmm # perform operation
fadd.s f17, f5, f28, rne # perform operation
fadd.s f17, f5, f28, rtz # perform operation
fadd.s f17, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f22, 0(x2) # load 0xffffffff from memory into f22
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f30, f22, f18, dyn # perform operation
fadd.s f30, f22, f18, rdn # perform operation
fadd.s f30, f22, f18, rmm # perform operation
fadd.s f30, f22, f18, rne # perform operation
fadd.s f30, f22, f18, rtz # perform operation
fadd.s f30, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f22, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f13, 0(x2) # load 0xffffffff from memory into f13
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fadd.s f9, f13, f3, dyn # perform operation
fadd.s f9, f13, f3, rdn # perform operation
fadd.s f9, f13, f3, rmm # perform operation
fadd.s f9, f13, f3, rne # perform operation
fadd.s f9, f13, f3, rtz # perform operation
fadd.s f9, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f26, 0(x2) # load 0xffffffff from memory into f26
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fadd.s f15, f26, f29, dyn # perform operation
fadd.s f15, f26, f29, rdn # perform operation
fadd.s f15, f26, f29, rmm # perform operation
fadd.s f15, f26, f29, rne # perform operation
fadd.s f15, f26, f29, rtz # perform operation
fadd.s f15, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f26, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffffffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fadd.s f25, f2, f5, dyn # perform operation
fadd.s f25, f2, f5, rdn # perform operation
fadd.s f25, f2, f5, rmm # perform operation
fadd.s f25, f2, f5, rne # perform operation
fadd.s f25, f2, f5, rtz # perform operation
fadd.s f25, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f2, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fadd.s f24, f28, f13, dyn # perform operation
fadd.s f24, f28, f13, rdn # perform operation
fadd.s f24, f28, f13, rmm # perform operation
fadd.s f24, f28, f13, rne # perform operation
fadd.s f24, f28, f13, rtz # perform operation
fadd.s f24, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fadd.s f24, f27, f1, dyn # perform operation
fadd.s f24, f27, f1, rdn # perform operation
fadd.s f24, f27, f1, rmm # perform operation
fadd.s f24, f27, f1, rne # perform operation
fadd.s f24, f27, f1, rtz # perform operation
fadd.s f24, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f27, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fadd.s f2, f17, f13, dyn # perform operation
fadd.s f2, f17, f13, rdn # perform operation
fadd.s f2, f17, f13, rmm # perform operation
fadd.s f2, f17, f13, rne # perform operation
fadd.s f2, f17, f13, rtz # perform operation
fadd.s f2, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f17, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fadd.s f29, f27, f21, dyn # perform operation
fadd.s f29, f27, f21, rdn # perform operation
fadd.s f29, f27, f21, rmm # perform operation
fadd.s f29, f27, f21, rne # perform operation
fadd.s f29, f27, f21, rtz # perform operation
fadd.s f29, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f27, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f23, f5, f1, dyn # perform operation
fadd.s f23, f5, f1, rdn # perform operation
fadd.s f23, f5, f1, rmm # perform operation
fadd.s f23, f5, f1, rne # perform operation
fadd.s f23, f5, f1, rtz # perform operation
fadd.s f23, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f5, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fadd.s f13, f15, f3, dyn # perform operation
fadd.s f13, f15, f3, rdn # perform operation
fadd.s f13, f15, f3, rmm # perform operation
fadd.s f13, f15, f3, rne # perform operation
fadd.s f13, f15, f3, rtz # perform operation
fadd.s f13, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fadd.s f22, f14, f25, dyn # perform operation
fadd.s f22, f14, f25, rdn # perform operation
fadd.s f22, f14, f25, rmm # perform operation
fadd.s f22, f14, f25, rne # perform operation
fadd.s f22, f14, f25, rtz # perform operation
fadd.s f22, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fadd.s f27, f9, f23, dyn # perform operation
fadd.s f27, f9, f23, rdn # perform operation
fadd.s f27, f9, f23, rmm # perform operation
fadd.s f27, f9, f23, rne # perform operation
fadd.s f27, f9, f23, rtz # perform operation
fadd.s f27, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f9, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f29, f5, f19, dyn # perform operation
fadd.s f29, f5, f19, rdn # perform operation
fadd.s f29, f5, f19, rmm # perform operation
fadd.s f29, f5, f19, rne # perform operation
fadd.s f29, f5, f19, rtz # perform operation
fadd.s f29, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f5, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fadd.s f26, f31, f16, dyn # perform operation
fadd.s f26, f31, f16, rdn # perform operation
fadd.s f26, f31, f16, rmm # perform operation
fadd.s f26, f31, f16, rne # perform operation
fadd.s f26, f31, f16, rtz # perform operation
fadd.s f26, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f31, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fadd.s f6, f13, f23, dyn # perform operation
fadd.s f6, f13, f23, rdn # perform operation
fadd.s f6, f13, f23, rmm # perform operation
fadd.s f6, f13, f23, rne # perform operation
fadd.s f6, f13, f23, rtz # perform operation
fadd.s f6, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f13, f23 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f13, f6, f17, dyn # perform operation
fadd.s f13, f6, f17, rdn # perform operation
fadd.s f13, f6, f17, rmm # perform operation
fadd.s f13, f6, f17, rne # perform operation
fadd.s f13, f6, f17, rtz # perform operation
fadd.s f13, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fadd.s f17, f21, f3, dyn # perform operation
fadd.s f17, f21, f3, rdn # perform operation
fadd.s f17, f21, f3, rmm # perform operation
fadd.s f17, f21, f3, rne # perform operation
fadd.s f17, f21, f3, rtz # perform operation
fadd.s f17, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f21, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fadd.s f11, f25, f26, dyn # perform operation
fadd.s f11, f25, f26, rdn # perform operation
fadd.s f11, f25, f26, rmm # perform operation
fadd.s f11, f25, f26, rne # perform operation
fadd.s f11, f25, f26, rtz # perform operation
fadd.s f11, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f25, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fadd.s f12, f26, f27, dyn # perform operation
fadd.s f12, f26, f27, rdn # perform operation
fadd.s f12, f26, f27, rmm # perform operation
fadd.s f12, f26, f27, rne # perform operation
fadd.s f12, f26, f27, rtz # perform operation
fadd.s f12, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f26, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fadd.s f13, f12, f1, dyn # perform operation
fadd.s f13, f12, f1, rdn # perform operation
fadd.s f13, f12, f1, rmm # perform operation
fadd.s f13, f12, f1, rne # perform operation
fadd.s f13, f12, f1, rtz # perform operation
fadd.s f13, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fadd.s f25, f28, f18, dyn # perform operation
fadd.s f25, f28, f18, rdn # perform operation
fadd.s f25, f28, f18, rmm # perform operation
fadd.s f25, f28, f18, rne # perform operation
fadd.s f25, f28, f18, rtz # perform operation
fadd.s f25, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f28, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fadd.s f31, f1, f5, dyn # perform operation
fadd.s f31, f1, f5, rdn # perform operation
fadd.s f31, f1, f5, rmm # perform operation
fadd.s f31, f1, f5, rne # perform operation
fadd.s f31, f1, f5, rtz # perform operation
fadd.s f31, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f1, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fadd.s f22, f16, f31, dyn # perform operation
fadd.s f22, f16, f31, rdn # perform operation
fadd.s f22, f16, f31, rmm # perform operation
fadd.s f22, f16, f31, rne # perform operation
fadd.s f22, f16, f31, rtz # perform operation
fadd.s f22, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f16, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fadd.s f25, f5, f10, dyn # perform operation
fadd.s f25, f5, f10, rdn # perform operation
fadd.s f25, f5, f10, rmm # perform operation
fadd.s f25, f5, f10, rne # perform operation
fadd.s f25, f5, f10, rtz # perform operation
fadd.s f25, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f5, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fadd.s f5, f6, f17, dyn # perform operation
fadd.s f5, f6, f17, rdn # perform operation
fadd.s f5, f6, f17, rmm # perform operation
fadd.s f5, f6, f17, rne # perform operation
fadd.s f5, f6, f17, rtz # perform operation
fadd.s f5, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fadd.s f5, f27, f31, dyn # perform operation
fadd.s f5, f27, f31, rdn # perform operation
fadd.s f5, f27, f31, rmm # perform operation
fadd.s f5, f27, f31, rne # perform operation
fadd.s f5, f27, f31, rtz # perform operation
fadd.s f5, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f27, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f17, 0(x2) # load 0xffffffff from memory into f17
fadd.s f15, f6, f17, dyn # perform operation
fadd.s f15, f6, f17, rdn # perform operation
fadd.s f15, f6, f17, rmm # perform operation
fadd.s f15, f6, f17, rne # perform operation
fadd.s f15, f6, f17, rtz # perform operation
fadd.s f15, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f6, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f19, f6, f30, dyn # perform operation
fadd.s f19, f6, f30, rdn # perform operation
fadd.s f19, f6, f30, rmm # perform operation
fadd.s f19, f6, f30, rne # perform operation
fadd.s f19, f6, f30, rtz # perform operation
fadd.s f19, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f6, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fadd.s f27, f3, f10, dyn # perform operation
fadd.s f27, f3, f10, rdn # perform operation
fadd.s f27, f3, f10, rmm # perform operation
fadd.s f27, f3, f10, rne # perform operation
fadd.s f27, f3, f10, rtz # perform operation
fadd.s f27, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f3, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f11, 0(x2) # load 0xffbfffff from memory into f11
fadd.s f3, f1, f11, dyn # perform operation
fadd.s f3, f1, f11, rdn # perform operation
fadd.s f3, f1, f11, rmm # perform operation
fadd.s f3, f1, f11, rne # perform operation
fadd.s f3, f1, f11, rtz # perform operation
fadd.s f3, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f1, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fadd.s f2, f9, f21, dyn # perform operation
fadd.s f2, f9, f21, rdn # perform operation
fadd.s f2, f9, f21, rmm # perform operation
fadd.s f2, f9, f21, rne # perform operation
fadd.s f2, f9, f21, rtz # perform operation
fadd.s f2, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f9, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fadd.s f18, f11, f27, dyn # perform operation
fadd.s f18, f11, f27, rdn # perform operation
fadd.s f18, f11, f27, rmm # perform operation
fadd.s f18, f11, f27, rne # perform operation
fadd.s f18, f11, f27, rtz # perform operation
fadd.s f18, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f11, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fadd.s f5, f2, f25, dyn # perform operation
fadd.s f5, f2, f25, rdn # perform operation
fadd.s f5, f2, f25, rmm # perform operation
fadd.s f5, f2, f25, rne # perform operation
fadd.s f5, f2, f25, rtz # perform operation
fadd.s f5, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f2, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fadd.s f8, f24, f3, dyn # perform operation
fadd.s f8, f24, f3, rdn # perform operation
fadd.s f8, f24, f3, rmm # perform operation
fadd.s f8, f24, f3, rne # perform operation
fadd.s f8, f24, f3, rtz # perform operation
fadd.s f8, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f24, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fadd.s f17, f2, f12, dyn # perform operation
fadd.s f17, f2, f12, rdn # perform operation
fadd.s f17, f2, f12, rmm # perform operation
fadd.s f17, f2, f12, rne # perform operation
fadd.s f17, f2, f12, rtz # perform operation
fadd.s f17, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f2, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fadd.s f17, f30, f7, dyn # perform operation
fadd.s f17, f30, f7, rdn # perform operation
fadd.s f17, f30, f7, rmm # perform operation
fadd.s f17, f30, f7, rne # perform operation
fadd.s f17, f30, f7, rtz # perform operation
fadd.s f17, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fadd.s f24, f29, f10, dyn # perform operation
fadd.s f24, f29, f10, rdn # perform operation
fadd.s f24, f29, f10, rmm # perform operation
fadd.s f24, f29, f10, rne # perform operation
fadd.s f24, f29, f10, rtz # perform operation
fadd.s f24, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f29, f10 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fadd.s f31, f27, f12, dyn # perform operation
fadd.s f31, f27, f12, rdn # perform operation
fadd.s f31, f27, f12, rmm # perform operation
fadd.s f31, f27, f12, rne # perform operation
fadd.s f31, f27, f12, rtz # perform operation
fadd.s f31, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f27, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fadd.s f11, f23, f18, dyn # perform operation
fadd.s f11, f23, f18, rdn # perform operation
fadd.s f11, f23, f18, rmm # perform operation
fadd.s f11, f23, f18, rne # perform operation
fadd.s f11, f23, f18, rtz # perform operation
fadd.s f11, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f23, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fadd.s f30, f2, f29, dyn # perform operation
fadd.s f30, f2, f29, rdn # perform operation
fadd.s f30, f2, f29, rmm # perform operation
fadd.s f30, f2, f29, rne # perform operation
fadd.s f30, f2, f29, rtz # perform operation
fadd.s f30, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f2, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fadd.s f6, f21, f18, dyn # perform operation
fadd.s f6, f21, f18, rdn # perform operation
fadd.s f6, f21, f18, rmm # perform operation
fadd.s f6, f21, f18, rne # perform operation
fadd.s f6, f21, f18, rtz # perform operation
fadd.s f6, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f21, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fadd.s f24, f9, f26, dyn # perform operation
fadd.s f24, f9, f26, rdn # perform operation
fadd.s f24, f9, f26, rmm # perform operation
fadd.s f24, f9, f26, rne # perform operation
fadd.s f24, f9, f26, rtz # perform operation
fadd.s f24, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f9, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fadd.s f29, f3, f11, dyn # perform operation
fadd.s f29, f3, f11, rdn # perform operation
fadd.s f29, f3, f11, rmm # perform operation
fadd.s f29, f3, f11, rne # perform operation
fadd.s f29, f3, f11, rtz # perform operation
fadd.s f29, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f3, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fadd.s f20, f31, f13, dyn # perform operation
fadd.s f20, f31, f13, rdn # perform operation
fadd.s f20, f31, f13, rmm # perform operation
fadd.s f20, f31, f13, rne # perform operation
fadd.s f20, f31, f13, rtz # perform operation
fadd.s f20, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f31, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fadd.s f2, f10, f24, dyn # perform operation
fadd.s f2, f10, f24, rdn # perform operation
fadd.s f2, f10, f24, rmm # perform operation
fadd.s f2, f10, f24, rne # perform operation
fadd.s f2, f10, f24, rtz # perform operation
fadd.s f2, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f10, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fadd.s f14, f30, f29, dyn # perform operation
fadd.s f14, f30, f29, rdn # perform operation
fadd.s f14, f30, f29, rmm # perform operation
fadd.s f14, f30, f29, rne # perform operation
fadd.s f14, f30, f29, rtz # perform operation
fadd.s f14, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f30, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fadd.s f21, f8, f3, dyn # perform operation
fadd.s f21, f8, f3, rdn # perform operation
fadd.s f21, f8, f3, rmm # perform operation
fadd.s f21, f8, f3, rne # perform operation
fadd.s f21, f8, f3, rtz # perform operation
fadd.s f21, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f8, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fadd.s f25, f23, f20, dyn # perform operation
fadd.s f25, f23, f20, rdn # perform operation
fadd.s f25, f23, f20, rmm # perform operation
fadd.s f25, f23, f20, rne # perform operation
fadd.s f25, f23, f20, rtz # perform operation
fadd.s f25, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fadd.s f19, f30, f20, dyn # perform operation
fadd.s f19, f30, f20, rdn # perform operation
fadd.s f19, f30, f20, rmm # perform operation
fadd.s f19, f30, f20, rne # perform operation
fadd.s f19, f30, f20, rtz # perform operation
fadd.s f19, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fadd.s f22, f5, f14, dyn # perform operation
fadd.s f22, f5, f14, rdn # perform operation
fadd.s f22, f5, f14, rmm # perform operation
fadd.s f22, f5, f14, rne # perform operation
fadd.s f22, f5, f14, rtz # perform operation
fadd.s f22, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f5, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fadd.s f18, f31, f8, dyn # perform operation
fadd.s f18, f31, f8, rdn # perform operation
fadd.s f18, f31, f8, rmm # perform operation
fadd.s f18, f31, f8, rne # perform operation
fadd.s f18, f31, f8, rtz # perform operation
fadd.s f18, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f31, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fadd.s f16, f26, f15, dyn # perform operation
fadd.s f16, f26, f15, rdn # perform operation
fadd.s f16, f26, f15, rmm # perform operation
fadd.s f16, f26, f15, rne # perform operation
fadd.s f16, f26, f15, rtz # perform operation
fadd.s f16, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f26, f15 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fadd.s f25, f23, f22, dyn # perform operation
fadd.s f25, f23, f22, rdn # perform operation
fadd.s f25, f23, f22, rmm # perform operation
fadd.s f25, f23, f22, rne # perform operation
fadd.s f25, f23, f22, rtz # perform operation
fadd.s f25, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f22, f23, f3, dyn # perform operation
fadd.s f22, f23, f3, rdn # perform operation
fadd.s f22, f23, f3, rmm # perform operation
fadd.s f22, f23, f3, rne # perform operation
fadd.s f22, f23, f3, rtz # perform operation
fadd.s f22, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f23, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f2, 0(x2) # load 0xffffffff from memory into f2
fadd.s f28, f31, f2, dyn # perform operation
fadd.s f28, f31, f2, rdn # perform operation
fadd.s f28, f31, f2, rmm # perform operation
fadd.s f28, f31, f2, rne # perform operation
fadd.s f28, f31, f2, rtz # perform operation
fadd.s f28, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f31, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fadd.s f12, f19, f8, dyn # perform operation
fadd.s f12, f19, f8, rdn # perform operation
fadd.s f12, f19, f8, rmm # perform operation
fadd.s f12, f19, f8, rne # perform operation
fadd.s f12, f19, f8, rtz # perform operation
fadd.s f12, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f20, f5, f18, dyn # perform operation
fadd.s f20, f5, f18, rdn # perform operation
fadd.s f20, f5, f18, rmm # perform operation
fadd.s f20, f5, f18, rne # perform operation
fadd.s f20, f5, f18, rtz # perform operation
fadd.s f20, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f5, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
fadd.s f13, f10, f14, dyn # perform operation
fadd.s f13, f10, f14, rdn # perform operation
fadd.s f13, f10, f14, rmm # perform operation
fadd.s f13, f10, f14, rne # perform operation
fadd.s f13, f10, f14, rtz # perform operation
fadd.s f13, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fadd.s f9, f1, f25, dyn # perform operation
fadd.s f9, f1, f25, rdn # perform operation
fadd.s f9, f1, f25, rmm # perform operation
fadd.s f9, f1, f25, rne # perform operation
fadd.s f9, f1, f25, rtz # perform operation
fadd.s f9, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f1, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fadd.s f23, f3, f7, dyn # perform operation
fadd.s f23, f3, f7, rdn # perform operation
fadd.s f23, f3, f7, rmm # perform operation
fadd.s f23, f3, f7, rne # perform operation
fadd.s f23, f3, f7, rtz # perform operation
fadd.s f23, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fadd.s f26, f18, f24, dyn # perform operation
fadd.s f26, f18, f24, rdn # perform operation
fadd.s f26, f18, f24, rmm # perform operation
fadd.s f26, f18, f24, rne # perform operation
fadd.s f26, f18, f24, rtz # perform operation
fadd.s f26, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f18, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f25, 0(x2) # load 0xffbfffff from memory into f25
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fadd.s f11, f25, f5, dyn # perform operation
fadd.s f11, f25, f5, rdn # perform operation
fadd.s f11, f25, f5, rmm # perform operation
fadd.s f11, f25, f5, rne # perform operation
fadd.s f11, f25, f5, rtz # perform operation
fadd.s f11, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f25, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fadd.s f10, f23, f29, dyn # perform operation
fadd.s f10, f23, f29, rdn # perform operation
fadd.s f10, f23, f29, rmm # perform operation
fadd.s f10, f23, f29, rne # perform operation
fadd.s f10, f23, f29, rtz # perform operation
fadd.s f10, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f23, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f12, 0(x2) # load 0xffbfffff from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fadd.s f13, f12, f19, dyn # perform operation
fadd.s f13, f12, f19, rdn # perform operation
fadd.s f13, f12, f19, rmm # perform operation
fadd.s f13, f12, f19, rne # perform operation
fadd.s f13, f12, f19, rtz # perform operation
fadd.s f13, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fadd.s f12, f18, f21, dyn # perform operation
fadd.s f12, f18, f21, rdn # perform operation
fadd.s f12, f18, f21, rmm # perform operation
fadd.s f12, f18, f21, rne # perform operation
fadd.s f12, f18, f21, rtz # perform operation
fadd.s f12, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f18, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f5, 0(x2) # load 0xffbfffff from memory into f5
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f31, f5, f28, dyn # perform operation
fadd.s f31, f5, f28, rdn # perform operation
fadd.s f31, f5, f28, rmm # perform operation
fadd.s f31, f5, f28, rne # perform operation
fadd.s f31, f5, f28, rtz # perform operation
fadd.s f31, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f5, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fadd.s f8, f18, f27, dyn # perform operation
fadd.s f8, f18, f27, rdn # perform operation
fadd.s f8, f18, f27, rmm # perform operation
fadd.s f8, f18, f27, rne # perform operation
fadd.s f8, f18, f27, rtz # perform operation
fadd.s f8, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f9, 0(x2) # load 0xffbfffff from memory into f9
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fadd.s f29, f9, f7, dyn # perform operation
fadd.s f29, f9, f7, rdn # perform operation
fadd.s f29, f9, f7, rmm # perform operation
fadd.s f29, f9, f7, rne # perform operation
fadd.s f29, f9, f7, rtz # perform operation
fadd.s f29, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f9, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f17, f10, f19, dyn # perform operation
fadd.s f17, f10, f19, rdn # perform operation
fadd.s f17, f10, f19, rmm # perform operation
fadd.s f17, f10, f19, rne # perform operation
fadd.s f17, f10, f19, rtz # perform operation
fadd.s f17, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f10, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f30, 0(x2) # load 0xffbfffff from memory into f30
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f15, f30, f20, dyn # perform operation
fadd.s f15, f30, f20, rdn # perform operation
fadd.s f15, f30, f20, rmm # perform operation
fadd.s f15, f30, f20, rne # perform operation
fadd.s f15, f30, f20, rtz # perform operation
fadd.s f15, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f14, 0(x2) # load 0xffbfffff from memory into f14
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f16, f14, f24, dyn # perform operation
fadd.s f16, f14, f24, rdn # perform operation
fadd.s f16, f14, f24, rmm # perform operation
fadd.s f16, f14, f24, rne # perform operation
fadd.s f16, f14, f24, rtz # perform operation
fadd.s f16, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f14, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f13, f23, f17, dyn # perform operation
fadd.s f13, f23, f17, rdn # perform operation
fadd.s f13, f23, f17, rmm # perform operation
fadd.s f13, f23, f17, rne # perform operation
fadd.s f13, f23, f17, rtz # perform operation
fadd.s f13, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f7, 0(x2) # load 0xffbfffff from memory into f7
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fadd.s f3, f7, f8, dyn # perform operation
fadd.s f3, f7, f8, rdn # perform operation
fadd.s f3, f7, f8, rmm # perform operation
fadd.s f3, f7, f8, rne # perform operation
fadd.s f3, f7, f8, rtz # perform operation
fadd.s f3, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f7, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fadd.s f2, f19, f20, dyn # perform operation
fadd.s f2, f19, f20, rdn # perform operation
fadd.s f2, f19, f20, rmm # perform operation
fadd.s f2, f19, f20, rne # perform operation
fadd.s f2, f19, f20, rtz # perform operation
fadd.s f2, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f19, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f1, 0(x2) # load 0xffbfffff from memory into f1
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f3, f1, f2, dyn # perform operation
fadd.s f3, f1, f2, rdn # perform operation
fadd.s f3, f1, f2, rmm # perform operation
fadd.s f3, f1, f2, rne # perform operation
fadd.s f3, f1, f2, rtz # perform operation
fadd.s f3, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f1, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fadd.s f5, f16, f20, dyn # perform operation
fadd.s f5, f16, f20, rdn # perform operation
fadd.s f5, f16, f20, rmm # perform operation
fadd.s f5, f16, f20, rne # perform operation
fadd.s f5, f16, f20, rtz # perform operation
fadd.s f5, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f16, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f20, 0(x2) # load 0xffbfffff from memory into f20
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fadd.s f21, f20, f26, dyn # perform operation
fadd.s f21, f20, f26, rdn # perform operation
fadd.s f21, f20, f26, rmm # perform operation
fadd.s f21, f20, f26, rne # perform operation
fadd.s f21, f20, f26, rtz # perform operation
fadd.s f21, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f20, f26 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f19, 0(x2) # load 0xffbfffff from memory into f19
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fadd.s f31, f19, f5, dyn # perform operation
fadd.s f31, f19, f5, rdn # perform operation
fadd.s f31, f19, f5, rmm # perform operation
fadd.s f31, f19, f5, rne # perform operation
fadd.s f31, f19, f5, rtz # perform operation
fadd.s f31, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f19, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fadd.s f3, f13, f20, dyn # perform operation
fadd.s f3, f13, f20, rdn # perform operation
fadd.s f3, f13, f20, rmm # perform operation
fadd.s f3, f13, f20, rne # perform operation
fadd.s f3, f13, f20, rtz # perform operation
fadd.s f3, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fadd.s f1, f13, f17, dyn # perform operation
fadd.s f1, f13, f17, rdn # perform operation
fadd.s f1, f13, f17, rmm # perform operation
fadd.s f1, f13, f17, rne # perform operation
fadd.s f1, f13, f17, rtz # perform operation
fadd.s f1, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f13, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f22, 0(x2) # load 0xffbfffff from memory into f22
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fadd.s f27, f22, f25, dyn # perform operation
fadd.s f27, f22, f25, rdn # perform operation
fadd.s f27, f22, f25, rmm # perform operation
fadd.s f27, f22, f25, rne # perform operation
fadd.s f27, f22, f25, rtz # perform operation
fadd.s f27, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f21, 0(x2) # load 0xffbfffff from memory into f21
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fadd.s f16, f21, f2, dyn # perform operation
fadd.s f16, f21, f2, rdn # perform operation
fadd.s f16, f21, f2, rmm # perform operation
fadd.s f16, f21, f2, rne # perform operation
fadd.s f16, f21, f2, rtz # perform operation
fadd.s f16, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f2 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f26, 0(x2) # load 0xffbfffff from memory into f26
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f14, 0(x2) # load 0xffffffff from memory into f14
fadd.s f15, f26, f14, dyn # perform operation
fadd.s f15, f26, f14, rdn # perform operation
fadd.s f15, f26, f14, rmm # perform operation
fadd.s f15, f26, f14, rne # perform operation
fadd.s f15, f26, f14, rtz # perform operation
fadd.s f15, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f26, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f31, 0(x2) # load 0xffbfffff from memory into f31
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fadd.s f6, f31, f24, dyn # perform operation
fadd.s f6, f31, f24, rdn # perform operation
fadd.s f6, f31, f24, rmm # perform operation
fadd.s f6, f31, f24, rne # perform operation
fadd.s f6, f31, f24, rtz # perform operation
fadd.s f6, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f31, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f23, 0(x2) # load 0xffbfffff from memory into f23
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fadd.s f1, f23, f24, dyn # perform operation
fadd.s f1, f23, f24, rdn # perform operation
fadd.s f1, f23, f24, rmm # perform operation
fadd.s f1, f23, f24, rne # perform operation
fadd.s f1, f23, f24, rtz # perform operation
fadd.s f1, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f23, f24 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f16, 0(x2) # load 0xffbfffff from memory into f16
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f13, 0(x2) # load 0xffbfffff from memory into f13
fadd.s f14, f16, f13, dyn # perform operation
fadd.s f14, f16, f13, rdn # perform operation
fadd.s f14, f16, f13, rmm # perform operation
fadd.s f14, f16, f13, rne # perform operation
fadd.s f14, f16, f13, rtz # perform operation
fadd.s f14, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f16, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f18, 0(x2) # load 0xffbfffff from memory into f18
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fadd.s f30, f18, f27, dyn # perform operation
fadd.s f30, f18, f27, rdn # perform operation
fadd.s f30, f18, f27, rmm # perform operation
fadd.s f30, f18, f27, rne # perform operation
fadd.s f30, f18, f27, rtz # perform operation
fadd.s f30, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffbfffff fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f10, 0(x2) # load 0xffbfffff from memory into f10
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fadd.s f21, f10, f14, dyn # perform operation
fadd.s f21, f10, f14, rdn # perform operation
fadd.s f21, f10, f14, rmm # perform operation
fadd.s f21, f10, f14, rne # perform operation
fadd.s f21, f10, f14, rtz # perform operation
fadd.s f21, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f10, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fadd.s f9, f8, f27, dyn # perform operation
fadd.s f9, f8, f27, rdn # perform operation
fadd.s f9, f8, f27, rmm # perform operation
fadd.s f9, f8, f27, rne # perform operation
fadd.s f9, f8, f27, rtz # perform operation
fadd.s f9, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f8, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fadd.s f15, f17, f8, dyn # perform operation
fadd.s f15, f17, f8, rdn # perform operation
fadd.s f15, f17, f8, rmm # perform operation
fadd.s f15, f17, f8, rne # perform operation
fadd.s f15, f17, f8, rtz # perform operation
fadd.s f15, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f17, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fadd.s f19, f9, f3, dyn # perform operation
fadd.s f19, f9, f3, rdn # perform operation
fadd.s f19, f9, f3, rmm # perform operation
fadd.s f19, f9, f3, rne # perform operation
fadd.s f19, f9, f3, rtz # perform operation
fadd.s f19, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f9, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fadd.s f24, f11, f21, dyn # perform operation
fadd.s f24, f11, f21, rdn # perform operation
fadd.s f24, f11, f21, rmm # perform operation
fadd.s f24, f11, f21, rne # perform operation
fadd.s f24, f11, f21, rtz # perform operation
fadd.s f24, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f11, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fadd.s f3, f16, f17, dyn # perform operation
fadd.s f3, f16, f17, rdn # perform operation
fadd.s f3, f16, f17, rmm # perform operation
fadd.s f3, f16, f17, rne # perform operation
fadd.s f3, f16, f17, rtz # perform operation
fadd.s f3, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f16, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fadd.s f29, f19, f8, dyn # perform operation
fadd.s f29, f19, f8, rdn # perform operation
fadd.s f29, f19, f8, rmm # perform operation
fadd.s f29, f19, f8, rne # perform operation
fadd.s f29, f19, f8, rtz # perform operation
fadd.s f29, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f19, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fadd.s f19, f3, f17, dyn # perform operation
fadd.s f19, f3, f17, rdn # perform operation
fadd.s f19, f3, f17, rmm # perform operation
fadd.s f19, f3, f17, rne # perform operation
fadd.s f19, f3, f17, rtz # perform operation
fadd.s f19, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f3, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fadd.s f27, f26, f9, dyn # perform operation
fadd.s f27, f26, f9, rdn # perform operation
fadd.s f27, f26, f9, rmm # perform operation
fadd.s f27, f26, f9, rne # perform operation
fadd.s f27, f26, f9, rtz # perform operation
fadd.s f27, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f26, f9 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fadd.s f22, f30, f7, dyn # perform operation
fadd.s f22, f30, f7, rdn # perform operation
fadd.s f22, f30, f7, rmm # perform operation
fadd.s f22, f30, f7, rne # perform operation
fadd.s f22, f30, f7, rtz # perform operation
fadd.s f22, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f30, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fadd.s f2, f13, f27, dyn # perform operation
fadd.s f2, f13, f27, rdn # perform operation
fadd.s f2, f13, f27, rmm # perform operation
fadd.s f2, f13, f27, rne # perform operation
fadd.s f2, f13, f27, rtz # perform operation
fadd.s f2, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fadd.s f1, f27, f18, dyn # perform operation
fadd.s f1, f27, f18, rdn # perform operation
fadd.s f1, f27, f18, rmm # perform operation
fadd.s f1, f27, f18, rne # perform operation
fadd.s f1, f27, f18, rtz # perform operation
fadd.s f1, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f27, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fadd.s f6, f11, f19, dyn # perform operation
fadd.s f6, f11, f19, rdn # perform operation
fadd.s f6, f11, f19, rmm # perform operation
fadd.s f6, f11, f19, rne # perform operation
fadd.s f6, f11, f19, rtz # perform operation
fadd.s f6, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f11, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fadd.s f30, f16, f11, dyn # perform operation
fadd.s f30, f16, f11, rdn # perform operation
fadd.s f30, f16, f11, rmm # perform operation
fadd.s f30, f16, f11, rne # perform operation
fadd.s f30, f16, f11, rtz # perform operation
fadd.s f30, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f16, f11 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fadd.s f11, f28, f27, dyn # perform operation
fadd.s f11, f28, f27, rdn # perform operation
fadd.s f11, f28, f27, rmm # perform operation
fadd.s f11, f28, f27, rne # perform operation
fadd.s f11, f28, f27, rtz # perform operation
fadd.s f11, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f28, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fadd.s f28, f22, f31, dyn # perform operation
fadd.s f28, f22, f31, rdn # perform operation
fadd.s f28, f22, f31, rmm # perform operation
fadd.s f28, f22, f31, rne # perform operation
fadd.s f28, f22, f31, rtz # perform operation
fadd.s f28, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f22, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f18, f21, f25, dyn # perform operation
fadd.s f18, f21, f25, rdn # perform operation
fadd.s f18, f21, f25, rmm # perform operation
fadd.s f18, f21, f25, rne # perform operation
fadd.s f18, f21, f25, rtz # perform operation
fadd.s f18, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f21, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fadd.s f2, f28, f7, dyn # perform operation
fadd.s f2, f28, f7, rdn # perform operation
fadd.s f2, f28, f7, rmm # perform operation
fadd.s f2, f28, f7, rne # perform operation
fadd.s f2, f28, f7, rtz # perform operation
fadd.s f2, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fadd.s f26, f30, f6, dyn # perform operation
fadd.s f26, f30, f6, rdn # perform operation
fadd.s f26, f30, f6, rmm # perform operation
fadd.s f26, f30, f6, rne # perform operation
fadd.s f26, f30, f6, rtz # perform operation
fadd.s f26, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f30, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fadd.s f13, f24, f16, dyn # perform operation
fadd.s f13, f24, f16, rdn # perform operation
fadd.s f13, f24, f16, rmm # perform operation
fadd.s f13, f24, f16, rne # perform operation
fadd.s f13, f24, f16, rtz # perform operation
fadd.s f13, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f24, f16 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fadd.s f12, f3, f18, dyn # perform operation
fadd.s f12, f3, f18, rdn # perform operation
fadd.s f12, f3, f18, rmm # perform operation
fadd.s f12, f3, f18, rne # perform operation
fadd.s f12, f3, f18, rtz # perform operation
fadd.s f12, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f3, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fadd.s f17, f3, f29, dyn # perform operation
fadd.s f17, f3, f29, rdn # perform operation
fadd.s f17, f3, f29, rmm # perform operation
fadd.s f17, f3, f29, rne # perform operation
fadd.s f17, f3, f29, rtz # perform operation
fadd.s f17, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f3, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fadd.s f26, f5, f22, dyn # perform operation
fadd.s f26, f5, f22, rdn # perform operation
fadd.s f26, f5, f22, rmm # perform operation
fadd.s f26, f5, f22, rne # perform operation
fadd.s f26, f5, f22, rtz # perform operation
fadd.s f26, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f5, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f1, 0(x2) # load 0xffffffff from memory into f1
fadd.s f2, f27, f1, dyn # perform operation
fadd.s f2, f27, f1, rdn # perform operation
fadd.s f2, f27, f1, rmm # perform operation
fadd.s f2, f27, f1, rne # perform operation
fadd.s f2, f27, f1, rtz # perform operation
fadd.s f2, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f27, f1 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fadd.s f20, f1, f29, dyn # perform operation
fadd.s f20, f1, f29, rdn # perform operation
fadd.s f20, f1, f29, rmm # perform operation
fadd.s f20, f1, f29, rne # perform operation
fadd.s f20, f1, f29, rtz # perform operation
fadd.s f20, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f1, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f18, f1, f31, dyn # perform operation
fadd.s f18, f1, f31, rdn # perform operation
fadd.s f18, f1, f31, rmm # perform operation
fadd.s f18, f1, f31, rne # perform operation
fadd.s f18, f1, f31, rtz # perform operation
fadd.s f18, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f1, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f6, 0(x2) # load 0xffbfffff from memory into f6
fadd.s f29, f8, f6, dyn # perform operation
fadd.s f29, f8, f6, rdn # perform operation
fadd.s f29, f8, f6, rmm # perform operation
fadd.s f29, f8, f6, rne # perform operation
fadd.s f29, f8, f6, rtz # perform operation
fadd.s f29, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f8, f6 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fadd.s f21, f14, f27, dyn # perform operation
fadd.s f21, f14, f27, rdn # perform operation
fadd.s f21, f14, f27, rmm # perform operation
fadd.s f21, f14, f27, rne # perform operation
fadd.s f21, f14, f27, rtz # perform operation
fadd.s f21, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f14, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fadd.s f10, f25, f8, dyn # perform operation
fadd.s f10, f25, f8, rdn # perform operation
fadd.s f10, f25, f8, rmm # perform operation
fadd.s f10, f25, f8, rne # perform operation
fadd.s f10, f25, f8, rtz # perform operation
fadd.s f10, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f25, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fadd.s f3, f17, f30, dyn # perform operation
fadd.s f3, f17, f30, rdn # perform operation
fadd.s f3, f17, f30, rmm # perform operation
fadd.s f3, f17, f30, rne # perform operation
fadd.s f3, f17, f30, rtz # perform operation
fadd.s f3, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f17, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fadd.s f30, f21, f20, dyn # perform operation
fadd.s f30, f21, f20, rdn # perform operation
fadd.s f30, f21, f20, rmm # perform operation
fadd.s f30, f21, f20, rne # perform operation
fadd.s f30, f21, f20, rtz # perform operation
fadd.s f30, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f21, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fadd.s f23, f24, f7, dyn # perform operation
fadd.s f23, f24, f7, rdn # perform operation
fadd.s f23, f24, f7, rmm # perform operation
fadd.s f23, f24, f7, rne # perform operation
fadd.s f23, f24, f7, rtz # perform operation
fadd.s f23, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f24, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fadd.s f25, f12, f7, dyn # perform operation
fadd.s f25, f12, f7, rdn # perform operation
fadd.s f25, f12, f7, rmm # perform operation
fadd.s f25, f12, f7, rne # perform operation
fadd.s f25, f12, f7, rtz # perform operation
fadd.s f25, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f12, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fadd.s f6, f20, f28, dyn # perform operation
fadd.s f6, f20, f28, rdn # perform operation
fadd.s f6, f20, f28, rmm # perform operation
fadd.s f6, f20, f28, rne # perform operation
fadd.s f6, f20, f28, rtz # perform operation
fadd.s f6, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f20, f28 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fadd.s f6, f15, f21, dyn # perform operation
fadd.s f6, f15, f21, rdn # perform operation
fadd.s f6, f15, f21, rmm # perform operation
fadd.s f6, f15, f21, rne # perform operation
fadd.s f6, f15, f21, rtz # perform operation
fadd.s f6, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f15, f21 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fadd.s f22, f7, f18, dyn # perform operation
fadd.s f22, f7, f18, rdn # perform operation
fadd.s f22, f7, f18, rmm # perform operation
fadd.s f22, f7, f18, rne # perform operation
fadd.s f22, f7, f18, rtz # perform operation
fadd.s f22, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f7, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fadd.s f2, f18, f27, dyn # perform operation
fadd.s f2, f18, f27, rdn # perform operation
fadd.s f2, f18, f27, rmm # perform operation
fadd.s f2, f18, f27, rne # perform operation
fadd.s f2, f18, f27, rtz # perform operation
fadd.s f2, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f18, f27 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fadd.s f3, f15, f19, dyn # perform operation
fadd.s f3, f15, f19, rdn # perform operation
fadd.s f3, f15, f19, rmm # perform operation
fadd.s f3, f15, f19, rne # perform operation
fadd.s f3, f15, f19, rtz # perform operation
fadd.s f3, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f15, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fadd.s f21, f26, f7, dyn # perform operation
fadd.s f21, f26, f7, rdn # perform operation
fadd.s f21, f26, f7, rmm # perform operation
fadd.s f21, f26, f7, rne # perform operation
fadd.s f21, f26, f7, rtz # perform operation
fadd.s f21, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f26, f7 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fadd.s f11, f20, f17, dyn # perform operation
fadd.s f11, f20, f17, rdn # perform operation
fadd.s f11, f20, f17, rmm # perform operation
fadd.s f11, f20, f17, rne # perform operation
fadd.s f11, f20, f17, rtz # perform operation
fadd.s f11, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f20, f17 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fadd.s f18, f8, f5, dyn # perform operation
fadd.s f18, f8, f5, rdn # perform operation
fadd.s f18, f8, f5, rmm # perform operation
fadd.s f18, f8, f5, rne # perform operation
fadd.s f18, f8, f5, rtz # perform operation
fadd.s f18, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f8, f5 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fadd.s f7, f24, f12, dyn # perform operation
fadd.s f7, f24, f12, rdn # perform operation
fadd.s f7, f24, f12, rmm # perform operation
fadd.s f7, f24, f12, rne # perform operation
fadd.s f7, f24, f12, rtz # perform operation
fadd.s f7, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f24, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fadd.s f22, f27, f14, dyn # perform operation
fadd.s f22, f27, f14, rdn # perform operation
fadd.s f22, f27, f14, rmm # perform operation
fadd.s f22, f27, f14, rne # perform operation
fadd.s f22, f27, f14, rtz # perform operation
fadd.s f22, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f27, f14 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fadd.s f20, f15, f29, dyn # perform operation
fadd.s f20, f15, f29, rdn # perform operation
fadd.s f20, f15, f29, rmm # perform operation
fadd.s f20, f15, f29, rne # perform operation
fadd.s f20, f15, f29, rtz # perform operation
fadd.s f20, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f15, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fadd.s f21, f29, f25, dyn # perform operation
fadd.s f21, f29, f25, rdn # perform operation
fadd.s f21, f29, f25, rmm # perform operation
fadd.s f21, f29, f25, rne # perform operation
fadd.s f21, f29, f25, rtz # perform operation
fadd.s f21, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f29, f25 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fadd.s f22, f23, f13, dyn # perform operation
fadd.s f22, f23, f13, rdn # perform operation
fadd.s f22, f23, f13, rmm # perform operation
fadd.s f22, f23, f13, rne # perform operation
fadd.s f22, f23, f13, rtz # perform operation
fadd.s f22, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f23, f13 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fadd.s f5, f12, f29, dyn # perform operation
fadd.s f5, f12, f29, rdn # perform operation
fadd.s f5, f12, f29, rmm # perform operation
fadd.s f5, f12, f29, rne # perform operation
fadd.s f5, f12, f29, rtz # perform operation
fadd.s f5, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f12, f29 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fadd.s f23, f19, f18, dyn # perform operation
fadd.s f23, f19, f18, rdn # perform operation
fadd.s f23, f19, f18, rmm # perform operation
fadd.s f23, f19, f18, rne # perform operation
fadd.s f23, f19, f18, rtz # perform operation
fadd.s f23, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f19, f18 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fadd.s f30, f12, f8, dyn # perform operation
fadd.s f30, f12, f8, rdn # perform operation
fadd.s f30, f12, f8, rmm # perform operation
fadd.s f30, f12, f8, rne # perform operation
fadd.s f30, f12, f8, rtz # perform operation
fadd.s f30, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f12, f8 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fadd.s f7, f6, f12, dyn # perform operation
fadd.s f7, f6, f12, rdn # perform operation
fadd.s f7, f6, f12, rmm # perform operation
fadd.s f7, f6, f12, rne # perform operation
fadd.s f7, f6, f12, rtz # perform operation
fadd.s f7, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f6, f12 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fadd.s f15, f27, f30, dyn # perform operation
fadd.s f15, f27, f30, rdn # perform operation
fadd.s f15, f27, f30, rmm # perform operation
fadd.s f15, f27, f30, rne # perform operation
fadd.s f15, f27, f30, rtz # perform operation
fadd.s f15, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f27, f30 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f31, 0(x2) # load 0xffffffff from memory into f31
fadd.s f11, f15, f31, dyn # perform operation
fadd.s f11, f15, f31, rdn # perform operation
fadd.s f11, f15, f31, rmm # perform operation
fadd.s f11, f15, f31, rne # perform operation
fadd.s f11, f15, f31, rtz # perform operation
fadd.s f11, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f15, f31 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fadd.s f9, f13, f20, dyn # perform operation
fadd.s f9, f13, f20, rdn # perform operation
fadd.s f9, f13, f20, rmm # perform operation
fadd.s f9, f13, f20, rne # perform operation
fadd.s f9, f13, f20, rtz # perform operation
fadd.s f9, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f20 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fadd.s f9, f10, f22, dyn # perform operation
fadd.s f9, f10, f22, rdn # perform operation
fadd.s f9, f10, f22, rmm # perform operation
fadd.s f9, f10, f22, rne # perform operation
fadd.s f9, f10, f22, rtz # perform operation
fadd.s f9, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f10, f22 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f3, 0(x2) # load 0xffbfffff from memory into f3
fadd.s f29, f6, f3, dyn # perform operation
fadd.s f29, f6, f3, rdn # perform operation
fadd.s f29, f6, f3, rmm # perform operation
fadd.s f29, f6, f3, rne # perform operation
fadd.s f29, f6, f3, rtz # perform operation
fadd.s f29, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f6, f3 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fadd.s f2, f23, f19, dyn # perform operation
fadd.s f2, f23, f19, rdn # perform operation
fadd.s f2, f23, f19, rmm # perform operation
fadd.s f2, f23, f19, rne # perform operation
fadd.s f2, f23, f19, rtz # perform operation
fadd.s f2, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f23, f19 # perform operation


# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fadd.s f15, f26, f13, dyn # perform operation
fadd.s f15, f26, f13, rdn # perform operation
fadd.s f15, f26, f13, rmm # perform operation
fadd.s f15, f26, f13, rne # perform operation
fadd.s f15, f26, f13, rtz # perform operation
fadd.s f15, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f26, f13 # perform operation


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
