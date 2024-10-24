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

`define COVER_ZICSRM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicsrm_t;

covergroup csr_cg with function sample(ins_zicsrm_t ins);
    // building blocks for the main coverpoints
    /* nonzerord: coverpoint ins.current.rd iff (ins.current.valid) {
        option.weight = 0;
        bins nonzero = {[1:$]}; // rd != 0
    } */
    csrr: coverpoint ins.current.insn iff (ins.current.valid) {
        bins csrr = {32'b????????????_00000_010_?????_1110011}; // *** how to specify nonzero destination?
    }
    csrrw: coverpoint ins.current.insn iff (ins.current.valid) {
        bins csrrw = {32'b????????????_?????_001_?????_1110011}; // *** how to specify nonzero source?
    }
    csrrs: coverpoint ins.current.insn iff (ins.current.valid) {
        bins csrrw = {32'b????????????_?????_010_?????_1110011}; // *** how to specify nonzero source?
    }
    csrrc: coverpoint ins.current.insn iff (ins.current.valid) {
        bins csrrw = {32'b????????????_?????_011_?????_1110011}; // *** how to specify nonzero source?
    }
    csr: coverpoint ins.current.insn[31:20] iff (ins.current.valid) {
        // *** how do we get all 4096 coverpoints
    }
    priv_mode_m: coverpoint ins.current.mode iff (ins.current.valid) {
        bins M_mode = {2'b11};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }

    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }
    
    // main coverpoints
    // This is ZicsrM machine-mode testing, so all coverpoints are in Machine mode.
//    cp_csrr: cross csrr, csr, priv_mode_m, nonzerord;               // CSR read of all 4096 registers *** restore nonzerord
    cp_csrr: cross csrr, csr, priv_mode_m;                          // CSR read of all 4096 registers
    cp_csrw_corners: cross csrrw, csr, priv_mode_m, rs1_corners;    // CSR write of all 0s / all 1s to all 4096 registers
    cp_csrc: cross csrrc, csr, priv_mode_m, rs1_ones;               // CSR clear of all bits of all registers
    cp_csrs: cross csrrs, csr, priv_mode_m, rs1_ones;               // CSR set of all bits of all registers
endgroup


function void zicsrm_sample(int hart, int issue);
    ins_zicsrm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_csr(0);
    ins.add_vm_signals(1);
    
    csr_cg.sample(ins);
endfunction
