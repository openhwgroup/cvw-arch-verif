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

`define COVER_SSSTRICTCSRS
covergroup SsstrictS_scsr_cg with function sample(ins_t ins);
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
    // csr is similar to in ZicsrM, but also exercises custom/debug machine mode CSRs, which should trap from supervisor level
    csr: coverpoint ins.current.insn[31:20]  {
        bins user_std0[] = {[12'h000:12'h0FF]};
        bins super_std0[] = {[12'h100:12'h17F]};
        // bins satp = {12'h180};
        bins super_std02[] = {[12'h181:12'h1FF]};
        bins hyper_std0[] = {[12'h200:12'h2FF]};
        bins mach_std0[] = {[12'h300:12'h3FF]};
        bins user_std1[] = {[12'h400:12'h4FF]};
        bins super_std1[] = {[12'h500:12'h5BF]};
        ignore_bins super_custom1 = {[12'h5C0:12'h5FF]};
        bins hyper_std1[] = {[12'h600:12'h6BF]};
        ignore_bins hyper_custom1 = {[12'h6C0:12'h6FF]};
        bins mach_std1[] = {[12'h700:12'h7AF]};
        bins mach_debug[] = {[12'h7A0:12'h7AF]}; // toggling debug registers could do weird stuff
        bins debug_only[] = {[12'h7B0:12'h7BF]}; // access to debug mode registers raises illegal instruction even in machine mode
        bins mach_custom1[] = {[12'h7C0:12'h7FF]};
        ignore_bins user_custom2 = {[12'h800:12'h8FF]};
        bins super_std2[] = {[12'h900:12'h9BF]};
        ignore_bins super_custom22 = {[12'h9C0:12'h9FF]};
        bins hyper_std2[] = {[12'hA00:12'hABF]};
        ignore_bins hyper_custom22 = {[12'hAC0:12'hAFF]};
        bins mach_std2[] = {[12'hB00:12'hBBF]};
        bins mach_custom2[] = {[12'hBC0:12'hBFF]};
        bins user_std3[] = {[12'hC00:12'hCBF]};
        ignore_bins user_custom3 = {[12'hCC0:12'hCFF]};
        bins super_std3[] = {[12'hD00:12'hDBF]};
        ignore_bins super_custom3 = {[12'hDC0:12'hDFF]};
        bins hyper_std3[] = {[12'hE00:12'hEBF]};
        ignore_bins hyper_custom3 = {[12'hEC0:12'hEFF]};
        bins mach_std3[] = {[12'hF00:12'hFBF]};
        bins mach_custom3[] = {[12'hFC0:12'hFFF]};
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

    // satp_walking: coverpoint $clog2(ins.current.rs1_val) iff ($onehot(ins.current.rs1_val)) { 
    //     bins b_1[] = { [0:`XLEN-1] };
    //     `ifdef XLEN64
    //         ignore_bins mode = { [63:60] };
    //     `elsif XLEN32
    //         ignore_bins mode = { 31 };
    //     `endif
    // }

    csrname : coverpoint ins.current.insn[31:20] {
        bins sstatus       = {12'h100};
        bins sie           = {12'h104};
        bins stvec         = {12'h105};
        bins sscratch      = {12'h140};
        bins sepc          = {12'h141};
        bins scause        = {12'h142};
        bins stval         = {12'h143};
        bins sip           = {12'h144};
        bins senvcfg       = {12'h10A};
        bins scounteren    = {12'h106};
    }
    csrop: coverpoint ins.current.insn[14:12] iff (ins.current.insn[6:0] == 7'b1110011) {
        bins csrrs = {3'b010};
        bins csrrc = {3'b011};
    }
    mcsrs: coverpoint ins.current.insn[31:20] {
        bins mstatus = {12'h300};
        bins mie     = {12'h304};
        bins mip     = {12'h344};
    }
    scsrs: coverpoint ins.current.insn[31:20] {
        bins sstatus = {12'h100};
        bins sie     = {12'h104};
        bins sip     = {12'h144};
    }
    // satp: coverpoint ins.current.insn[31:20] {
    //     bins satp = {12'h180};
    // }

    // main coverpoints
    cp_csrr:         cross csrr,    csr,         priv_mode_s, nonzerord;             
    cp_csrw_corners: cross csrrw,   csr, priv_mode_s, rs1_corners {
        // ignore_bins satp = binsof(csr.satp);
    }
    
    cp_csrcs:        cross csrop,   csr, priv_mode_s, rs1_ones {
        // ignore_bins satp = binsof(csr.satp);
    }
    cp_scsrwalk:     cross csrname, csrop,       priv_mode_s, walking_ones;
    // cp_satp:         cross csrop,   satp,        priv_mode_s, satp_walking;
    cp_shadow_m:     cross csrrw,   mcsrs,       priv_mode_m, rs1_corners;  // write 1s/0s to mstatus, mie, mip in m mode
    cp_shadow_s:     cross csrrw,   scsrs,       priv_mode_s, rs1_corners;  // write 1s/0s to sstatus, sie, sip in s mode
endgroup


function void ssstrictcsrs_sample(int hart, int issue, ins_t ins);
    SsstrictS_scsr_cg.sample(ins);
endfunction
