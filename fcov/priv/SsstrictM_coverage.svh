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

`define COVER_SSSTRICTM
covergroup SsstrictM_mcsr_cg with function sample(ins_t ins);
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
    csrcs: coverpoint ins.current.insn {
        wildcard bins csrrs  = {32'b????????????_?????_010_?????_1110011};
        wildcard bins csrrc  = {32'b????????????_?????_011_?????_1110011};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }
    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }
    csrs: coverpoint ins.current.insn[31:20] {
        bins        user_std0[]    = {[12'h000:12'h0FF]};
        bins        super_std0[]   = {[12'h100:12'h1FF]};
        bins        hyper_std0[]   = {[12'h200:12'h2FF]};
        bins        mach_std0[]    = {[12'h300:12'h3FF]};
        bins        user_std1[]    = {[12'h400:12'h4FF]};
        bins        super_std1[]   = {[12'h500:12'h5BF]};
        ignore_bins super_custom1  = {[12'h5C0:12'h5FF]};
        bins        hyper_std1[]   = {[12'h600:12'h6BF]};
        ignore_bins hyper_custom1  = {[12'h6C0:12'h6FF]};
        bins        mach_std1[]    = {[12'h700:12'h7AF]};
        ignore_bins mach_debug     = {[12'h7A0:12'h7AF]}; // toggling debug registers could do weird stuff
        bins        debug_only[]   = {[12'h7B0:12'h7BF]}; // access to debug mode registers raises illegal instruction even in machine mode
        ignore_bins mach_custom1   = {[12'h7C0:12'h7FF]};
        ignore_bins user_custom2   = {[12'h800:12'h8FF]};
        bins        super_std2[]   = {[12'h900:12'h9BF]};
        ignore_bins super_custom22 = {[12'h9C0:12'h9FF]};
        bins        hyper_std2[]   = {[12'hA00:12'hABF]};
        ignore_bins hyper_custom22 = {[12'hAC0:12'hAFF]};
        bins        mach_std2[]    = {[12'hB00:12'hBBF]};
        ignore_bins mach_custom2   = {[12'hBC0:12'hBFF]};
        bins        user_std3[]    = {[12'hC00:12'hCBF]};
        ignore_bins user_custom3   = {[12'hCC0:12'hCFF]};
        bins        super_std3[]   = {[12'hD00:12'hDBF]};
        ignore_bins super_custom3  = {[12'hDC0:12'hDFF]};
        bins        hyper_std3[]   = {[12'hE00:12'hEBF]};
        ignore_bins hyper_custom3  = {[12'hEC0:12'hEFF]};
        bins        mach_std3[]    = {[12'hF00:12'hFBF]};
        ignore_bins mach_custom3   = {[12'hFC0:12'hFFF]};
    }
    csrs_noPMP: coverpoint ins.current.insn[31:20] {
        bins        user_std0[]    = {[12'h000:12'h0FF]};
        bins        super_std0[]   = {[12'h100:12'h1FF]};
        bins        hyper_std0[]   = {[12'h200:12'h2FF]};
        bins        mach_std0[]    = {[12'h300:12'h3FF]};
        ignore_bins PMP_regs       = {[12'h3A0:12'h3EF]}; // Exclude PMP registers
        bins        user_std1[]    = {[12'h400:12'h4FF]};
        bins        super_std1[]   = {[12'h500:12'h5BF]};
        ignore_bins super_custom1  = {[12'h5C0:12'h5FF]};
        bins        hyper_std1[]   = {[12'h600:12'h6BF]};
        ignore_bins hyper_custom1  = {[12'h6C0:12'h6FF]};
        bins        mach_std1[]    = {[12'h700:12'h7AF]};
        ignore_bins mach_debug     = {[12'h7A0:12'h7AF]}; // toggling debug registers could do weird stuff
        bins        debug_only[]   = {[12'h7B0:12'h7BF]}; // access to debug mode registers raises illegal instruction even in machine mode
        ignore_bins mach_custom1   = {[12'h7C0:12'h7FF]};
        ignore_bins user_custom2   = {[12'h800:12'h8FF]};
        bins        super_std2[]   = {[12'h900:12'h9BF]};
        ignore_bins super_custom22 = {[12'h9C0:12'h9FF]};
        bins        hyper_std2[]   = {[12'hA00:12'hABF]};
        ignore_bins hyper_custom22 = {[12'hAC0:12'hAFF]};
        bins        mach_std2[]    = {[12'hB00:12'hBBF]};
        ignore_bins mach_custom2   = {[12'hBC0:12'hBFF]};
        bins        user_std3[]    = {[12'hC00:12'hCBF]};
        ignore_bins user_custom3   = {[12'hCC0:12'hCFF]};
        bins        super_std3[]   = {[12'hD00:12'hDBF]};
        ignore_bins super_custom3  = {[12'hDC0:12'hDFF]};
        bins        hyper_std3[]   = {[12'hE00:12'hEBF]};
        ignore_bins hyper_custom3  = {[12'hEC0:12'hEFF]};
        bins        mach_std3[]    = {[12'hF00:12'hFBF]};
        ignore_bins mach_custom3   = {[12'hFC0:12'hFFF]};
    }
    // main coverpoints
    cp_csrr:         cross priv_mode_m, csrr,  csrs;
    cp_csrw_corners: cross priv_mode_m, csrrw, csrs_noPMP, rs1_corners;
    cp_csrcs:        cross priv_mode_m, csrcs, csrs_noPMP, rs1_ones;
endgroup

covergroup SsstrictM_minstr_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints
    uncomp_opcodes: coverpoint ins.current.insn[6:2] iff (ins.current.insn[1:0] == 2'b11) {
        // auto fill every possible op code except those reserved for custom encodings
        // see unpriv spec Table 70
        ignore_bins custom_0 = {5'b00010};
        ignore_bins custom_1 = {5'b01010};
        ignore_bins custom_2 = {5'b10110};
        ignore_bins custom_3 = {5'b11110};
    }
    funct3: coverpoint ins.current.insn[14:12] {
        // auto fill 000-111
    }
    funct7: coverpoint ins.current.insn[31:25] iff (ins.current.insn[1:0] == 2'b11) {
        // auto fill 00000-11111
    }
    comp_opcodes: coverpoint ins.current.insn[1:0] {
        ignore_bins uncompressed = {2'b11};
    }
    funct6: coverpoint ins.current.insn[12:10] iff (ins.current.insn[15:13] == 3'b100 & ins.current.insn[1:0] != 2'b10) {
        // auto fill 100000-100111
    }
    bits_6_2_corners: coverpoint ins.current.insn[6:2] { 
        bins zero    = {'0};
        bins nonzero = {[$:1]};
    }
    bits_11_7_corners: coverpoint ins.current.insn[11:7] iff (~(ins.current.insn[15:13] == 3'b100 & ins.current.insn[1:0] != 2'b10)) {
        // covers rs1/rd being 0, 2, and non-zero for instructions where bits 12:10 are not part of the encoding space (ie no funct6)
        bins zero    = {'0};
        bins two     = {5'd2};
        bins nonzero = {[$:1]};
    }

    // main coverpoints
    cp_illegal_instruction:            cross priv_mode_m, uncomp_opcodes, funct3, funct7;
    cp_illegal_compressed_instruction: cross priv_mode_m, comp_opcodes,   funct3, funct6, bits_6_2_corners, bits_11_7_corners;

endgroup

function void ssstrictm_sample(int hart, int issue, ins_t ins);
    SsstrictM_mcsr_cg.sample(ins);
    SsstrictM_minstr_cg.sample(ins);
endfunction
