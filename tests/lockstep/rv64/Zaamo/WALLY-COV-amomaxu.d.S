///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zaamo/WALLY-COV-amomaxu.d.S
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

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x3, 0xea23a23ab0e0dec1 # load random value
la x1, scratch # base address
sd x3, 0(x1) # store in memory
li x3, 0x536ea41ad0311672 # load another value into integer register
amomaxu.d x13, x3, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0xe857e65930b82634 # load random value
la x2, scratch # base address
sd x12, 0(x2) # store in memory
li x12, 0x0e979b7c40e7c806 # load another value into integer register
amomaxu.d x3, x12, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x8, 0xff87fb7e4b3008bf # load random value
la x3, scratch # base address
sd x8, 0(x3) # store in memory
li x8, 0xf26cf0571e778441 # load another value into integer register
amomaxu.d x29, x8, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x319caecbca5c836a # load random value
la x4, scratch # base address
sd x26, 0(x4) # store in memory
li x26, 0x02f0a253df375e7f # load another value into integer register
amomaxu.d x11, x26, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xb27d0abe031b97c4 # load random value
la x5, scratch # base address
sd x9, 0(x5) # store in memory
li x9, 0xcbdcd6641dad6116 # load another value into integer register
amomaxu.d x7, x9, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0xafc1cfba061d740e # load random value
la x6, scratch # base address
sd x20, 0(x6) # store in memory
li x20, 0xfb5468be0d34d951 # load another value into integer register
amomaxu.d x16, x20, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xc95eb40c42848447 # load random value
la x7, scratch # base address
sd x26, 0(x7) # store in memory
li x26, 0xf48d58b16f3ecd4c # load another value into integer register
amomaxu.d x29, x26, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xb6a4980cac6a2bd8 # load random value
la x8, scratch # base address
sd x11, 0(x8) # store in memory
li x11, 0xd56c24710215ebad # load another value into integer register
amomaxu.d x5, x11, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x2, 0x292463321c96da21 # load random value
la x9, scratch # base address
sd x2, 0(x9) # store in memory
li x2, 0x542744178d0f7442 # load another value into integer register
amomaxu.d x13, x2, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xbff3b4ea7f78b2c3 # load random value
la x10, scratch # base address
sd x13, 0(x10) # store in memory
li x13, 0x2a8dcb996a7f7a17 # load another value into integer register
amomaxu.d x11, x13, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0xb3944765c8de0836 # load random value
la x11, scratch # base address
sd x23, 0(x11) # store in memory
li x23, 0x12160305ba38b9a0 # load another value into integer register
amomaxu.d x12, x23, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0xd9d937e8e6f5ff02 # load random value
la x12, scratch # base address
sd x30, 0(x12) # store in memory
li x30, 0x937c173e5d2bf542 # load another value into integer register
amomaxu.d x6, x30, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x0b7ae1d22c903052 # load random value
la x13, scratch # base address
sd x15, 0(x13) # store in memory
li x15, 0x7f66fd0067c9c937 # load another value into integer register
amomaxu.d x27, x15, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x30, 0xcea1b5959a657270 # load random value
la x14, scratch # base address
sd x30, 0(x14) # store in memory
li x30, 0x40a744b2a3220896 # load another value into integer register
amomaxu.d x1, x30, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x88d48db50ccb9605 # load random value
la x15, scratch # base address
sd x14, 0(x15) # store in memory
li x14, 0x9f632e0057e9a259 # load another value into integer register
amomaxu.d x28, x14, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x26, 0xb5c87ac60a15e6c4 # load random value
la x16, scratch # base address
sd x26, 0(x16) # store in memory
li x26, 0xbf2ab690681ad464 # load another value into integer register
amomaxu.d x6, x26, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0xae6516f91aaa6c7c # load random value
la x17, scratch # base address
sd x3, 0(x17) # store in memory
li x3, 0x6c5770062b98afa8 # load another value into integer register
amomaxu.d x18, x3, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x628ee7c9f7610eb9 # load random value
la x18, scratch # base address
sd x16, 0(x18) # store in memory
li x16, 0x663325076a60a75d # load another value into integer register
amomaxu.d x29, x16, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0xe6213aecb8da3aa7 # load random value
la x19, scratch # base address
sd x8, 0(x19) # store in memory
li x8, 0x29799a46d95d7d69 # load another value into integer register
amomaxu.d x12, x8, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x9f5efddd0497cad6 # load random value
la x20, scratch # base address
sd x23, 0(x20) # store in memory
li x23, 0x360138087f1f71c0 # load another value into integer register
amomaxu.d x15, x23, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0x1d68ba530cce5eb9 # load random value
la x21, scratch # base address
sd x25, 0(x21) # store in memory
li x25, 0x562e66b64d5d1fa3 # load another value into integer register
amomaxu.d x26, x25, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0x297e624e096e4199 # load random value
la x22, scratch # base address
sd x11, 0(x22) # store in memory
li x11, 0xc3081d567db2f165 # load another value into integer register
amomaxu.d x31, x11, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x14, 0xf7dc30379e5747c8 # load random value
la x23, scratch # base address
sd x14, 0(x23) # store in memory
li x14, 0x9030562fd7870933 # load another value into integer register
amomaxu.d x8, x14, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0xdb2e39cc48d589cd # load random value
la x24, scratch # base address
sd x18, 0(x24) # store in memory
li x18, 0x331bab45b76a8893 # load another value into integer register
amomaxu.d x22, x18, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x959458492fa01bf3 # load random value
la x25, scratch # base address
sd x29, 0(x25) # store in memory
li x29, 0x1182e51ee0f03567 # load another value into integer register
amomaxu.d x24, x29, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0xc89fd85194e73824 # load random value
la x26, scratch # base address
sd x20, 0(x26) # store in memory
li x20, 0xe4481da0760624ef # load another value into integer register
amomaxu.d x1, x20, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x6, 0x43a59fcabba6b827 # load random value
la x27, scratch # base address
sd x6, 0(x27) # store in memory
li x6, 0x4d7e501df099715b # load another value into integer register
amomaxu.d x1, x6, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0xe9c04c42575abfad # load random value
la x28, scratch # base address
sd x7, 0(x28) # store in memory
li x7, 0xe60559a6e99d5511 # load another value into integer register
amomaxu.d x8, x7, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x14, 0x02522ce58b114219 # load random value
la x29, scratch # base address
sd x14, 0(x29) # store in memory
li x14, 0xb4b5b5a067c266dc # load another value into integer register
amomaxu.d x24, x14, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0xd93da40e85c2e0e8 # load random value
la x30, scratch # base address
sd x27, 0(x30) # store in memory
li x27, 0xb64cea97076a9aff # load another value into integer register
amomaxu.d x9, x27, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0xccab5bb6e1dff158 # load random value
la x31, scratch # base address
sd x12, 0(x31) # store in memory
li x12, 0x0623a1fe3d12752c # load another value into integer register
amomaxu.d x7, x12, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xeede753ae68cf31d # load random value
la x25, scratch # base address
sd x0, 0(x25) # store in memory
li x0, 0x4fd9f2dac819bf64 # load another value into integer register
amomaxu.d x24, x0, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xee6966d8d204b442 # load random value
la x15, scratch # base address
sd x1, 0(x15) # store in memory
li x1, 0xa5a3bddc83c6d0ee # load another value into integer register
amomaxu.d x8, x1, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xfaf4406d102ffe05 # load random value
la x22, scratch # base address
sd x2, 0(x22) # store in memory
li x2, 0xd1ab987725be49ac # load another value into integer register
amomaxu.d x12, x2, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x0dda78b976b15782 # load random value
la x27, scratch # base address
sd x3, 0(x27) # store in memory
li x3, 0xabde6266232dce00 # load another value into integer register
amomaxu.d x20, x3, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa9de78389f050d98 # load random value
la x10, scratch # base address
sd x4, 0(x10) # store in memory
li x4, 0xbab3324689ca1649 # load another value into integer register
amomaxu.d x17, x4, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5ea6b4b3c4125d84 # load random value
la x25, scratch # base address
sd x5, 0(x25) # store in memory
li x5, 0x6046fa7f585a0325 # load another value into integer register
amomaxu.d x16, x5, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd217363eee498a7c # load random value
la x10, scratch # base address
sd x6, 0(x10) # store in memory
li x6, 0xe9fd0fd24d5bed7a # load another value into integer register
amomaxu.d x17, x6, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa062011be1cb0b3c # load random value
la x3, scratch # base address
sd x7, 0(x3) # store in memory
li x7, 0xafa9c784c5a47eb1 # load another value into integer register
amomaxu.d x22, x7, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x0532789eb19355ea # load random value
la x31, scratch # base address
sd x8, 0(x31) # store in memory
li x8, 0x7e56bd7abc7dad16 # load another value into integer register
amomaxu.d x19, x8, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x363305fac890e09a # load random value
la x29, scratch # base address
sd x9, 0(x29) # store in memory
li x9, 0xa9c4339e437435da # load another value into integer register
amomaxu.d x13, x9, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x1548a7f6c1a0285f # load random value
la x15, scratch # base address
sd x10, 0(x15) # store in memory
li x10, 0x4830406804b5837f # load another value into integer register
amomaxu.d x23, x10, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x421ad35ce4d22a82 # load random value
la x19, scratch # base address
sd x11, 0(x19) # store in memory
li x11, 0x1d6c380611cfaba9 # load another value into integer register
amomaxu.d x1, x11, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xbd97867c1b8fcd34 # load random value
la x29, scratch # base address
sd x12, 0(x29) # store in memory
li x12, 0x869db2b808d1cf8c # load another value into integer register
amomaxu.d x10, x12, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x636619b5588cbce8 # load random value
la x19, scratch # base address
sd x13, 0(x19) # store in memory
li x13, 0x183983ec2a253829 # load another value into integer register
amomaxu.d x10, x13, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x7c7ed7a2350c86cd # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0x401aa9520fc0cacf # load another value into integer register
amomaxu.d x27, x14, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x342d37b70fe1a6c5 # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0x7ade65c93c6f383b # load another value into integer register
amomaxu.d x30, x15, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x3f39c18a777554da # load random value
la x26, scratch # base address
sd x16, 0(x26) # store in memory
li x16, 0x5d10f75482a37556 # load another value into integer register
amomaxu.d x5, x16, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xf98c3f4c57abce07 # load random value
la x18, scratch # base address
sd x17, 0(x18) # store in memory
li x17, 0x75fbc0b1bbbb2b3a # load another value into integer register
amomaxu.d x2, x17, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xb0bfc88dd11bda14 # load random value
la x7, scratch # base address
sd x18, 0(x7) # store in memory
li x18, 0x55f8a6ac194f1ce4 # load another value into integer register
amomaxu.d x29, x18, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0xbd12dd930a914e19 # load random value
la x20, scratch # base address
sd x19, 0(x20) # store in memory
li x19, 0x59820a90a061f275 # load another value into integer register
amomaxu.d x17, x19, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xc215ae871a055c0d # load random value
la x19, scratch # base address
sd x20, 0(x19) # store in memory
li x20, 0x4ee57b819880259b # load another value into integer register
amomaxu.d x28, x20, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x645064398663a1ad # load random value
la x20, scratch # base address
sd x21, 0(x20) # store in memory
li x21, 0xb8470459afe34f60 # load another value into integer register
amomaxu.d x5, x21, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0xf8e4619a224cae1f # load random value
la x31, scratch # base address
sd x22, 0(x31) # store in memory
li x22, 0x59103c60ce4c1e69 # load another value into integer register
amomaxu.d x23, x22, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x2f590c99340c684f # load random value
la x31, scratch # base address
sd x23, 0(x31) # store in memory
li x23, 0xd40e69ac82939e45 # load another value into integer register
amomaxu.d x22, x23, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x2e7e4359f40f5b87 # load random value
la x10, scratch # base address
sd x24, 0(x10) # store in memory
li x24, 0x8c0ca854fa339a7f # load another value into integer register
amomaxu.d x6, x24, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xee1917ad9a74d282 # load random value
la x31, scratch # base address
sd x25, 0(x31) # store in memory
li x25, 0x96ff02fcb0b22ae8 # load another value into integer register
amomaxu.d x30, x25, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x342febd7f008a4e8 # load random value
la x2, scratch # base address
sd x26, 0(x2) # store in memory
li x26, 0xf532afc96b8fab25 # load another value into integer register
amomaxu.d x24, x26, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xf56c05bbba86b38d # load random value
la x10, scratch # base address
sd x27, 0(x10) # store in memory
li x27, 0xdc8c7ebc844109db # load another value into integer register
amomaxu.d x17, x27, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xef68f08edb6c06d5 # load random value
la x17, scratch # base address
sd x28, 0(x17) # store in memory
li x28, 0x6c34d73d227a7769 # load another value into integer register
amomaxu.d x12, x28, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xc7c9a1eac4d31089 # load random value
la x23, scratch # base address
sd x29, 0(x23) # store in memory
li x29, 0x52550fce4d3d45a1 # load another value into integer register
amomaxu.d x25, x29, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x2ca82c4d5669282b # load random value
la x8, scratch # base address
sd x30, 0(x8) # store in memory
li x30, 0xb4f95f5ff33d147d # load another value into integer register
amomaxu.d x24, x30, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xbb7516b9cd2e6aeb # load random value
la x21, scratch # base address
sd x31, 0(x21) # store in memory
li x31, 0x88d75f6643230aa0 # load another value into integer register
amomaxu.d x9, x31, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x79fdc84e35d389bf # load random value
la x22, scratch # base address
sd x21, 0(x22) # store in memory
li x21, 0x832ca35fe0253de0 # load another value into integer register
amomaxu.d x0, x21, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x14, 0x2d273b696cbf7a4f # load random value
la x8, scratch # base address
sd x14, 0(x8) # store in memory
li x14, 0xd98d51d64b212f0a # load another value into integer register
amomaxu.d x1, x14, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x4dfeeb06c73cd4b5 # load random value
la x24, scratch # base address
sd x12, 0(x24) # store in memory
li x12, 0xa269d68ea03aa671 # load another value into integer register
amomaxu.d x2, x12, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb3fcf2726787df9e # load random value
la x15, scratch # base address
sd x3, 0(x15) # store in memory
li x3, 0x5e887f3f14f17ab8 # load another value into integer register
amomaxu.d x3, x3, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x13e26e013f386789 # load random value
la x22, scratch # base address
sd x7, 0(x22) # store in memory
li x7, 0xf6b41a6d268d7f92 # load another value into integer register
amomaxu.d x4, x7, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x8c171e666407fb3e # load random value
la x2, scratch # base address
sd x30, 0(x2) # store in memory
li x30, 0xba3a3897acc557f7 # load another value into integer register
amomaxu.d x5, x30, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x93255141c0bb5ece # load random value
la x25, scratch # base address
sd x9, 0(x25) # store in memory
li x9, 0x44717a52863e3a77 # load another value into integer register
amomaxu.d x6, x9, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0x7bf2d9a41505bf74 # load random value
la x20, scratch # base address
sd x30, 0(x20) # store in memory
li x30, 0x62ffc0f3ec15a5d9 # load another value into integer register
amomaxu.d x7, x30, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xf43693b0a96cd557 # load random value
la x1, scratch # base address
sd x23, 0(x1) # store in memory
li x23, 0xc019a0569299e9fb # load another value into integer register
amomaxu.d x8, x23, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x22, 0xd539187dc1242cbc # load random value
la x18, scratch # base address
sd x22, 0(x18) # store in memory
li x22, 0x8007f28837265e60 # load another value into integer register
amomaxu.d x9, x22, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x60a70e4d1095c0f2 # load random value
la x1, scratch # base address
sd x15, 0(x1) # store in memory
li x15, 0xc485a76349d537d9 # load another value into integer register
amomaxu.d x10, x15, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x2d9786fa06d94801 # load random value
la x9, scratch # base address
sd x7, 0(x9) # store in memory
li x7, 0xbbb1197d4bd26169 # load another value into integer register
amomaxu.d x11, x7, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x6adfb2a42a9a11c6 # load random value
la x9, scratch # base address
sd x8, 0(x9) # store in memory
li x8, 0xbf245bb0e223f2af # load another value into integer register
amomaxu.d x12, x8, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xe7cc55061d693618 # load random value
la x29, scratch # base address
sd x27, 0(x29) # store in memory
li x27, 0x3b251efdc07c3633 # load another value into integer register
amomaxu.d x13, x27, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x24, 0x938c34b02ae88ad9 # load random value
la x7, scratch # base address
sd x24, 0(x7) # store in memory
li x24, 0x68a8357aa030bdfc # load another value into integer register
amomaxu.d x14, x24, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xaed40164735d144d # load random value
la x21, scratch # base address
sd x12, 0(x21) # store in memory
li x12, 0x06d2ff88e7c7d4d4 # load another value into integer register
amomaxu.d x15, x12, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x26, 0x9078e2fb2614d24c # load random value
la x5, scratch # base address
sd x26, 0(x5) # store in memory
li x26, 0x2d99da219d9e5047 # load another value into integer register
amomaxu.d x16, x26, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x5, 0xba59957a6ceaf677 # load random value
la x25, scratch # base address
sd x5, 0(x25) # store in memory
li x5, 0x6ab906cf0eb6b56a # load another value into integer register
amomaxu.d x17, x5, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x9ee867fe1d912438 # load random value
la x3, scratch # base address
sd x7, 0(x3) # store in memory
li x7, 0x04017aab6e65703f # load another value into integer register
amomaxu.d x18, x7, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x6509fce808168076 # load random value
la x30, scratch # base address
sd x16, 0(x30) # store in memory
li x16, 0xdd169da339c91df4 # load another value into integer register
amomaxu.d x19, x16, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x31, 0xceafe9308e12bd6f # load random value
la x2, scratch # base address
sd x31, 0(x2) # store in memory
li x31, 0x0ac914306a7efd3b # load another value into integer register
amomaxu.d x20, x31, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x40298c9df1f5e060 # load random value
la x25, scratch # base address
sd x10, 0(x25) # store in memory
li x10, 0x2a17c9030ec5ed19 # load another value into integer register
amomaxu.d x21, x10, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x660c8d1198eda87e # load random value
la x8, scratch # base address
sd x16, 0(x8) # store in memory
li x16, 0xf216592b63591404 # load another value into integer register
amomaxu.d x22, x16, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x7820b4a508e3de92 # load random value
la x25, scratch # base address
sd x11, 0(x25) # store in memory
li x11, 0x42e473bc2f24a6a0 # load another value into integer register
amomaxu.d x23, x11, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x315f84dfc7c5aae2 # load random value
la x27, scratch # base address
sd x5, 0(x27) # store in memory
li x5, 0x7174eec266ebc1de # load another value into integer register
amomaxu.d x24, x5, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x65d29cbcec5d2ead # load random value
la x1, scratch # base address
sd x5, 0(x1) # store in memory
li x5, 0x8d21fca76fece3b6 # load another value into integer register
amomaxu.d x25, x5, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x0ced1cb4cce53eb7 # load random value
la x30, scratch # base address
sd x10, 0(x30) # store in memory
li x10, 0x875e88cd6b68aef4 # load another value into integer register
amomaxu.d x26, x10, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x390e2a44b43ed18a # load random value
la x22, scratch # base address
sd x15, 0(x22) # store in memory
li x15, 0xa5358e1cbcb4a95e # load another value into integer register
amomaxu.d x27, x15, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x29, 0x425c6a5bbb95bf1d # load random value
la x15, scratch # base address
sd x29, 0(x15) # store in memory
li x29, 0xfa0f9b4269c25c23 # load another value into integer register
amomaxu.d x28, x29, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x13, 0xfd24a2afc0d9c829 # load random value
la x11, scratch # base address
sd x13, 0(x11) # store in memory
li x13, 0x70c1cf9ce15fcf26 # load another value into integer register
amomaxu.d x29, x13, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x463fbf7c2c139878 # load random value
la x15, scratch # base address
sd x23, 0(x15) # store in memory
li x23, 0xa999e7ceb6393d13 # load another value into integer register
amomaxu.d x30, x23, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x7fb1eb005261e9a5 # load random value
la x17, scratch # base address
sd x28, 0(x17) # store in memory
li x28, 0x09f2834792888c3e # load another value into integer register
amomaxu.d x31, x28, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x885651d69ef2b572 # load random value
la x28, scratch # base address
sd x20, 0(x28) # store in memory
li x20, 0x0000000000000000 # load another value into integer register
amomaxu.d x9, x20, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x0809d9605befbc05 # load random value
la x6, scratch # base address
sd x8, 0(x6) # store in memory
li x8, 0x0000000000000001 # load another value into integer register
amomaxu.d x24, x8, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x6bc426368aff0b4d # load random value
la x7, scratch # base address
sd x15, 0(x7) # store in memory
li x15, 0x0000000000000002 # load another value into integer register
amomaxu.d x2, x15, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x17, 0xd2ecdc627a971aac # load random value
la x28, scratch # base address
sd x17, 0(x28) # store in memory
li x17, 0x8000000000000000 # load another value into integer register
amomaxu.d x5, x17, (x28) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0x593244d51f556a0f # load random value
la x6, scratch # base address
sd x29, 0(x6) # store in memory
li x29, 0x8000000000000001 # load another value into integer register
amomaxu.d x24, x29, (x6) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x1, 0xc85386fc91edf673 # load random value
la x19, scratch # base address
sd x1, 0(x19) # store in memory
li x1, 0x7fffffffffffffff # load another value into integer register
amomaxu.d x25, x1, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x2359d98378994873 # load random value
la x1, scratch # base address
sd x31, 0(x1) # store in memory
li x31, 0x7ffffffffffffffe # load another value into integer register
amomaxu.d x30, x31, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0xd4ef2e5b5c690dac # load random value
la x14, scratch # base address
sd x7, 0(x14) # store in memory
li x7, 0xffffffffffffffff # load another value into integer register
amomaxu.d x1, x7, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0xd453d6461fd88a9d # load random value
la x27, scratch # base address
sd x11, 0(x27) # store in memory
li x11, 0xfffffffffffffffe # load another value into integer register
amomaxu.d x28, x11, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x15, 0x69014928bdabb125 # load random value
la x5, scratch # base address
sd x15, 0(x5) # store in memory
li x15, 0x5bbc887763ae86f2 # load another value into integer register
amomaxu.d x19, x15, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x4e7dae61d41ca4e6 # load random value
la x26, scratch # base address
sd x21, 0(x26) # store in memory
li x21, 0xaaaaaaaaaaaaaaaa # load another value into integer register
amomaxu.d x24, x21, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x49337bd4b3e4f73f # load random value
la x19, scratch # base address
sd x1, 0(x19) # store in memory
li x1, 0x5555555555555555 # load another value into integer register
amomaxu.d x11, x1, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0xf48f2caa144a65bc # load random value
la x24, scratch # base address
sd x1, 0(x24) # store in memory
li x1, 0x00000000ffffffff # load another value into integer register
amomaxu.d x18, x1, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0xa298d94007238be5 # load random value
la x14, scratch # base address
sd x22, 0(x14) # store in memory
li x22, 0x00000000fffffffe # load another value into integer register
amomaxu.d x6, x22, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0xde0217aa6b89f83e # load random value
la x1, scratch # base address
sd x10, 0(x1) # store in memory
li x10, 0x0000000100000000 # load another value into integer register
amomaxu.d x9, x10, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x3, 0xc467bf909e42bce6 # load random value
la x31, scratch # base address
sd x3, 0(x31) # store in memory
li x3, 0x0000000100000001 # load another value into integer register
amomaxu.d x15, x3, (x31) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb069855e846450c2 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomaxu.d x10, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7de8b7c00dabe185 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomaxu.d x24, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x771f7c90ca7edbc1 # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomaxu.d x26, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xeb055a90f0e4b65a # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomaxu.d x18, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x02e08871a24f4958 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomaxu.d x31, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3f7cb054ea461797 # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomaxu.d x29, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3d99bb2e59f185d5 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomaxu.d x14, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x5300b2c2e7f4fdfc # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomaxu.d x3, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc5ade34afd312662 # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomaxu.d x24, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd5e658a4d147efff # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomaxu.d x6, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x705a82ca813fee1e # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomaxu.d x1, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5f6b6f23a4eca559 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomaxu.d x6, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xa580787c98f8b7a8 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomaxu.d x14, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x6430c8ae2b316e8a # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomaxu.d x13, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xe4476addc7894b2b # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomaxu.d x11, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4c070cc853dfef81 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomaxu.d x24, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6b7bd5c2810e4942 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomaxu.d x26, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x8dbf244bd6db1957 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomaxu.d x6, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1b7810a48dc98566 # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomaxu.d x24, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x8d5b253965d0b9d0 # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomaxu.d x18, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4cf1e1f7d3e4af5c # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomaxu.d x14, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xf5e4bf646752081f # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomaxu.d x19, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1413c8fc73ff0c4b # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomaxu.d x21, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x3a08054083777937 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomaxu.d x20, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xeebdec894f707def # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomaxu.d x7, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x6cef16f803b10b5d # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomaxu.d x18, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x69f3299ebdcbedac # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomaxu.d x20, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xec2e1c177260a652 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomaxu.d x25, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x8893dca0116e1538 # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomaxu.d x29, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x9bb43a5bc0861525 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomaxu.d x24, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8a07b136eaf67919 # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomaxu.d x22, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x5, 0xcbd3a0a30c311f46 # load random value
la x1, scratch # base address
sd x5, 0(x1) # store in memory
li x5, 0x06dce0e3a7d33922 # load another value into integer register
amomaxu.d x1, x5, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x10, 0x3633e84fd97e135f # load random value
la x2, scratch # base address
sd x10, 0(x2) # store in memory
li x10, 0xbc5aa45efda9cca4 # load another value into integer register
amomaxu.d x2, x10, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x5, 0x03990b49bccde4d0 # load random value
la x3, scratch # base address
sd x5, 0(x3) # store in memory
li x5, 0xb56f19ff5aa47402 # load another value into integer register
amomaxu.d x3, x5, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x9f7bd80a8aae996b # load random value
la x4, scratch # base address
sd x11, 0(x4) # store in memory
li x11, 0xf34763673f6a9252 # load another value into integer register
amomaxu.d x4, x11, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0x46f9cdf6b3086aac # load random value
la x5, scratch # base address
sd x26, 0(x5) # store in memory
li x26, 0xc59651d167b4bf5f # load another value into integer register
amomaxu.d x5, x26, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x4b9014a72f1601fa # load random value
la x6, scratch # base address
sd x26, 0(x6) # store in memory
li x26, 0x4a8f64f9acc910dc # load another value into integer register
amomaxu.d x6, x26, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x6bf76e887a25f9e9 # load random value
la x7, scratch # base address
sd x6, 0(x7) # store in memory
li x6, 0xf50efff077ff59ef # load another value into integer register
amomaxu.d x7, x6, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x12, 0xe5e8b5a7a8cbead0 # load random value
la x8, scratch # base address
sd x12, 0(x8) # store in memory
li x12, 0x53c329960fd8754a # load another value into integer register
amomaxu.d x8, x12, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x12, 0x22667441e91db127 # load random value
la x9, scratch # base address
sd x12, 0(x9) # store in memory
li x12, 0x8d201df8008222e5 # load another value into integer register
amomaxu.d x9, x12, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x22, 0x2f59f0d4d48c1cae # load random value
la x10, scratch # base address
sd x22, 0(x10) # store in memory
li x22, 0xb2ee6560f863c005 # load another value into integer register
amomaxu.d x10, x22, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x20, 0xfd32fef78afe3198 # load random value
la x11, scratch # base address
sd x20, 0(x11) # store in memory
li x20, 0xd5e19713d947b2a9 # load another value into integer register
amomaxu.d x11, x20, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x6, 0x9f66cc11129fc67e # load random value
la x12, scratch # base address
sd x6, 0(x12) # store in memory
li x6, 0x1214ba7db972d2c9 # load another value into integer register
amomaxu.d x12, x6, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x25, 0x6370b7f5eb30144c # load random value
la x13, scratch # base address
sd x25, 0(x13) # store in memory
li x25, 0x549ea062a55a96fc # load another value into integer register
amomaxu.d x13, x25, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x28, 0x0767a3c1a45d61cd # load random value
la x14, scratch # base address
sd x28, 0(x14) # store in memory
li x28, 0x2ad9a6c332f67aad # load another value into integer register
amomaxu.d x14, x28, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x81179854d1afd6fc # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomaxu.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x6, 0xb647692ca498c95d # load random value
la x16, scratch # base address
sd x6, 0(x16) # store in memory
li x6, 0x15291187db65f2ff # load another value into integer register
amomaxu.d x16, x6, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x27, 0xf4e05418188f3bb0 # load random value
la x17, scratch # base address
sd x27, 0(x17) # store in memory
li x27, 0x746640def7a04e9b # load another value into integer register
amomaxu.d x17, x27, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x24, 0x423da6f1f73de88c # load random value
la x18, scratch # base address
sd x24, 0(x18) # store in memory
li x24, 0x595814e83d7c306d # load another value into integer register
amomaxu.d x18, x24, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x10, 0xe4b5a4af9a3b47f8 # load random value
la x19, scratch # base address
sd x10, 0(x19) # store in memory
li x10, 0xc5fd6794e36a4e4b # load another value into integer register
amomaxu.d x19, x10, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x29, 0x134a26beadfa9289 # load random value
la x20, scratch # base address
sd x29, 0(x20) # store in memory
li x29, 0x796e7c7521ecc14e # load another value into integer register
amomaxu.d x20, x29, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x11, 0x610bdc06fa027e03 # load random value
la x21, scratch # base address
sd x11, 0(x21) # store in memory
li x11, 0x9a281b085203dd6c # load another value into integer register
amomaxu.d x21, x11, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x17, 0xff62d6334eb4511e # load random value
la x22, scratch # base address
sd x17, 0(x22) # store in memory
li x17, 0xe2f26b2ec581d41b # load another value into integer register
amomaxu.d x22, x17, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x8, 0xaacb6b2e87d0c54f # load random value
la x23, scratch # base address
sd x8, 0(x23) # store in memory
li x8, 0x4d4823e56e4ecf96 # load another value into integer register
amomaxu.d x23, x8, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x28, 0x0711802a7de448d3 # load random value
la x24, scratch # base address
sd x28, 0(x24) # store in memory
li x28, 0xe0221ed77ec751c7 # load another value into integer register
amomaxu.d x24, x28, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x15, 0xd7c47b0edfb832c0 # load random value
la x25, scratch # base address
sd x15, 0(x25) # store in memory
li x15, 0xe6d05e5614456a0a # load another value into integer register
amomaxu.d x25, x15, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x30, 0xc52ae1a854838f85 # load random value
la x26, scratch # base address
sd x30, 0(x26) # store in memory
li x30, 0xabd456a0f586f8f1 # load another value into integer register
amomaxu.d x26, x30, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x7, 0x97fd3cd26fda65c1 # load random value
la x27, scratch # base address
sd x7, 0(x27) # store in memory
li x7, 0x0f7b24c02ea38bef # load another value into integer register
amomaxu.d x27, x7, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x23, 0x39b3e2bf6059290c # load random value
la x28, scratch # base address
sd x23, 0(x28) # store in memory
li x23, 0x3d5d984997d55820 # load another value into integer register
amomaxu.d x28, x23, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x27, 0x50b297fa4665bb93 # load random value
la x29, scratch # base address
sd x27, 0(x29) # store in memory
li x27, 0xc976691d537fe632 # load another value into integer register
amomaxu.d x29, x27, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x14, 0x67ac4f9d7cce4db9 # load random value
la x30, scratch # base address
sd x14, 0(x30) # store in memory
li x14, 0xa2becfa94136df0e # load another value into integer register
amomaxu.d x30, x14, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x15, 0x34f0190ed24e856e # load random value
la x31, scratch # base address
sd x15, 0(x31) # store in memory
li x15, 0xba1f30de56b89450 # load another value into integer register
amomaxu.d x31, x15, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x9fb7d2860bb920f7 # load random value
la x1, scratch # base address
sd x0, 0(x1) # store in memory
li x0, 0x716234107fa495a8 # load another value into integer register
amomaxu.d x0, x0, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x00a2770f5e043157 # load random value
la x6, scratch # base address
sd x1, 0(x6) # store in memory
li x1, 0x555e4e60b9f72484 # load another value into integer register
amomaxu.d x1, x1, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xabbbb12c9483d01c # load random value
la x28, scratch # base address
sd x2, 0(x28) # store in memory
li x2, 0xe0be1198c6044ab2 # load another value into integer register
amomaxu.d x2, x2, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x1ad8d2a0729cee31 # load random value
la x16, scratch # base address
sd x3, 0(x16) # store in memory
li x3, 0x7d9599779d85c4f7 # load another value into integer register
amomaxu.d x3, x3, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x48ed949d389ddd93 # load random value
la x19, scratch # base address
sd x4, 0(x19) # store in memory
li x4, 0xc1c9ef1bb741faf1 # load another value into integer register
amomaxu.d x4, x4, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x987f55bc52e6e512 # load random value
la x26, scratch # base address
sd x5, 0(x26) # store in memory
li x5, 0x2597cfa64d19a032 # load another value into integer register
amomaxu.d x5, x5, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xda69c3be0bfd5211 # load random value
la x29, scratch # base address
sd x6, 0(x29) # store in memory
li x6, 0x2ddcee1599edc2a0 # load another value into integer register
amomaxu.d x6, x6, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa882b2ccd81338e3 # load random value
la x14, scratch # base address
sd x7, 0(x14) # store in memory
li x7, 0x977fceb74334e82f # load another value into integer register
amomaxu.d x7, x7, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xf5b44e03ee62fee1 # load random value
la x13, scratch # base address
sd x8, 0(x13) # store in memory
li x8, 0x9842191a45407263 # load another value into integer register
amomaxu.d x8, x8, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xde6e48fcd2722a01 # load random value
la x18, scratch # base address
sd x9, 0(x18) # store in memory
li x9, 0xdd695885ee4ffa30 # load another value into integer register
amomaxu.d x9, x9, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xd82df7c0c5c125bc # load random value
la x2, scratch # base address
sd x10, 0(x2) # store in memory
li x10, 0x234e2512a75fcdaf # load another value into integer register
amomaxu.d x10, x10, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x8430f5e829c6ddcc # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomaxu.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x66eb58feafe24ee6 # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomaxu.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x8da2b18a671bee9e # load random value
la x30, scratch # base address
sd x13, 0(x30) # store in memory
li x13, 0x9c18d5f353604fa0 # load another value into integer register
amomaxu.d x13, x13, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xefbc06f998b493ca # load random value
la x28, scratch # base address
sd x14, 0(x28) # store in memory
li x14, 0x641c502cac3e85d6 # load another value into integer register
amomaxu.d x14, x14, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x2770307f6ff6279d # load random value
la x6, scratch # base address
sd x15, 0(x6) # store in memory
li x15, 0xc69d363e578268e8 # load another value into integer register
amomaxu.d x15, x15, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x29a47c512b361786 # load random value
la x10, scratch # base address
sd x16, 0(x10) # store in memory
li x16, 0x24eaf20b214cd08d # load another value into integer register
amomaxu.d x16, x16, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x6715dafc8bead89a # load random value
la x3, scratch # base address
sd x17, 0(x3) # store in memory
li x17, 0x7cd93f90307ef21b # load another value into integer register
amomaxu.d x17, x17, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x318213e0c4ae2d50 # load random value
la x27, scratch # base address
sd x18, 0(x27) # store in memory
li x18, 0xb2ee3e78b9d3cf73 # load another value into integer register
amomaxu.d x18, x18, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x9761a127543f76bf # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomaxu.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xba2e9284b735e9eb # load random value
la x2, scratch # base address
sd x20, 0(x2) # store in memory
li x20, 0x8bb536133254cb26 # load another value into integer register
amomaxu.d x20, x20, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x3af9a0ff06be29f1 # load random value
la x18, scratch # base address
sd x21, 0(x18) # store in memory
li x21, 0x9b53259fc2475530 # load another value into integer register
amomaxu.d x21, x21, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x481d337e73de457e # load random value
la x13, scratch # base address
sd x22, 0(x13) # store in memory
li x22, 0x0541fb7de91017a9 # load another value into integer register
amomaxu.d x22, x22, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xcc277e061bdedd4e # load random value
la x15, scratch # base address
sd x23, 0(x15) # store in memory
li x23, 0x5a8733ec22fc1dee # load another value into integer register
amomaxu.d x23, x23, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x93878850baa38bf4 # load random value
la x8, scratch # base address
sd x24, 0(x8) # store in memory
li x24, 0x93bfb8273bb0c851 # load another value into integer register
amomaxu.d x24, x24, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x01a3f5cc0987cd1c # load random value
la x6, scratch # base address
sd x25, 0(x6) # store in memory
li x25, 0xdc5ea7ade581a771 # load another value into integer register
amomaxu.d x25, x25, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x779c0dbda0922eb0 # load random value
la x1, scratch # base address
sd x26, 0(x1) # store in memory
li x26, 0x3a82072140e741e7 # load another value into integer register
amomaxu.d x26, x26, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xa0c4fc6910d826ca # load random value
la x8, scratch # base address
sd x27, 0(x8) # store in memory
li x27, 0xb44b2a4af4b6cd42 # load another value into integer register
amomaxu.d x27, x27, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xcde223128686ee0a # load random value
la x26, scratch # base address
sd x28, 0(x26) # store in memory
li x28, 0xb0ba770ecbf285a6 # load another value into integer register
amomaxu.d x28, x28, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xea0608a2f56a4fe7 # load random value
la x2, scratch # base address
sd x29, 0(x2) # store in memory
li x29, 0x482f8d4dbaeedba3 # load another value into integer register
amomaxu.d x29, x29, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x8c3c5fcb750a5a46 # load random value
la x3, scratch # base address
sd x30, 0(x3) # store in memory
li x30, 0xbeed2ccd3076be0c # load another value into integer register
amomaxu.d x30, x30, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x70ac91fa8e2be2e0 # load random value
la x21, scratch # base address
sd x31, 0(x21) # store in memory
li x31, 0x969fe574ccadd90e # load another value into integer register
amomaxu.d x31, x31, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2bdd15467ad94a68 # load random value
la x1, scratch # base address
sd x1, 0(x1) # store in memory
amomaxu.d x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x95120ec470398e75 # load random value
la x2, scratch # base address
sd x2, 0(x2) # store in memory
amomaxu.d x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x811ee89ecae0089b # load random value
la x3, scratch # base address
sd x3, 0(x3) # store in memory
amomaxu.d x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x608883ef647497d1 # load random value
la x4, scratch # base address
sd x4, 0(x4) # store in memory
amomaxu.d x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14d64293e3fdeaa5 # load random value
la x5, scratch # base address
sd x5, 0(x5) # store in memory
amomaxu.d x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x97dda2c878888d2b # load random value
la x6, scratch # base address
sd x6, 0(x6) # store in memory
amomaxu.d x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xddd3f654f7881ec4 # load random value
la x7, scratch # base address
sd x7, 0(x7) # store in memory
amomaxu.d x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xdc7e54f107b69143 # load random value
la x8, scratch # base address
sd x8, 0(x8) # store in memory
amomaxu.d x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x0621313353dc58ee # load random value
la x9, scratch # base address
sd x9, 0(x9) # store in memory
amomaxu.d x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x96a066fa88d8102c # load random value
la x10, scratch # base address
sd x10, 0(x10) # store in memory
amomaxu.d x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x6e8f45ae8e4c1b98 # load random value
la x11, scratch # base address
sd x11, 0(x11) # store in memory
amomaxu.d x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x33761b86b5915b1a # load random value
la x12, scratch # base address
sd x12, 0(x12) # store in memory
amomaxu.d x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4173ec55b5786228 # load random value
la x13, scratch # base address
sd x13, 0(x13) # store in memory
amomaxu.d x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xeb5cfe07da7041a8 # load random value
la x14, scratch # base address
sd x14, 0(x14) # store in memory
amomaxu.d x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe87a16e82d01bfa8 # load random value
la x15, scratch # base address
sd x15, 0(x15) # store in memory
amomaxu.d x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa05e756fae85cfb0 # load random value
la x16, scratch # base address
sd x16, 0(x16) # store in memory
amomaxu.d x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe080ae6608398622 # load random value
la x17, scratch # base address
sd x17, 0(x17) # store in memory
amomaxu.d x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xdad0d80cebb2a6d0 # load random value
la x18, scratch # base address
sd x18, 0(x18) # store in memory
amomaxu.d x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x3970e131b566339c # load random value
la x19, scratch # base address
sd x19, 0(x19) # store in memory
amomaxu.d x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7f463cea3e7dc3ea # load random value
la x20, scratch # base address
sd x20, 0(x20) # store in memory
amomaxu.d x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x7c432e488bb5440b # load random value
la x21, scratch # base address
sd x21, 0(x21) # store in memory
amomaxu.d x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe8f1bd75def2e4b7 # load random value
la x22, scratch # base address
sd x22, 0(x22) # store in memory
amomaxu.d x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x83221cb0bc44a94d # load random value
la x23, scratch # base address
sd x23, 0(x23) # store in memory
amomaxu.d x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xea8c6846d7dac116 # load random value
la x24, scratch # base address
sd x24, 0(x24) # store in memory
amomaxu.d x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd2261a709020e21c # load random value
la x25, scratch # base address
sd x25, 0(x25) # store in memory
amomaxu.d x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x57fcce37d227efae # load random value
la x26, scratch # base address
sd x26, 0(x26) # store in memory
amomaxu.d x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1afc2e1887134a9f # load random value
la x27, scratch # base address
sd x27, 0(x27) # store in memory
amomaxu.d x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xf4ba6fb8bb751353 # load random value
la x28, scratch # base address
sd x28, 0(x28) # store in memory
amomaxu.d x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xfead6b964b982e8a # load random value
la x29, scratch # base address
sd x29, 0(x29) # store in memory
amomaxu.d x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc91d486fb33fce00 # load random value
la x30, scratch # base address
sd x30, 0(x30) # store in memory
amomaxu.d x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8cf9f1b2e7cf1abd # load random value
la x31, scratch # base address
sd x31, 0(x31) # store in memory
amomaxu.d x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
add x14, x8, x5 # perform first operation
amomaxu.d x9, x10, (x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
add x24, x6, x27 # perform first operation
amomaxu.d x30, x1, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
add x14, x11, x21 # perform first operation
amomaxu.d x7, x26, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
add x9, x9, x0 # perform first operation
amomaxu.d x9, x9, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
add x12, x12, x0 # perform first operation
amomaxu.d x12, x5, (x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x26, scratch
add x15, x15, x0 # perform first operation
amomaxu.d x7, x24, (x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x24, x8, x14 # perform first operation
amomaxu.d x24, x1, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x29, scratch
add x7, x19, x25 # perform first operation
amomaxu.d x7, x24, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x27, x6, x16 # perform first operation
amomaxu.d x27, x1, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
add x17, x14, x1 # perform first operation
amomaxu.d x14, x31, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x14, scratch
add x3, x8, x28 # perform first operation
amomaxu.d x28, x1, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x16, scratch
add x14, x13, x27 # perform first operation
amomaxu.d x26, x24, (x16) # perform second (triggering) operation

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
