///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 13 November 2024
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

covergroup ZicsrU_ucsr_cg with function sample(ins_zicsru_t ins);
    option.per_instance = 0; 
    // "ZicsrU ucsr"

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
        bins all[] = {[0:$]};
    }
    priv_mode_u: coverpoint ins.current.mode {
        bins U_mode = {2'b00};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }
    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }
    csrop: coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1110011) {
        bins csrrs = {3'b010};
        bins csrrc = {3'b011};
    }
    
    // main coverpoints
    cp_csrr:         cross csrr,  csr, priv_mode_u, nonzerord;
    cp_csrw_corners: cross csrrw, csr, priv_mode_u, rs1_corners;
    cp_csrcs:        cross csrop, csr, priv_mode_u, rs1_ones;
endgroup

covergroup ZicsrU_uprivinst_cg with function sample(ins_zicsru_t ins);
    option.per_instance = 0; 
    // "ZicsrU uprivinst"

    // building blocks for the main coverpoints
    privinstrs: coverpoint ins.current.insn  {
        bins ecall  = {32'h00000073};
        bins ebreak = {32'h00100073};
        // fences are not really privileged instructions, but are tested here for lack of a more convenient place
        bins fence =  {32'h0ff0000f}; // fence iorw, iorw
        bins fence_rw_rw = {32'h0330000f}; // fence rw, rw
        bins fence_tso_rw_rw = {32'h8330000f}; // fence.tso
        bins pause = {32'h0100000F}; // pause, for Zihintpause
    }
    mret: coverpoint ins.current.insn  {
        bins mret   = {32'h30200073};
    }
    sret: coverpoint ins.current.insn  {
        bins sret   = {32'h10200073};
    }
    priv_mode_u: coverpoint ins.current.mode {
       bins U_mode = {2'b00};
    }
    old_priv_mode_u: coverpoint ins.prev.mode {
       bins U_mode = {2'b00};
    }
    // main coverpoints
    cp_uprivinst:  cross privinstrs, priv_mode_u;
    cp_mret:       cross mret, old_priv_mode_u; // should trap 
    cp_sret:       cross sret, old_priv_mode_u; // should trap 
endgroup

function void zicsru_sample(int hart, int issue);
    ins_zicsru_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    ZicsrU_ucsr_cg.sample(ins);
    ZicsrU_uprivinst_cg.sample(ins);
    
endfunction
