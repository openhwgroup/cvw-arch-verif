///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 23 March 2025
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file 
// except in compliance with the License, or, at your option, the Apache License version 2.0. You 
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the 
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
// either express or implied. See the License for the specific language governing permissions 
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_SSSTRICT
covergroup Ssstrict_mcsr_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints
    nonzerord: coverpoint ins.current.insn[11:7] {
        type_option.weight = 0;
        bins nonzero = { [1:$] }; // rd != 0
    }
    csrr: coverpoint ins.current.insn  {
        wildcard bins csrr = {32'b????????????_00000_010_?????_1110011};
    }
    csrrw: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_001_?????_1110011}; 
    }
    csr: coverpoint ins.current.insn[31:20]  {
        bins user_std0[] = {[12'h000:12'h0FF]};
        bins super_std0[] = {[12'h100:12'h1FF]};
        bins hyper_std0[] = {[12'h200:12'h2FF]};
        bins mach_std0[] = {[12'h300:12'h3FF]};
        bins user_std1[] = {[12'h400:12'h4FF]};
        bins super_std1[] = {[12'h500:12'h5BF]};
        ignore_bins super_custom1 = {[12'h5C0:12'h5FF]};
        bins hyper_std1[] = {[12'h600:12'h6BF]};
        ignore_bins hyper_custom1 = {[12'h6C0:12'h6FF]};
        bins mach_std1[] = {[12'h700:12'h7AF]};
        ignore_bins mach_debug = {[12'h7A0:12'h7AF]}; // toggling debug registers could do weird stuff
        bins debug_only[] = {[12'h7B0:12'h7BF]}; // access to debug mode registers raises illegal instruction even in machine mode
        ignore_bins mach_custom1 = {[12'h7C0:12'h7FF]};
        ignore_bins user_custom2 = {[12'h800:12'h8FF]};
        bins super_std2[] = {[12'h900:12'h9BF]};
        ignore_bins super_custom22 = {[12'h9C0:12'h9FF]};
        bins hyper_std2[] = {[12'hA00:12'hABF]};
        ignore_bins hyper_custom22 = {[12'hAC0:12'hAFF]};
        bins mach_std2[] = {[12'hB00:12'hBBF]};
        ignore_bins mach_custom2 = {[12'hBC0:12'hBFF]};
        bins user_std3[] = {[12'hC00:12'hCBF]};
        ignore_bins user_custom3 = {[12'hCC0:12'hCFF]};
        bins super_std3[] = {[12'hD00:12'hDBF]};
        ignore_bins super_custom3 = {[12'hDC0:12'hDFF]};
        bins hyper_std3[] = {[12'hE00:12'hEBF]};
        ignore_bins hyper_custom3 = {[12'hEC0:12'hEFF]};
        bins mach_std3[] = {[12'hF00:12'hFBF]};
        ignore_bins mach_custom3 = {[12'hFC0:12'hFFF]};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }
    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }

    walking_ones: coverpoint $clog2(ins.current.rs1_val) iff ($onehot(ins.current.rs1_val)) { 
        bins b_1[] = { [0:`XLEN-1] };
    }

    mcsrname : coverpoint ins.current.insn[31:20] {
        bins mstatus  = {12'h300};
        bins misa     = {12'h301};
        bins medeleg  = {12'h302};
        bins mideleg  = {12'h303};
        bins mie      = {12'h304};
        bins mtvec    = {12'h305};
        bins mscratch = {12'h340};
        bins mepc     = {12'h341};
        bins mcause   = {12'h342};
        bins mtval    = {12'h343};
        bins mip      = {12'h344};
        bins menvcfg  = {12'h30A};
        bins mseccfg  = {12'h747};
        `ifdef XLEN32
            bins mstatush = {12'h310};
            bins medelegh = {12'h312};
            bins menvcfgh = {12'h31A};
            bins mseccfgh = {12'h757};
        `endif
    }
    csrop: coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1110011) {
        bins csrrs = {3'b010};
        bins csrrc = {3'b011};
    }
    
    // main coverpoints
    cp_csrr:         cross priv_mode_msu, csrr,     csr,   nonzerord;   // CSR read of all 4096 registers
    cp_csrw_corners: cross priv_mode_msu, csrrw,    csr,   rs1_corners; // CSR write of all 0s / all 1s to all 4096 registers
    cp_csrcs:        cross priv_mode_msu, csrop,    csr,   rs1_ones;    // CSR clear and set of all bits of all registers
    cp_mcsrwalk :    cross priv_mode_msu, mcsrname, csrop, walking_ones;
endgroup

covergroup Ssstrict_instr_cg with function sample(ins_t ins);
    option.per_instance = 0; 
    
    cp_illegal : coverpoint ins.current.insn { // illegal in RVA22S64; will trap if not in an implemented extension
        // wildcard bins op2  = {32'b?????????????????????????_0001011}; // unused ops custom-0
        wildcard bins op7  = {32'b?????????????????????????_0011111}; // unused ops, reserved for 48-bit
        // wildcard bins op10 = {32'b?????????????????????????_0101011}; // unused ops custom-1
        wildcard bins op15 = {32'b?????????????????????????_0111111}; // unused ops, reserved for 64-bit
        wildcard bins op21 = {32'b?????????????????????????_1010111}; // vector ops
        // wildcard bins op22 = {32'b?????????????????????????_1011011}; // unused ops custom-2/rv128
        wildcard bins op23 = {32'b?????????????????????????_1011111}; // unused ops, reserved for 48-bit
        wildcard bins op26 = {32'b?????????????????????????_1101011}; // reserved
        wildcard bins op29 = {32'b?????????????????????????_1110111}; // VE vector ops
        // wildcard bins op30 = {32'b?????????????????????????_1111011}; // unused ops custom-2/rv128
        wildcard bins op31 = {32'b?????????????????????????_1111111}; // unused ops, reserved for 80+ bit
    }
    // Loads op = 0000011
    cp_load : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0000011) { 
        // Check all 8 types of loads, some illegal in rv32/always
    }
    // FP Loads op = 0000111
    cp_fload : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0000111) { 
        // Check all 8 types of fp Loads, some illegal in various combinations of F/D/Q/Zfh
    }
    // fences/cbo op = 0001111
    cp_fence_cbo : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0001111) { 
        // Check all 8 types of fences: 3-7 should be illegal
    }    
    // cbo immediate
    cp_cbo_immediate : coverpoint ins.current.insn[31:20] iff (ins.current.insn[6:0] == 7'b0001111 & ins.current.insn[11:7] == 5'b000 & ins.current.insn[14:12] == 3'b010) {
        // check all 2^12 types of cbo; only 0, 1, 2, and 4 should be legal
    }
    cp_cbo_rd : coverpoint ins.current.insn[11:7] iff (ins.current.insn[6:0] == 7'b0001111 & ins.current.insn[14:12] == 3'b010) {
        // check all 2^5 rd for cbo instructions; only 0 should be legal
    }
    // I-type instructions
    cp_Itype : coverpoint {ins.current.insn[14], ins.current.insn[31:20]} iff (ins.current.insn[6:0] == 7'b0010011 & ins.current.insn[13:12] == 2'b01) { 
        // Exhaustive test of 2 * 2^12 complicated bins for I-type instructions with op = 00100011 and funct3 = 1 or 5, and any imm_11:0
        // includes integer shifts, Zbb, Zbs, Zbkb, Zknd, Zkne, Zknh
    }
    cp_aes64ks1i : coverpoint ins.current.insn[24:20] iff (ins.current.insn[6:0] == 7'b0010011 & ins.current.insn[14:12] == 3'b001 & ins.current.insn[31:25] == 7'b0011000) {
        // Exhaustively cover all rs2 fields of aes64ks1i to exercise illegal bit 4 or rnum
    }

    // RV64IW instruction space: op = 0011011
    cp_IWtype : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0011011) { 
        // exercise all 8 bins.  All are illegal in rv32
        // bin 0 is legal addiw in RV64I
        // bins 1 and 5 has some legal funct values
    }
    // RV64IW shifts with op = 001101, funct3 = 1 or 5
    cp_IWshift : coverpoint {ins.current.insn[14], ins.current.insn[31:25]} iff (ins.current.insn[6:0] == 7'b0011011 & ins.current.insn[13:12] == 2'b01) { 
        // exercise all 2 * 128 bins of funct7 for funct3 = 1/5
    }
    // Stores op = 0100011
    cp_store : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0100011) { 
        // Check all 8 types of stores, some illegal in rv32/always
    }
    // FP Loads op = 0100111
    cp_fstore : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0100111) { 
        // Check all 8 types of fp stores, some illegal in various combinations of F/D/Q/Zfh
    }
    // Atomic op = 0101111
    cp_atomic_funct3 : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b0101111) { 
        // Check all 8 types of atomic funct3; only funct3 = 2 is legal, and only when A supported
    }
    cp_atomic_funct7 : coverpoint {ins.current.insn[12], ins.current.insn[31:27]} iff (ins.current.insn[6:0] == 7'b0101111 & ins.current.insn[14:13] == 3'b01) { 
        // Check all 2 flavors (w/d) * 32 flavors of atomics
    }
    cp_lrsc : coverpoint {ins.current.insn[12], ins.current.insn[24:20]} iff (ins.current.insn[6:0] == 7'b0101111 & ins.current.insn[14:13] == 2'b01 & ins.current.insn[31:27] == 5'b00010) { 
        // Check all 2 flavors (w/d) * 2^5 rd values; only rs2 = 0 should be legal
    }
    // R-type op = 0110011
    cp_rtype : coverpoint {ins.current.insn[14:12], ins.current.insn[31:25]} iff (ins.current.insn[6:0] == 7'b0110011) {
        // Exhaustive test of 2^3 * 2^7 complicated bins for R-type instructions
        // includes I, M, Zb*, Zicond, Zbkb, Zknd, Zkne, Zknh
    }
    // RW-type op = 0111011
    cp_rwtype : coverpoint {ins.current.insn[14:12], ins.current.insn[31:25]} iff (ins.current.insn[6:0] == 7'b0111011) {
        // Exhaustive test of 2^3 * 2^7 complicated bins for RW-type instructions
        // includes RV64IW, Zext.h
    }
    // Float op = 1010011
    cp_ftype : coverpoint {ins.current.insn[14:12], ins.current.insn[31:27]} iff (ins.current.insn[6:0] == 7'b1010011) {
        // Exhaustive test of 2^3 * 2^5 complicated bins for floating-point instructions
        // including illegal functions and illegal rounding modes (5/6)
    }
    cp_fsqrt : coverpoint ins.current.insn[24:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b01011) {
        // Exhaustive test of 2^5 encodings; only 00000 is legal
    }
    cp_fclass : coverpoint ins.current.insn[24:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11100 & ins.current.insn[14:12] == 3'b001) {
        // Exhaustive test of 2^5 encodings; only 00000 is legal
    }
    cp_fcvtif : coverpoint ins.current.insn[24:22] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11000) {
        // Exhaustive test of 2^3 encodings; only 000 is legal
    }
    cp_fcvtif_fmt : coverpoint {ins.current.insn[26:25], ins.current.insn[21:20]} iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11000 & ins.current.insn[24:22] == 3'b000) {
        // Exhaustive test of 2^4 encodings of formats
    }
    cp_fcvtfi : coverpoint ins.current.insn[24:22] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11010) {
        // Exhaustive test of 2^3 encodings; only 000 is legal
    }
    cp_fcvtfi_fmt : coverpoint {ins.current.insn[26:25], ins.current.insn[21:20]} iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11010 & ins.current.insn[24:22] == 3'b000) {
        // Exhaustive test of 2^4 encodings of formats
    }
    cp_fcvtff : coverpoint ins.current.insn[24:22] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b01000) {
        // Exhaustive test of 2^3 encodings; only 000 is legal
    }
    cp_fcvtff_fmt : coverpoint {ins.current.insn[26:25], ins.current.insn[24:20]} iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b01000) {
        // Exhaustive test of 2^7 encodings; only rs2 = 00000, 00100, 00101 are legal fcvt, fround
    }
    cp_fmvif : coverpoint ins.current.insn[26:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11100 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 2^2 formats * 2^5 encodings; only 00000 is legal
    }
    cp_fmvfi : coverpoint ins.current.insn[26:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11110 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 2^2 formats * 2^5 encodings; only rs2 = 00000 is legal
    }
    cp_fli : coverpoint ins.current.insn[26:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11110 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 2^2 formats * 2^5 encodings; only rs2 = 00001 is legal
    }
    cp_fmvh : coverpoint ins.current.insn[26:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11100 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 2^2 formats * 2^5 encodings; only rs2 = 00001 is possibly legal
    }
     cp_fmvp : coverpoint ins.current.insn[26:25] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11100 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 4 encodings; only 01 and 11 are possibly legal
    }
    cp_cvtmodwd : coverpoint ins.current.insn[26:20] iff (ins.current.insn[6:0] == 7'b1010011 & ins.current.insn[31:27] == 5'b11000 & ins.current.insn[14:12] == 3'b001) {
        // Exhaustive test of 2^2 formats * 2^5 encodings; only rs2 = 00001 is possibly legal
    }
    // Branches: op = 1100011
    cp_branch : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1100011) { 
        // Check all 8 types of branches: 2 & 3 illegal
    }
    // JALRs: op = 1100111
    cp_jalr : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1100111) { 
        // test all 8 funct3 codes; only 000 should be legal
    }
    // privileged: op = 1110011
    cp_privileged_funct3 : coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1110011 & ins.current.insn[19:15] == 5'b00000 & ins.current.insn[11:7] == 5'b00000) {
        // check all 8 types of privileged with rs1 = rd = 0; funct3 = 100 should be illegal
    }
    // focus on funct3 = 0; others are covered by csr tests
    cp_privileged_000 : coverpoint ins.current.insn[31:20] iff (ins.current.insn[6:0] == 7'b1110011 & ins.current.insn[14:12] == 3'b000 & ins.current.insn[19:15] == 5'b00000 & ins.current.insn[11:7] == 5'b00000) {
        // Exhaustive test of 2^12 encodings, only a few are legal
        wildcard ignore_bins custom = {12'b1???11??????}; // custom System instructions don't need checking
    }
    // if funct3 = 0, rd must be 0
    cp_privileged_rd : coverpoint ins.current.insn[11:7] iff (ins.current.insn[6:0] == 7'b1110011 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 2^5 rd values, only 00000 is legal
    }
    // if funct3 = 0, rs2 must be 0
    cp_privileged_rs2 : coverpoint ins.current.insn[24:20] iff (ins.current.insn[6:0] == 7'b1110011 & ins.current.insn[14:12] == 3'b000) {
        // Exhaustive test of 2^5 rs2 values, only 00000 is legal except on sfence.vma
    }
    cp_reserved : coverpoint ins.current.insn { // reserved but not illegal
        wildcard bins reserved_fence_fm  = {32'b0001_00000000_?????_000_?????_0001111}; // fence with reserved fm
        wildcard bins reserved_fence_tso = {32'b1000_00000000_?????_000_?????_0001111}; // fence.tso with reserved ordering
        wildcard bins reserved_fence_rs1 = {32'b0000_11111111_00001_000_?????_0001111}; // fence with reserved rs1
        wildcard bins reserved_fence_rd  = {32'b0000_11111111_?????_000_00001_0001111}; // fence with reserved rd
        wildcard bins reserved_rm5_fmadd = {32'b???????_?????_?????_101_?????_1000011}; // fma with reserved rm
        wildcard bins reserved_rm6_fmadd = {32'b???????_?????_?????_110_?????_1000011}; // fma with reserved rm
        wildcard bins reserved_rm5_fmsub = {32'b???????_?????_?????_101_?????_1000111}; // fma with reserved rm
        wildcard bins reserved_rm6_fmsub = {32'b???????_?????_?????_110_?????_1000111}; // fma with reserved rm
        wildcard bins reserved_rm5_fnmadd = {32'b???????_?????_?????_101_?????_1001011}; // fma with reserved rm
        wildcard bins reserved_rm6_fnmadd = {32'b???????_?????_?????_110_?????_1001011}; // fma with reserved rm
        wildcard bins reserved_rm5_fnmsub = {32'b???????_?????_?????_101_?????_1001111}; // fma with reserved rm
        wildcard bins reserved_rm6_fnmsub = {32'b???????_?????_?????_110_?????_1001111}; // fma with reserved rm
    }
endgroup

covergroup Ssstrict_comp_instr_cg with function sample(ins_t ins);
    option.per_instance = 0; 

    cp_compressed00 : coverpoint ins.current.insn[15:2] iff (ins.current.insn[1:0] == 2'b00) {
        bins c00[] = {[0:$]};
        // exhaustive test of 2^14 compressed instructions with op=00
    }
    cp_compressed01 : coverpoint ins.current.insn[15:2] iff (ins.current.insn[1:0] == 2'b01) {
        // exhaustive test of 2^14 compressed instructions with op = 01 with following exceptions that would be hard to test
        bins c01[] = {[0:14'b00011111111111]};
        ignore_bins c_jal = {[14'b00100000000000:14'b00111111111111]};
        bins c01b[] = {[14'b01000000000000:14'b10001_111111111]};
        `ifdef XLEN32
            ignore_bins c_srli_srai_custom = {[14'b10010_000000000:14'b10010_111111111]}; // reserved for custom use in RV32Zca; behavior is unpredictable
        `else
            bins c_srli_srai_rv64[] = {[14'b10010_000000000:14'b10010_111111111]}; // RV64Zca c.srli/srai with shift amount of 32-63
        `endif
        bins c01c[] = {[14'b10011_000000000:14'b10011_111111111]};
        ignore_bins c_j = {[14'b10100000000000:14'b10111111111111]};
        ignore_bins c_bez_bez = {[14'b11000000000000:14'b11111111111111]};
     }
    cp_compressed10 : coverpoint ins.current.insn[15:2] iff (ins.current.insn[1:0] == 2'b10) {
        // exhaustive test of 2^14 compressed instructions with op = 10
        //bins c10a[] = {[0:14'b01111111111111]};
        bins c10a[] = {[0:14'b0000_1111111111]};
        `ifdef XLEN32
            ignore_bins c_slii_custom = {[14'b0001_0000000000:14'b0001_1111111111]}; // reserved for custom use in RV32Zca; behavior is unpredictable
        `else
            bins c_slli_rv64[] = {[14'b0001_0000000000:14'b0001_1111111111]}; // RV64Zca c.slli with shift amount of 32-63
        `endif
        bins c10b[] = {[14'b001_00000000000:14'b01111111111111]};
        ignore_bins c_jr = {[14'b10000000000000:14'b10001111111111]};
        ignore_bins c_jalr = {[14'b10010000000000:14'b10011111111111]};
        bins c10c[] = {[14'b10100000000000:$]};
    }
endgroup

function void ssstrict_sample(int hart, int issue, ins_t ins);
    Ssstrict_mcsr_cg.sample(ins);
    Ssstrict_instr_cg.sample(ins);
    Ssstrict_comp_instr_cg.sample(ins);
endfunction
