///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaD//WALLY-COV-fcvtmod.w.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.937294
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
li x0, 0xf09f282238620126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb93555932be7638f # load x3 with value 0xb93555932be7638f
sd x3, 0(x2) # store 0xb93555932be7638f in memory
fld f11, 0(x2) # load 0xb93555932be7638f from memory into f11
fcvtmod.w.d x0, f11, rtz # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x100f3a6b9a149ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc341077d85b08a6 # load x3 with value 0xcc341077d85b08a6
sd x3, 0(x2) # store 0xcc341077d85b08a6 in memory
fld f7, 0(x2) # load 0xcc341077d85b08a6 from memory into f7
fcvtmod.w.d x1, f7, rtz # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xcbc1fe50d4daf05e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x737157020ea4dc44 # load x3 with value 0x737157020ea4dc44
sd x3, 0(x2) # store 0x737157020ea4dc44 in memory
fld f2, 0(x2) # load 0x737157020ea4dc44 from memory into f2
fcvtmod.w.d x2, f2, rtz # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf143d6b5bd567162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5c32c68988aca93f # load x3 with value 0x5c32c68988aca93f
sd x3, 0(x2) # store 0x5c32c68988aca93f in memory
fld f2, 0(x2) # load 0x5c32c68988aca93f from memory into f2
fcvtmod.w.d x3, f2, rtz # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xd38e63a6592d19b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3c43a84e5bb7fc77 # load x3 with value 0x3c43a84e5bb7fc77
sd x3, 0(x2) # store 0x3c43a84e5bb7fc77 in memory
fld f22, 0(x2) # load 0x3c43a84e5bb7fc77 from memory into f22
fcvtmod.w.d x4, f22, rtz # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x827a10187a68878c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4df1ca23e119f55d # load x3 with value 0x4df1ca23e119f55d
sd x3, 0(x2) # store 0x4df1ca23e119f55d in memory
fld f6, 0(x2) # load 0x4df1ca23e119f55d from memory into f6
fcvtmod.w.d x5, f6, rtz # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xc288eb62c932e966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb7a279d02ed277b0 # load x3 with value 0xb7a279d02ed277b0
sd x3, 0(x2) # store 0xb7a279d02ed277b0 in memory
fld f8, 0(x2) # load 0xb7a279d02ed277b0 from memory into f8
fcvtmod.w.d x6, f8, rtz # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x4000d56ac6fa7a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x330fd67467623b50 # load x3 with value 0x330fd67467623b50
sd x3, 0(x2) # store 0x330fd67467623b50 in memory
fld f23, 0(x2) # load 0x330fd67467623b50 from memory into f23
fcvtmod.w.d x7, f23, rtz # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6b88d8a8a9c67028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2d2e30b73af45921 # load x3 with value 0x2d2e30b73af45921
sd x3, 0(x2) # store 0x2d2e30b73af45921 in memory
fld f27, 0(x2) # load 0x2d2e30b73af45921 from memory into f27
fcvtmod.w.d x8, f27, rtz # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x99ae20a56fa46838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfa4bc2832715b95 # load x3 with value 0xbfa4bc2832715b95
sd x3, 0(x2) # store 0xbfa4bc2832715b95 in memory
fld f29, 0(x2) # load 0xbfa4bc2832715b95 from memory into f29
fcvtmod.w.d x9, f29, rtz # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x028b1901457fa23b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xed6460ffe64d940b # load x3 with value 0xed6460ffe64d940b
sd x3, 0(x2) # store 0xed6460ffe64d940b in memory
fld f25, 0(x2) # load 0xed6460ffe64d940b from memory into f25
fcvtmod.w.d x10, f25, rtz # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x310181f2071b060a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf646990f1692062f # load x3 with value 0xf646990f1692062f
sd x3, 0(x2) # store 0xf646990f1692062f in memory
fld f26, 0(x2) # load 0xf646990f1692062f from memory into f26
fcvtmod.w.d x11, f26, rtz # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x9bde2043e90bd0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe83d1dd7f21d3094 # load x3 with value 0xe83d1dd7f21d3094
sd x3, 0(x2) # store 0xe83d1dd7f21d3094 in memory
fld f9, 0(x2) # load 0xe83d1dd7f21d3094 from memory into f9
fcvtmod.w.d x12, f9, rtz # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x04e3f7698a649bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x53f1d110f9888122 # load x3 with value 0x53f1d110f9888122
sd x3, 0(x2) # store 0x53f1d110f9888122 in memory
fld f7, 0(x2) # load 0x53f1d110f9888122 from memory into f7
fcvtmod.w.d x13, f7, rtz # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0555ce8144272bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2ba3baa348db5c4a # load x3 with value 0x2ba3baa348db5c4a
sd x3, 0(x2) # store 0x2ba3baa348db5c4a in memory
fld f23, 0(x2) # load 0x2ba3baa348db5c4a from memory into f23
fcvtmod.w.d x14, f23, rtz # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf8e8018aef285f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x641224fbc2043232 # load x3 with value 0x641224fbc2043232
sd x3, 0(x2) # store 0x641224fbc2043232 in memory
fld f4, 0(x2) # load 0x641224fbc2043232 from memory into f4
fcvtmod.w.d x15, f4, rtz # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb711f0716ba7fdcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x97af5443d47ebddd # load x3 with value 0x97af5443d47ebddd
sd x3, 0(x2) # store 0x97af5443d47ebddd in memory
fld f8, 0(x2) # load 0x97af5443d47ebddd from memory into f8
fcvtmod.w.d x16, f8, rtz # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xad6fa9ac8bf8000e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x60b1db79bdd9cd4a # load x3 with value 0x60b1db79bdd9cd4a
sd x3, 0(x2) # store 0x60b1db79bdd9cd4a in memory
fld f3, 0(x2) # load 0x60b1db79bdd9cd4a from memory into f3
fcvtmod.w.d x17, f3, rtz # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x5f79e8f963b0b6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe0070f2228ba606d # load x3 with value 0xe0070f2228ba606d
sd x3, 0(x2) # store 0xe0070f2228ba606d in memory
fld f9, 0(x2) # load 0xe0070f2228ba606d from memory into f9
fcvtmod.w.d x18, f9, rtz # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x512c0825ccc9a777 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac69d66a7dc5edf9 # load x3 with value 0xac69d66a7dc5edf9
sd x3, 0(x2) # store 0xac69d66a7dc5edf9 in memory
fld f5, 0(x2) # load 0xac69d66a7dc5edf9 from memory into f5
fcvtmod.w.d x19, f5, rtz # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x22d19f634b4f0f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x66a00a2e792c81e2 # load x3 with value 0x66a00a2e792c81e2
sd x3, 0(x2) # store 0x66a00a2e792c81e2 in memory
fld f8, 0(x2) # load 0x66a00a2e792c81e2 from memory into f8
fcvtmod.w.d x20, f8, rtz # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x259e8c6180c6e927 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3227aa65dd9eb11f # load x3 with value 0x3227aa65dd9eb11f
sd x3, 0(x2) # store 0x3227aa65dd9eb11f in memory
fld f31, 0(x2) # load 0x3227aa65dd9eb11f from memory into f31
fcvtmod.w.d x21, f31, rtz # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8a7edb8d1de01bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x522d1fa21fdb9799 # load x3 with value 0x522d1fa21fdb9799
sd x3, 0(x2) # store 0x522d1fa21fdb9799 in memory
fld f27, 0(x2) # load 0x522d1fa21fdb9799 from memory into f27
fcvtmod.w.d x22, f27, rtz # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x624bf58e676b454e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x55d49983ead67cb2 # load x3 with value 0x55d49983ead67cb2
sd x3, 0(x2) # store 0x55d49983ead67cb2 in memory
fld f20, 0(x2) # load 0x55d49983ead67cb2 from memory into f20
fcvtmod.w.d x23, f20, rtz # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xcedbd1c239b31145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c9e60cdd27234aa # load x3 with value 0x8c9e60cdd27234aa
sd x3, 0(x2) # store 0x8c9e60cdd27234aa in memory
fld f10, 0(x2) # load 0x8c9e60cdd27234aa from memory into f10
fcvtmod.w.d x24, f10, rtz # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x1f43e3443f7a6606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e8b95db839fc455 # load x3 with value 0x5e8b95db839fc455
sd x3, 0(x2) # store 0x5e8b95db839fc455 in memory
fld f14, 0(x2) # load 0x5e8b95db839fc455 from memory into f14
fcvtmod.w.d x25, f14, rtz # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe29d900d6128ebae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x24507a26b6861452 # load x3 with value 0x24507a26b6861452
sd x3, 0(x2) # store 0x24507a26b6861452 in memory
fld f4, 0(x2) # load 0x24507a26b6861452 from memory into f4
fcvtmod.w.d x26, f4, rtz # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf3c9d315a6c42f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8bf1928c592d79c8 # load x3 with value 0x8bf1928c592d79c8
sd x3, 0(x2) # store 0x8bf1928c592d79c8 in memory
fld f23, 0(x2) # load 0x8bf1928c592d79c8 from memory into f23
fcvtmod.w.d x27, f23, rtz # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x27e86b70fadeee22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xafcb945c1518216b # load x3 with value 0xafcb945c1518216b
sd x3, 0(x2) # store 0xafcb945c1518216b in memory
fld f15, 0(x2) # load 0xafcb945c1518216b from memory into f15
fcvtmod.w.d x28, f15, rtz # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xeb12ec1c8d7a16fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb7fff7fcf1e710a # load x3 with value 0xdb7fff7fcf1e710a
sd x3, 0(x2) # store 0xdb7fff7fcf1e710a in memory
fld f26, 0(x2) # load 0xdb7fff7fcf1e710a from memory into f26
fcvtmod.w.d x29, f26, rtz # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xb5e8ace26e1abbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x08300c65ae542ea6 # load x3 with value 0x08300c65ae542ea6
sd x3, 0(x2) # store 0x08300c65ae542ea6 in memory
fld f25, 0(x2) # load 0x08300c65ae542ea6 from memory into f25
fcvtmod.w.d x30, f25, rtz # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa5c5c048bd99dce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7033e656c2910df4 # load x3 with value 0x7033e656c2910df4
sd x3, 0(x2) # store 0x7033e656c2910df4 in memory
fld f15, 0(x2) # load 0x7033e656c2910df4 from memory into f15
fcvtmod.w.d x31, f15, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x20, 0xdd20860550a25e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fcvtmod.w.d x20, f16, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x13, 0xd69ad45eca0f24af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fcvtmod.w.d x13, f12, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x4, 0x90b8c4120699e210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fcvtmod.w.d x4, f29, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x5, 0xdd5f7dc7e55c10ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fcvtmod.w.d x5, f13, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x4, 0xfa27ce5e7efe25bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fcvtmod.w.d x4, f3, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x2, 0x374fed38d71909dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fcvtmod.w.d x2, f23, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x26, 0x56fc8b589554fad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fcvtmod.w.d x26, f1, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x22, 0x6550e80817eb9184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fcvtmod.w.d x22, f24, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x10, 0x9d9166d2faf253a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fcvtmod.w.d x10, f7, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x7, 0xf64a7741b63574c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fcvtmod.w.d x7, f26, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x12, 0x1e5b0e8050bf4c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fcvtmod.w.d x12, f1, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x14, 0x4813a7e40fca613e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fcvtmod.w.d x14, f24, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x17, 0x2d1a3d8f55cec036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fcvtmod.w.d x17, f14, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x22, 0xf78a9ed18ec92cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fcvtmod.w.d x22, f30, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x22, 0x26894a5bf48b4196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fcvtmod.w.d x22, f15, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x25, 0x9bb6b29442c77439 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fcvtmod.w.d x25, f9, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x17, 0x302b81a694cba75a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fcvtmod.w.d x17, f10, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x21, 0x93156101c29823f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fcvtmod.w.d x21, f4, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x22, 0xacde82553e6fa0ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fcvtmod.w.d x22, f31, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x18, 0x1084cfdbe4f189ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
fcvtmod.w.d x18, f16, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x21, 0x01ece280cd754e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fcvtmod.w.d x21, f15, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x1, 0x18ff111b5ce4ada8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fcvtmod.w.d x1, f5, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x1, 0xa692b3f6871614ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
fcvtmod.w.d x1, f22, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x8, 0x82c9fe834d0e1ade # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fcvtmod.w.d x8, f11, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x23, 0xab2aa17d0bbb8a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
fcvtmod.w.d x23, f3, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x23, 0x584e1a9f1af1cd84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fcvtmod.w.d x23, f7, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x5, 0x55f83eca12086dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x81cb66c46448651b # load x3 with value 0x81cb66c46448651b
sd x3, 0(x2) # store 0x81cb66c46448651b in memory
fld f0, 0(x2) # load 0x81cb66c46448651b from memory into f0
fcvtmod.w.d x5, f0, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x12, 0x7ad839990c89a2df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2c39bcf5e66d6438 # load x3 with value 0x2c39bcf5e66d6438
sd x3, 0(x2) # store 0x2c39bcf5e66d6438 in memory
fld f1, 0(x2) # load 0x2c39bcf5e66d6438 from memory into f1
fcvtmod.w.d x12, f1, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x14, 0x76ead263c440f293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9082bb196f10a0c9 # load x3 with value 0x9082bb196f10a0c9
sd x3, 0(x2) # store 0x9082bb196f10a0c9 in memory
fld f2, 0(x2) # load 0x9082bb196f10a0c9 from memory into f2
fcvtmod.w.d x14, f2, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x30, 0x9ebfed9eb538a586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x82284e57ed4dc5ce # load x3 with value 0x82284e57ed4dc5ce
sd x3, 0(x2) # store 0x82284e57ed4dc5ce in memory
fld f3, 0(x2) # load 0x82284e57ed4dc5ce from memory into f3
fcvtmod.w.d x30, f3, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x19, 0x7d4cbfbe4a075066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x19801871e7c57d66 # load x3 with value 0x19801871e7c57d66
sd x3, 0(x2) # store 0x19801871e7c57d66 in memory
fld f4, 0(x2) # load 0x19801871e7c57d66 from memory into f4
fcvtmod.w.d x19, f4, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x9, 0xc0211e9817766ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff6bc5aea0908500 # load x3 with value 0xff6bc5aea0908500
sd x3, 0(x2) # store 0xff6bc5aea0908500 in memory
fld f5, 0(x2) # load 0xff6bc5aea0908500 from memory into f5
fcvtmod.w.d x9, f5, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0x35bba07d9d423e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x756f61263751a2a9 # load x3 with value 0x756f61263751a2a9
sd x3, 0(x2) # store 0x756f61263751a2a9 in memory
fld f6, 0(x2) # load 0x756f61263751a2a9 from memory into f6
fcvtmod.w.d x31, f6, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0x848f0034943994ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5867e1cda136c064 # load x3 with value 0x5867e1cda136c064
sd x3, 0(x2) # store 0x5867e1cda136c064 in memory
fld f7, 0(x2) # load 0x5867e1cda136c064 from memory into f7
fcvtmod.w.d x23, f7, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0xcf5949e338b83c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e95e46250fd35b1 # load x3 with value 0x8e95e46250fd35b1
sd x3, 0(x2) # store 0x8e95e46250fd35b1 in memory
fld f8, 0(x2) # load 0x8e95e46250fd35b1 from memory into f8
fcvtmod.w.d x18, f8, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x5, 0xd6e0f23ebe9a66bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6e703f20548e4d0c # load x3 with value 0x6e703f20548e4d0c
sd x3, 0(x2) # store 0x6e703f20548e4d0c in memory
fld f9, 0(x2) # load 0x6e703f20548e4d0c from memory into f9
fcvtmod.w.d x5, f9, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x3, 0x21e756f270a9786a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4743b0e8b2fc4d32 # load x3 with value 0x4743b0e8b2fc4d32
sd x3, 0(x2) # store 0x4743b0e8b2fc4d32 in memory
fld f10, 0(x2) # load 0x4743b0e8b2fc4d32 from memory into f10
fcvtmod.w.d x3, f10, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x26, 0xb65a1452885ad672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cc97b8aea390762 # load x3 with value 0x2cc97b8aea390762
sd x3, 0(x2) # store 0x2cc97b8aea390762 in memory
fld f11, 0(x2) # load 0x2cc97b8aea390762 from memory into f11
fcvtmod.w.d x26, f11, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x4, 0x298cadf1083e0031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x88c30b1acb56757e # load x3 with value 0x88c30b1acb56757e
sd x3, 0(x2) # store 0x88c30b1acb56757e in memory
fld f12, 0(x2) # load 0x88c30b1acb56757e from memory into f12
fcvtmod.w.d x4, f12, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x1, 0x9211ec65bb62ac8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x542b8a655193d003 # load x3 with value 0x542b8a655193d003
sd x3, 0(x2) # store 0x542b8a655193d003 in memory
fld f13, 0(x2) # load 0x542b8a655193d003 from memory into f13
fcvtmod.w.d x1, f13, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x22, 0x29c4264a8b0720e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeffedcfafe8b1ef2 # load x3 with value 0xeffedcfafe8b1ef2
sd x3, 0(x2) # store 0xeffedcfafe8b1ef2 in memory
fld f14, 0(x2) # load 0xeffedcfafe8b1ef2 from memory into f14
fcvtmod.w.d x22, f14, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x11, 0xb9502deca67b6cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x261c5dce2356438e # load x3 with value 0x261c5dce2356438e
sd x3, 0(x2) # store 0x261c5dce2356438e in memory
fld f15, 0(x2) # load 0x261c5dce2356438e from memory into f15
fcvtmod.w.d x11, f15, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x24, 0x17e2b174d2baaa39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x63126d8378f1aa9d # load x3 with value 0x63126d8378f1aa9d
sd x3, 0(x2) # store 0x63126d8378f1aa9d in memory
fld f16, 0(x2) # load 0x63126d8378f1aa9d from memory into f16
fcvtmod.w.d x24, f16, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x7, 0xb398a46e4da82cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2ed8af9c78506852 # load x3 with value 0x2ed8af9c78506852
sd x3, 0(x2) # store 0x2ed8af9c78506852 in memory
fld f17, 0(x2) # load 0x2ed8af9c78506852 from memory into f17
fcvtmod.w.d x7, f17, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x7, 0xc358d8fee4e861f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f5a0e50091f0287 # load x3 with value 0x3f5a0e50091f0287
sd x3, 0(x2) # store 0x3f5a0e50091f0287 in memory
fld f18, 0(x2) # load 0x3f5a0e50091f0287 from memory into f18
fcvtmod.w.d x7, f18, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x10, 0x47ffe7beac620016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7376c312354ca4c8 # load x3 with value 0x7376c312354ca4c8
sd x3, 0(x2) # store 0x7376c312354ca4c8 in memory
fld f19, 0(x2) # load 0x7376c312354ca4c8 from memory into f19
fcvtmod.w.d x10, f19, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x5, 0x0954eb77789c5fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1eae645498c69f22 # load x3 with value 0x1eae645498c69f22
sd x3, 0(x2) # store 0x1eae645498c69f22 in memory
fld f20, 0(x2) # load 0x1eae645498c69f22 from memory into f20
fcvtmod.w.d x5, f20, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0xa6960db8e399f857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x03201ec845d82465 # load x3 with value 0x03201ec845d82465
sd x3, 0(x2) # store 0x03201ec845d82465 in memory
fld f21, 0(x2) # load 0x03201ec845d82465 from memory into f21
fcvtmod.w.d x8, f21, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0x0380eb4b2961c1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16240b43872d524f # load x3 with value 0x16240b43872d524f
sd x3, 0(x2) # store 0x16240b43872d524f in memory
fld f22, 0(x2) # load 0x16240b43872d524f from memory into f22
fcvtmod.w.d x5, f22, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x7, 0x2d91c96fec4c10c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x780790004d45c8e1 # load x3 with value 0x780790004d45c8e1
sd x3, 0(x2) # store 0x780790004d45c8e1 in memory
fld f23, 0(x2) # load 0x780790004d45c8e1 from memory into f23
fcvtmod.w.d x7, f23, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x2, 0x8e03345a354404d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f2ce99684d2f4b9 # load x3 with value 0x3f2ce99684d2f4b9
sd x3, 0(x2) # store 0x3f2ce99684d2f4b9 in memory
fld f24, 0(x2) # load 0x3f2ce99684d2f4b9 from memory into f24
fcvtmod.w.d x2, f24, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x2, 0xcd0fba02a7a6b716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb9f4b5e8a54b3003 # load x3 with value 0xb9f4b5e8a54b3003
sd x3, 0(x2) # store 0xb9f4b5e8a54b3003 in memory
fld f25, 0(x2) # load 0xb9f4b5e8a54b3003 from memory into f25
fcvtmod.w.d x2, f25, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x24, 0x5b914fcfd8fb6415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeceb8519a21c07c2 # load x3 with value 0xeceb8519a21c07c2
sd x3, 0(x2) # store 0xeceb8519a21c07c2 in memory
fld f26, 0(x2) # load 0xeceb8519a21c07c2 from memory into f26
fcvtmod.w.d x24, f26, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0x0f25b42528f9612e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfbb536f676cb0d82 # load x3 with value 0xfbb536f676cb0d82
sd x3, 0(x2) # store 0xfbb536f676cb0d82 in memory
fld f27, 0(x2) # load 0xfbb536f676cb0d82 from memory into f27
fcvtmod.w.d x29, f27, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0x4ee9bc03dbb77906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x73fe4c017244144e # load x3 with value 0x73fe4c017244144e
sd x3, 0(x2) # store 0x73fe4c017244144e in memory
fld f28, 0(x2) # load 0x73fe4c017244144e from memory into f28
fcvtmod.w.d x28, f28, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x5, 0x627da9ff2caf6a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x213c4915702bf051 # load x3 with value 0x213c4915702bf051
sd x3, 0(x2) # store 0x213c4915702bf051 in memory
fld f29, 0(x2) # load 0x213c4915702bf051 from memory into f29
fcvtmod.w.d x5, f29, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x2, 0x82c36976acff10da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x155971629e22d26f # load x3 with value 0x155971629e22d26f
sd x3, 0(x2) # store 0x155971629e22d26f in memory
fld f30, 0(x2) # load 0x155971629e22d26f from memory into f30
fcvtmod.w.d x2, f30, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x8, 0xcd46739b84b361bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfddb7e82c083ab2a # load x3 with value 0xfddb7e82c083ab2a
sd x3, 0(x2) # store 0xfddb7e82c083ab2a in memory
fld f31, 0(x2) # load 0xfddb7e82c083ab2a from memory into f31
fcvtmod.w.d x8, f31, rtz # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
