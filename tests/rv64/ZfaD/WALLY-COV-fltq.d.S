///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaD//WALLY-COV-fltq.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.953817
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfc52c2484622d8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf72bf73d9f679d66 # load x3 with value 0xf72bf73d9f679d66
sd x3, 0(x2) # store 0xf72bf73d9f679d66 in memory
fld f4, 0(x2) # load 0xf72bf73d9f679d66 from memory into f4
li x3, 0x3af9b5c9f3e438b2 # load x3 with value 0x3af9b5c9f3e438b2
sd x3, 0(x2) # store 0x3af9b5c9f3e438b2 in memory
fld f21, 0(x2) # load 0x3af9b5c9f3e438b2 from memory into f21
fltq.d x0, f4, f21 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5dd15bd47f1b6c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc99366194ab52bae # load x3 with value 0xc99366194ab52bae
sd x3, 0(x2) # store 0xc99366194ab52bae in memory
fld f22, 0(x2) # load 0xc99366194ab52bae from memory into f22
li x3, 0x89974e9b6660ff16 # load x3 with value 0x89974e9b6660ff16
sd x3, 0(x2) # store 0x89974e9b6660ff16 in memory
fld f27, 0(x2) # load 0x89974e9b6660ff16 from memory into f27
fltq.d x1, f22, f27 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x1b4353fa1b8f2ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22ee083189526e7c # load x3 with value 0x22ee083189526e7c
sd x3, 0(x2) # store 0x22ee083189526e7c in memory
fld f7, 0(x2) # load 0x22ee083189526e7c from memory into f7
li x3, 0x56d571bb1933585f # load x3 with value 0x56d571bb1933585f
sd x3, 0(x2) # store 0x56d571bb1933585f in memory
fld f17, 0(x2) # load 0x56d571bb1933585f from memory into f17
fltq.d x2, f7, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x0ce5ac0c93261ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x297c13db55251820 # load x3 with value 0x297c13db55251820
sd x3, 0(x2) # store 0x297c13db55251820 in memory
fld f17, 0(x2) # load 0x297c13db55251820 from memory into f17
li x3, 0xb73e21534476bd31 # load x3 with value 0xb73e21534476bd31
sd x3, 0(x2) # store 0xb73e21534476bd31 in memory
fld f20, 0(x2) # load 0xb73e21534476bd31 from memory into f20
fltq.d x3, f17, f20 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xfb7287e2074a9dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf862aa3e9254862 # load x3 with value 0xbf862aa3e9254862
sd x3, 0(x2) # store 0xbf862aa3e9254862 in memory
fld f2, 0(x2) # load 0xbf862aa3e9254862 from memory into f2
li x3, 0xbd37b2d8aa3ff24a # load x3 with value 0xbd37b2d8aa3ff24a
sd x3, 0(x2) # store 0xbd37b2d8aa3ff24a in memory
fld f9, 0(x2) # load 0xbd37b2d8aa3ff24a from memory into f9
fltq.d x4, f2, f9 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1ffddaa3beca72a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b7b7282b4ffea5b # load x3 with value 0x1b7b7282b4ffea5b
sd x3, 0(x2) # store 0x1b7b7282b4ffea5b in memory
fld f28, 0(x2) # load 0x1b7b7282b4ffea5b from memory into f28
li x3, 0x2fd43865fe7a4188 # load x3 with value 0x2fd43865fe7a4188
sd x3, 0(x2) # store 0x2fd43865fe7a4188 in memory
fld f3, 0(x2) # load 0x2fd43865fe7a4188 from memory into f3
fltq.d x5, f28, f3 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x582e740aecceaaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf52fc12431433a25 # load x3 with value 0xf52fc12431433a25
sd x3, 0(x2) # store 0xf52fc12431433a25 in memory
fld f19, 0(x2) # load 0xf52fc12431433a25 from memory into f19
li x3, 0x69865ac12fdd9627 # load x3 with value 0x69865ac12fdd9627
sd x3, 0(x2) # store 0x69865ac12fdd9627 in memory
fld f3, 0(x2) # load 0x69865ac12fdd9627 from memory into f3
fltq.d x6, f19, f3 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xbcf48310a944fbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb298f8cd277eda18 # load x3 with value 0xb298f8cd277eda18
sd x3, 0(x2) # store 0xb298f8cd277eda18 in memory
fld f24, 0(x2) # load 0xb298f8cd277eda18 from memory into f24
li x3, 0x2de5decee0691944 # load x3 with value 0x2de5decee0691944
sd x3, 0(x2) # store 0x2de5decee0691944 in memory
fld f16, 0(x2) # load 0x2de5decee0691944 from memory into f16
fltq.d x7, f24, f16 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xccdc2ee35e8a1ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x721bf0f79a89a364 # load x3 with value 0x721bf0f79a89a364
sd x3, 0(x2) # store 0x721bf0f79a89a364 in memory
fld f17, 0(x2) # load 0x721bf0f79a89a364 from memory into f17
li x3, 0x991a606c72be14be # load x3 with value 0x991a606c72be14be
sd x3, 0(x2) # store 0x991a606c72be14be in memory
fld f3, 0(x2) # load 0x991a606c72be14be from memory into f3
fltq.d x8, f17, f3 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x51d114ef022eed49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d1cc8043be44674 # load x3 with value 0x4d1cc8043be44674
sd x3, 0(x2) # store 0x4d1cc8043be44674 in memory
fld f23, 0(x2) # load 0x4d1cc8043be44674 from memory into f23
li x3, 0xcc636f5428022aca # load x3 with value 0xcc636f5428022aca
sd x3, 0(x2) # store 0xcc636f5428022aca in memory
fld f14, 0(x2) # load 0xcc636f5428022aca from memory into f14
fltq.d x9, f23, f14 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x437792ed9170b696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21e19d4f5e5e90f5 # load x3 with value 0x21e19d4f5e5e90f5
sd x3, 0(x2) # store 0x21e19d4f5e5e90f5 in memory
fld f25, 0(x2) # load 0x21e19d4f5e5e90f5 from memory into f25
li x3, 0x7cb7e9547c26835c # load x3 with value 0x7cb7e9547c26835c
sd x3, 0(x2) # store 0x7cb7e9547c26835c in memory
fld f20, 0(x2) # load 0x7cb7e9547c26835c from memory into f20
fltq.d x10, f25, f20 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcb33e0ed8d152ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc09b7c356292af90 # load x3 with value 0xc09b7c356292af90
sd x3, 0(x2) # store 0xc09b7c356292af90 in memory
fld f11, 0(x2) # load 0xc09b7c356292af90 from memory into f11
li x3, 0x86805fae5e95cdac # load x3 with value 0x86805fae5e95cdac
sd x3, 0(x2) # store 0x86805fae5e95cdac in memory
fld f4, 0(x2) # load 0x86805fae5e95cdac from memory into f4
fltq.d x11, f11, f4 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc0f4398a967497d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa56500e3a4aefa14 # load x3 with value 0xa56500e3a4aefa14
sd x3, 0(x2) # store 0xa56500e3a4aefa14 in memory
fld f2, 0(x2) # load 0xa56500e3a4aefa14 from memory into f2
li x3, 0x3a55dfde499d37bf # load x3 with value 0x3a55dfde499d37bf
sd x3, 0(x2) # store 0x3a55dfde499d37bf in memory
fld f10, 0(x2) # load 0x3a55dfde499d37bf from memory into f10
fltq.d x12, f2, f10 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x049f8ccba42768f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68c88867a62fe175 # load x3 with value 0x68c88867a62fe175
sd x3, 0(x2) # store 0x68c88867a62fe175 in memory
fld f30, 0(x2) # load 0x68c88867a62fe175 from memory into f30
li x3, 0x3e2a392e6d62516d # load x3 with value 0x3e2a392e6d62516d
sd x3, 0(x2) # store 0x3e2a392e6d62516d in memory
fld f2, 0(x2) # load 0x3e2a392e6d62516d from memory into f2
fltq.d x13, f30, f2 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x97d33623131934a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ca820858cfc5c30 # load x3 with value 0x3ca820858cfc5c30
sd x3, 0(x2) # store 0x3ca820858cfc5c30 in memory
fld f7, 0(x2) # load 0x3ca820858cfc5c30 from memory into f7
li x3, 0xfb11119baa724339 # load x3 with value 0xfb11119baa724339
sd x3, 0(x2) # store 0xfb11119baa724339 in memory
fld f31, 0(x2) # load 0xfb11119baa724339 from memory into f31
fltq.d x14, f7, f31 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x158178b46e505861 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fafd5ce29bc735d # load x3 with value 0x6fafd5ce29bc735d
sd x3, 0(x2) # store 0x6fafd5ce29bc735d in memory
fld f7, 0(x2) # load 0x6fafd5ce29bc735d from memory into f7
li x3, 0x2834d57f2ba11b01 # load x3 with value 0x2834d57f2ba11b01
sd x3, 0(x2) # store 0x2834d57f2ba11b01 in memory
fld f15, 0(x2) # load 0x2834d57f2ba11b01 from memory into f15
fltq.d x15, f7, f15 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0f9c7d427a2b4226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5d84d4e5a3df071 # load x3 with value 0xb5d84d4e5a3df071
sd x3, 0(x2) # store 0xb5d84d4e5a3df071 in memory
fld f10, 0(x2) # load 0xb5d84d4e5a3df071 from memory into f10
li x3, 0xacd884e8d8294c7e # load x3 with value 0xacd884e8d8294c7e
sd x3, 0(x2) # store 0xacd884e8d8294c7e in memory
fld f20, 0(x2) # load 0xacd884e8d8294c7e from memory into f20
fltq.d x16, f10, f20 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xdd8002785ad9a9ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a0d683bdfb555c9 # load x3 with value 0x0a0d683bdfb555c9
sd x3, 0(x2) # store 0x0a0d683bdfb555c9 in memory
fld f15, 0(x2) # load 0x0a0d683bdfb555c9 from memory into f15
li x3, 0xaa56c8617d1782ba # load x3 with value 0xaa56c8617d1782ba
sd x3, 0(x2) # store 0xaa56c8617d1782ba in memory
fld f9, 0(x2) # load 0xaa56c8617d1782ba from memory into f9
fltq.d x17, f15, f9 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc030070704f3a956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43a552d80f1701c5 # load x3 with value 0x43a552d80f1701c5
sd x3, 0(x2) # store 0x43a552d80f1701c5 in memory
fld f13, 0(x2) # load 0x43a552d80f1701c5 from memory into f13
li x3, 0x8aa3ea568c7112fd # load x3 with value 0x8aa3ea568c7112fd
sd x3, 0(x2) # store 0x8aa3ea568c7112fd in memory
fld f10, 0(x2) # load 0x8aa3ea568c7112fd from memory into f10
fltq.d x18, f13, f10 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x667199eb627f6546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x605f1e5d613f3d45 # load x3 with value 0x605f1e5d613f3d45
sd x3, 0(x2) # store 0x605f1e5d613f3d45 in memory
fld f18, 0(x2) # load 0x605f1e5d613f3d45 from memory into f18
li x3, 0xd28a54c1bb878896 # load x3 with value 0xd28a54c1bb878896
sd x3, 0(x2) # store 0xd28a54c1bb878896 in memory
fld f16, 0(x2) # load 0xd28a54c1bb878896 from memory into f16
fltq.d x19, f18, f16 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xab4a244007f6faca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7af32e31f11db2d # load x3 with value 0xf7af32e31f11db2d
sd x3, 0(x2) # store 0xf7af32e31f11db2d in memory
fld f8, 0(x2) # load 0xf7af32e31f11db2d from memory into f8
li x3, 0x23fc24949c77f77a # load x3 with value 0x23fc24949c77f77a
sd x3, 0(x2) # store 0x23fc24949c77f77a in memory
fld f17, 0(x2) # load 0x23fc24949c77f77a from memory into f17
fltq.d x20, f8, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x367d0fc20888adb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37909aacec28996f # load x3 with value 0x37909aacec28996f
sd x3, 0(x2) # store 0x37909aacec28996f in memory
fld f8, 0(x2) # load 0x37909aacec28996f from memory into f8
li x3, 0xfaa812ed8b4eafb0 # load x3 with value 0xfaa812ed8b4eafb0
sd x3, 0(x2) # store 0xfaa812ed8b4eafb0 in memory
fld f12, 0(x2) # load 0xfaa812ed8b4eafb0 from memory into f12
fltq.d x21, f8, f12 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x68ff649cd84fc634 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x698d400e8bd079b4 # load x3 with value 0x698d400e8bd079b4
sd x3, 0(x2) # store 0x698d400e8bd079b4 in memory
fld f11, 0(x2) # load 0x698d400e8bd079b4 from memory into f11
li x3, 0x8e377a9bd6a301f4 # load x3 with value 0x8e377a9bd6a301f4
sd x3, 0(x2) # store 0x8e377a9bd6a301f4 in memory
fld f4, 0(x2) # load 0x8e377a9bd6a301f4 from memory into f4
fltq.d x22, f11, f4 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x61c6deae265f788a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3750e04d4b032336 # load x3 with value 0x3750e04d4b032336
sd x3, 0(x2) # store 0x3750e04d4b032336 in memory
fld f15, 0(x2) # load 0x3750e04d4b032336 from memory into f15
li x3, 0x7c0052823f6269a9 # load x3 with value 0x7c0052823f6269a9
sd x3, 0(x2) # store 0x7c0052823f6269a9 in memory
fld f23, 0(x2) # load 0x7c0052823f6269a9 from memory into f23
fltq.d x23, f15, f23 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x04ca0855428e3747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d0d03569b905999 # load x3 with value 0x9d0d03569b905999
sd x3, 0(x2) # store 0x9d0d03569b905999 in memory
fld f17, 0(x2) # load 0x9d0d03569b905999 from memory into f17
li x3, 0x600b2f036dbeeb49 # load x3 with value 0x600b2f036dbeeb49
sd x3, 0(x2) # store 0x600b2f036dbeeb49 in memory
fld f14, 0(x2) # load 0x600b2f036dbeeb49 from memory into f14
fltq.d x24, f17, f14 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x027c7f05ca667c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c9e5de85c1b4966 # load x3 with value 0x7c9e5de85c1b4966
sd x3, 0(x2) # store 0x7c9e5de85c1b4966 in memory
fld f14, 0(x2) # load 0x7c9e5de85c1b4966 from memory into f14
li x3, 0x0494900c8f727d08 # load x3 with value 0x0494900c8f727d08
sd x3, 0(x2) # store 0x0494900c8f727d08 in memory
fld f30, 0(x2) # load 0x0494900c8f727d08 from memory into f30
fltq.d x25, f14, f30 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x97d669e9b6f8d7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53d455822f198097 # load x3 with value 0x53d455822f198097
sd x3, 0(x2) # store 0x53d455822f198097 in memory
fld f24, 0(x2) # load 0x53d455822f198097 from memory into f24
li x3, 0x2a7df2cb4806a514 # load x3 with value 0x2a7df2cb4806a514
sd x3, 0(x2) # store 0x2a7df2cb4806a514 in memory
fld f28, 0(x2) # load 0x2a7df2cb4806a514 from memory into f28
fltq.d x26, f24, f28 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf17922d2e6956685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a87c5c9fc21191d # load x3 with value 0x1a87c5c9fc21191d
sd x3, 0(x2) # store 0x1a87c5c9fc21191d in memory
fld f20, 0(x2) # load 0x1a87c5c9fc21191d from memory into f20
li x3, 0x8922e3aa5fcf31d4 # load x3 with value 0x8922e3aa5fcf31d4
sd x3, 0(x2) # store 0x8922e3aa5fcf31d4 in memory
fld f28, 0(x2) # load 0x8922e3aa5fcf31d4 from memory into f28
fltq.d x27, f20, f28 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1ce78d0061eb315f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc22cbf4311e0bdae # load x3 with value 0xc22cbf4311e0bdae
sd x3, 0(x2) # store 0xc22cbf4311e0bdae in memory
fld f20, 0(x2) # load 0xc22cbf4311e0bdae from memory into f20
li x3, 0x0a2918bda3c48ce6 # load x3 with value 0x0a2918bda3c48ce6
sd x3, 0(x2) # store 0x0a2918bda3c48ce6 in memory
fld f27, 0(x2) # load 0x0a2918bda3c48ce6 from memory into f27
fltq.d x28, f20, f27 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xfb9f130f57f99cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9efeb710925cb9d # load x3 with value 0xd9efeb710925cb9d
sd x3, 0(x2) # store 0xd9efeb710925cb9d in memory
fld f15, 0(x2) # load 0xd9efeb710925cb9d from memory into f15
li x3, 0x2ea12a143ccde4d7 # load x3 with value 0x2ea12a143ccde4d7
sd x3, 0(x2) # store 0x2ea12a143ccde4d7 in memory
fld f16, 0(x2) # load 0x2ea12a143ccde4d7 from memory into f16
fltq.d x29, f15, f16 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2f6f5c1d77e053b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b5ee0b239adc7c2 # load x3 with value 0x0b5ee0b239adc7c2
sd x3, 0(x2) # store 0x0b5ee0b239adc7c2 in memory
fld f17, 0(x2) # load 0x0b5ee0b239adc7c2 from memory into f17
li x3, 0x07d2db89384d69ab # load x3 with value 0x07d2db89384d69ab
sd x3, 0(x2) # store 0x07d2db89384d69ab in memory
fld f1, 0(x2) # load 0x07d2db89384d69ab from memory into f1
fltq.d x30, f17, f1 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1e02c7797aed7580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50c665a4a1ed0ccb # load x3 with value 0x50c665a4a1ed0ccb
sd x3, 0(x2) # store 0x50c665a4a1ed0ccb in memory
fld f29, 0(x2) # load 0x50c665a4a1ed0ccb from memory into f29
li x3, 0x03ab82f31cec361a # load x3 with value 0x03ab82f31cec361a
sd x3, 0(x2) # store 0x03ab82f31cec361a in memory
fld f31, 0(x2) # load 0x03ab82f31cec361a from memory into f31
fltq.d x31, f29, f31 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x2, 0xddf494d29e5adcf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
li x3, 0x9b23b7e2c1d571b7 # load x3 with value 0x9b23b7e2c1d571b7
sd x3, 0(x2) # store 0x9b23b7e2c1d571b7 in memory
fld f27, 0(x2) # load 0x9b23b7e2c1d571b7 from memory into f27
fltq.d x2, f9, f27 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x17, 0x0d31d071176e4a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x2880eaaf2b0e245c # load x3 with value 0x2880eaaf2b0e245c
sd x3, 0(x2) # store 0x2880eaaf2b0e245c in memory
fld f10, 0(x2) # load 0x2880eaaf2b0e245c from memory into f10
fltq.d x17, f31, f10 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x23, 0x1975fbd38b10b54f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
li x3, 0xd38fccb890a59be7 # load x3 with value 0xd38fccb890a59be7
sd x3, 0(x2) # store 0xd38fccb890a59be7 in memory
fld f11, 0(x2) # load 0xd38fccb890a59be7 from memory into f11
fltq.d x23, f28, f11 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x27, 0xe926c137d9c8a21a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
li x3, 0x68c17f1c7d9ced64 # load x3 with value 0x68c17f1c7d9ced64
sd x3, 0(x2) # store 0x68c17f1c7d9ced64 in memory
fld f22, 0(x2) # load 0x68c17f1c7d9ced64 from memory into f22
fltq.d x27, f21, f22 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x22, 0xbeb12571da1972c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0xcc72e7c4e54027a3 # load x3 with value 0xcc72e7c4e54027a3
sd x3, 0(x2) # store 0xcc72e7c4e54027a3 in memory
fld f17, 0(x2) # load 0xcc72e7c4e54027a3 from memory into f17
fltq.d x22, f25, f17 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x7, 0x2b5bfa1a0e8b5139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x46a6b04b3139fcd1 # load x3 with value 0x46a6b04b3139fcd1
sd x3, 0(x2) # store 0x46a6b04b3139fcd1 in memory
fld f29, 0(x2) # load 0x46a6b04b3139fcd1 from memory into f29
fltq.d x7, f1, f29 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x7, 0x5c5f5a3df916efac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x2f6c1847c2220081 # load x3 with value 0x2f6c1847c2220081
sd x3, 0(x2) # store 0x2f6c1847c2220081 in memory
fld f9, 0(x2) # load 0x2f6c1847c2220081 from memory into f9
fltq.d x7, f2, f9 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x16, 0x6d068500705b0326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
li x3, 0xfd4db280964c3746 # load x3 with value 0xfd4db280964c3746
sd x3, 0(x2) # store 0xfd4db280964c3746 in memory
fld f4, 0(x2) # load 0xfd4db280964c3746 from memory into f4
fltq.d x16, f1, f4 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x16, 0x940cdd9a921e7dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0xe45994c169b05ab4 # load x3 with value 0xe45994c169b05ab4
sd x3, 0(x2) # store 0xe45994c169b05ab4 in memory
fld f1, 0(x2) # load 0xe45994c169b05ab4 from memory into f1
fltq.d x16, f25, f1 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x29, 0xf5367355fe0a77ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x9c746f4843d6c919 # load x3 with value 0x9c746f4843d6c919
sd x3, 0(x2) # store 0x9c746f4843d6c919 in memory
fld f19, 0(x2) # load 0x9c746f4843d6c919 from memory into f19
fltq.d x29, f12, f19 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x26, 0x663588292a8cd6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x79eda3e9716c43c0 # load x3 with value 0x79eda3e9716c43c0
sd x3, 0(x2) # store 0x79eda3e9716c43c0 in memory
fld f12, 0(x2) # load 0x79eda3e9716c43c0 from memory into f12
fltq.d x26, f30, f12 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x17, 0xefb8a892c3881271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0xea6c9b30494a375c # load x3 with value 0xea6c9b30494a375c
sd x3, 0(x2) # store 0xea6c9b30494a375c in memory
fld f25, 0(x2) # load 0xea6c9b30494a375c from memory into f25
fltq.d x17, f22, f25 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x30, 0x08842e597e99fd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
li x3, 0x2bb08c4d986e6023 # load x3 with value 0x2bb08c4d986e6023
sd x3, 0(x2) # store 0x2bb08c4d986e6023 in memory
fld f25, 0(x2) # load 0x2bb08c4d986e6023 from memory into f25
fltq.d x30, f5, f25 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x24, 0x193263d736081cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0xb094be68e97e0053 # load x3 with value 0xb094be68e97e0053
sd x3, 0(x2) # store 0xb094be68e97e0053 in memory
fld f9, 0(x2) # load 0xb094be68e97e0053 from memory into f9
fltq.d x24, f5, f9 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x12, 0xe007d6b984b0aebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0xd1f8ca24b46ad4df # load x3 with value 0xd1f8ca24b46ad4df
sd x3, 0(x2) # store 0xd1f8ca24b46ad4df in memory
fld f26, 0(x2) # load 0xd1f8ca24b46ad4df from memory into f26
fltq.d x12, f13, f26 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x31, 0xade1ae25c81259fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x9508d7b4a5b3df4d # load x3 with value 0x9508d7b4a5b3df4d
sd x3, 0(x2) # store 0x9508d7b4a5b3df4d in memory
fld f19, 0(x2) # load 0x9508d7b4a5b3df4d from memory into f19
fltq.d x31, f29, f19 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x12, 0xf98473ef8cf4ebda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0xd15b76d7a0105c7d # load x3 with value 0xd15b76d7a0105c7d
sd x3, 0(x2) # store 0xd15b76d7a0105c7d in memory
fld f9, 0(x2) # load 0xd15b76d7a0105c7d from memory into f9
fltq.d x12, f8, f9 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x22, 0x693ca86efb7289e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0xabbdab9ba2112507 # load x3 with value 0xabbdab9ba2112507
sd x3, 0(x2) # store 0xabbdab9ba2112507 in memory
fld f15, 0(x2) # load 0xabbdab9ba2112507 from memory into f15
fltq.d x22, f10, f15 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x9, 0x2da11510d7d3c6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
li x3, 0x4307d493535f34cb # load x3 with value 0x4307d493535f34cb
sd x3, 0(x2) # store 0x4307d493535f34cb in memory
fld f21, 0(x2) # load 0x4307d493535f34cb from memory into f21
fltq.d x9, f25, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x14, 0x2b90113c528f74d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0x9861097716b70d3a # load x3 with value 0x9861097716b70d3a
sd x3, 0(x2) # store 0x9861097716b70d3a in memory
fld f16, 0(x2) # load 0x9861097716b70d3a from memory into f16
fltq.d x14, f28, f16 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x4, 0x341e5b18c5470082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0xcb01965b358f0a3b # load x3 with value 0xcb01965b358f0a3b
sd x3, 0(x2) # store 0xcb01965b358f0a3b in memory
fld f21, 0(x2) # load 0xcb01965b358f0a3b from memory into f21
fltq.d x4, f17, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x8, 0x7d9e332938ff940a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
li x3, 0xf4759fec274659ea # load x3 with value 0xf4759fec274659ea
sd x3, 0(x2) # store 0xf4759fec274659ea in memory
fld f21, 0(x2) # load 0xf4759fec274659ea from memory into f21
fltq.d x8, f31, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x9, 0xf93572120fc91997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0x7b50218204229930 # load x3 with value 0x7b50218204229930
sd x3, 0(x2) # store 0x7b50218204229930 in memory
fld f21, 0(x2) # load 0x7b50218204229930 from memory into f21
fltq.d x9, f4, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x5, 0x045726e01b4387c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
li x3, 0x7592fef1a12ef086 # load x3 with value 0x7592fef1a12ef086
sd x3, 0(x2) # store 0x7592fef1a12ef086 in memory
fld f18, 0(x2) # load 0x7592fef1a12ef086 from memory into f18
fltq.d x5, f12, f18 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x19, 0x8142ee0e1b07c1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0xc1fd5005d1577dca # load x3 with value 0xc1fd5005d1577dca
sd x3, 0(x2) # store 0xc1fd5005d1577dca in memory
fld f17, 0(x2) # load 0xc1fd5005d1577dca from memory into f17
fltq.d x19, f12, f17 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x22, 0xb5e41a9d5ab8250a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
li x3, 0xf5cd18dbb70a41c4 # load x3 with value 0xf5cd18dbb70a41c4
sd x3, 0(x2) # store 0xf5cd18dbb70a41c4 in memory
fld f19, 0(x2) # load 0xf5cd18dbb70a41c4 from memory into f19
fltq.d x22, f3, f19 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x22, 0x0b04fd71fe667b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19a3ac76399c4c12 # load x3 with value 0x19a3ac76399c4c12
sd x3, 0(x2) # store 0x19a3ac76399c4c12 in memory
fld f10, 0(x2) # load 0x19a3ac76399c4c12 from memory into f10
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fltq.d x22, f10, f4 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x19, 0x2e708f9a3718170e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe97070771049c8e1 # load x3 with value 0xe97070771049c8e1
sd x3, 0(x2) # store 0xe97070771049c8e1 in memory
fld f24, 0(x2) # load 0xe97070771049c8e1 from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fltq.d x19, f24, f27 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x28, 0xc646575f4033176a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff885b4e73d7cf8e # load x3 with value 0xff885b4e73d7cf8e
sd x3, 0(x2) # store 0xff885b4e73d7cf8e in memory
fld f7, 0(x2) # load 0xff885b4e73d7cf8e from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fltq.d x28, f7, f12 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x16, 0xb44c501ea370a9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa978c990a219e346 # load x3 with value 0xa978c990a219e346
sd x3, 0(x2) # store 0xa978c990a219e346 in memory
fld f20, 0(x2) # load 0xa978c990a219e346 from memory into f20
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fltq.d x16, f20, f13 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x8, 0x70a261621c7e357c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbc22ddf5f88632d # load x3 with value 0xbbc22ddf5f88632d
sd x3, 0(x2) # store 0xbbc22ddf5f88632d in memory
fld f1, 0(x2) # load 0xbbc22ddf5f88632d from memory into f1
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fltq.d x8, f1, f15 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x31, 0xccee2687cb5d6528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ed8aed726b2a42c # load x3 with value 0x0ed8aed726b2a42c
sd x3, 0(x2) # store 0x0ed8aed726b2a42c in memory
fld f29, 0(x2) # load 0x0ed8aed726b2a42c from memory into f29
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fltq.d x31, f29, f8 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x31, 0x0b0e1b423ef6a237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e3c94a2620bee4a # load x3 with value 0x2e3c94a2620bee4a
sd x3, 0(x2) # store 0x2e3c94a2620bee4a in memory
fld f22, 0(x2) # load 0x2e3c94a2620bee4a from memory into f22
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fltq.d x31, f22, f2 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x12, 0xed3cda1915227a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b74c7473b4b7855 # load x3 with value 0x5b74c7473b4b7855
sd x3, 0(x2) # store 0x5b74c7473b4b7855 in memory
fld f25, 0(x2) # load 0x5b74c7473b4b7855 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fltq.d x12, f25, f13 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x30, 0xf5183c76311c1ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f0defb8ee87bd23 # load x3 with value 0x6f0defb8ee87bd23
sd x3, 0(x2) # store 0x6f0defb8ee87bd23 in memory
fld f28, 0(x2) # load 0x6f0defb8ee87bd23 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fltq.d x30, f28, f14 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x6, 0x9f7c682e1c0205c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dca39c49aade825 # load x3 with value 0x3dca39c49aade825
sd x3, 0(x2) # store 0x3dca39c49aade825 in memory
fld f18, 0(x2) # load 0x3dca39c49aade825 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fltq.d x6, f18, f17 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x26, 0xa6b2573af3796071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb58f13151a06ffa0 # load x3 with value 0xb58f13151a06ffa0
sd x3, 0(x2) # store 0xb58f13151a06ffa0 in memory
fld f2, 0(x2) # load 0xb58f13151a06ffa0 from memory into f2
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fltq.d x26, f2, f18 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x13, 0x366194e48ab7669b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x021f5ca4a279508d # load x3 with value 0x021f5ca4a279508d
sd x3, 0(x2) # store 0x021f5ca4a279508d in memory
fld f29, 0(x2) # load 0x021f5ca4a279508d from memory into f29
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fltq.d x13, f29, f18 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x22, 0xde856944cd9e3f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc58f98ffa8a21e30 # load x3 with value 0xc58f98ffa8a21e30
sd x3, 0(x2) # store 0xc58f98ffa8a21e30 in memory
fld f7, 0(x2) # load 0xc58f98ffa8a21e30 from memory into f7
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fltq.d x22, f7, f23 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x11, 0x9efb7cbdfc23e2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5add2ae087e7d91 # load x3 with value 0xc5add2ae087e7d91
sd x3, 0(x2) # store 0xc5add2ae087e7d91 in memory
fld f27, 0(x2) # load 0xc5add2ae087e7d91 from memory into f27
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
fltq.d x11, f27, f14 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x8, 0x77b5b76c93c20ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x859e7e959caa36a3 # load x3 with value 0x859e7e959caa36a3
sd x3, 0(x2) # store 0x859e7e959caa36a3 in memory
fld f11, 0(x2) # load 0x859e7e959caa36a3 from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fltq.d x8, f11, f9 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x8, 0xf480982645311cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1022a8805e864a5 # load x3 with value 0xe1022a8805e864a5
sd x3, 0(x2) # store 0xe1022a8805e864a5 in memory
fld f18, 0(x2) # load 0xe1022a8805e864a5 from memory into f18
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
fltq.d x8, f18, f1 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x13, 0x23a7f78bd6f0c5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e95b6feb299f224 # load x3 with value 0x5e95b6feb299f224
sd x3, 0(x2) # store 0x5e95b6feb299f224 in memory
fld f31, 0(x2) # load 0x5e95b6feb299f224 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fltq.d x13, f31, f10 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x28, 0xca52908257a14b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee882f68cee9ddd8 # load x3 with value 0xee882f68cee9ddd8
sd x3, 0(x2) # store 0xee882f68cee9ddd8 in memory
fld f1, 0(x2) # load 0xee882f68cee9ddd8 from memory into f1
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fltq.d x28, f1, f11 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x30, 0x01ab31d1b5182c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe859024fd407c725 # load x3 with value 0xe859024fd407c725
sd x3, 0(x2) # store 0xe859024fd407c725 in memory
fld f2, 0(x2) # load 0xe859024fd407c725 from memory into f2
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fltq.d x30, f2, f7 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x2, 0x310c486afb309782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0ac7497cf794ee7 # load x3 with value 0xb0ac7497cf794ee7
sd x3, 0(x2) # store 0xb0ac7497cf794ee7 in memory
fld f21, 0(x2) # load 0xb0ac7497cf794ee7 from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fltq.d x2, f21, f22 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x9, 0xe1b78f820526e1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaec7a1b534d43339 # load x3 with value 0xaec7a1b534d43339
sd x3, 0(x2) # store 0xaec7a1b534d43339 in memory
fld f22, 0(x2) # load 0xaec7a1b534d43339 from memory into f22
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
fltq.d x9, f22, f25 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x25, 0x382f506e5054c001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94e36ddf178d7e6c # load x3 with value 0x94e36ddf178d7e6c
sd x3, 0(x2) # store 0x94e36ddf178d7e6c in memory
fld f14, 0(x2) # load 0x94e36ddf178d7e6c from memory into f14
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fltq.d x25, f14, f2 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x10, 0x3c1de64bd1202f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6683d1b0fde6217f # load x3 with value 0x6683d1b0fde6217f
sd x3, 0(x2) # store 0x6683d1b0fde6217f in memory
fld f13, 0(x2) # load 0x6683d1b0fde6217f from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fltq.d x10, f13, f25 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x2, 0x33686e08d4416d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7517e64868c127fc # load x3 with value 0x7517e64868c127fc
sd x3, 0(x2) # store 0x7517e64868c127fc in memory
fld f10, 0(x2) # load 0x7517e64868c127fc from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fltq.d x2, f10, f23 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x11, 0xb806837b85e6f26c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15b536f14dd150a7 # load x3 with value 0x15b536f14dd150a7
sd x3, 0(x2) # store 0x15b536f14dd150a7 in memory
fld f24, 0(x2) # load 0x15b536f14dd150a7 from memory into f24
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fltq.d x11, f24, f23 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x21, 0xd23fe3d95f6d70d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e8044ab8cfe6a3 # load x3 with value 0x67e8044ab8cfe6a3
sd x3, 0(x2) # store 0x67e8044ab8cfe6a3 in memory
fld f16, 0(x2) # load 0x67e8044ab8cfe6a3 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fltq.d x21, f16, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x8, 0x47839e1340d53ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fltq.d x8, f18, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x17, 0x72d5dc2fbe0f4ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fltq.d x17, f26, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x17, 0x5e903d406a239414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
fltq.d x17, f18, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x11, 0x4c35e8f257d076af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fltq.d x11, f24, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x25, 0xb5ff8db432c54e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fltq.d x25, f26, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x28, 0x99e48a4fbd4f2bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fltq.d x28, f17, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x2, 0xce79c650ab43a71a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fltq.d x2, f26, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x29, 0x6228552392526bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fltq.d x29, f28, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x23, 0xa810d92d71690d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fltq.d x23, f25, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x30, 0x2c2773668919dad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fltq.d x30, f25, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x6, 0x0eb96d82fa3da2c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fltq.d x6, f9, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x4, 0x861b7e4fa4110514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fltq.d x4, f7, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x21, 0x8d6c2aaedd0e19d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fltq.d x21, f16, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x3, 0xfb46413243df9956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fltq.d x3, f20, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x29, 0xd12226c8f207a83e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fltq.d x29, f10, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x10, 0x1954b8b95fc93c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fltq.d x10, f19, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x26, 0xe396c52eb5f082d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fltq.d x26, f11, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x2, 0x5ce3916a4b424b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fltq.d x2, f24, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x24, 0x2c20b698faa7674c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fltq.d x24, f10, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x23, 0x36f95f3c80c6dd9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fltq.d x23, f30, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x15, 0x26c4b50c8c6921c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fltq.d x15, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x10, 0xdf29303dd7188e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fltq.d x10, f25, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x25, 0x825210641a3dfef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fltq.d x25, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x1, 0xd306924837badd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fltq.d x1, f21, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x31, 0x600782930eb4e976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fltq.d x31, f6, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x28, 0xb6dc6f29012ea578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fltq.d x28, f17, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x17, 0xdfc3231c352e45e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fltq.d x17, f7, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x4, 0xa8caa95acc4688f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fltq.d x4, f17, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x9, 0x6cf353e4f56cab9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fltq.d x9, f2, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x11, 0xdb34095de83586de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fltq.d x11, f19, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x9, 0x8c7f8a622f11e028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fltq.d x9, f15, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x25, 0x07f89aef9609591b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fltq.d x25, f4, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x14, 0xdb96587daee004fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fltq.d x14, f12, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x22, 0x5d5c809b4d7bd0f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fltq.d x22, f30, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x22, 0xc8053e2ba70b24a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fltq.d x22, f12, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x22, 0x887c18ab8ea6bc2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fltq.d x22, f2, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x29, 0x67f9c57c052de585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fltq.d x29, f28, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x9, 0xbb0c7aa6c1b73c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fltq.d x9, f8, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x29, 0x7b20680aafb05a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fltq.d x29, f23, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x30, 0x79df29e3b99b8a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fltq.d x30, f29, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x18, 0x21dc50fd0722ad1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fltq.d x18, f23, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x8, 0x91df966f3c5b3553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fltq.d x8, f27, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x24, 0x0d5cc047d8e6ad03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fltq.d x24, f31, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x19, 0x53a0da59660c58e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fltq.d x19, f9, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x7, 0xaf8b76adae20c1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fltq.d x7, f31, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x18, 0xa13e83919146cfc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fltq.d x18, f12, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x25, 0xf38e8f13ef711458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fltq.d x25, f19, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x3, 0x04bab313cee994b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fltq.d x3, f19, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x1, 0x2e0276d6d547fe83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fltq.d x1, f20, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x10, 0x81f4a0123f65d7c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
fltq.d x10, f19, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x10, 0xe4ec8f937512b5ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fltq.d x10, f21, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x19, 0x118514c81af8003a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fltq.d x19, f23, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x31, 0x0392bcfcbcc64427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fltq.d x31, f26, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x1, 0xd01c94493351cdfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fltq.d x1, f23, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x6, 0x8f8fd89483eec48e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
fltq.d x6, f26, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x23, 0x011990f1ee6bc740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fltq.d x23, f26, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x17, 0xa3e6434b0547a840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fltq.d x17, f18, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x30, 0x33e8412623e9ea3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fltq.d x30, f8, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x22, 0x8c11b40d693de915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fltq.d x22, f13, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x30, 0x7183ab882bcc8641 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fltq.d x30, f25, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x5, 0x9f85b56727e001eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fltq.d x5, f2, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x28, 0x3be1cab4e29265fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fltq.d x28, f13, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x8c34b91a430e669f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
fltq.d x15, f6, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x22, 0x14cc376e12892088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fltq.d x22, f18, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x2, 0xbf565aa8d88446cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fltq.d x2, f31, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x6, 0x17124b184d4e2fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fltq.d x6, f19, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x2, 0x69a3229d698d18da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fltq.d x2, f21, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x24, 0xcf54c70b0b010f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fltq.d x24, f8, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x23, 0xd9a648854daa1ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fltq.d x23, f25, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x5, 0xa0056b917805f4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fltq.d x5, f10, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x6, 0x58ca1699db3cdf1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fltq.d x6, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x22, 0x638d520c0b132630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
fltq.d x22, f9, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x31, 0x194e66dbc128d1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fltq.d x31, f13, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x25, 0x10ae8a86588235db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fltq.d x25, f2, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x8, 0xe4f946a3e0bbccd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fltq.d x8, f17, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0x5fb624eb3ffefc3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fltq.d x11, f15, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x5, 0x77225cc1be21d68a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fltq.d x5, f21, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x29, 0x1a298301480c92cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fltq.d x29, f14, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x18, 0x5705aba02b30ca9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fltq.d x18, f11, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x7, 0x129614830c74ae74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fltq.d x7, f17, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x2, 0x097d4e6a4226d36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fltq.d x2, f19, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x14, 0x57e5a8575e2e5e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fltq.d x14, f28, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x13, 0x2ab3623a28367e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
fltq.d x13, f17, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x27, 0xb5d9d7bba99f117d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fltq.d x27, f4, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x28, 0x899a8928e48372cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fltq.d x28, f26, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x17, 0xcf8f1f9a79546463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fltq.d x17, f29, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x31, 0xe7d5924ddac2d2ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fltq.d x31, f16, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x23, 0x08f58166491f5973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fltq.d x23, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x4, 0x1c7679dd98aec6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
fltq.d x4, f24, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x2, 0x12d0135878427868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fltq.d x2, f13, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x29, 0x3b4ea8329e7a7920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fltq.d x29, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x28, 0x592581dcae8f6ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fltq.d x28, f5, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x12, 0xd74eea545e81ad56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fltq.d x12, f11, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x5, 0x1c3eec9e316f05d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fltq.d x5, f7, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x28, 0x2acf91b172ca2fba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fltq.d x28, f12, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x10, 0x85aae1dde5eaf379 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fltq.d x10, f15, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x20, 0x71f825f77f526fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fltq.d x20, f3, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x1, 0x742b5506e97d1fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fltq.d x1, f11, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x27, 0xeb13bdc8e91b1eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fltq.d x27, f8, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x9, 0x3132c320ec9160e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fltq.d x9, f14, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x17, 0x7821c5b471425568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fltq.d x17, f29, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0x567223ac60098deb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
fltq.d x11, f8, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x8, 0xfca18e97b6b4baca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fltq.d x8, f15, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x9, 0xac971c71975769dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fltq.d x9, f22, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x10, 0xd7c1a4bef128ac87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fltq.d x10, f5, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x18, 0x1cdb31950fb1818d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fltq.d x18, f1, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x10, 0x47ae4d80a80b5fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fltq.d x10, f12, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x27, 0xc88f1970424d64ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fltq.d x27, f31, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x11, 0x0a6b91cac33205a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fltq.d x11, f28, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x1, 0x9bd48baae8a276bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fltq.d x1, f10, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x23, 0xbc7500a1cbca0064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fltq.d x23, f25, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x28, 0x84421836c238e8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fltq.d x28, f25, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x16, 0x0b54cc2da05ce867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fltq.d x16, f17, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x8, 0xf75d42ecdebdc3cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fltq.d x8, f10, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x8, 0x1843ec02a2e24fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fltq.d x8, f26, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x23, 0xfd0d993e908a5ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fltq.d x23, f2, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x13, 0xfadb1b9ed68a509a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fltq.d x13, f30, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x23, 0xca3965640ee29755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fltq.d x23, f4, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x27, 0xc62725965eb035ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fltq.d x27, f2, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x10, 0x3d76ceb36887fc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fltq.d x10, f11, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x17, 0xf6650d7de9bd6dd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fltq.d x17, f10, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x1, 0x3b7f6b060ea306e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fltq.d x1, f17, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x10, 0x7944938b6e24ecd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fltq.d x10, f30, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x31, 0xa42da6ed73b51a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fltq.d x31, f15, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x2, 0xe1c8edcbf3ad0ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fltq.d x2, f4, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x23, 0x67a4b51b3eb7fe34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
fltq.d x23, f16, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x17, 0x827a6dd988115a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fltq.d x17, f4, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x19, 0xaff5f6dbe8de7665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fltq.d x19, f8, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x18, 0x7fc9cd9090ee4a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fltq.d x18, f28, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x3, 0x2e5b9bc0c74e6057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fltq.d x3, f29, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x23, 0x868cdf709845f5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fltq.d x23, f24, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x2, 0x254ae46852d59ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
fltq.d x2, f17, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x18, 0x1058466c96c0d23d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fltq.d x18, f29, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x23, 0xc7ecd0a0ec7a3967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fltq.d x23, f22, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x10, 0xa17510c207268eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fltq.d x10, f8, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x19, 0xa6ea9f46421f1508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fltq.d x19, f18, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x5, 0x2afed3193695c79e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fltq.d x5, f18, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x11, 0x4f37b5df5d4b6ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fltq.d x11, f21, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x22, 0x9f1fabe6250501c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fltq.d x22, f20, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x18, 0x402857182f9555e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fltq.d x18, f9, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x19, 0xf697c0d4c5275da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fltq.d x19, f18, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x2, 0xa229d8fa3442e70c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fltq.d x2, f21, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x5, 0x5b257df7a477451f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fltq.d x5, f12, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x18, 0xdb6076fbfa30397b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fltq.d x18, f17, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x23, 0x98d1320cf671009b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
fltq.d x23, f1, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x14, 0x2d1bd44a312d863f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fltq.d x14, f6, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x1, 0xe6a3981e3fc882d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fltq.d x1, f3, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x13, 0x6b860f0bb4bab2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fltq.d x13, f10, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x27, 0x9ee755fb2baccc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fltq.d x27, f9, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x17, 0xd31b63301cf2fc7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fltq.d x17, f9, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x14, 0x5f4d60f76e093301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fltq.d x14, f17, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x3, 0x690faae781c32715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fltq.d x3, f17, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x8, 0xf6e5db9883681c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fltq.d x8, f21, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0xaf99f9be9cf2dede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fltq.d x3, f24, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x6, 0x7ebbfc38f73da37b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fltq.d x6, f14, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x21, 0xb5cb5145fb4c9770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fltq.d x21, f3, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x19, 0xda41a4d8442c43fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fltq.d x19, f30, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x31, 0xd81000adb5d41fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fltq.d x31, f22, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x2, 0xe8770e328ed0a493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fltq.d x2, f16, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x14, 0xdbc592bb2c8add54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fltq.d x14, f9, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x22, 0x2fc833c44cdab03b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
fltq.d x22, f13, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x15, 0x832ae5050452aabf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fltq.d x15, f22, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x5, 0xacad48954d98788f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fltq.d x5, f31, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x21, 0x6ca197401231ecd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fltq.d x21, f31, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x5, 0xef18905e28a4dbf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fltq.d x5, f15, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x12, 0x26caf31078338b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
fltq.d x12, f20, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x17, 0x6c5cac95b597fae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fltq.d x17, f24, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x20, 0x3359de0d7431dc4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fltq.d x20, f30, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x15, 0x0dded0efb042bd17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fltq.d x15, f14, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x14, 0x5516f23e1fbf5031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fltq.d x14, f6, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x7, 0x10e82ed9b6be67e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fltq.d x7, f20, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x11, 0xdd95b02e986b16a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fltq.d x11, f4, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x7, 0x0f84bb8a8c2f046f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fltq.d x7, f12, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x28, 0x2d6c006658851321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fltq.d x28, f23, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x19, 0x913bf43196f8a680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fltq.d x19, f3, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x6, 0x485792fe51933f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fltq.d x6, f31, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x24, 0xb9118d747b0b15aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fltq.d x24, f12, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x10, 0x194471a8854d9f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
fltq.d x10, f9, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x26, 0x1d181cca0f9bb740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
fltq.d x26, f4, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x25, 0x5575e860960068ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fltq.d x25, f14, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x21, 0x29515ffe46f18089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
fltq.d x21, f11, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x25, 0x6e8d8e35a100b3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fltq.d x25, f27, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x14, 0x21ecdf3840157d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fltq.d x14, f21, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x29, 0xb602a232690cf1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fltq.d x29, f20, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x25, 0xff378279976fb5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fltq.d x25, f17, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x11, 0xc680fdf16bb64590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fltq.d x11, f22, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x15, 0x5efc8cb0b1119df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fltq.d x15, f31, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x31, 0x13bc8d6ffc2fbcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fltq.d x31, f12, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x6, 0x040a91b6ae217862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
fltq.d x6, f11, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x9, 0x5aac5dc176d421a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fltq.d x9, f29, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x26, 0x57dc88b47df3a7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fltq.d x26, f16, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x29, 0x7e1fbbc5653fa169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fltq.d x29, f15, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x6, 0xd302ccecc721b0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fltq.d x6, f22, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x22, 0xcaedfa05d6451cd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fltq.d x22, f8, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x16, 0x65eca0f57cba200a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fltq.d x16, f4, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x7, 0xdfb3be8ade30faef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fltq.d x7, f15, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x3, 0xbdebb69e3539385e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fltq.d x3, f2, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x28, 0xa29956c5b69a1f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fltq.d x28, f3, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x23, 0xf8d966df40f790df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fltq.d x23, f31, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x15, 0x30ba1dd0ce25e34f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fltq.d x15, f10, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x27, 0xb2bfa04116e793f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fltq.d x27, f22, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x12, 0x5b751422fd688354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fltq.d x12, f1, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x24, 0x6fd842b710bbf46e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
fltq.d x24, f8, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x14, 0x6c72fba97d7bc062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fltq.d x14, f23, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x31, 0x06f3d798d4df156d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fltq.d x31, f6, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x22, 0xb0d97d5cf59dc5d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fltq.d x22, f12, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x13, 0xa67b470bad40ea2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fltq.d x13, f3, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x25, 0x78cd1af279841084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fltq.d x25, f29, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x28, 0xdef392ce39fbb4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fltq.d x28, f3, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x8, 0xfd2849d74bb9407f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
fltq.d x8, f10, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x23, 0xcbe2357c4443ac72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fltq.d x23, f19, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x13, 0x8c21a9c8200eb810 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fltq.d x13, f9, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x4, 0x091d6bb44f1dda69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fltq.d x4, f19, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x28, 0x2158497d2efcae2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fltq.d x28, f6, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x26, 0x3be1df5a00a30e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fltq.d x26, f9, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x14, 0x3b64a9c1904bfcd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fltq.d x14, f22, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x24, 0x75fd2c52deeb8145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fltq.d x24, f15, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x10, 0x183c81e5398a8c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fltq.d x10, f9, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0xb978b12156af728b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fltq.d x27, f18, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x28, 0x8694716816f39434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fltq.d x28, f26, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x10, 0xdc2fad1bb1c40cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fltq.d x10, f18, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x3, 0xe17f5d17e4b9cd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fltq.d x3, f15, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x8, 0xba67dbd3f5bd0c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
fltq.d x8, f5, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x30, 0xa74520dfd4b53da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fltq.d x30, f5, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x23, 0x846e7d0e28360011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fltq.d x23, f19, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x2, 0x4d58d4fbfb7f90b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
fltq.d x2, f11, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x6, 0xd17f22da35ae54e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fltq.d x6, f13, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x22, 0xd728b4fddc66cdc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fltq.d x22, f7, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x6, 0x464fe86a23eb4878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fltq.d x6, f2, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x30, 0xf55c8290f8953b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fltq.d x30, f31, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x19, 0x26613ba190567be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fltq.d x19, f23, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x29, 0x70d89267c83fd4c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fltq.d x29, f16, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x31, 0x6741b757899be41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fltq.d x31, f3, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x2, 0x99f2d72a9dc2f8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fltq.d x2, f26, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x26, 0x9ada4f36c4a0fd66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fltq.d x26, f6, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x24, 0xba6f6dd88d2a04cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fltq.d x24, f12, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x10, 0xc47f9b4d0db17a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fltq.d x10, f18, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x9, 0xdc665942fedfa196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fltq.d x9, f25, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x11, 0x1fb3450f18118bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fltq.d x11, f26, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x3, 0xa2153d146961e7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fltq.d x3, f19, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x19, 0xae3b73007033f307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fltq.d x19, f26, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x6, 0x4adf3a5cb0de2cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fltq.d x6, f22, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x2, 0xee54bc51891b7181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fltq.d x2, f30, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x6, 0x24b56a040c4c1bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fltq.d x6, f22, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x2, 0x88b2eb160b94e21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fltq.d x2, f5, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x11, 0xb62106bc470dc93c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fltq.d x11, f18, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x7, 0x08d3ae1f950728f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fltq.d x7, f11, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x31, 0x29809aec170db5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fltq.d x31, f5, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x15, 0xfae396a9e906f6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fltq.d x15, f17, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x20, 0xb365f7d6e68fbc93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fltq.d x20, f1, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x21, 0x2390889df426bb5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fltq.d x21, f23, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x28, 0xded0eddc5428c827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fltq.d x28, f25, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x26, 0xf406c6e41a4333ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fltq.d x26, f28, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x8, 0x30622429f63250c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fltq.d x8, f12, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x30, 0x7202ffe171599ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fltq.d x30, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x20, 0x63d022ee6af76477 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fltq.d x20, f7, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x24, 0x62dbcd8af5ae54d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fltq.d x24, f21, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x24, 0x26104b27b6e687ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fltq.d x24, f27, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x10, 0xab670f5f38d5c890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fltq.d x10, f21, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x19, 0x9e587f1bfba573ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fltq.d x19, f4, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x24, 0x83272957f092e7ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fltq.d x24, f7, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x15, 0x5c285bc48ed60b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fltq.d x15, f6, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x2, 0xc9c3dc2b0eed48b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fltq.d x2, f1, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x30, 0x887bf4551277cb2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fltq.d x30, f5, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x16, 0xfe8ff22b8333e575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fltq.d x16, f24, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x10, 0x96a52ec539cdda1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fltq.d x10, f13, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x13, 0x26cbc64723fd372d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fltq.d x13, f2, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x24, 0xea2db7152d744b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fltq.d x24, f22, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x7, 0xc4af4ff58d2df737 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fltq.d x7, f8, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x1, 0x89117d063e047ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fltq.d x1, f14, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x6, 0x0c71259171d94ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
fltq.d x6, f3, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x20, 0xc6b2cdabf7bc9c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
fltq.d x20, f28, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x18, 0x04bfc45f90f6f45f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fltq.d x18, f9, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x2, 0x52204edbb831238a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fltq.d x2, f14, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x1, 0x1a2ca55af2efe705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fltq.d x1, f23, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x8, 0x1c7630501f0c6304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fltq.d x8, f23, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x1, 0x6ec76b9946769c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fltq.d x1, f18, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x12, 0x96b4562221aefdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
fltq.d x12, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x12, 0x31363366173a6c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fltq.d x12, f20, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x20, 0x8dc057e74c1274ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fltq.d x20, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x2, 0x6410bdb6b7528d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fltq.d x2, f19, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x11, 0x97e8771462683994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fltq.d x11, f17, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x25, 0x0cd6b605460e627a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fltq.d x25, f3, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x27, 0x6ca2af37d5fe76d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fltq.d x27, f12, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x31, 0xf7411aec76a2ea84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fltq.d x31, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x14, 0x173be936299f0598 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fltq.d x14, f9, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x22, 0x5afa3ac4a07713ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fltq.d x22, f11, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x23, 0x8bbbd1dd4c920ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fltq.d x23, f29, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x30, 0x257c4ec42a281d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fltq.d x30, f13, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x6, 0xa2204142e7c88a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fltq.d x6, f27, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x14, 0xd05ca90ddf1771a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fltq.d x14, f23, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x1, 0xab86d562a2e5a73b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fltq.d x1, f18, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x22, 0x0de0c55e5acd82e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fltq.d x22, f21, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x28, 0x335c0ff73c877b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fltq.d x28, f9, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x3, 0x380a0400b61995f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fltq.d x3, f29, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x8, 0x6e339dd55c58b7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fltq.d x8, f23, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x4, 0xa99791d774d63b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fltq.d x4, f25, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x22, 0x00b20f6be0f15bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
fltq.d x22, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x13, 0xd7035eec07746b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fltq.d x13, f4, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x15, 0x85cd5ca7b84ee409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fltq.d x15, f31, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x15, 0x9e8f83534e9a9095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
fltq.d x15, f22, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x26, 0x4564ecbf3340670b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fltq.d x26, f17, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x24, 0x25c445e1817f84fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fltq.d x24, f4, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x11, 0x6a6e43d766a3d3b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fltq.d x11, f12, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x21, 0xa6eb948a825ca7dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
fltq.d x21, f6, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x28, 0x06f988e8aa093a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fltq.d x28, f18, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x8, 0xe34111d6e7c5e3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fltq.d x8, f21, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x15, 0xd21f3ccdec4d9736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fltq.d x15, f10, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x30, 0x4bdbc89ec23377f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fltq.d x30, f11, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x7, 0xa7c7f2b05abf8aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fltq.d x7, f8, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x23, 0x7e2524d2e81f4a4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fltq.d x23, f21, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x8, 0xe7fce37c8e38ff71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fltq.d x8, f4, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x19, 0x7a955b458712d613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fltq.d x19, f23, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x1, 0xb3d727cd1d58a64e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fltq.d x1, f7, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x28, 0x6388dc44189b3936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fltq.d x28, f19, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x30, 0xc81914d528cbc55d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
fltq.d x30, f10, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x21, 0x097339fa26bf455d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fltq.d x21, f19, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x9, 0xae0ca65bf29a92e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fltq.d x9, f3, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x19, 0x16cabd4adeff5196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
fltq.d x19, f9, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x22, 0xca84c9c2e329a72e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fltq.d x22, f9, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x19, 0x819dbbfd09d0fb03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
fltq.d x19, f11, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x19, 0xdf5e548c480be794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fltq.d x19, f4, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x7, 0x75ecd385a39ace1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fltq.d x7, f1, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x10, 0xbdd8e7800adb8cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fltq.d x10, f25, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x8, 0xe49bf367050e4627 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fltq.d x8, f3, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x11, 0x98a3bff2aa5090f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
fltq.d x11, f24, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x16, 0xd17a170b7bd662d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
fltq.d x16, f14, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x11, 0xd9d9d364d347526b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fltq.d x11, f25, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x25, 0xb9ee3ec042e4cc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fltq.d x25, f27, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x6, 0xde278cd0d6b92ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fltq.d x6, f9, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x30, 0xd2f8353376a4dbdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fltq.d x30, f4, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x21, 0x32ee57c6e8f92ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
fltq.d x21, f17, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x29, 0x4cae3673ba2d4f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fltq.d x29, f23, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x2, 0xad1614726ef0d054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fltq.d x2, f30, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x3, 0x30fa8b8cadfff611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fltq.d x3, f30, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x20, 0x922617cddcf64ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
fltq.d x20, f3, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x16, 0x56776831b6309bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fltq.d x16, f7, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x17, 0x642dfe16ce82608e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fltq.d x17, f24, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x22, 0xbfc1f67a95759682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f10, 0(x2) # load 0x0000000000000000 from memory into f10
fltq.d x22, f12, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x13, 0xcc0409904a184e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fltq.d x13, f15, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x22, 0xc390e0e4e5c0153a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fltq.d x22, f31, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x26, 0x2a8b8727643c39fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fltq.d x26, f23, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x4, 0xbf7619e1738b771f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fltq.d x4, f21, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x3, 0x3c0f8b348db49082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fltq.d x3, f21, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x31, 0xc60795debf849d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fltq.d x31, f16, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x3, 0x242b510362c5eeb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fltq.d x3, f6, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x6, 0x6d4d32d61e619baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fltq.d x6, f14, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x14, 0x1ce0dabb9707377f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fltq.d x14, f12, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x24, 0x10a40942ac5b3721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
fltq.d x24, f23, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x24, 0xba103f46daad701c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fltq.d x24, f7, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x21, 0xd139385386f49734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fltq.d x21, f22, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x11, 0x899e24934d5515ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fltq.d x11, f9, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x4, 0xf52c00e77e47e0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fltq.d x4, f30, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x3, 0x02eb542913d4b44f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
fltq.d x3, f21, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x25, 0x8b2ca0774e7dfb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fltq.d x25, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x15, 0x7a64675b39b2967d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fltq.d x15, f21, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x19, 0xc5fc0168b5179ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fltq.d x19, f31, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x31, 0x738d738c6d8b7c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fltq.d x31, f23, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x28, 0x0478dbcaef93a41b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fltq.d x28, f3, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x16, 0xfe77fe3b32b62d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fltq.d x16, f20, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x27, 0x4e185d77681f80cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fltq.d x27, f4, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x22, 0x4bdb630fc5fbbe13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fltq.d x22, f7, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x12, 0x2967975bf2bd8b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fltq.d x12, f19, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x30, 0x93fcb033d90e318b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fltq.d x30, f17, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x15, 0x1543a63d1c8797d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fltq.d x15, f6, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x22, 0x6c46dcd2058afd71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fltq.d x22, f26, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x13, 0x63058ac5848e8c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fltq.d x13, f30, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x26, 0x6a118d39bbf32bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fltq.d x26, f25, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x27, 0x03f064385982cfbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fltq.d x27, f13, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x18, 0xb566a9f2407c37b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fltq.d x18, f13, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x3, 0x11e4947b16bb5782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
fltq.d x3, f4, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x28, 0xdaea7e4bda106fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
fltq.d x28, f24, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x5, 0x36aad07f9f78df1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fltq.d x5, f7, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x9, 0xbee890ebdec8962f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fltq.d x9, f18, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x5, 0xa1a7d2c1694878b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
fltq.d x5, f23, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x30, 0xb48628120a620515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fltq.d x30, f5, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x16, 0xc9cb9a63eecfd6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fltq.d x16, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x6, 0x3562fd67213dd646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
fltq.d x6, f9, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x17, 0x8300c4cbac57f5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fltq.d x17, f19, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x14, 0x327e856691fff1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fltq.d x14, f5, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x5, 0xb6a897697559b858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fltq.d x5, f15, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x18, 0x6a33db684bd4c45e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fltq.d x18, f15, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x9, 0x9e385ada98675baf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fltq.d x9, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x29, 0x69472029661e9205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fltq.d x29, f19, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x17, 0x64a7ed33ef773865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fltq.d x17, f29, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x4, 0xa8e2797fed2e3da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fltq.d x4, f16, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x3, 0x14ad9e5fb9c57d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
fltq.d x3, f20, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x25, 0xae7ce5d59f9d3474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fltq.d x25, f13, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x14, 0xddb52c1bf7bd5178 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fltq.d x14, f27, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x24, 0x460ad43f9bbe4d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fltq.d x24, f25, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x22, 0x176344baa9ab7f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fltq.d x22, f13, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x9, 0x1b27347ca644e7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
fltq.d x9, f7, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x28, 0x8f449c92fe232071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fltq.d x28, f12, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x7, 0x3ad42ff1245a479f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fltq.d x7, f25, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x10, 0x740a76dbac30452f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fltq.d x10, f29, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x8, 0xc03bcbd34b517ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fltq.d x8, f29, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x8, 0x4a6b6d7a81e7afb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fltq.d x8, f3, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x11, 0xb9a69152acf49148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fltq.d x11, f14, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x30, 0x5ecc14923e572a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fltq.d x30, f16, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x6, 0xc16784658c4cfbf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fltq.d x6, f21, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x7, 0xb49f62a7f8de0d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fltq.d x7, f1, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x27, 0xf3fc8075e4d7511a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fltq.d x27, f21, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x5, 0x0227933fd2e59f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fltq.d x5, f15, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x12, 0xe98a7226dc290f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fltq.d x12, f8, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x2, 0x49753471bc8d6e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fltq.d x2, f21, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x14, 0x06563f2df6e9bfcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fltq.d x14, f29, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x12, 0x35019bacc0a92fba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fltq.d x12, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x13, 0xfb0d2f8c43ff20c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fltq.d x13, f11, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x24, 0x450f37f5e3bafe0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fltq.d x24, f28, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x24, 0xadeac6aed0c717e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
fltq.d x24, f23, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x29, 0xedcc5e4553e5249b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fltq.d x29, f26, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x4, 0xd32ae855d19f34a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fltq.d x4, f18, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x14, 0x438bb3f5fad69160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
fltq.d x14, f17, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x1, 0x60a9a0a5641be416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fltq.d x1, f4, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x24, 0xa3c2a8f63054a8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fltq.d x24, f20, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x27, 0x2350897b28cd1cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fltq.d x27, f5, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x27, 0x85b1912778247dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fltq.d x27, f8, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x30, 0xef4b2d0ec134e2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fltq.d x30, f6, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x30, 0xe3f401edbe43a145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fltq.d x30, f6, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x29, 0x5fd7bbf7b00d2759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fltq.d x29, f16, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x15, 0x36d0b41d395945a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fltq.d x15, f3, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x27, 0x4199056df9b49700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fltq.d x27, f8, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x10, 0x30da0bfc0da3c009 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fltq.d x10, f17, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x20, 0x568cd384b3c887e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fltq.d x20, f3, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x29, 0xadf8f8451f78e5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fltq.d x29, f23, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x5, 0x34fce415a46b77bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
fltq.d x5, f27, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x4, 0xec77f6122bab4572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fltq.d x4, f15, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x29, 0xe827cb22325cae4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fltq.d x29, f12, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x2, 0xd14b17e745bb9b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fltq.d x2, f25, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x5, 0xb9bb22c40f6c5921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fltq.d x5, f9, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x29, 0x693a67a14430e369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fltq.d x29, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x3, 0x38e38b3dfd73ebfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f15, 0(x2) # load 0x8008000000000000 from memory into f15
fltq.d x3, f2, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x22, 0x7954297a972f558a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fltq.d x22, f15, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x8, 0x27e84b02b7ffcc31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fltq.d x8, f22, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x14, 0x21d2c87849d58852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fltq.d x14, f18, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x12, 0x98fcb867c99e94e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fltq.d x12, f5, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x26, 0xd05caf7f7c7c2997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fltq.d x26, f9, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x19, 0xab03ec0c522aeed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fltq.d x19, f28, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x30, 0xb1a62b1a2fd8a5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fltq.d x30, f23, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x26, 0x7c8633d7d2be6e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fltq.d x26, f9, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x14, 0xb9186931edd47a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fltq.d x14, f1, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x16, 0x3a5232ae9479a0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fltq.d x16, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x3, 0xd0055a2127a814de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
fltq.d x3, f5, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x1, 0xe103483cbd97d59c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fltq.d x1, f4, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x6, 0x8cd2f9a719f6d800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fltq.d x6, f1, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x11, 0x72860c39fecd12d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fltq.d x11, f26, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x15, 0x8592021b5b502c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
fltq.d x15, f27, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x30, 0x1e441509504f51cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fltq.d x30, f8, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x13, 0x5674b6a9ae951f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fltq.d x13, f7, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x19, 0xf9c76c27141d3cef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fltq.d x19, f2, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x19, 0x0518b1ac993af2db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fltq.d x19, f5, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x30, 0xb781b1ba07ff2982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fltq.d x30, f9, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x25, 0x3895d2a02e94690f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fltq.d x25, f3, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x11, 0xa09a3ae85ed00dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fltq.d x11, f4, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x12, 0x665034ab6c2a9983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fltq.d x12, f6, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x8, 0x22b388b358cce924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fltq.d x8, f24, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x13, 0xc142c1f897bb73c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fltq.d x13, f23, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x15, 0x651e22ddb47d10a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fltq.d x15, f3, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x16, 0x0831ac5d6a6623ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fltq.d x16, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x10, 0xff0ad0aa6917751c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fltq.d x10, f5, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x4, 0xea9717713d79948b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fltq.d x4, f28, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x8, 0xced0a309c5f4d93e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
fltq.d x8, f19, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x25, 0xd88062cc54c4f10a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fltq.d x25, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x9, 0xaddf10ee2e8380ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fltq.d x9, f16, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x7, 0xb7c3c55ecadda869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fltq.d x7, f25, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x16, 0x7000b725844d963c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fltq.d x16, f14, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x7, 0x7aa2b57310fd4425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fltq.d x7, f25, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x28, 0x798add52f4177b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fltq.d x28, f23, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x28, 0x8995413fd385a1de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fltq.d x28, f11, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x30, 0xff2a739319845166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fltq.d x30, f5, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x12, 0xa1ad5df4f9812d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fltq.d x12, f24, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x11, 0xe9a04fea11d2589f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fltq.d x11, f16, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x30, 0x2abb84b4708b2390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fltq.d x30, f8, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x19, 0xe5a636d2c4bcdc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fltq.d x19, f9, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x15, 0x94bae59a5c4cc3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fltq.d x15, f24, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x14, 0xc155700af81bad98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fltq.d x14, f15, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x31, 0x5b4a0b6e03c24564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fltq.d x31, f2, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x14, 0x3287b61416aeb2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fltq.d x14, f15, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x25158c555168e805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fltq.d x15, f20, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x1, 0xca9c1ec567493bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fltq.d x1, f7, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x23, 0x7fd89b9909d76894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fltq.d x23, f22, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x17, 0xdd8b9ac67400e6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fltq.d x17, f1, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x8, 0x785cfd619f2a5923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fltq.d x8, f15, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x31, 0x291bb6812de3b2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fltq.d x31, f4, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x2, 0xffd7669ac4fc5f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fltq.d x2, f24, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x25, 0x11fabc9480d772b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fltq.d x25, f20, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x28, 0x6638aa67589395f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fltq.d x28, f7, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x1, 0xc428c8cbf7beac99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fltq.d x1, f6, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x21, 0xf6c1b13108eb34a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fltq.d x21, f4, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x17, 0xa1819840822ecd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fltq.d x17, f10, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x30, 0x042d16b095314597 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fltq.d x30, f18, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x30, 0xaa91367f192a9856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fltq.d x30, f22, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x13, 0xd6343144ee845bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fltq.d x13, f20, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x1, 0xb773382b2b43067c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fltq.d x1, f12, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x8, 0xdb174a47e550e3f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fltq.d x8, f28, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x3, 0x483564de8577347c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fltq.d x3, f20, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x8, 0x53cc2d4cea623591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fltq.d x8, f26, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x13, 0x12457efbdc753a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fltq.d x13, f15, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x6, 0xf42b9aefe4b68ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fltq.d x6, f14, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x24, 0xdf95589b8bc4a23c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fltq.d x24, f20, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x8, 0xaaf20e74bc09f06d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fltq.d x8, f23, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x10, 0xfb7368bfb7869676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fltq.d x10, f1, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x7, 0xe14c0cfdfdc200ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fltq.d x7, f2, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x7, 0x1e619b5e18722b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fltq.d x7, f11, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x24, 0x572a23e0077bae88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fltq.d x24, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x2, 0x82df00870407e4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fltq.d x2, f24, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x29, 0xe79e4f89b3c07c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fltq.d x29, f17, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x27, 0xd292fac30f50cae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fltq.d x27, f11, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x4, 0x69b0470897829264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fltq.d x4, f26, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x15, 0x2a15e96512d2863a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
fltq.d x15, f24, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x19, 0xf9b0e91a2cb1cf0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fltq.d x19, f4, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x2, 0xa2a2a4dc13827e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fltq.d x2, f26, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x13, 0xe92d45472b048a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fltq.d x13, f9, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x20, 0x976820587863459f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
fltq.d x20, f26, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x30, 0x321d8decc040dfb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
fltq.d x30, f5, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x24, 0x37ac7153689ddd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fltq.d x24, f4, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x12, 0x1ee9941f5b9b1a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fltq.d x12, f21, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x29, 0xfba18aeddc9d424b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fltq.d x29, f23, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x19, 0x94abc0fabaa0dc9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fltq.d x19, f10, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x16, 0xd769ea9d35478ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fltq.d x16, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x15, 0x529d4b9f54740371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fltq.d x15, f9, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x15, 0xe742d211c86ab1de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fltq.d x15, f5, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x30, 0x9dbee5c9764a1412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fltq.d x30, f9, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x4, 0x04b810227b818cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fltq.d x4, f11, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x29, 0x28e9367ca4199d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fltq.d x29, f4, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x12, 0xbebb759046d39d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
fltq.d x12, f13, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x8, 0x5dd281a1d103adc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fltq.d x8, f27, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x15, 0x3d9f8d5b1250319c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fltq.d x15, f11, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x30, 0xd5d0de18473dff5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fltq.d x30, f28, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x10, 0x4f15a32605c0603d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fltq.d x10, f4, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x17, 0x18ba9404d2b42f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fltq.d x17, f5, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x26, 0x67d8b69cfd058616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fltq.d x26, f6, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x30, 0x6291f61e45351548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fltq.d x30, f20, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x14, 0xbda157003e202ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fltq.d x14, f29, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x1, 0xed69bae09bccbbb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fltq.d x1, f11, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x22, 0xe0e9b12dedeba1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fltq.d x22, f21, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x17, 0xcbdcad733d73323b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fltq.d x17, f15, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x4, 0x2e5d5fd3ee6ab309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fltq.d x4, f14, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x31, 0x1ad13960227c271e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fltq.d x31, f14, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x2, 0xc1febe4307ad4db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fltq.d x2, f27, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x18, 0x267bb73575898bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fltq.d x18, f25, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x7, 0x3a9f6fb34b391e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fltq.d x7, f30, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x24, 0x85012606c732b6f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fltq.d x24, f3, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x15, 0x25f62195d147e9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
fltq.d x15, f9, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x1, 0xd161304fa324ac21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fltq.d x1, f26, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x19, 0xfbcdbfe8161ca823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fltq.d x19, f30, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x28, 0x961e5f762fa8a3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fltq.d x28, f15, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x29, 0x5fd96a61d7d38434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
fltq.d x29, f2, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x3, 0xf83fa3284bb2f158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fltq.d x3, f5, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x26, 0xc10f0700b85a1c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fltq.d x26, f27, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x12, 0xd237d96799ebe37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fltq.d x12, f13, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x10, 0x78f3937a13f6fca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
fltq.d x10, f29, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x23, 0xe763718a71fcc5ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fltq.d x23, f8, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x30, 0x85ec644eadeb6dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fltq.d x30, f26, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x3, 0x80de0a206c3bdee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fltq.d x3, f9, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x29, 0xd4b0abe4b4c3ede9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fltq.d x29, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x20, 0xfbe3db0f327049cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fltq.d x20, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x28, 0xda8f122e0116520c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
fltq.d x28, f17, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x23, 0xcbd8f57a7766b021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fltq.d x23, f14, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x5, 0x906d8c06a915384f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fltq.d x5, f24, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x13, 0x89866899eb3a02a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fltq.d x13, f26, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x25, 0x67d68d9e75d0d092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fltq.d x25, f22, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x2, 0xf5a303abcb261d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fltq.d x2, f20, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x21, 0x44954c56eab3dae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fltq.d x21, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x30, 0x8617c5b87310ef43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
fltq.d x30, f9, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x22, 0xf2699e3aa37071fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
fltq.d x22, f27, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x6, 0xf75c52de5ec17541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fltq.d x6, f4, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x24, 0xaf013e118b56ea76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
fltq.d x24, f4, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x28, 0xc097ea1a75a32366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
fltq.d x28, f15, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x25, 0xc0eadb87f10fab2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
fltq.d x25, f19, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x6, 0xb8591bf808562d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
fltq.d x6, f20, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x15, 0x2801188274662637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fltq.d x15, f1, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x16, 0xaea3cc5beb64132a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fltq.d x16, f10, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x24, 0xb42c1a999796ffa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fltq.d x24, f27, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x10, 0x1b36e57279a41221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fltq.d x10, f9, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x23, 0xb28d1e17277dc95f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fltq.d x23, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x23, 0x1449ab97af84895d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fltq.d x23, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x11, 0x6498b0c1b890d596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fltq.d x11, f28, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x3, 0x04b22b3058c57b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fltq.d x3, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x30, 0xe046d6bb95134dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fltq.d x30, f2, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x14, 0xeaa2fe3bba754d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fltq.d x14, f17, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x14, 0x2cba821d359869ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fltq.d x14, f19, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x15, 0x47ad39ce0d20717f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fltq.d x15, f25, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x24, 0xed49a625a9110014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fltq.d x24, f14, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x21, 0xd3463c1928c9df26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fltq.d x21, f14, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x6, 0xb39bdf2fc3efd147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fltq.d x6, f29, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x7, 0x07ae9fa1ef2db06a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fltq.d x7, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x5, 0x8ee439e1e0f08ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fltq.d x5, f15, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x29, 0xd11c13e9189f26cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fltq.d x29, f8, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x23, 0xa7dfca8c949242c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fltq.d x23, f26, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x30, 0x95c9b63e12bdfe5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
fltq.d x30, f12, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x18, 0x828b3b1e6ab9b1f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fltq.d x18, f20, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x23, 0x068fd46597c7027c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fltq.d x23, f8, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x27, 0x4fff9013770e76bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fltq.d x27, f12, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x29, 0x2e1e05df96a5d510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
fltq.d x29, f2, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x19, 0xbba4110482a1da35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fltq.d x19, f10, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x3, 0x5e030877e0bd76a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fltq.d x3, f12, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x31, 0x57fd84df1111ca58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fltq.d x31, f8, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x14, 0xf0b15db2bf06ca37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fltq.d x14, f18, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x11, 0x14ad451ea1b7d7ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fltq.d x11, f31, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x9, 0xc4714fab08589962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fltq.d x9, f7, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x12, 0x374b6b429a4d9be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fltq.d x12, f31, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x4, 0x748c9a6dae9dd507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fltq.d x4, f18, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x20, 0x430485929e35d08d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fltq.d x20, f1, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x22, 0xbbd2a24f247e86a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
fltq.d x22, f28, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x10, 0x489415116b36bfd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fltq.d x10, f20, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x23, 0x8d94493014f5e55b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fltq.d x23, f17, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x15, 0xcb79dd304b649446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fltq.d x15, f7, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x25, 0x831790201370d791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fltq.d x25, f9, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x2, 0xf77a3773cb90da0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fltq.d x2, f28, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x27, 0x84f84355eb580a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fltq.d x27, f5, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x16, 0x879cb57cd08f6b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fltq.d x16, f18, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x21, 0x76762fbdb909bd39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fltq.d x21, f11, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x9, 0x3d38841c1f5e0e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fltq.d x9, f6, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x26, 0x6a4628987f81663b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fltq.d x26, f23, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x31, 0x67925dd39fbb3fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fltq.d x31, f7, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x28, 0xa381ad4e3a75d3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fltq.d x28, f3, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x23, 0x9b92729fb6029c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fltq.d x23, f13, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x10, 0x1ea5c0c1f6ecb38f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fltq.d x10, f5, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x20, 0xac8a9d28104252d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fltq.d x20, f18, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x1, 0x5b7209e54d67a3ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fltq.d x1, f5, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x5, 0x6d60e4283e6beeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fltq.d x5, f13, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x20, 0x1f687f70183b52bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fltq.d x20, f11, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x13, 0x48024bd648120d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fltq.d x13, f1, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x13, 0x489b0b1dddbbc4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fltq.d x13, f31, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x6, 0x21b4c75057e9ef6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fltq.d x6, f30, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x21, 0x1fbdc9470afd0ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fltq.d x21, f8, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x26, 0xa046816a29370083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fltq.d x26, f27, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x11, 0x01843b53d90a17de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fltq.d x11, f8, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x8, 0x506b92d0db279da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fltq.d x8, f11, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x3, 0x9f9ce06861f0b4fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
fltq.d x3, f2, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x18, 0x763217dcc4a71952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
fltq.d x18, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x29, 0xd2f190814767de8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fltq.d x29, f26, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x9, 0x0acbc9cdf01b042d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fltq.d x9, f18, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x29, 0x3d897a2cbf80dc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fltq.d x29, f10, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x6, 0xbd18701e6be0c02d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fltq.d x6, f15, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x24, 0xd5153b68cf35e8fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fltq.d x24, f21, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x16, 0x237e5c99cd032fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fltq.d x16, f12, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x4, 0x81acf1a9f713d03d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fltq.d x4, f13, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x14, 0x8a5159830f892fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fltq.d x14, f1, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x28, 0xb0c13e5d83d5b5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fltq.d x28, f20, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x12, 0xac592a4fda691b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fltq.d x12, f22, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x29, 0xb199259afd11ae17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
fltq.d x29, f30, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x16, 0xee6e31d394238f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fltq.d x16, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x16, 0xefaaa82c81bfdbb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fltq.d x16, f12, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x4, 0x8c05c56e86ca65c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
fltq.d x4, f18, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x9, 0x805f8c23abb69be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fltq.d x9, f15, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x28, 0x4a37dde27052f553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fltq.d x28, f2, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x6, 0x5d3b0d4e4069f7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fltq.d x6, f27, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x21, 0x0259bc905eb31180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fltq.d x21, f19, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x12, 0x5249aa09505342cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
fltq.d x12, f28, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x19, 0x4c021982a230a8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fltq.d x19, f7, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x24, 0xb0ff7572b9e03d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fltq.d x24, f9, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x10, 0x56a332d49723cf03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fltq.d x10, f8, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x30, 0x6a142307595b2034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
fltq.d x30, f2, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x25, 0x4620758aa4bbd66f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fltq.d x25, f26, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x9, 0xa4dc21569c086438 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fltq.d x9, f2, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x1, 0x01d7cf5a36ff7db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fltq.d x1, f2, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x3, 0xee65b2ffaff89cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fltq.d x3, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x8, 0xf86318a2e87fd3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fltq.d x8, f22, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x11, 0xf5675fad8c8a54e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fltq.d x11, f12, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x28, 0x616304fd9030058d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fltq.d x28, f24, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x20, 0x961b72ff4ec052da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fltq.d x20, f6, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x10, 0x98439d3b1775602b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fltq.d x10, f31, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x17, 0x6245155e9f1c4bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
fltq.d x17, f8, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x29, 0xd348dc2357d1a8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fltq.d x29, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x31, 0x3d87213b08928305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fltq.d x31, f17, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x30, 0xaeb711e700369fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fltq.d x30, f1, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x20, 0x5fe3cecd153bf6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
fltq.d x20, f27, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x3, 0xfe3ebccd2b5ae344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fltq.d x3, f13, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x22, 0xeee252d36bc7e318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fltq.d x22, f11, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x1, 0x717788184361d226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fltq.d x1, f6, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x13, 0xe21953c04e31d999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
fltq.d x13, f12, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x6, 0x2b33be5e8a8abbc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fltq.d x6, f8, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x25, 0x326aa948d9959765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fltq.d x25, f26, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x12, 0x6da164b9fc396647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fltq.d x12, f29, f20 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0x6ec91fbe8015dd36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3514e7ca17d5bbe0 # load x3 with value 0x3514e7ca17d5bbe0
sd x3, 0(x2) # store 0x3514e7ca17d5bbe0 in memory
fld f0, 0(x2) # load 0x3514e7ca17d5bbe0 from memory into f0
li x3, 0xb06dbc39a32f17f3 # load x3 with value 0xb06dbc39a32f17f3
sd x3, 0(x2) # store 0xb06dbc39a32f17f3 in memory
fld f28, 0(x2) # load 0xb06dbc39a32f17f3 from memory into f28
fltq.d x3, f0, f28 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x0ee2bd7faacebd27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa65014e0fb06b148 # load x3 with value 0xa65014e0fb06b148
sd x3, 0(x2) # store 0xa65014e0fb06b148 in memory
fld f1, 0(x2) # load 0xa65014e0fb06b148 from memory into f1
li x3, 0xb7b8d2b735ec7271 # load x3 with value 0xb7b8d2b735ec7271
sd x3, 0(x2) # store 0xb7b8d2b735ec7271 in memory
fld f18, 0(x2) # load 0xb7b8d2b735ec7271 from memory into f18
fltq.d x15, f1, f18 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f2)
li x13, 0x0392ff7bf6b6dd5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfcaa6a990a9051d8 # load x3 with value 0xfcaa6a990a9051d8
sd x3, 0(x2) # store 0xfcaa6a990a9051d8 in memory
fld f2, 0(x2) # load 0xfcaa6a990a9051d8 from memory into f2
li x3, 0xbbcf4e6a40663c74 # load x3 with value 0xbbcf4e6a40663c74
sd x3, 0(x2) # store 0xbbcf4e6a40663c74 in memory
fld f8, 0(x2) # load 0xbbcf4e6a40663c74 from memory into f8
fltq.d x13, f2, f8 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f3)
li x23, 0x8b286e5098242d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a087b5dc7c9c6a5 # load x3 with value 0x5a087b5dc7c9c6a5
sd x3, 0(x2) # store 0x5a087b5dc7c9c6a5 in memory
fld f3, 0(x2) # load 0x5a087b5dc7c9c6a5 from memory into f3
li x3, 0x0eafa94a3387552b # load x3 with value 0x0eafa94a3387552b
sd x3, 0(x2) # store 0x0eafa94a3387552b in memory
fld f4, 0(x2) # load 0x0eafa94a3387552b from memory into f4
fltq.d x23, f3, f4 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f4)
li x12, 0xbf082603513609de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0936e7788529d193 # load x3 with value 0x0936e7788529d193
sd x3, 0(x2) # store 0x0936e7788529d193 in memory
fld f4, 0(x2) # load 0x0936e7788529d193 from memory into f4
li x3, 0xccb3465ad0495af3 # load x3 with value 0xccb3465ad0495af3
sd x3, 0(x2) # store 0xccb3465ad0495af3 in memory
fld f15, 0(x2) # load 0xccb3465ad0495af3 from memory into f15
fltq.d x12, f4, f15 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f5)
li x21, 0x8c829faf1bfad4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ad8c943656a7acd # load x3 with value 0x5ad8c943656a7acd
sd x3, 0(x2) # store 0x5ad8c943656a7acd in memory
fld f5, 0(x2) # load 0x5ad8c943656a7acd from memory into f5
li x3, 0x550d13ea3b486327 # load x3 with value 0x550d13ea3b486327
sd x3, 0(x2) # store 0x550d13ea3b486327 in memory
fld f2, 0(x2) # load 0x550d13ea3b486327 from memory into f2
fltq.d x21, f5, f2 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f6)
li x21, 0x35d4ffb4c2deac31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc74d7844f0338dec # load x3 with value 0xc74d7844f0338dec
sd x3, 0(x2) # store 0xc74d7844f0338dec in memory
fld f6, 0(x2) # load 0xc74d7844f0338dec from memory into f6
li x3, 0x12a2f7b61777d7a0 # load x3 with value 0x12a2f7b61777d7a0
sd x3, 0(x2) # store 0x12a2f7b61777d7a0 in memory
fld f22, 0(x2) # load 0x12a2f7b61777d7a0 from memory into f22
fltq.d x21, f6, f22 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f7)
li x7, 0xd9ae819ec9c133c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bdd8bf91c1d2bde # load x3 with value 0x4bdd8bf91c1d2bde
sd x3, 0(x2) # store 0x4bdd8bf91c1d2bde in memory
fld f7, 0(x2) # load 0x4bdd8bf91c1d2bde from memory into f7
li x3, 0xb039c8796b7ef758 # load x3 with value 0xb039c8796b7ef758
sd x3, 0(x2) # store 0xb039c8796b7ef758 in memory
fld f12, 0(x2) # load 0xb039c8796b7ef758 from memory into f12
fltq.d x7, f7, f12 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f8)
li x29, 0xd9f276ea19ae741c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0602607307f9e4f4 # load x3 with value 0x0602607307f9e4f4
sd x3, 0(x2) # store 0x0602607307f9e4f4 in memory
fld f8, 0(x2) # load 0x0602607307f9e4f4 from memory into f8
li x3, 0xc0dca8967fd95604 # load x3 with value 0xc0dca8967fd95604
sd x3, 0(x2) # store 0xc0dca8967fd95604 in memory
fld f30, 0(x2) # load 0xc0dca8967fd95604 from memory into f30
fltq.d x29, f8, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f9)
li x23, 0x93316cea65d89fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x067c496c77d55a35 # load x3 with value 0x067c496c77d55a35
sd x3, 0(x2) # store 0x067c496c77d55a35 in memory
fld f9, 0(x2) # load 0x067c496c77d55a35 from memory into f9
li x3, 0x1b1b4fa552ef49a0 # load x3 with value 0x1b1b4fa552ef49a0
sd x3, 0(x2) # store 0x1b1b4fa552ef49a0 in memory
fld f31, 0(x2) # load 0x1b1b4fa552ef49a0 from memory into f31
fltq.d x23, f9, f31 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f10)
li x28, 0x7b74efd424759eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e83b9f0718851c6 # load x3 with value 0x1e83b9f0718851c6
sd x3, 0(x2) # store 0x1e83b9f0718851c6 in memory
fld f10, 0(x2) # load 0x1e83b9f0718851c6 from memory into f10
li x3, 0xf6d2bc1b60267f04 # load x3 with value 0xf6d2bc1b60267f04
sd x3, 0(x2) # store 0xf6d2bc1b60267f04 in memory
fld f4, 0(x2) # load 0xf6d2bc1b60267f04 from memory into f4
fltq.d x28, f10, f4 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f11)
li x5, 0x073086e335b5fabb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddfcb5d41c799c3a # load x3 with value 0xddfcb5d41c799c3a
sd x3, 0(x2) # store 0xddfcb5d41c799c3a in memory
fld f11, 0(x2) # load 0xddfcb5d41c799c3a from memory into f11
li x3, 0x813ad2145bcee832 # load x3 with value 0x813ad2145bcee832
sd x3, 0(x2) # store 0x813ad2145bcee832 in memory
fld f13, 0(x2) # load 0x813ad2145bcee832 from memory into f13
fltq.d x5, f11, f13 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f12)
li x12, 0x3386a6b3fcfc28bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x127d83ab76d4e066 # load x3 with value 0x127d83ab76d4e066
sd x3, 0(x2) # store 0x127d83ab76d4e066 in memory
fld f12, 0(x2) # load 0x127d83ab76d4e066 from memory into f12
li x3, 0x0c1669893ee31370 # load x3 with value 0x0c1669893ee31370
sd x3, 0(x2) # store 0x0c1669893ee31370 in memory
fld f30, 0(x2) # load 0x0c1669893ee31370 from memory into f30
fltq.d x12, f12, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f13)
li x25, 0x20fc01869b38b3f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a01c62ffc81445e # load x3 with value 0x7a01c62ffc81445e
sd x3, 0(x2) # store 0x7a01c62ffc81445e in memory
fld f13, 0(x2) # load 0x7a01c62ffc81445e from memory into f13
li x3, 0xaef776d2f34a5eb9 # load x3 with value 0xaef776d2f34a5eb9
sd x3, 0(x2) # store 0xaef776d2f34a5eb9 in memory
fld f27, 0(x2) # load 0xaef776d2f34a5eb9 from memory into f27
fltq.d x25, f13, f27 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f14)
li x25, 0x81dea5cbe9beefa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x958f9846253e824f # load x3 with value 0x958f9846253e824f
sd x3, 0(x2) # store 0x958f9846253e824f in memory
fld f14, 0(x2) # load 0x958f9846253e824f from memory into f14
li x3, 0xae83b51ec99e9229 # load x3 with value 0xae83b51ec99e9229
sd x3, 0(x2) # store 0xae83b51ec99e9229 in memory
fld f30, 0(x2) # load 0xae83b51ec99e9229 from memory into f30
fltq.d x25, f14, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f15)
li x24, 0x9a137f3312fd24cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc704bd939675235e # load x3 with value 0xc704bd939675235e
sd x3, 0(x2) # store 0xc704bd939675235e in memory
fld f15, 0(x2) # load 0xc704bd939675235e from memory into f15
li x3, 0x2fc6c66aedb189de # load x3 with value 0x2fc6c66aedb189de
sd x3, 0(x2) # store 0x2fc6c66aedb189de in memory
fld f22, 0(x2) # load 0x2fc6c66aedb189de from memory into f22
fltq.d x24, f15, f22 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f16)
li x12, 0x0a54aec8b8d5a001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f55d6085abf9b56 # load x3 with value 0x0f55d6085abf9b56
sd x3, 0(x2) # store 0x0f55d6085abf9b56 in memory
fld f16, 0(x2) # load 0x0f55d6085abf9b56 from memory into f16
li x3, 0xbc3039cc4e535ada # load x3 with value 0xbc3039cc4e535ada
sd x3, 0(x2) # store 0xbc3039cc4e535ada in memory
fld f30, 0(x2) # load 0xbc3039cc4e535ada from memory into f30
fltq.d x12, f16, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f17)
li x19, 0x456093472efff37c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c3183923d23d058 # load x3 with value 0x3c3183923d23d058
sd x3, 0(x2) # store 0x3c3183923d23d058 in memory
fld f17, 0(x2) # load 0x3c3183923d23d058 from memory into f17
li x3, 0x0895b74a97f444f3 # load x3 with value 0x0895b74a97f444f3
sd x3, 0(x2) # store 0x0895b74a97f444f3 in memory
fld f9, 0(x2) # load 0x0895b74a97f444f3 from memory into f9
fltq.d x19, f17, f9 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f18)
li x7, 0xf9a60ebd8e2808c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75da334e01a9b2ef # load x3 with value 0x75da334e01a9b2ef
sd x3, 0(x2) # store 0x75da334e01a9b2ef in memory
fld f18, 0(x2) # load 0x75da334e01a9b2ef from memory into f18
li x3, 0xd12ac68ed56a6eb4 # load x3 with value 0xd12ac68ed56a6eb4
sd x3, 0(x2) # store 0xd12ac68ed56a6eb4 in memory
fld f29, 0(x2) # load 0xd12ac68ed56a6eb4 from memory into f29
fltq.d x7, f18, f29 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f19)
li x5, 0x66b5a14fa2cff5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c5ea968c763bb85 # load x3 with value 0x6c5ea968c763bb85
sd x3, 0(x2) # store 0x6c5ea968c763bb85 in memory
fld f19, 0(x2) # load 0x6c5ea968c763bb85 from memory into f19
li x3, 0xdc7ea1622e7543b9 # load x3 with value 0xdc7ea1622e7543b9
sd x3, 0(x2) # store 0xdc7ea1622e7543b9 in memory
fld f26, 0(x2) # load 0xdc7ea1622e7543b9 from memory into f26
fltq.d x5, f19, f26 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f20)
li x23, 0x6656c0cef7ee8fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f319d10ed0584ff # load x3 with value 0x3f319d10ed0584ff
sd x3, 0(x2) # store 0x3f319d10ed0584ff in memory
fld f20, 0(x2) # load 0x3f319d10ed0584ff from memory into f20
li x3, 0xaa39912ba5a80df5 # load x3 with value 0xaa39912ba5a80df5
sd x3, 0(x2) # store 0xaa39912ba5a80df5 in memory
fld f13, 0(x2) # load 0xaa39912ba5a80df5 from memory into f13
fltq.d x23, f20, f13 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f21)
li x28, 0x80e982391df453e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe06e0e3f8e2893f4 # load x3 with value 0xe06e0e3f8e2893f4
sd x3, 0(x2) # store 0xe06e0e3f8e2893f4 in memory
fld f21, 0(x2) # load 0xe06e0e3f8e2893f4 from memory into f21
li x3, 0xade073b3e572e49e # load x3 with value 0xade073b3e572e49e
sd x3, 0(x2) # store 0xade073b3e572e49e in memory
fld f19, 0(x2) # load 0xade073b3e572e49e from memory into f19
fltq.d x28, f21, f19 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f22)
li x21, 0xd539892a60396ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb8d2639367cee47 # load x3 with value 0xcb8d2639367cee47
sd x3, 0(x2) # store 0xcb8d2639367cee47 in memory
fld f22, 0(x2) # load 0xcb8d2639367cee47 from memory into f22
li x3, 0xf2759523029ceeb9 # load x3 with value 0xf2759523029ceeb9
sd x3, 0(x2) # store 0xf2759523029ceeb9 in memory
fld f13, 0(x2) # load 0xf2759523029ceeb9 from memory into f13
fltq.d x21, f22, f13 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0xdb6741c05492dd2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59b0bc316a48dbba # load x3 with value 0x59b0bc316a48dbba
sd x3, 0(x2) # store 0x59b0bc316a48dbba in memory
fld f23, 0(x2) # load 0x59b0bc316a48dbba from memory into f23
li x3, 0x81e76c99b13b586a # load x3 with value 0x81e76c99b13b586a
sd x3, 0(x2) # store 0x81e76c99b13b586a in memory
fld f10, 0(x2) # load 0x81e76c99b13b586a from memory into f10
fltq.d x26, f23, f10 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f24)
li x19, 0xdcfa19dd108f9b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x558f2b0d7c8a2b99 # load x3 with value 0x558f2b0d7c8a2b99
sd x3, 0(x2) # store 0x558f2b0d7c8a2b99 in memory
fld f24, 0(x2) # load 0x558f2b0d7c8a2b99 from memory into f24
li x3, 0xb2cde33490492ee2 # load x3 with value 0xb2cde33490492ee2
sd x3, 0(x2) # store 0xb2cde33490492ee2 in memory
fld f31, 0(x2) # load 0xb2cde33490492ee2 from memory into f31
fltq.d x19, f24, f31 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f25)
li x21, 0x3bc4aa893fc58002 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d97877644a6befe # load x3 with value 0x2d97877644a6befe
sd x3, 0(x2) # store 0x2d97877644a6befe in memory
fld f25, 0(x2) # load 0x2d97877644a6befe from memory into f25
li x3, 0x1ec9404f650a974d # load x3 with value 0x1ec9404f650a974d
sd x3, 0(x2) # store 0x1ec9404f650a974d in memory
fld f19, 0(x2) # load 0x1ec9404f650a974d from memory into f19
fltq.d x21, f25, f19 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f26)
li x31, 0x86b68df73aa8ae9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e3aaecae0152f94 # load x3 with value 0x4e3aaecae0152f94
sd x3, 0(x2) # store 0x4e3aaecae0152f94 in memory
fld f26, 0(x2) # load 0x4e3aaecae0152f94 from memory into f26
li x3, 0xfdbdbfe341b94999 # load x3 with value 0xfdbdbfe341b94999
sd x3, 0(x2) # store 0xfdbdbfe341b94999 in memory
fld f25, 0(x2) # load 0xfdbdbfe341b94999 from memory into f25
fltq.d x31, f26, f25 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f27)
li x8, 0xf5906602df781233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51825126c4547ae7 # load x3 with value 0x51825126c4547ae7
sd x3, 0(x2) # store 0x51825126c4547ae7 in memory
fld f27, 0(x2) # load 0x51825126c4547ae7 from memory into f27
li x3, 0x05226a420d66ce3c # load x3 with value 0x05226a420d66ce3c
sd x3, 0(x2) # store 0x05226a420d66ce3c in memory
fld f26, 0(x2) # load 0x05226a420d66ce3c from memory into f26
fltq.d x8, f27, f26 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f28)
li x26, 0x662b05cb5c3a5fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e8c2f308a9b43d8 # load x3 with value 0x2e8c2f308a9b43d8
sd x3, 0(x2) # store 0x2e8c2f308a9b43d8 in memory
fld f28, 0(x2) # load 0x2e8c2f308a9b43d8 from memory into f28
li x3, 0x1fca9e6cf0035023 # load x3 with value 0x1fca9e6cf0035023
sd x3, 0(x2) # store 0x1fca9e6cf0035023 in memory
fld f11, 0(x2) # load 0x1fca9e6cf0035023 from memory into f11
fltq.d x26, f28, f11 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0x2394c2a93c89727f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfef544f41091229 # load x3 with value 0xdfef544f41091229
sd x3, 0(x2) # store 0xdfef544f41091229 in memory
fld f29, 0(x2) # load 0xdfef544f41091229 from memory into f29
li x3, 0x066bf77f38ae4b77 # load x3 with value 0x066bf77f38ae4b77
sd x3, 0(x2) # store 0x066bf77f38ae4b77 in memory
fld f4, 0(x2) # load 0x066bf77f38ae4b77 from memory into f4
fltq.d x26, f29, f4 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0x8446599a56f17a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82258bef2a78180b # load x3 with value 0x82258bef2a78180b
sd x3, 0(x2) # store 0x82258bef2a78180b in memory
fld f30, 0(x2) # load 0x82258bef2a78180b from memory into f30
li x3, 0xfadc5f7228efb446 # load x3 with value 0xfadc5f7228efb446
sd x3, 0(x2) # store 0xfadc5f7228efb446 in memory
fld f9, 0(x2) # load 0xfadc5f7228efb446 from memory into f9
fltq.d x31, f30, f9 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f31)
li x9, 0xdbe6470177f4ad3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f65dfe8e31ac0dc # load x3 with value 0x5f65dfe8e31ac0dc
sd x3, 0(x2) # store 0x5f65dfe8e31ac0dc in memory
fld f31, 0(x2) # load 0x5f65dfe8e31ac0dc from memory into f31
li x3, 0xc178218516808cba # load x3 with value 0xc178218516808cba
sd x3, 0(x2) # store 0xc178218516808cba in memory
fld f1, 0(x2) # load 0xc178218516808cba from memory into f1
fltq.d x9, f31, f1 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f0)
li x20, 0x9f4301b5a9103784 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9234ac65be97546f # load x3 with value 0x9234ac65be97546f
sd x3, 0(x2) # store 0x9234ac65be97546f in memory
fld f10, 0(x2) # load 0x9234ac65be97546f from memory into f10
li x3, 0x62a0aca6c77c5ab1 # load x3 with value 0x62a0aca6c77c5ab1
sd x3, 0(x2) # store 0x62a0aca6c77c5ab1 in memory
fld f0, 0(x2) # load 0x62a0aca6c77c5ab1 from memory into f0
fltq.d x20, f10, f0 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f1)
li x10, 0xa1749300c2ff6089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cebbe76c7073074 # load x3 with value 0x5cebbe76c7073074
sd x3, 0(x2) # store 0x5cebbe76c7073074 in memory
fld f2, 0(x2) # load 0x5cebbe76c7073074 from memory into f2
li x3, 0x8d32a974aa864d55 # load x3 with value 0x8d32a974aa864d55
sd x3, 0(x2) # store 0x8d32a974aa864d55 in memory
fld f1, 0(x2) # load 0x8d32a974aa864d55 from memory into f1
fltq.d x10, f2, f1 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f2)
li x18, 0x52b4f62130b0f2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06c3f6666c993df0 # load x3 with value 0x06c3f6666c993df0
sd x3, 0(x2) # store 0x06c3f6666c993df0 in memory
fld f6, 0(x2) # load 0x06c3f6666c993df0 from memory into f6
li x3, 0x09d34620353f1abf # load x3 with value 0x09d34620353f1abf
sd x3, 0(x2) # store 0x09d34620353f1abf in memory
fld f2, 0(x2) # load 0x09d34620353f1abf from memory into f2
fltq.d x18, f6, f2 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f3)
li x31, 0x43d5811f6daef359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2303f782e2f69977 # load x3 with value 0x2303f782e2f69977
sd x3, 0(x2) # store 0x2303f782e2f69977 in memory
fld f14, 0(x2) # load 0x2303f782e2f69977 from memory into f14
li x3, 0xa8a9e3141047b0b8 # load x3 with value 0xa8a9e3141047b0b8
sd x3, 0(x2) # store 0xa8a9e3141047b0b8 in memory
fld f3, 0(x2) # load 0xa8a9e3141047b0b8 from memory into f3
fltq.d x31, f14, f3 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f4)
li x20, 0x1cfcea2943450775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec4b823d28b427c9 # load x3 with value 0xec4b823d28b427c9
sd x3, 0(x2) # store 0xec4b823d28b427c9 in memory
fld f19, 0(x2) # load 0xec4b823d28b427c9 from memory into f19
li x3, 0xff16a402cd6e1b2b # load x3 with value 0xff16a402cd6e1b2b
sd x3, 0(x2) # store 0xff16a402cd6e1b2b in memory
fld f4, 0(x2) # load 0xff16a402cd6e1b2b from memory into f4
fltq.d x20, f19, f4 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f5)
li x3, 0x0a1f28b2756786f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x611654a285f01c21 # load x3 with value 0x611654a285f01c21
sd x3, 0(x2) # store 0x611654a285f01c21 in memory
fld f10, 0(x2) # load 0x611654a285f01c21 from memory into f10
li x3, 0x6d5ffff125d80f36 # load x3 with value 0x6d5ffff125d80f36
sd x3, 0(x2) # store 0x6d5ffff125d80f36 in memory
fld f5, 0(x2) # load 0x6d5ffff125d80f36 from memory into f5
fltq.d x3, f10, f5 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f6)
li x9, 0x9f6f1ac8c7be7e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bc02b7bad531b85 # load x3 with value 0x8bc02b7bad531b85
sd x3, 0(x2) # store 0x8bc02b7bad531b85 in memory
fld f22, 0(x2) # load 0x8bc02b7bad531b85 from memory into f22
li x3, 0xdea7511a0d6fd319 # load x3 with value 0xdea7511a0d6fd319
sd x3, 0(x2) # store 0xdea7511a0d6fd319 in memory
fld f6, 0(x2) # load 0xdea7511a0d6fd319 from memory into f6
fltq.d x9, f22, f6 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f7)
li x27, 0x88146aa84a6427ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38e25c158736681e # load x3 with value 0x38e25c158736681e
sd x3, 0(x2) # store 0x38e25c158736681e in memory
fld f19, 0(x2) # load 0x38e25c158736681e from memory into f19
li x3, 0xffdc53343a4d0019 # load x3 with value 0xffdc53343a4d0019
sd x3, 0(x2) # store 0xffdc53343a4d0019 in memory
fld f7, 0(x2) # load 0xffdc53343a4d0019 from memory into f7
fltq.d x27, f19, f7 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f8)
li x2, 0xc87ac7ecbcc1cf86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe927ae131b670830 # load x3 with value 0xe927ae131b670830
sd x3, 0(x2) # store 0xe927ae131b670830 in memory
fld f5, 0(x2) # load 0xe927ae131b670830 from memory into f5
li x3, 0x132d877177651214 # load x3 with value 0x132d877177651214
sd x3, 0(x2) # store 0x132d877177651214 in memory
fld f8, 0(x2) # load 0x132d877177651214 from memory into f8
fltq.d x2, f5, f8 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f9)
li x1, 0x50cbf8a31389b63b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x939f7d9ad9498bc8 # load x3 with value 0x939f7d9ad9498bc8
sd x3, 0(x2) # store 0x939f7d9ad9498bc8 in memory
fld f21, 0(x2) # load 0x939f7d9ad9498bc8 from memory into f21
li x3, 0x6f76e44ca89bfa21 # load x3 with value 0x6f76e44ca89bfa21
sd x3, 0(x2) # store 0x6f76e44ca89bfa21 in memory
fld f9, 0(x2) # load 0x6f76e44ca89bfa21 from memory into f9
fltq.d x1, f21, f9 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f10)
li x27, 0x322327c8f085f18a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cd4304df33fc84b # load x3 with value 0x5cd4304df33fc84b
sd x3, 0(x2) # store 0x5cd4304df33fc84b in memory
fld f4, 0(x2) # load 0x5cd4304df33fc84b from memory into f4
li x3, 0x919c0931d9b785cd # load x3 with value 0x919c0931d9b785cd
sd x3, 0(x2) # store 0x919c0931d9b785cd in memory
fld f10, 0(x2) # load 0x919c0931d9b785cd from memory into f10
fltq.d x27, f4, f10 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f11)
li x4, 0x00f127d01f9f27fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6533f7e43f6c68e9 # load x3 with value 0x6533f7e43f6c68e9
sd x3, 0(x2) # store 0x6533f7e43f6c68e9 in memory
fld f8, 0(x2) # load 0x6533f7e43f6c68e9 from memory into f8
li x3, 0xd217f3587a98ef1f # load x3 with value 0xd217f3587a98ef1f
sd x3, 0(x2) # store 0xd217f3587a98ef1f in memory
fld f11, 0(x2) # load 0xd217f3587a98ef1f from memory into f11
fltq.d x4, f8, f11 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f12)
li x15, 0xab292e4cae301dce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe21f35fe50d7c136 # load x3 with value 0xe21f35fe50d7c136
sd x3, 0(x2) # store 0xe21f35fe50d7c136 in memory
fld f10, 0(x2) # load 0xe21f35fe50d7c136 from memory into f10
li x3, 0x4b0c37a8395848f6 # load x3 with value 0x4b0c37a8395848f6
sd x3, 0(x2) # store 0x4b0c37a8395848f6 in memory
fld f12, 0(x2) # load 0x4b0c37a8395848f6 from memory into f12
fltq.d x15, f10, f12 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f13)
li x1, 0x6f9732384e306048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01e4660eef122898 # load x3 with value 0x01e4660eef122898
sd x3, 0(x2) # store 0x01e4660eef122898 in memory
fld f28, 0(x2) # load 0x01e4660eef122898 from memory into f28
li x3, 0x481b3760d408976b # load x3 with value 0x481b3760d408976b
sd x3, 0(x2) # store 0x481b3760d408976b in memory
fld f13, 0(x2) # load 0x481b3760d408976b from memory into f13
fltq.d x1, f28, f13 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f14)
li x24, 0x3cb808860fed920e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4f682efb8143e03 # load x3 with value 0xd4f682efb8143e03
sd x3, 0(x2) # store 0xd4f682efb8143e03 in memory
fld f18, 0(x2) # load 0xd4f682efb8143e03 from memory into f18
li x3, 0xebf91c392c159ace # load x3 with value 0xebf91c392c159ace
sd x3, 0(x2) # store 0xebf91c392c159ace in memory
fld f14, 0(x2) # load 0xebf91c392c159ace from memory into f14
fltq.d x24, f18, f14 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f15)
li x28, 0xb7e9551d563becda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7489bc1e85ea27b # load x3 with value 0xe7489bc1e85ea27b
sd x3, 0(x2) # store 0xe7489bc1e85ea27b in memory
fld f4, 0(x2) # load 0xe7489bc1e85ea27b from memory into f4
li x3, 0x7451ac564632e8d9 # load x3 with value 0x7451ac564632e8d9
sd x3, 0(x2) # store 0x7451ac564632e8d9 in memory
fld f15, 0(x2) # load 0x7451ac564632e8d9 from memory into f15
fltq.d x28, f4, f15 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f16)
li x21, 0x56cb92c49aad9444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc662b00619fa5b1e # load x3 with value 0xc662b00619fa5b1e
sd x3, 0(x2) # store 0xc662b00619fa5b1e in memory
fld f25, 0(x2) # load 0xc662b00619fa5b1e from memory into f25
li x3, 0xc3266b00c9084af5 # load x3 with value 0xc3266b00c9084af5
sd x3, 0(x2) # store 0xc3266b00c9084af5 in memory
fld f16, 0(x2) # load 0xc3266b00c9084af5 from memory into f16
fltq.d x21, f25, f16 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f17)
li x13, 0x42deb76f4455656f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab3c138a9133c5e0 # load x3 with value 0xab3c138a9133c5e0
sd x3, 0(x2) # store 0xab3c138a9133c5e0 in memory
fld f12, 0(x2) # load 0xab3c138a9133c5e0 from memory into f12
li x3, 0x95008bf86b637130 # load x3 with value 0x95008bf86b637130
sd x3, 0(x2) # store 0x95008bf86b637130 in memory
fld f17, 0(x2) # load 0x95008bf86b637130 from memory into f17
fltq.d x13, f12, f17 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0x7439ddedc42d02d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d0c86ae6cbcddd9 # load x3 with value 0x6d0c86ae6cbcddd9
sd x3, 0(x2) # store 0x6d0c86ae6cbcddd9 in memory
fld f23, 0(x2) # load 0x6d0c86ae6cbcddd9 from memory into f23
li x3, 0xc2fc0ea633650391 # load x3 with value 0xc2fc0ea633650391
sd x3, 0(x2) # store 0xc2fc0ea633650391 in memory
fld f18, 0(x2) # load 0xc2fc0ea633650391 from memory into f18
fltq.d x18, f23, f18 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f19)
li x4, 0x5496a2b8e53f6522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27ce1ade714ed054 # load x3 with value 0x27ce1ade714ed054
sd x3, 0(x2) # store 0x27ce1ade714ed054 in memory
fld f10, 0(x2) # load 0x27ce1ade714ed054 from memory into f10
li x3, 0x4096c43e6ef2a900 # load x3 with value 0x4096c43e6ef2a900
sd x3, 0(x2) # store 0x4096c43e6ef2a900 in memory
fld f19, 0(x2) # load 0x4096c43e6ef2a900 from memory into f19
fltq.d x4, f10, f19 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f20)
li x27, 0x44b971eb27813af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cac5971ddf2e66f # load x3 with value 0x4cac5971ddf2e66f
sd x3, 0(x2) # store 0x4cac5971ddf2e66f in memory
fld f5, 0(x2) # load 0x4cac5971ddf2e66f from memory into f5
li x3, 0x7a8676ea356b026c # load x3 with value 0x7a8676ea356b026c
sd x3, 0(x2) # store 0x7a8676ea356b026c in memory
fld f20, 0(x2) # load 0x7a8676ea356b026c from memory into f20
fltq.d x27, f5, f20 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f21)
li x16, 0x037de5fcc717b8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed9c8a0ef715616a # load x3 with value 0xed9c8a0ef715616a
sd x3, 0(x2) # store 0xed9c8a0ef715616a in memory
fld f8, 0(x2) # load 0xed9c8a0ef715616a from memory into f8
li x3, 0xbacf9d0cd16140d5 # load x3 with value 0xbacf9d0cd16140d5
sd x3, 0(x2) # store 0xbacf9d0cd16140d5 in memory
fld f21, 0(x2) # load 0xbacf9d0cd16140d5 from memory into f21
fltq.d x16, f8, f21 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f22)
li x1, 0x4e44fc3d35178393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x652ee394268f4d13 # load x3 with value 0x652ee394268f4d13
sd x3, 0(x2) # store 0x652ee394268f4d13 in memory
fld f18, 0(x2) # load 0x652ee394268f4d13 from memory into f18
li x3, 0x1e79c88f2ee8941d # load x3 with value 0x1e79c88f2ee8941d
sd x3, 0(x2) # store 0x1e79c88f2ee8941d in memory
fld f22, 0(x2) # load 0x1e79c88f2ee8941d from memory into f22
fltq.d x1, f18, f22 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f23)
li x14, 0xdb37abae4fd53370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81a0cf607610f4a5 # load x3 with value 0x81a0cf607610f4a5
sd x3, 0(x2) # store 0x81a0cf607610f4a5 in memory
fld f20, 0(x2) # load 0x81a0cf607610f4a5 from memory into f20
li x3, 0x6525fe185b7859fd # load x3 with value 0x6525fe185b7859fd
sd x3, 0(x2) # store 0x6525fe185b7859fd in memory
fld f23, 0(x2) # load 0x6525fe185b7859fd from memory into f23
fltq.d x14, f20, f23 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f24)
li x3, 0x8eb2432fd001e9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb64f9dd985db42f4 # load x3 with value 0xb64f9dd985db42f4
sd x3, 0(x2) # store 0xb64f9dd985db42f4 in memory
fld f29, 0(x2) # load 0xb64f9dd985db42f4 from memory into f29
li x3, 0x7530d35c55673c56 # load x3 with value 0x7530d35c55673c56
sd x3, 0(x2) # store 0x7530d35c55673c56 in memory
fld f24, 0(x2) # load 0x7530d35c55673c56 from memory into f24
fltq.d x3, f29, f24 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f25)
li x13, 0x2c4bf5ea11d5ab51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eb6454cdb841a63 # load x3 with value 0x3eb6454cdb841a63
sd x3, 0(x2) # store 0x3eb6454cdb841a63 in memory
fld f20, 0(x2) # load 0x3eb6454cdb841a63 from memory into f20
li x3, 0xddd7b6cd08687629 # load x3 with value 0xddd7b6cd08687629
sd x3, 0(x2) # store 0xddd7b6cd08687629 in memory
fld f25, 0(x2) # load 0xddd7b6cd08687629 from memory into f25
fltq.d x13, f20, f25 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f26)
li x20, 0x6b45c473c5cba0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0492e5a9ebdd206 # load x3 with value 0xd0492e5a9ebdd206
sd x3, 0(x2) # store 0xd0492e5a9ebdd206 in memory
fld f9, 0(x2) # load 0xd0492e5a9ebdd206 from memory into f9
li x3, 0x2f3b447b83ac80cb # load x3 with value 0x2f3b447b83ac80cb
sd x3, 0(x2) # store 0x2f3b447b83ac80cb in memory
fld f26, 0(x2) # load 0x2f3b447b83ac80cb from memory into f26
fltq.d x20, f9, f26 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f27)
li x30, 0xab4cd7cbc283b5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f9652c5bb062a1b # load x3 with value 0x7f9652c5bb062a1b
sd x3, 0(x2) # store 0x7f9652c5bb062a1b in memory
fld f18, 0(x2) # load 0x7f9652c5bb062a1b from memory into f18
li x3, 0xc7ebd4749a355508 # load x3 with value 0xc7ebd4749a355508
sd x3, 0(x2) # store 0xc7ebd4749a355508 in memory
fld f27, 0(x2) # load 0xc7ebd4749a355508 from memory into f27
fltq.d x30, f18, f27 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f28)
li x22, 0x702d5b05aa2ce6b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89f4c95524c3d1c2 # load x3 with value 0x89f4c95524c3d1c2
sd x3, 0(x2) # store 0x89f4c95524c3d1c2 in memory
fld f20, 0(x2) # load 0x89f4c95524c3d1c2 from memory into f20
li x3, 0x9f0b4844fd21a720 # load x3 with value 0x9f0b4844fd21a720
sd x3, 0(x2) # store 0x9f0b4844fd21a720 in memory
fld f28, 0(x2) # load 0x9f0b4844fd21a720 from memory into f28
fltq.d x22, f20, f28 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f29)
li x20, 0xff440b9f3d58e9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf57ef31ca1b28d6e # load x3 with value 0xf57ef31ca1b28d6e
sd x3, 0(x2) # store 0xf57ef31ca1b28d6e in memory
fld f8, 0(x2) # load 0xf57ef31ca1b28d6e from memory into f8
li x3, 0x30b2cf5b4c1f0846 # load x3 with value 0x30b2cf5b4c1f0846
sd x3, 0(x2) # store 0x30b2cf5b4c1f0846 in memory
fld f29, 0(x2) # load 0x30b2cf5b4c1f0846 from memory into f29
fltq.d x20, f8, f29 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f30)
li x10, 0x161ecdb916b13c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8795721c854d153a # load x3 with value 0x8795721c854d153a
sd x3, 0(x2) # store 0x8795721c854d153a in memory
fld f1, 0(x2) # load 0x8795721c854d153a from memory into f1
li x3, 0x389c3eeecd7e1669 # load x3 with value 0x389c3eeecd7e1669
sd x3, 0(x2) # store 0x389c3eeecd7e1669 in memory
fld f30, 0(x2) # load 0x389c3eeecd7e1669 from memory into f30
fltq.d x10, f1, f30 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f31)
li x21, 0x3b995a58ec697dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bca00f416f6ad6a # load x3 with value 0x4bca00f416f6ad6a
sd x3, 0(x2) # store 0x4bca00f416f6ad6a in memory
fld f18, 0(x2) # load 0x4bca00f416f6ad6a from memory into f18
li x3, 0xaeceba923cdb9f72 # load x3 with value 0xaeceba923cdb9f72
sd x3, 0(x2) # store 0xaeceba923cdb9f72 in memory
fld f31, 0(x2) # load 0xaeceba923cdb9f72 from memory into f31
fltq.d x21, f18, f31 # perform fcomp-type op

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
