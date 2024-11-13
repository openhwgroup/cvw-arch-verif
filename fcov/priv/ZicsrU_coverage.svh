///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
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

`define COVER_ZICSRU
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicsru_t;

covergroup ucsr_cg with function sample(ins_zicsru_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrU ucsr";

    // building blocks for the main coverpoints
    csrr: coverpoint ins.current.insn  {
        wildcard bins csrr = {32'b????????????_00000_010_?????_1110011};
    }
    csrrw: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_001_?????_1110011}; 
    }
    csrrs: coverpoint ins.current.insn {
        wildcard bins csrrs = {32'b????????????_?????_010_?????_1110011};
    }
    csrrc: coverpoint ins.current.insn {
        wildcard bins csrrc = {32'b????????????_?????_011_?????_1110011};
    }
    csr: coverpoint ins.current.insn[31:20]  {
    // automtically gives all 4096 bins
    }
    priv_mode_u: coverpoint ins.current.mode {
       bins U_mode = {2'b00};
    }
    csr_corners: coverpoint ins.current.rs1_val {
        `ifdef XLEN64
        bins ones  = {64'hffffffffffffffff};
        bins zeros = {64'h0000000000000000};
        `else
        bins ones  = {32'hffffffff};
        bins zeros = {32'h00000000};
        `endif
    }
    ones: coverpoint ins.current.rs1_val {
        `ifdef XLEN64
        bins ones = {64'hffffffffffffffff};
        `else
        bins ones = {32'hffffffff};
        `endif
    }
    
    // main coverpoints
    cp_csrr:         cross csrr,  csr, priv_mode_u;
    cp_csrw_corners: cross csrrw, csr, csr_corners, priv_mode_u;
    cp_csrc:         cross csrrc, csr, ones, priv_mode_u;
    cp_csrs:         cross csrrs, csr, ones, priv_mode_u;
endgroup

covergroup mstatus_u_cg with function sample(ins_zicsru_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrU mstatus UBE";

    // building blocks for the main coverpoints

    priv_mode_u: coverpoint ins.current.mode {
       bins U_mode = {2'b00};
    }
    
    // main coverpoints
    // cp_mstatus_ube_endianness:
    // cp_mstatus_mprv_ube_endianness:
endgroup

covergroup uprivinst_cg with function sample(ins_zicsru_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrU uprivinst";

    // building blocks for the main coverpoints
    instrs: coverpoint ins.current.insn {
        bins ecall  = {32'b00000000000000000000000001110011};
        bins ebreak = {32'b00000000000100000000000001110011};
        bins sret   = {32'b00010000001000000000000001110011};
        bins mret   = {32'b00110000001000000000000001110011};
    }
    priv_mode_u: coverpoint ins.current.mode {
       bins U_mode = {2'b00};
    }
    
    // main coverpoints
    cp_sprivinst:  cross instrs, priv_mode_u;
endgroup

function void zicsru_sample(int hart, int issue);
    ins_zicsru_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    ucsr_cg.sample(ins);
    mstatus_u_cg.sample(ins);
    uprivinst_cg.sample(ins);
    
endfunction
