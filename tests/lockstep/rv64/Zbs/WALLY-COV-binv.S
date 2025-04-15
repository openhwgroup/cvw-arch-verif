///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-binv.S
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
li x0, 0x6a55e26c79b4fd5a # initialize rs1
li x26, 0xd8edd36720b6760e # initialize rs2
binv x5, x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x902bedd02ab3ba9c # initialize rs1
li x22, 0xbeecb637214dc457 # initialize rs2
binv x2, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x92baf4df9589c9c8 # initialize rs1
li x29, 0x71948b8ef2972263 # initialize rs2
binv x24, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9c0b22f075ebb15c # initialize rs1
li x5, 0xf0179ce1c531f95a # initialize rs2
binv x7, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ae58fe806c1fa21 # initialize rs1
li x16, 0xe728893d6bbe4013 # initialize rs2
binv x28, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1723b302bebfc079 # initialize rs1
li x13, 0xddf152929b200acf # initialize rs2
binv x4, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3f53632fd0dc519a # initialize rs1
li x31, 0xfff6a96b2cbdebf4 # initialize rs2
binv x7, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xeaad083697126083 # initialize rs1
li x5, 0x3e88116b655b9ea6 # initialize rs2
binv x19, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x220e79fc934210b7 # initialize rs1
li x3, 0xcb9ad5c9d13e09dc # initialize rs2
binv x13, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x17891cbe21806ba8 # initialize rs1
li x22, 0x6880bf9f2a1397da # initialize rs2
binv x17, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x23c4b955f5d6f060 # initialize rs1
li x12, 0xf2f519866375275e # initialize rs2
binv x31, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xdd97fb6549cb3b8a # initialize rs1
li x23, 0x07b600c228afdaf4 # initialize rs2
binv x29, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x700c1f98971b4a3f # initialize rs1
li x19, 0xc39870d4b03eeb1d # initialize rs2
binv x13, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x18abf2ebaf66920f # initialize rs1
li x27, 0xff5f74349484774a # initialize rs2
binv x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xbf39b798ff9a037b # initialize rs1
li x28, 0xf348ae7f505912d5 # initialize rs2
binv x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc2bdccfe90e9c872 # initialize rs1
li x6, 0xab14b170507d0284 # initialize rs2
binv x17, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4a7d110555fe9d44 # initialize rs1
li x1, 0x868685c211df890d # initialize rs2
binv x17, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf27137a0c9df90bc # initialize rs1
li x24, 0x2def8e71bd24ec8d # initialize rs2
binv x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x188109c5c2e967e0 # initialize rs1
li x25, 0xb114a32c3b689c19 # initialize rs2
binv x14, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa6bd8c539e1b5221 # initialize rs1
li x22, 0xdce6f554932db2ce # initialize rs2
binv x23, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf283546dea17817b # initialize rs1
li x8, 0xa86a27f3e648706b # initialize rs2
binv x1, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0b72608a2e632599 # initialize rs1
li x29, 0xe47ef39d09f4657d # initialize rs2
binv x23, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe16e138fb36ffd71 # initialize rs1
li x11, 0x79e88984da85245d # initialize rs2
binv x21, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa067d0c3cc2bead7 # initialize rs1
li x29, 0xed36492319824318 # initialize rs2
binv x14, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdf8f4e0bdef0e8b9 # initialize rs1
li x6, 0x744a5e459fc4cdbf # initialize rs2
binv x19, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x03715b9107dcb6e2 # initialize rs1
li x6, 0x8ffcfa1f7bd42438 # initialize rs2
binv x10, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x49d68ba1ca409e00 # initialize rs1
li x31, 0xc2f504fc378eb592 # initialize rs2
binv x14, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc848b3029024816e # initialize rs1
li x1, 0xd622435bdccc96d3 # initialize rs2
binv x28, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6467f548c1b78bae # initialize rs1
li x13, 0xcbfd65235ce51cc2 # initialize rs2
binv x1, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdbdebb8821ec732b # initialize rs1
li x16, 0x04ba4533ec0c9183 # initialize rs2
binv x5, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x72dd3cd36d92d1ba # initialize rs1
li x3, 0xbfa0efd3c323a1f6 # initialize rs2
binv x1, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x294b63c475fe6ab0 # initialize rs1
li x16, 0xfee4ed893c53cbec # initialize rs2
binv x3, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x13, 0xb59c363d5137a993 # initialize rs1
li x0, 0xe5f66cd77ac9616d # initialize rs2
binv x5, x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xc030e947f78bdc1d # initialize rs1
li x1, 0xd30370dc1fdb642a # initialize rs2
binv x19, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x1b5567401cf79cd4 # initialize rs1
li x2, 0x400689c2d1a3a951 # initialize rs2
binv x20, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x63b581d1a9c3d708 # initialize rs1
li x3, 0x8af29e320f88955f # initialize rs2
binv x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x4af0a7a179226594 # initialize rs1
li x4, 0xe4dd86766b0a6e1e # initialize rs2
binv x11, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x41e67ffdfb9442ff # initialize rs1
li x5, 0xfccc9963339612fb # initialize rs2
binv x9, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x5917f18f0a72823a # initialize rs1
li x6, 0x69b06ddbb81e30de # initialize rs2
binv x25, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x0206face5ad1e07e # initialize rs1
li x7, 0x2ee27ef43fcaf354 # initialize rs2
binv x10, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x9cef44730fbcc740 # initialize rs1
li x8, 0xe74d7f347279ba4e # initialize rs2
binv x10, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0xa6e47b8f6e82f3e8 # initialize rs1
li x9, 0x068b0726da910f26 # initialize rs2
binv x14, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0xba53bf69f42602ba # initialize rs1
li x10, 0x567183445acc727f # initialize rs2
binv x28, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x7db413430ba17b3a # initialize rs1
li x11, 0xd606665c1a73f5d1 # initialize rs2
binv x29, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x3a4c0f66f247f30d # initialize rs1
li x12, 0x642d78ea6d873709 # initialize rs2
binv x18, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x45653c46e9e80df0 # initialize rs1
li x13, 0x859ea18d07a645c1 # initialize rs2
binv x12, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0xde5a0d0494b97146 # initialize rs1
li x14, 0x9904e974397cb8e8 # initialize rs2
binv x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0x688e0004f3d25cae # initialize rs1
li x15, 0xff710868606644f1 # initialize rs2
binv x23, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0xd3da76652f9f046a # initialize rs1
li x16, 0xcb9e21b3453b6164 # initialize rs2
binv x31, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x10ae08315657e386 # initialize rs1
li x17, 0xe205677e2ea817ee # initialize rs2
binv x20, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0xc5f87a7e28f5cab0 # initialize rs1
li x18, 0xb594ed6c9c35b38d # initialize rs2
binv x17, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0xac32a88243a189db # initialize rs1
li x19, 0x80a30ec1bcca97bc # initialize rs2
binv x26, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x14, 0x184c1a0d697973bf # initialize rs1
li x20, 0x24edfe65dede267c # initialize rs2
binv x29, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x2625e32665069c0c # initialize rs1
li x21, 0x282c61b30a532176 # initialize rs2
binv x3, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x15, 0x350bf2aef179188d # initialize rs1
li x22, 0xad6756367bc7fc5a # initialize rs2
binv x9, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x283069e50d4a9e17 # initialize rs1
li x23, 0xc933ad560ea8df58 # initialize rs2
binv x7, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x64cb4fb375798196 # initialize rs1
li x24, 0x091764bbfb050a45 # initialize rs2
binv x21, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0xfc929c51bbabf611 # initialize rs1
li x25, 0xbbeb88372ff283f3 # initialize rs2
binv x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xfd216b9440c4104a # initialize rs1
li x26, 0x27cdfc3369ae4abb # initialize rs2
binv x17, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x3896a145e5f8e2f4 # initialize rs1
li x27, 0xdaa89ec92898438e # initialize rs2
binv x11, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0x69ff8d93e7454d12 # initialize rs1
li x28, 0x0454a7f08fe1a1c5 # initialize rs2
binv x21, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x648f7f94a5ce9ab5 # initialize rs1
li x29, 0x6eb29a65d6d473d2 # initialize rs2
binv x23, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x99ecf66626f422a8 # initialize rs1
li x30, 0x0d2fe3793bc37f47 # initialize rs2
binv x1, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x0244e54dea586ad1 # initialize rs1
li x31, 0x380e89ac9e564448 # initialize rs2
binv x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x09e16bbce5df1d9d # initialize rs1
li x15, 0xea93f9898d691387 # initialize rs2
binv x0, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0x67831ff0e0f89380 # initialize rs1
li x24, 0xea56c787bd59b232 # initialize rs2
binv x1, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0x774fb60195a9a342 # initialize rs1
li x1, 0xb75e90f42b897099 # initialize rs2
binv x2, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x0a66bc2463a38170 # initialize rs1
li x26, 0xee180748127f126b # initialize rs2
binv x3, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xbd016d4024945371 # initialize rs1
li x12, 0x0e6c31376f434859 # initialize rs2
binv x4, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xc8949c7e5d28c4a7 # initialize rs1
li x23, 0x4b7f39e094154369 # initialize rs2
binv x5, x4, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x9d18faeca9090342 # initialize rs1
li x5, 0xa7fe1e2d3dd69a73 # initialize rs2
binv x6, x15, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xa0760daf27bdaea6 # initialize rs1
li x29, 0x86f6e64b0e44a12b # initialize rs2
binv x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0xf24d8c4fd5f6cba9 # initialize rs1
li x17, 0x78ecfbe86c0b1598 # initialize rs2
binv x8, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x449d3609bc1c274e # initialize rs1
li x29, 0xb0beccf42f7f10a0 # initialize rs2
binv x9, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0x127b6a9722db8729 # initialize rs1
li x10, 0xcfe453b85322863d # initialize rs2
binv x10, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x3c5542c02b02126a # initialize rs1
li x21, 0x81cc27672eb712f3 # initialize rs2
binv x11, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x6aebc8434311a1bc # initialize rs1
li x2, 0xa90304d43dff38b9 # initialize rs2
binv x12, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0xbbacad45fb2b2860 # initialize rs1
li x9, 0xc250ce985e34c75e # initialize rs2
binv x13, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x4a127357aa2dafab # initialize rs1
li x27, 0xf12e3ddb0cda9efc # initialize rs2
binv x14, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0x0bbec8116c464018 # initialize rs1
li x23, 0xc7376e038b0a47c4 # initialize rs2
binv x15, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x5bbbf7adf9ef397e # initialize rs1
li x20, 0x2d9c929ae155723b # initialize rs2
binv x16, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x7c3295ead52273f1 # initialize rs1
li x20, 0x0f8073e7f04b29d8 # initialize rs2
binv x17, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xeb8b3b4b98e6e97e # initialize rs1
li x25, 0x91236a45ce8ee030 # initialize rs2
binv x18, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0xeb782d2fa022f268 # initialize rs1
li x6, 0x608eec316205f780 # initialize rs2
binv x19, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0xb1248df6a55ac23d # initialize rs1
li x12, 0x01e9f479d99e8e7f # initialize rs2
binv x20, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x99e3b728f2375b97 # initialize rs1
li x24, 0x28a3c910c66b26c9 # initialize rs2
binv x21, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x0b7b9992b3f132c7 # initialize rs1
li x1, 0x5c2eded2c52148d6 # initialize rs2
binv x22, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0x3d2bbce5c9b78be8 # initialize rs1
li x23, 0x976a7a8b9f5ef1e1 # initialize rs2
binv x23, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x3820647d57419ea2 # initialize rs1
li x21, 0x85bda24f28643b30 # initialize rs2
binv x24, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0xd26fd8fcff509b55 # initialize rs1
li x22, 0xdeb8020cfd31c714 # initialize rs2
binv x25, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0x868315759110ea5f # initialize rs1
li x1, 0x205a111e212bd61a # initialize rs2
binv x26, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x040d3366e4b77e19 # initialize rs1
li x24, 0x887e8aec3a0e5587 # initialize rs2
binv x27, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0xe875659d9b646e43 # initialize rs1
li x20, 0xdd878f4ca9e573eb # initialize rs2
binv x28, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xdc7cd41d7a4902fb # initialize rs1
li x14, 0x3affb74d39731871 # initialize rs2
binv x29, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x35ce27de57f1dbba # initialize rs1
li x11, 0x17d6eaf8de159c3e # initialize rs2
binv x30, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xb92f8cb3d6a94096 # initialize rs1
li x1, 0xb3328f6f9c9cff73 # initialize rs2
binv x31, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
li x13, 0xf01c1f357a3acc18 # initialize rs2
binv x14, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x26, 0xa1e9bb67924e6fe4 # initialize rs2
binv x29, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x25, 0x2ef76fedb4163a39 # initialize rs2
binv x31, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
li x15, 0xb61e9fc053f222ed # initialize rs2
binv x6, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x8d238e8041131d71 # initialize rs2
binv x13, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x10, 0x9b174af38d369428 # initialize rs2
binv x23, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x7, 0x3ca9c009bbe4e35c # initialize rs2
binv x16, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x18, 0x85fcd645ee27518f # initialize rs2
binv x25, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x1, 0xac859401b2e36679 # initialize rs2
binv x5, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0ec18fd998b576b8 # initialize rs2
binv x10, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x71b55ce2b6f9461a # initialize rs2
binv x3, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x298f33222761e0aa # initialize rs2
binv x21, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x22, 0x801ea1fd8a6a1a03 # initialize rs2
binv x21, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x18, 0x84a9f6ba28b5808a # initialize rs2
binv x26, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x22, 0x4d3b9e6b061c993c # initialize rs2
binv x31, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x23, 0x2b6511af545640d8 # initialize rs2
binv x19, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0xb5dbff9e8f81f004 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
binv x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xde4c77cc0ba2a2b0 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
binv x23, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0xdf24063123539b69 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
binv x23, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x26, 0x08886627d83cd6f5 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
binv x13, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x2de25eeee67e454e # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
binv x18, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0xde0eefd516db6f29 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
binv x14, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x28, 0xd387848ec7e49fbc # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
binv x1, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x886933b7477e6a84 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
binv x22, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0xbfe8ab9aed0ec3a6 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
binv x6, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xf4553cb4fff0337e # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
binv x25, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x42965c71e59753f2 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x1, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x06f0a97630d0059e # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
binv x6, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xe5788ada9ec1c8c1 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
binv x23, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0x664aa5e0b99362a1 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
binv x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0x29d966150dbab224 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
binv x20, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x84c2f2749d9c3213 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
binv x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
binv x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
binv x9, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
binv x6, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x21, 0x0000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
binv x11, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
binv x17, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
binv x17, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
binv x18, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
binv x25, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
binv x6, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
binv x15, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x10, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x27, 0x0000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
binv x2, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
binv x10, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
binv x23, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x30, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
binv x5, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x30, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
binv x17, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x27, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
binv x26, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
binv x9, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
binv x6, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
binv x6, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
binv x17, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
binv x10, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
binv x30, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
binv x8, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
binv x18, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
binv x7, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x3, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x27, 0x0000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
binv x24, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
binv x19, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
binv x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x10, 0x0000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
binv x30, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
binv x12, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
binv x1, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
binv x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
binv x11, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x30, 0x0000000000000002 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
binv x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x30, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
binv x9, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
binv x16, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
binv x25, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
binv x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
binv x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
binv x1, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000002 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x25, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
binv x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
binv x28, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
binv x21, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
binv x20, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x13, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
binv x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x6, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
binv x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
binv x23, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
binv x20, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
binv x8, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x8, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
binv x31, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
binv x8, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
binv x17, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
binv x22, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
binv x23, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x30, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
binv x14, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x16, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x5, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
binv x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
binv x17, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
binv x3, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x6, 0x8000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
binv x10, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x26, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
binv x19, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x22, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
binv x27, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x16, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
binv x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
binv x18, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x7, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
binv x16, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
binv x24, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
binv x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
binv x8, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
binv x1, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
binv x19, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
binv x12, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x18, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
binv x19, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x22, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
binv x9, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
binv x18, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x22, 0x8000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
binv x11, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x15, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
binv x19, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x23, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
binv x27, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
binv x3, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x23, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
binv x6, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
binv x2, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
binv x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
binv x18, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
binv x18, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
binv x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x7fffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
binv x26, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7fffffffffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x1, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x16, 0x7fffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
binv x11, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
binv x12, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
binv x1, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
binv x25, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
binv x26, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x18, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
binv x21, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
binv x11, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
binv x7, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
binv x24, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
binv x12, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
binv x28, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
binv x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
binv x9, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
binv x18, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
binv x23, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x7ffffffffffffffe # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x1, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
binv x30, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
binv x19, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
binv x18, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x15, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
binv x26, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
binv x10, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
binv x27, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
binv x17, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x29, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
binv x15, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x31, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
binv x25, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
binv x25, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
binv x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
binv x31, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
binv x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
binv x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0xffffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
binv x28, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x30, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
binv x6, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
binv x12, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
binv x13, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x11, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
binv x7, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
binv x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x28, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
binv x8, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
binv x27, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x14, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
binv x1, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
binv x17, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
binv x30, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x5, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
binv x11, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
binv x15, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
binv x17, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
binv x3, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0xfffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
binv x19, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x27, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
binv x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
binv x3, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
binv x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
binv x13, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
binv x22, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
binv x1, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
binv x23, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
binv x14, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
binv x2, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
binv x8, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
binv x27, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
binv x19, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
binv x17, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
binv x31, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
binv x25, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x23, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
binv x22, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x14, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
binv x1, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
binv x24, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
binv x3, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
binv x23, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
binv x18, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
binv x8, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
binv x21, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
binv x23, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
binv x10, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
binv x11, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
binv x19, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
binv x13, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
binv x17, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x14, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
binv x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
binv x16, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
binv x5, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
binv x8, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
binv x23, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
binv x17, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x30, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
binv x12, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
binv x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
binv x12, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x28, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
binv x18, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
binv x17, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
binv x29, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
binv x17, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
binv x10, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
binv x11, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5555555555555555 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x30, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
binv x9, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x25, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
binv x14, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
binv x1, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x19, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
binv x21, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
binv x15, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
binv x25, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
binv x6, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
binv x13, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x9, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
binv x18, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
binv x15, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
binv x29, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
binv x24, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
binv x7, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
binv x15, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000ffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x27, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
binv x9, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
binv x15, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
binv x19, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
binv x17, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x31, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
binv x11, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
binv x11, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
binv x19, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
binv x19, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
binv x28, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x24, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
binv x19, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
binv x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
binv x18, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
binv x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
binv x3, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
binv x13, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x14, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x20, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
binv x28, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
binv x6, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
binv x31, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
binv x9, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
binv x21, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x18, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
binv x6, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
binv x8, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
binv x10, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
binv x12, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
binv x18, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
binv x20, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
binv x30, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
binv x5, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
binv x29, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
binv x26, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x0000000100000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
binv x14, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x28, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
binv x26, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
binv x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x30, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
binv x29, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
binv x18, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
binv x13, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
binv x29, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x1, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
binv x20, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x19, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
binv x9, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
binv x13, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
binv x26, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
binv x20, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
binv x1, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
binv x22, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x15, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
binv x3, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
binv x9, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
binv x27, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
binv x9, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
binv x5, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbe3c4b4bf0322676 # initialize rs1
li x0, 0xba4caad5d5df0945 # initialize rs2
binv x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x4bdc8328b2217402 # initialize rs1
li x1, 0x8c491bf25175e426 # initialize rs2
binv x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x00987084596eebab # initialize rs1
li x2, 0xc7aa7c5920fab27d # initialize rs2
binv x12, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x907e793afef64abf # initialize rs1
li x3, 0xba03f3cac17d1a14 # initialize rs2
binv x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x522fea1bba6bd420 # initialize rs1
li x4, 0xc458caff400710ef # initialize rs2
binv x12, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb42f09c1cad774cf # initialize rs1
li x5, 0xe4c1e9cf6554e658 # initialize rs2
binv x1, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2218151e663d240f # initialize rs1
li x6, 0x9633d1581a32990b # initialize rs2
binv x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x34bb43004e40a593 # initialize rs1
li x7, 0x34c7cab1f018fe28 # initialize rs2
binv x9, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x670b755b5ce11d19 # initialize rs1
li x8, 0x802be6931d62b12c # initialize rs2
binv x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe30298519be13de4 # initialize rs1
li x9, 0xfc7866bb5319cc7d # initialize rs2
binv x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x69fd41999845ba80 # initialize rs1
li x10, 0x27595df248d6b1c9 # initialize rs2
binv x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x174bc0fea46c0997 # initialize rs1
li x11, 0xe2efbb66fe99530b # initialize rs2
binv x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xab719cb1e0f1fdcf # initialize rs1
li x12, 0x7442895f3cb0b52e # initialize rs2
binv x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe4381bf7c415c5a8 # initialize rs1
li x13, 0x6616868d10247b25 # initialize rs2
binv x12, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xb3faab07b0b0307c # initialize rs1
li x14, 0x55f37591d5adb4a3 # initialize rs2
binv x6, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1f0a42ceb1f52fcd # initialize rs1
li x15, 0x0f5e3e6362482cb8 # initialize rs2
binv x21, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x88b3ad8564f25418 # initialize rs1
li x16, 0xdcabd3c99ed712d0 # initialize rs2
binv x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x16d2482b8c54ad06 # initialize rs1
li x17, 0x987f5b2c2d84c80d # initialize rs2
binv x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1b7e578915a9bc0b # initialize rs1
li x18, 0x8627721b202463eb # initialize rs2
binv x1, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbce25e73380d1b77 # initialize rs1
li x19, 0x1f08e18fa87984a5 # initialize rs2
binv x2, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe05b979c52576b39 # initialize rs1
li x20, 0x7f23ea215d041d94 # initialize rs2
binv x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x69ee10d63f0a9cc5 # initialize rs1
li x21, 0x5863fe636d7694e5 # initialize rs2
binv x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xb0c2fd47524ac7a6 # initialize rs1
li x22, 0xd796ce6c97c58ab6 # initialize rs2
binv x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8338cd0e1a76f0da # initialize rs1
li x23, 0x2613e3ad2ef2576c # initialize rs2
binv x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7a0d1e3a76f98277 # initialize rs1
li x24, 0x3998cec9448551bc # initialize rs2
binv x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb523eb35c12b3f5a # initialize rs1
li x25, 0x79fed5f38b0f6f19 # initialize rs2
binv x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x5b8fb1444ba3fd9b # initialize rs1
li x26, 0xc0c5499334a6f066 # initialize rs2
binv x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0aeb2b931c26a898 # initialize rs1
li x27, 0xf60099ab408637c3 # initialize rs2
binv x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3df63d809b32d29a # initialize rs1
li x28, 0xf7508405756066a5 # initialize rs2
binv x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb31dcfdb00f80757 # initialize rs1
li x29, 0xcdd1e4f2e8343950 # initialize rs2
binv x15, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa1607dc1019d847c # initialize rs1
li x30, 0x1fc1c9caf8ad86e3 # initialize rs2
binv x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x88cd37786a2f66e9 # initialize rs1
li x31, 0x90878629e010e2d2 # initialize rs2
binv x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x578a38e61d44a729 # initialize rs1
li x2, 0xf3ba4988cacff720 # initialize rs2
binv x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x095c7abda9ccc632 # initialize rs1
li x24, 0x348daf74faf2318c # initialize rs2
binv x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbfd8d608ab2113f3 # initialize rs1
li x30, 0x983f844d1c47053e # initialize rs2
binv x2, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x590a4acbf8cf6f10 # initialize rs1
li x6, 0x331da3f55d0b4da3 # initialize rs2
binv x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xde688423d25e7398 # initialize rs1
li x20, 0x24864a79d33a864c # initialize rs2
binv x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x242d6692e11325f6 # initialize rs1
li x14, 0x79f71877f58f43a7 # initialize rs2
binv x5, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa553e94a60216d37 # initialize rs1
li x29, 0xf9fdd45e4363ea2e # initialize rs2
binv x6, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9be5dead24cb856 # initialize rs1
li x13, 0x57da2c020986f491 # initialize rs2
binv x7, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x91b1eb8685d991c0 # initialize rs1
li x28, 0x9476ce98a9c8699a # initialize rs2
binv x8, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa3d7c979d3202f9a # initialize rs1
li x26, 0x6f8b98875f9814fc # initialize rs2
binv x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x683f57946b187916 # initialize rs1
li x8, 0x895ce1cdccde8419 # initialize rs2
binv x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2d7783f9032ce566 # initialize rs1
li x9, 0x66c338be5ea444a0 # initialize rs2
binv x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf942fb9600be9a97 # initialize rs1
li x8, 0x041067f5b872a23f # initialize rs2
binv x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc022bf4a655274f8 # initialize rs1
li x20, 0x06bcad34e114f0b8 # initialize rs2
binv x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4aff1a8cff3ddf7e # initialize rs1
li x1, 0x38d523713b19d7e1 # initialize rs2
binv x14, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7a65d5ef0c09f195 # initialize rs1
li x27, 0x99ad6bc8f851d52f # initialize rs2
binv x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3966abd77808045f # initialize rs1
li x26, 0x2cb9fc0900c4538e # initialize rs2
binv x16, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8e8630bea482fae0 # initialize rs1
li x8, 0x1752bff0f8922bab # initialize rs2
binv x17, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7713885f15afcc03 # initialize rs1
li x6, 0x5aa9e627d85ee23b # initialize rs2
binv x18, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfcae48442e50e809 # initialize rs1
li x6, 0x41ab3c412c3a405d # initialize rs2
binv x19, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1ad6792247cdf64b # initialize rs1
li x28, 0xcf0ad00fe8d3ca0a # initialize rs2
binv x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe12ce76886dc2398 # initialize rs1
li x29, 0x3180eb15a6d3b40a # initialize rs2
binv x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0c0807aac49e90c7 # initialize rs1
li x19, 0xb7d86ac5db7fff72 # initialize rs2
binv x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xf064d6de4edd4b20 # initialize rs1
li x14, 0x6977295ec34ff27e # initialize rs2
binv x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xbb14b8bc56364dd2 # initialize rs1
li x1, 0x25910ec957e8d8e8 # initialize rs2
binv x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x90b1661b53da18cc # initialize rs1
li x14, 0x5f7b6b530652cb59 # initialize rs2
binv x25, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8eb7f8d32b0318a4 # initialize rs1
li x22, 0x77f97ee88ce91ce7 # initialize rs2
binv x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3b1f0e5ebf47c44 # initialize rs1
li x1, 0x856f19e13bd2165a # initialize rs2
binv x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xad92ed30d5726034 # initialize rs1
li x30, 0x5681ae64f0f644e7 # initialize rs2
binv x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3d52e9b47d80096e # initialize rs1
li x5, 0xcf5f2d7d68d08b9e # initialize rs2
binv x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf465f8e49e5fa8a1 # initialize rs1
li x17, 0x0b3d1ad011b53d5e # initialize rs2
binv x30, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc12067f847ba3b6e # initialize rs1
li x20, 0x99108092325fff67 # initialize rs2
binv x31, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0x831244738259eea6 # initialize rs1
li x0, 0x0031ba1c8a843085 # initialize rs2
binv x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x23db8eb93dc1e218 # initialize rs1
li x1, 0x0b2fb9520b63c6e6 # initialize rs2
binv x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0xe1a0a002c02c9734 # initialize rs1
li x2, 0x157cd804274db298 # initialize rs2
binv x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x21, 0x05eb8e48285051ce # initialize rs1
li x3, 0x8acbc5a65fbdb025 # initialize rs2
binv x3, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xc6db68ff8e17640b # initialize rs1
li x4, 0x2f580f200e8fdebe # initialize rs2
binv x4, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x19811e225d4aad06 # initialize rs1
li x5, 0x218904079a81ae54 # initialize rs2
binv x5, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xfe18adb845374559 # initialize rs1
li x6, 0xe85ccea810b7f5df # initialize rs2
binv x6, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x116600bbfe7f9d63 # initialize rs1
li x7, 0x2d71e055ad66440c # initialize rs2
binv x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x2, 0x7869f80bc790df42 # initialize rs1
li x8, 0x2fa9abd9f7bbcc4f # initialize rs2
binv x8, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0x0293dffb4cf512a9 # initialize rs1
li x9, 0x80a3319c9a6ca86b # initialize rs2
binv x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x27, 0x4908b4266df65cad # initialize rs1
li x10, 0x60c6a19b0f25606e # initialize rs2
binv x10, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x96aeae75374c99a5 # initialize rs1
li x11, 0xf46cf95ce8c54aa7 # initialize rs2
binv x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0xd3b26b68eb9bfbaf # initialize rs1
li x12, 0x52e8937cb21159fa # initialize rs2
binv x12, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x26, 0x474b07562bcda91e # initialize rs1
li x13, 0x08432f5ef729432c # initialize rs2
binv x13, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x1dacc0fded0f1087 # initialize rs1
li x14, 0x4b0ae3279e77f821 # initialize rs2
binv x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x12, 0x6b1082276880cc38 # initialize rs1
li x15, 0xfe355f8d4e48dbe2 # initialize rs2
binv x15, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x13, 0x44f7c7dffc830401 # initialize rs1
li x16, 0xfd3e629d500ba121 # initialize rs2
binv x16, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x10, 0xa2756e30d324cd4b # initialize rs1
li x17, 0x46be006c709ad3fd # initialize rs2
binv x17, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0xc1feb2a32bd6d1a4 # initialize rs1
li x18, 0x64b9633f2d1cfee8 # initialize rs2
binv x18, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x11, 0x041a41a5f035c4b4 # initialize rs1
li x19, 0xc3b1f5481f917d38 # initialize rs2
binv x19, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0xfeda318faef25255 # initialize rs1
li x20, 0x037a1d5c2053ee6a # initialize rs2
binv x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0xb4cba436eabca916 # initialize rs1
li x21, 0x4ac7608769f0ca12 # initialize rs2
binv x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x24, 0x110965174ae28960 # initialize rs1
li x22, 0x9af848336f338b1d # initialize rs2
binv x22, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x29, 0xc0914fe805f87743 # initialize rs1
li x23, 0x7e1335a8abc67866 # initialize rs2
binv x23, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x16, 0xc8393fe1d1486eb3 # initialize rs1
li x24, 0x399e9ac22c4593e1 # initialize rs2
binv x24, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x2, 0x6a3f24a1bbb14598 # initialize rs1
li x25, 0x0db2ee1879a82204 # initialize rs2
binv x25, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x20, 0x6cf4922f5a8beb70 # initialize rs1
li x26, 0x75cba39d4592f536 # initialize rs2
binv x26, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x6, 0x4d9c48e801bc3333 # initialize rs1
li x27, 0xb307ffa9f8a0cfd7 # initialize rs2
binv x27, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x24, 0x94fd1e809dd49083 # initialize rs1
li x28, 0x01ede2164b4b48e6 # initialize rs2
binv x28, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x19, 0x31ace3669ee2c643 # initialize rs1
li x29, 0x3f452289cbf4595c # initialize rs2
binv x29, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x5, 0xe63fd8784e523b6a # initialize rs1
li x30, 0x85fbced5f2aee17e # initialize rs2
binv x30, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x14, 0x63a080591e224202 # initialize rs1
li x31, 0xfb80028b7d10974b # initialize rs2
binv x31, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x1b675ed96da7d941 # initialize rs1
li x0, 0x0b9f29e4b380ade3 # initialize rs2
binv x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xad80d4276f7bd026 # initialize rs1
li x1, 0xe08d9e09658cc53b # initialize rs2
binv x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x71520507d7d75e4c # initialize rs1
li x2, 0x31ef4607c563dec4 # initialize rs2
binv x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x326a71f8147a4c29 # initialize rs1
li x3, 0x234ea3bb4edde31a # initialize rs2
binv x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xffe205c873a088bf # initialize rs1
li x4, 0x30975453ee0be024 # initialize rs2
binv x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6de391e7da68d3cd # initialize rs1
li x5, 0x89f39cf8ba1dfea3 # initialize rs2
binv x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x48fcbfa1a1decc49 # initialize rs1
li x6, 0x11e764d09e6e1032 # initialize rs2
binv x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe985640e2b72d0ae # initialize rs1
li x7, 0x572beab1a6e99a0e # initialize rs2
binv x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xdf8baba58aa23819 # initialize rs1
li x8, 0xbfaea11fa560817a # initialize rs2
binv x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa0aa04b15bf5b127 # initialize rs1
li x9, 0x85b2bae5ac439939 # initialize rs2
binv x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9bdb94700799c66b # initialize rs1
li x10, 0x153cbd4dd5d5bfa1 # initialize rs2
binv x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5331afe426e05a3c # initialize rs1
li x11, 0xfc9eb88765af547e # initialize rs2
binv x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4aae884e5480c3fc # initialize rs1
li x12, 0x19ab087008740bf4 # initialize rs2
binv x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x42b06e7e6ef1ebe8 # initialize rs1
li x13, 0x083552c0b76002d5 # initialize rs2
binv x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe33f78ab36042483 # initialize rs1
li x14, 0xa93daa1544179a48 # initialize rs2
binv x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9a146a7f3febc041 # initialize rs1
li x15, 0x57911b3bff18fc10 # initialize rs2
binv x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x95e5d0a5eaa829d0 # initialize rs1
li x16, 0xebf0cf457ffbf6cb # initialize rs2
binv x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc465296f25bf04fc # initialize rs1
li x17, 0xef043b619253a5da # initialize rs2
binv x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x15b221bd07d07b89 # initialize rs1
li x18, 0x7134b13bef180384 # initialize rs2
binv x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8103e52c5f135986 # initialize rs1
li x19, 0x145e9aff3fbf23a5 # initialize rs2
binv x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfae67ab995838657 # initialize rs1
li x20, 0x1933ed99853499e9 # initialize rs2
binv x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xeb0e340bc31bab56 # initialize rs1
li x21, 0x4861d65618bf143f # initialize rs2
binv x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x8c8ea611b762f188 # initialize rs1
li x22, 0xafeb5bf81bd74b85 # initialize rs2
binv x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfa145fbcae1eb37b # initialize rs1
li x23, 0xc3cda369142e1513 # initialize rs2
binv x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x07b92e5f7aac9886 # initialize rs1
li x24, 0x4ab40b5fc28f7690 # initialize rs2
binv x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xaeefb5d5f24554f7 # initialize rs1
li x25, 0xc0b156fbc16f9506 # initialize rs2
binv x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfaf86f24d30283d3 # initialize rs1
li x26, 0x1a25bf38bb5806ad # initialize rs2
binv x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2b12b96731c32636 # initialize rs1
li x27, 0xc6ba27d31028f500 # initialize rs2
binv x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x21b163650149076d # initialize rs1
li x28, 0x5cd8c26bb80f1b78 # initialize rs2
binv x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb1cc6c77e1928811 # initialize rs1
li x29, 0xc1788443ec0a77c6 # initialize rs2
binv x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xbb358e1101223f7f # initialize rs1
li x30, 0xfde501907f11325f # initialize rs2
binv x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x42034f3a442948a2 # initialize rs1
li x31, 0xfc0212d5cf48fbad # initialize rs2
binv x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x2, x22 # perform first operation
binv x29, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x30, x8 # perform first operation
binv x16, x5, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x13, x28 # perform first operation
binv x8, x15, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x2, x10 # perform first operation
binv x10, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x7, x14 # perform first operation
binv x27, x12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x9, x26 # perform first operation
binv x23, x18, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x13, x2 # perform first operation
binv x20, x12, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x1, x8 # perform first operation
binv x26, x9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x22, x11 # perform first operation
binv x28, x13, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x9, x24 # perform first operation
binv x9, x27, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x8, x18 # perform first operation
binv x18, x10, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x10, x16 # perform first operation
binv x23, x29, x24 # perform second (triggering) operation

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
