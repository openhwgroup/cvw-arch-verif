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
    option.per_instance = 1; 
    option.comment = "ZicsrM csr";

    // building blocks for the main coverpoints
    nonzerord: coverpoint ins.current.insn[11:7] {
        option.weight = 0;
        bins nonzero = { [1:$] }; // rd != 0
    }
    nonzerors1: coverpoint ins.current.insn[19:15] {
        //option.weight = 0;
        bins nonzero = { !0 }; // rs1 != 0
    }
    csrr: coverpoint ins.current.insn  {
        wildcard bins csrr = {32'b????????????_00000_010_?????_1110011}; // *** how to specify nonzero destination?
    }
    csrrw: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_001_?????_1110011}; // *** how to specify nonzero source?
    }
    csrrs: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_010_?????_1110011}; // *** how to specify nonzero source?
    }
    csrrc: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_011_?????_1110011}; // *** how to specify nonzero source?
    }
    csr: coverpoint ins.current.insn[31:20]  {
        // automtically gives all 4096 bins
    }
    priv_mode_m: coverpoint ins.current.mode {
        bins M_mode = {2'b11};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }

    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }

    // we don't seem to be getting hits on many CSRs.  We are suspicious it is because they are unimplemented and cause
    // illegal instruction traps when accessed (but still need to prove this, possibly by making a list of good and illegal
    // csrs in the csr coverpoint.  This temporary coverpoint is inserted from riscvISACOV for troubleshooting, and 
    // makes 0 hits right now.
    cp_illegal_inst : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "mcause", "") == `MCAUSE_ILLEGAL_INST  iff (ins.trap == 1 )  {
        option.comment = "Number of illegal instructions";
        bins count[]  = {1};
    }
    
    // main coverpoints
    // This is ZicsrM machine-mode testing, so all coverpoints are in Machine mode.
    cp_csrr: cross csrr, csr, priv_mode_m, nonzerord;               // CSR read of all 4096 registers
    cp_csrw_corners: cross csrrw, csr, priv_mode_m, rs1_corners;    // CSR write of all 0s / all 1s to all 4096 registers
    cp_csrc: cross csrrc, csr, priv_mode_m, rs1_ones;               // CSR clear of all bits of all registers
    cp_csrs: cross csrrs, csr, priv_mode_m, rs1_ones;               // CSR set of all bits of all registers
endgroup

covergroup mcause_cg with function sample(ins_zicsrm_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrM csr";
 
    csrrw_mcause: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b001101000010_?????_001_?????_1110011};  // csrrw to mcause
    }
    priv_mode_m: coverpoint ins.current.mode {
        bins M_mode = {2'b11};
    }
    mcause_interrupt : coverpoint ins.current.rs1_val[XLEN-1] {
        bins interrupt = {1};
    }
    mcause_exception : coverpoint ins.current.rs1_val[XLEN-1] {
        bins exception = {0};
    }
    mcause_exception_values: coverpoint ins.current.rs1_val[XLEN-2:0] {
        bins b_0_instruction_address_misaligned = {0};
        bins b_1_instruction_address_fault = {1};
        bins b_2_illegal_instruction = {2};
        bins b_3_breakpoint = {3};
        bins b_4_load_address_misaligned = {4};
        bins b_5_load_access_fault = {5};
        bins b_6_store_address_misaligned = {6};
        bins b_7_store_access_fault = {7};
        bins b_8_ecall_u = {8};
        bins b_9_ecall_s = {9};
        bins b_10_reserved = {10};
        bins b_11_ecall_m = {11};
        bins b_12_instruction_page_fault = {12};
        bins b_13_load_page_fault = {13};
        bins b_14_reserved = {14};
        bins b_15_store_page_fault = {15};
        bins b_16_reserved = {16};
        bins b_17_reserved = {17};
        bins b_18_software_check = {18};
        bins b_19_hardware_error = {19};
        bins b_20_reserved = {20};
        bins b_21_reserved = {21};
        bins b_22_reserved = {22};
        bins b_23_reserved = {23};
        bins b_31_24_custom = {[31:24]};
        bins walkingones = {128}; 
    }
    mcause_interrupt_values: coverpoint ins.current.rs1_val[XLEN-2:0] {
        bins b_0 = {0};
        bins b_01 = {1};
    }

    // main coverpoints
    // This is ZicsrM machine-mode testing, so all coverpoints are in Machine mode.
    cp_mcause_write_exception: cross csrrw_mcause, priv_mode_m, mcause_exception_values, mcause_exception; // CSR write of mcause in M mode with interesting values
    cp_mcause_write_interrupt: cross csrrw_mcause, priv_mode_m, mcause_interrupt_values, mcause_interrupt; // CSR write of mcause in M mode with interesting values
endgroup


function void zicsrm_sample(int hart, int issue);
    ins_zicsrm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    csr_cg.sample(ins);
    mcause_cg.sample(ins);
endfunction
