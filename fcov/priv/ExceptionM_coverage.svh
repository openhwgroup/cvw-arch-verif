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

`define COVER_EXCEPTIONM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionm_t;

covergroup exceptionM_cg with function sample(ins_exceptionm_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    ecall: coverpoint ins.current.insn {
        bins ecall  = {32'h00000073};
    }
    beq: coverpoint ins.current.insn {
        bins beq = {32'b0000000_00000_00000_000_00000_1100011};
    }
    csrops: coverpoint ins.current.insn {
        wildcard bins csrrs_seed  = {32'b????????????_?????_010_?????_1110011};
        wildcard bins csrrc_seed  = {32'b????????????_?????_011_?????_1110011};
        wildcard bins csrrsi_seed = {32'b????????????_?????_110_?????_1110011};
        wildcard bins csrrci_seed = {32'b????????????_?????_111_?????_1110011};
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
        wildcard bins sd = {32'b????????????_?????_011_?????_0100011}; 
    }
    rs1_LSBs: coverpoint ins.current.insn[17:15] {
        // auto fills 000 through 111
    }
    rs1_zero: coverpoint ins.current.insn[19:15] {
        bins zero = {5'b00000};
    }
    rs1_rs2_eq: coverpoint ins.current.insn[19:15] == ins.current.insn[24:20] {
        bins equal = {1};
    }
    rs1_rs2_ne: coverpoint ins.current.insn[19:15] == ins.current.insn[24:20] {
        bins equal = {0};
    }
    seed: coverpoint ins.current.insn[31:20] {
        bins seed = {12'h015};
    }
    csr_0x000: coverpoint ins.current.insn[31:20] {
        bins zero = {12'h000};
    }
    mstatus_MIE: coverpoint ins.current.csr[12'h300][3] {
        // auto fills 1 and 0
    }
    priv_mode_m: coverpoint ins.current.mode {
       bins M_mode = {2'b11};
    }
    
    // main coverpoints
    cp_instr_adr_misaligned_branch:          cross beq, rs1_rs2_eq; // TODO: missing misaligned 
    cp_instr_adr_misaligned_branch_nottaken: cross beq, rs1_rs2_ne; // TODO: missing misaligned 
    // cp_instr_adr_misaligned_jal:             cross
    // cp_instr_adr_misaligned_jalr:            cross
    // cp_instr_access_fault:                   cross
    cp_illegal_instruction:                  coverpoint ins.current.insn {bins zeros = {'0}; bins ones = {'1};}
    cp_illegal_instruction_seed:             cross csrops, rs1_zero, seed;
    cp_illegal_instruction_csr:              cross csrops, csr_0x000;
    cp_breakpoint:                           coverpoint ins.current.insn {bins ebreak = {32'h00100073};}
    cp_load_address_misaligned:              cross loadops, rs1_LSBs;
    // cp_load_access_fault:                    cross 
    cp_store_address_misaligned:             cross storeops, rs1_LSBs;
    // cp_store_access_fault:                   cross
    cp_ecall_m:                              cross ecall, priv_mode_m;
    // cp_misaligned_priority:                  cross
    // cp_medeleg:                              cross
    cp_mstatus_ie:                           cross ecall, mstatus_MIE;

endgroup

function void exceptionm_sample(int hart, int issue);
    ins_exceptionm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    exceptionM_cg.sample(ins);
    
endfunction
