///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 24 November 2024
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

`define COVER_EXCEPTIONSU
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionsu_t;

covergroup ExceptionsU_exceptions_cg with function sample(ins_exceptionsu_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    ecall: coverpoint ins.current.insn {
        bins ecall  = {32'h00000073};
    }
    branch: coverpoint ins.current.insn {
        wildcard bins beq = {32'b???????_?????_?????_???_?????_1100011};
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
    mstatus_SIE: coverpoint ins.prev.csr[12'h300][1] {
        // auto fills 1 and 0
    }
    priv_mode_u: coverpoint ins.current.mode {
       bins U_mode = {2'b00};
    }
    medelegb8: coverpoint ins.current.csr[12'h302][8]{
    }
    pc_bit_1: coverpoint ins.current.pc_rdata[1] {
    }
    imm_bit_1: coverpoint ins.current.imm[1] {
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
    cp_instr_adr_misaligned_branch:          cross branch, branches_taken, pc_bit_1, imm_bit_1, priv_mode_u; 
    cp_instr_adr_misaligned_branch_nottaken: cross branch, branches_nottaken, pc_bit_1, imm_bit_1, priv_mode_u;  
    cp_instr_adr_misaligned_jal:             cross jal, pc_bit_1, imm_bit_1, priv_mode_u;
    cp_instr_adr_misaligned_jalr:            cross jalr, rs1_1_0, imm_bit_1, priv_mode_u;
    cp_instr_access_fault:                   cross jalr, illegal_address, priv_mode_u;
    cp_illegal_instruction:                  cross illegalops, priv_mode_u;
    cp_illegal_instruction_seed:             cross csrops, rs1_zero, seed, priv_mode_u;
    cp_illegal_instruction_csr:              cross csrops, csr_0x000, priv_mode_u;
    cp_breakpoint:                           cross ebreak, priv_mode_u;
    cp_load_address_misaligned:              cross loadops, adr_LSBs, priv_mode_u;
    cp_load_access_fault:                    cross loadops, illegal_address, priv_mode_u;
    cp_store_address_misaligned:             cross storeops, adr_LSBs, priv_mode_u;
    cp_store_access_fault:                   cross storeops, illegal_address, priv_mode_u;
    cp_ecall_m:                              cross ecall, priv_mode_u;
    cp_misaligned_priority_load:             cross loadops, adr_LSBs, illegal_address_priority, priv_mode_u;
    cp_misaligned_priority_store:            cross storeops, adr_LSBs, illegal_address_priority, priv_mode_u;
    cp_mstatus_ie:                           cross ecall, mstatus_MIE, mstatus_SIE, priv_mode_u, medelegb8;

endgroup

function void exceptionsu_sample(int hart, int issue);
    ins_exceptionsu_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);

    // $display("Instruction is: PC %h: %h = %s (rd = %h rs1 = %h rs2 = %h) trap = %b mode = %b (old mode %b) mstatus %h (old mstatus %h).  Retired: %d",ins.current.pc_rdata, ins.current.insn, ins.current.disass, ins.current.rd_val, ins.current.rs1_val, ins.current.rs2_val, ins.current.trap, ins.current.mode, ins.prev.mode, ins.current.csr[12'h300], ins.prev.csr[12'h300], ins.current.csr[12'hB02]);
    
    ExceptionsU_exceptions_cg.sample(ins);
    
endfunction
