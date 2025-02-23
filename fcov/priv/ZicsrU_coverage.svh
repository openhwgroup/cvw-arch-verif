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
   // csr is similar to in ZicsrM, but also exercises custom/debug machine/supervisor mode CSRs, which should trap from user level
    csr: coverpoint ins.current.insn[31:20]  {
        bins user_std0[] = {[12'h000:12'h0FF]};
        bins super_std0[] = {[12'h100:12'h1FF]};
        bins hyper_std0[] = {[12'h200:12'h2FF]};
        bins mach_std0[] = {[12'h300:12'h3FF]};
        bins user_std1[] = {[12'h400:12'h4FF]};
        bins super_std1[] = {[12'h500:12'h5BF]};
        bins super_custom1[] = {[12'h5C0:12'h5FF]};
        bins hyper_std1[] = {[12'h600:12'h6BF]};
        bins hyper_custom1[] = {[12'h6C0:12'h6FF]};
        bins mach_std1[] = {[12'h700:12'h7AF]};
        bins mach_debug[] = {[12'h7A0:12'h7AF]}; // toggling debug registers could do weird stuff
        bins debug_only[] = {[12'h7B0:12'h7BF]}; // access to debug mode registers raises illegal instruction even in machine mode
        bins mach_custom1[] = {[12'h7C0:12'h7FF]};
        ignore_bins user_custom2[] = {[12'h800:12'h8FF]};
        bins super_std2[] = {[12'h900:12'h9BF]};
        bins super_custom22[] = {[12'h9C0:12'h9FF]};
        bins hyper_std2[] = {[12'hA00:12'hABF]};
        bins hyper_custom22[] = {[12'hAC0:12'hAFF]};
        bins mach_std2[] = {[12'hB00:12'hBBF]};
        bins mach_custom2[] = {[12'hBC0:12'hBFF]};
        bins user_std3[] = {[12'hC00:12'hCBF]};
        ignore_bins user_custom3[] = {[12'hCC0:12'hCFF]};
        bins super_std3[] = {[12'hD00:12'hDBF]};
        bins super_custom3[] = {[12'hDC0:12'hDFF]};
        bins hyper_std3[] = {[12'hE00:12'hEBF]};
        bins hyper_custom3[] = {[12'hEC0:12'hEFF]};
        bins mach_std3[] = {[12'hF00:12'hFBF]};
        bins mach_custom3[] = {[12'hFC0:12'hFFF]};
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
