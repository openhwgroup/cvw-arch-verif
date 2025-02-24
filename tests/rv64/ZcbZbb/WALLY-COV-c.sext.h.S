///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZcbZbb//WALLY-COV-c.sext.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.417305
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x7efd6cf4acc50dc5)
li x6, 0x8cbe2ba19860eb75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7efd6cf4acc50dc5 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x35e6730897bb6751)
li x27, 0xe3716c46daff5326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xca198cf7684498af # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1699205c24cb49e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x08a7cc6b489f4229 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x07c0cd539513a38b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x350b9fa2235bea27 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2e99ab7210bde5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfb6abe3d225d3298 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x7c1e904e4dd1eed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0e4e6345bc27b1f2 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7843e05011ab0ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7e3d843407d46e22 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2aca0ce7e00e0166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b6f8e354e342edc # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0cf517c0ff2d5487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x132971333c32e651 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x455e19cd228f5c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x33e3aaa9b6f00011 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xcf15b6dcc19847ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x88865723ccbcf1a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x193ba61e016fff36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x5950cb97c590f181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0xb062e1e5c8961a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0x66f7e74467eab8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0xf747a332a0bd890e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x5181551cfab6be18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0xaec8b750cedbff04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x13, 0x43cb29bc6ed1c7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x18, 0xe55a9eb3ab2c5d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x8, 0x4eb40b4f12f3cbbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x20, 0xdc50c0534711d0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x23, 0xaa15ff5be2ec1ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x25, 0x47490976e2f424d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x17, 0x53246c50dc180d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x19, 0xe634b607c6fcb14c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x24, 0x8e1d230c55f2c7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x6202018ccec86658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x31, 0x8ee82b704c064acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x10, 0xd45858653f72ea06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x31, 0xa662efc8e4c84a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x21, 0x0eaccb2b675e0dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x15, 0x210eaf553aeaf238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x9, 0xbe89f2b933a83054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x25, 0xbc868241aa21249d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x20, 0xb9820317bc002eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x19, 0x91597f90f1372a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x4, 0xb73cd1aa4cf5458f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x3c60dbfab48f0403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x2, 0xb26bb9d223cb8d03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x7, 0xa36af88a3e6d9c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x2, 0xc0a470214c41507b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x3, 0x38be4bb81de21055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x28, 0x72f7bec5ccb8885e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x19, 0x20779e8fa8a3f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0xc7f656769ac24655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x18, 0x609dd5d83c7b7620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x1aa4720303af370f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xac10fb9496c8d884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf403d87e64b604e0 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x49b8d9923bc0c8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf99488a1371a1c30 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x58199bbc2de96c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9e85205889da8c52 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xfc259a8cc5d49c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5de7eb0e9c82c6c8 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0xbfe4f6d9401d32f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x817c8015686a1f14 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0xc7851af1a95f9835 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb72aac73ef69a4df # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x2999214c2a41fcb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x526f698f0be77494 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x8f850850f0251aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcbd74a9160ec3e50 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
