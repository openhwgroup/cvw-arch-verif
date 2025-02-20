///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 18 November 2024
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

`define COVER_EXCEPTIONSM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionsm_t;

covergroup ExceptionsM_exceptions_cg with function sample(ins_exceptionsm_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    ecall: coverpoint ins.current.insn {
        bins ecall  = {32'h00000073};
    }
    branch: coverpoint ins.current.insn {
        wildcard bins branch = {32'b???????_?????_?????_???_?????_1100011};
    }
    // TODO: This contains bit swizzling and the assumption that the  'bit' type is by default unsigned
    //       we aught to test this for a sanity check to both of these assumptions
    branches_taken: coverpoint {ins.current.insn[14:12],                                     // funct3
                                ins.current.rs1_val == ins.current.rs2_val,                  // A = B  
                                $signed(ins.current.rs1_val) < $signed(ins.current.rs2_val), // A < B (signed)
                                ins.current.rs1_val < ins.current.rs2_val} {                 // A < B (unsigned)
        wildcard bins beq_taken  = {3'b000, 1'b1, 1'b?, 1'b?};
        wildcard bins bne_taken  = {3'b001, 1'b0, 1'b?, 1'b?};
        wildcard bins blt_taken  = {3'b100, 1'b?, 1'b1, 1'b?};
        wildcard bins bge_taken  = {3'b101, 1'b?, 1'b0, 1'b?};
        wildcard bins bltu_taken = {3'b110, 1'b?, 1'b?, 1'b1};
        wildcard bins bgeu_taken = {3'b111, 1'b?, 1'b?, 1'b0};
    }
    branches_nottaken: coverpoint {ins.current.insn[14:12],                                     // funct3
                                   ins.current.rs1_val == ins.current.rs2_val,                  // A == B  
                                   $signed(ins.current.rs1_val) < $signed(ins.current.rs2_val), // A < B (signed)
                                   ins.current.rs1_val < ins.current.rs2_val} {                 // A < B (unsigned)
        wildcard bins beq_nottaken  = {3'b000, 1'b0, 1'b?, 1'b?};
        wildcard bins bne_nottaken  = {3'b001, 1'b1, 1'b?, 1'b?};
        wildcard bins blt_nottaken  = {3'b100, 1'b?, 1'b0, 1'b?};
        wildcard bins bge_nottaken  = {3'b101, 1'b?, 1'b1, 1'b?};
        wildcard bins bltu_nottaken = {3'b110, 1'b?, 1'b?, 1'b0};
        wildcard bins bgeu_nottaken = {3'b111, 1'b?, 1'b?, 1'b1};
    }
    jal: coverpoint ins.current.insn {
        wildcard bins jal = {32'b????????????????????_?????_1101111};
    }
    jalr: coverpoint ins.current.insn {
        wildcard bins jalr = {32'b????????????_?????_000_?????_1100111};
    }
    csrops: coverpoint ins.current.insn {
        wildcard bins csrrs  = {32'b????????????_?????_010_?????_1110011};
        wildcard bins csrrc  = {32'b????????????_?????_011_?????_1110011};
        wildcard bins csrrsi = {32'b????????????_?????_110_?????_1110011};
        wildcard bins csrrci = {32'b????????????_?????_111_?????_1110011};
    }
    loadops: coverpoint ins.current.insn {
        wildcard bins lw  = {32'b????????????_?????_010_?????_0000011}; 
        wildcard bins lh  = {32'b????????????_?????_001_?????_0000011}; 
        wildcard bins lhu = {32'b????????????_?????_101_?????_0000011}; 
        wildcard bins lb  = {32'b????????????_?????_000_?????_0000011}; 
        wildcard bins lbu = {32'b????????????_?????_100_?????_0000011}; 
        `ifdef XLEN64
            wildcard bins ld  = {32'b????????????_?????_001_?????_0000011}; 
            wildcard bins lwu = {32'b????????????_?????_110_?????_0000011}; 
        `endif
    }
    storeops: coverpoint ins.current.insn {
        wildcard bins sb = {32'b????????????_?????_000_?????_0100011}; 
        wildcard bins sh = {32'b????????????_?????_001_?????_0100011}; 
        wildcard bins sw = {32'b????????????_?????_010_?????_0100011}; 
        `ifdef XLEN64
            wildcard bins sd = {32'b????????????_?????_011_?????_0100011}; 
        `endif
    }
    illegalops: coverpoint ins.current.insn {
        bins zeros = {'0}; 
        bins ones  = {'1};
    }
    ebreak: coverpoint ins.current.insn {
        bins ebreak = {32'h00100073};
    }
    adr_LSBs: coverpoint {ins.current.rs1_val + ins.current.imm}[2:0]  {
        // auto fills 000 through 111
    }
    rs1_zero: coverpoint ins.current.insn[19:15] {
        bins zero = {5'b00000};
    }
    seed: coverpoint ins.current.insn[31:20] {
        bins seed = {12'h015};
    }
    csr_0x000: coverpoint ins.current.insn[31:20] {
        bins zero = {12'h000};
    }
    mstatus_MIE: coverpoint ins.prev.csr[12'h300][3] {
        // auto fills 1 and 0
    }
    priv_mode_m: coverpoint ins.current.mode {
       bins M_mode = {2'b11};
    }
    pc_bit_1: coverpoint ins.current.pc_rdata[1] {
        bins zero = {0};
    }
    imm_bit_1: coverpoint ins.current.imm[1] {
        bins one = {'1};
    }
    offset: coverpoint ins.current.imm[1] {
    }
    rs1_1_0: coverpoint ins.current.rs1_val[1:0] {
    }
    illegal_address: coverpoint ins.current.imm + ins.current.rs1_val {
        bins illegal = {`ACCESS_FAULT_ADDRESS};
    }
    // TODO: this has some complicated bit swizzling, aught to be human tested to ensure it accurately reflects test plan
    illegal_address_priority: coverpoint {{ins.current.imm + ins.current.rs1_val}[XLEN-1:3], 3'b000} {
        bins illegal = {`ACCESS_FAULT_ADDRESS};
    }
    
    // main coverpoints
    cp_instr_adr_misaligned_branch:          cross branch, branches_taken, pc_bit_1, imm_bit_1, priv_mode_m; 
    cp_instr_adr_misaligned_branch_nottaken: cross branch, branches_nottaken, pc_bit_1, imm_bit_1, priv_mode_m;  
    cp_instr_adr_misaligned_jal:             cross jal, pc_bit_1, imm_bit_1, priv_mode_m;
    cp_instr_adr_misaligned_jalr:            cross jalr, rs1_1_0, offset, priv_mode_m;
    cp_instr_access_fault:                   cross jalr, illegal_address, priv_mode_m;
    cp_illegal_instruction:                  cross illegalops, priv_mode_m;
    cp_illegal_instruction_seed:             cross csrops, rs1_zero, seed, priv_mode_m;
    cp_illegal_instruction_csr:              cross csrops, csr_0x000, priv_mode_m;
    cp_breakpoint:                           cross ebreak, priv_mode_m;
    cp_load_address_misaligned:              cross loadops, adr_LSBs, priv_mode_m;
    cp_load_access_fault:                    cross loadops, illegal_address, priv_mode_m;
    cp_store_address_misaligned:             cross storeops, adr_LSBs, priv_mode_m;
    cp_store_access_fault:                   cross storeops, illegal_address, priv_mode_m;
    cp_ecall_m:                              cross ecall, priv_mode_m;
    cp_misaligned_priority_load:             cross loadops, adr_LSBs, illegal_address_priority, priv_mode_m;
    cp_misaligned_priority_store:            cross storeops, adr_LSBs, illegal_address_priority, priv_mode_m;
    cp_mstatus_ie:                           cross ecall, mstatus_MIE, priv_mode_m;
endgroup

// more detailed illegal instruction testing
covergroup ExceptionsM_instr_cg with function sample(ins_exceptionsm_t ins);
    option.per_instance = 0; 
    
    cp_illegal : coverpoint ins.current.insn { // illegal in RVA22S64; will trap if not in an implemented extension
        wildcard bins op2  = {32'b?????????????????????????_0001011}; // unused ops
        wildcard bins op7  = {32'b?????????????????????????_0011111}; // unused ops
        wildcard bins op10 = {32'b?????????????????????????_0101011}; // unused ops
        wildcard bins op15 = {32'b?????????????????????????_0111111}; // unused ops
        wildcard bins op21 = {32'b?????????????????????????_1010111}; // unused ops
        wildcard bins op22 = {32'b?????????????????????????_1011011}; // unused ops
        wildcard bins op23 = {32'b?????????????????????????_1011111}; // unused ops
        wildcard bins op26 = {32'b?????????????????????????_1101011}; // unused ops
        wildcard bins op29 = {32'b?????????????????????????_1110111}; // unused ops
        wildcard bins op30 = {32'b?????????????????????????_1111011}; // unused ops
        wildcard bins op31 = {32'b?????????????????????????_1111111}; // unused ops
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

function void exceptionsm_sample(int hart, int issue);
    ins_exceptionsm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);

    // $display("Instruction is: PC %h: %h = %s (rd = %h rs1 = %h rs2 = %h) trap = %b mode = %b (old mode %b) mstatus %h (old mstatus %h).  Retired: %d",ins.current.pc_rdata, ins.current.insn, ins.current.disass, ins.current.rd_val, ins.current.rs1_val, ins.current.rs2_val, ins.current.trap, ins.current.mode, ins.prev.mode, ins.current.csr[12'h300], ins.prev.csr[12'h300], ins.current.csr[12'hB02]);
    
    ExceptionsM_exceptions_cg.sample(ins);
    ExceptionsM_instr_cg.sample(ins);
    
endfunction
