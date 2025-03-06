///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 3 December 2024
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

`define COVER_ZICSRS
covergroup ZicsrS_scsr_cg with function sample(ins_t ins);
    option.per_instance = 0; 

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
        bins satp = {12'h180};
        bins super_std02[] = {[12'h181:12'h1FF]};
        bins hyper_std0[] = {[12'h200:12'h2FF]};
        bins mach_std0[] = {[12'h300:12'h3FF]};
        bins user_std1[] = {[12'h400:12'h4FF]};
        bins super_std1[] = {[12'h500:12'h5BF]};
        ignore_bins super_custom1[] = {[12'h5C0:12'h5FF]};
        bins hyper_std1[] = {[12'h600:12'h6BF]};
        ignore_bins hyper_custom1[] = {[12'h6C0:12'h6FF]};
        bins mach_std1[] = {[12'h700:12'h7AF]};
        bins mach_debug[] = {[12'h7A0:12'h7AF]}; // toggling debug registers could do weird stuff
        bins debug_only[] = {[12'h7B0:12'h7BF]}; // access to debug mode registers raises illegal instruction even in machine mode
        bins mach_custom1[] = {[12'h7C0:12'h7FF]};
        ignore_bins user_custom2[] = {[12'h800:12'h8FF]};
        bins super_std2[] = {[12'h900:12'h9BF]};
        ignore_bins super_custom22[] = {[12'h9C0:12'h9FF]};
        bins hyper_std2[] = {[12'hA00:12'hABF]};
        ignore_bins hyper_custom22[] = {[12'hAC0:12'hAFF]};
        bins mach_std2[] = {[12'hB00:12'hBBF]};
        bins mach_custom2[] = {[12'hBC0:12'hBFF]};
        bins user_std3[] = {[12'hC00:12'hCBF]};
        ignore_bins user_custom3[] = {[12'hCC0:12'hCFF]};
        bins super_std3[] = {[12'hD00:12'hDBF]};
        ignore_bins super_custom3[] = {[12'hDC0:12'hDFF]};
        bins hyper_std3[] = {[12'hE00:12'hEBF]};
        ignore_bins hyper_custom3[] = {[12'hEC0:12'hEFF]};
        bins mach_std3[] = {[12'hF00:12'hFBF]};
        bins mach_custom3[] = {[12'hFC0:12'hFFF]};
    }
    old_priv_mode_s: coverpoint ins.prev.mode {
        bins S_mode = {2'b01};
    }
    old_priv_mode_m: coverpoint ins.prev.mode {
        bins M_mode = {2'b11};
    }
    rs1_ones: coverpoint ins.current.rs1_val {
        bins ones = {'1};
    }
    rs1_corners: coverpoint ins.current.rs1_val {
        bins zero = {0};
        bins ones = {'1};
    }

    `ifdef XLEN64
        walking_ones : coverpoint ins.current.rs1_val {
            bins b_0  = {64'b0000000000000000000000000000000000000000000000000000000000000001};
            bins b_1  = {64'b0000000000000000000000000000000000000000000000000000000000000010};
            bins b_2  = {64'b0000000000000000000000000000000000000000000000000000000000000100};
            bins b_3  = {64'b0000000000000000000000000000000000000000000000000000000000001000};
            bins b_4  = {64'b0000000000000000000000000000000000000000000000000000000000010000};
            bins b_5  = {64'b0000000000000000000000000000000000000000000000000000000000100000};
            bins b_6  = {64'b0000000000000000000000000000000000000000000000000000000001000000};
            bins b_7  = {64'b0000000000000000000000000000000000000000000000000000000010000000};
            bins b_8  = {64'b0000000000000000000000000000000000000000000000000000000100000000};
            bins b_9  = {64'b0000000000000000000000000000000000000000000000000000001000000000};
            bins b_10 = {64'b0000000000000000000000000000000000000000000000000000010000000000};
            bins b_11 = {64'b0000000000000000000000000000000000000000000000000000100000000000};
            bins b_12 = {64'b0000000000000000000000000000000000000000000000000001000000000000};
            bins b_13 = {64'b0000000000000000000000000000000000000000000000000010000000000000};
            bins b_14 = {64'b0000000000000000000000000000000000000000000000000100000000000000};
            bins b_15 = {64'b0000000000000000000000000000000000000000000000001000000000000000};
            bins b_16 = {64'b0000000000000000000000000000000000000000000000010000000000000000};
            bins b_17 = {64'b0000000000000000000000000000000000000000000000100000000000000000};
            bins b_18 = {64'b0000000000000000000000000000000000000000000001000000000000000000};
            bins b_19 = {64'b0000000000000000000000000000000000000000000010000000000000000000};
            bins b_20 = {64'b0000000000000000000000000000000000000000000100000000000000000000};
            bins b_21 = {64'b0000000000000000000000000000000000000000001000000000000000000000};
            bins b_22 = {64'b0000000000000000000000000000000000000000010000000000000000000000};
            bins b_23 = {64'b0000000000000000000000000000000000000000100000000000000000000000};
            bins b_24 = {64'b0000000000000000000000000000000000000001000000000000000000000000};
            bins b_25 = {64'b0000000000000000000000000000000000000010000000000000000000000000};
            bins b_26 = {64'b0000000000000000000000000000000000000100000000000000000000000000};
            bins b_27 = {64'b0000000000000000000000000000000000001000000000000000000000000000};
            bins b_28 = {64'b0000000000000000000000000000000000010000000000000000000000000000};
            bins b_29 = {64'b0000000000000000000000000000000000100000000000000000000000000000};
            bins b_30 = {64'b0000000000000000000000000000000001000000000000000000000000000000};
            bins b_31 = {64'b0000000000000000000000000000000010000000000000000000000000000000};
            bins b_32 = {64'b0000000000000000000000000000000100000000000000000000000000000000};
            bins b_33 = {64'b0000000000000000000000000000001000000000000000000000000000000000};
            bins b_34 = {64'b0000000000000000000000000000010000000000000000000000000000000000};
            bins b_35 = {64'b0000000000000000000000000000100000000000000000000000000000000000};
            bins b_36 = {64'b0000000000000000000000000001000000000000000000000000000000000000};
            bins b_37 = {64'b0000000000000000000000000010000000000000000000000000000000000000};
            bins b_38 = {64'b0000000000000000000000000100000000000000000000000000000000000000};
            bins b_39 = {64'b0000000000000000000000001000000000000000000000000000000000000000};
            bins b_40 = {64'b0000000000000000000000010000000000000000000000000000000000000000};
            bins b_41 = {64'b0000000000000000000000100000000000000000000000000000000000000000};
            bins b_42 = {64'b0000000000000000000001000000000000000000000000000000000000000000};
            bins b_43 = {64'b0000000000000000000010000000000000000000000000000000000000000000};
            bins b_44 = {64'b0000000000000000000100000000000000000000000000000000000000000000};
            bins b_45 = {64'b0000000000000000001000000000000000000000000000000000000000000000};
            bins b_46 = {64'b0000000000000000010000000000000000000000000000000000000000000000};
            bins b_47 = {64'b0000000000000000100000000000000000000000000000000000000000000000};
            bins b_48 = {64'b0000000000000001000000000000000000000000000000000000000000000000};
            bins b_49 = {64'b0000000000000010000000000000000000000000000000000000000000000000};
            bins b_50 = {64'b0000000000000100000000000000000000000000000000000000000000000000};
            bins b_51 = {64'b0000000000001000000000000000000000000000000000000000000000000000};
            bins b_52 = {64'b0000000000010000000000000000000000000000000000000000000000000000};
            bins b_53 = {64'b0000000000100000000000000000000000000000000000000000000000000000};
            bins b_54 = {64'b0000000001000000000000000000000000000000000000000000000000000000};
            bins b_55 = {64'b0000000010000000000000000000000000000000000000000000000000000000};
            bins b_56 = {64'b0000000100000000000000000000000000000000000000000000000000000000};
            bins b_57 = {64'b0000001000000000000000000000000000000000000000000000000000000000};
            bins b_58 = {64'b0000010000000000000000000000000000000000000000000000000000000000};
            bins b_59 = {64'b0000100000000000000000000000000000000000000000000000000000000000};
            bins b_60 = {64'b0001000000000000000000000000000000000000000000000000000000000000};
            bins b_61 = {64'b0010000000000000000000000000000000000000000000000000000000000000};
            bins b_62 = {64'b0100000000000000000000000000000000000000000000000000000000000000};
            bins b_63 = {64'b1000000000000000000000000000000000000000000000000000000000000000};
        }
        satp_walking: coverpoint ins.current.rs1_val {
            bins b_0  = {64'b0000000000000000000000000000000000000000000000000000000000000001};
            bins b_1  = {64'b0000000000000000000000000000000000000000000000000000000000000010};
            bins b_2  = {64'b0000000000000000000000000000000000000000000000000000000000000100};
            bins b_3  = {64'b0000000000000000000000000000000000000000000000000000000000001000};
            bins b_4  = {64'b0000000000000000000000000000000000000000000000000000000000010000};
            bins b_5  = {64'b0000000000000000000000000000000000000000000000000000000000100000};
            bins b_6  = {64'b0000000000000000000000000000000000000000000000000000000001000000};
            bins b_7  = {64'b0000000000000000000000000000000000000000000000000000000010000000};
            bins b_8  = {64'b0000000000000000000000000000000000000000000000000000000100000000};
            bins b_9  = {64'b0000000000000000000000000000000000000000000000000000001000000000};
            bins b_10 = {64'b0000000000000000000000000000000000000000000000000000010000000000};
            bins b_11 = {64'b0000000000000000000000000000000000000000000000000000100000000000};
            bins b_12 = {64'b0000000000000000000000000000000000000000000000000001000000000000};
            bins b_13 = {64'b0000000000000000000000000000000000000000000000000010000000000000};
            bins b_14 = {64'b0000000000000000000000000000000000000000000000000100000000000000};
            bins b_15 = {64'b0000000000000000000000000000000000000000000000001000000000000000};
            bins b_16 = {64'b0000000000000000000000000000000000000000000000010000000000000000};
            bins b_17 = {64'b0000000000000000000000000000000000000000000000100000000000000000};
            bins b_18 = {64'b0000000000000000000000000000000000000000000001000000000000000000};
            bins b_19 = {64'b0000000000000000000000000000000000000000000010000000000000000000};
            bins b_20 = {64'b0000000000000000000000000000000000000000000100000000000000000000};
            bins b_21 = {64'b0000000000000000000000000000000000000000001000000000000000000000};
            bins b_22 = {64'b0000000000000000000000000000000000000000010000000000000000000000};
            bins b_23 = {64'b0000000000000000000000000000000000000000100000000000000000000000};
            bins b_24 = {64'b0000000000000000000000000000000000000001000000000000000000000000};
            bins b_25 = {64'b0000000000000000000000000000000000000010000000000000000000000000};
            bins b_26 = {64'b0000000000000000000000000000000000000100000000000000000000000000};
            bins b_27 = {64'b0000000000000000000000000000000000001000000000000000000000000000};
            bins b_28 = {64'b0000000000000000000000000000000000010000000000000000000000000000};
            bins b_29 = {64'b0000000000000000000000000000000000100000000000000000000000000000};
            bins b_30 = {64'b0000000000000000000000000000000001000000000000000000000000000000};
            bins b_31 = {64'b0000000000000000000000000000000010000000000000000000000000000000};
            bins b_32 = {64'b0000000000000000000000000000000100000000000000000000000000000000};
            bins b_33 = {64'b0000000000000000000000000000001000000000000000000000000000000000};
            bins b_34 = {64'b0000000000000000000000000000010000000000000000000000000000000000};
            bins b_35 = {64'b0000000000000000000000000000100000000000000000000000000000000000};
            bins b_36 = {64'b0000000000000000000000000001000000000000000000000000000000000000};
            bins b_37 = {64'b0000000000000000000000000010000000000000000000000000000000000000};
            bins b_38 = {64'b0000000000000000000000000100000000000000000000000000000000000000};
            bins b_39 = {64'b0000000000000000000000001000000000000000000000000000000000000000};
            bins b_40 = {64'b0000000000000000000000010000000000000000000000000000000000000000};
            bins b_41 = {64'b0000000000000000000000100000000000000000000000000000000000000000};
            bins b_42 = {64'b0000000000000000000001000000000000000000000000000000000000000000};
            bins b_43 = {64'b0000000000000000000010000000000000000000000000000000000000000000};
            bins b_44 = {64'b0000000000000000000100000000000000000000000000000000000000000000};
            bins b_45 = {64'b0000000000000000001000000000000000000000000000000000000000000000};
            bins b_46 = {64'b0000000000000000010000000000000000000000000000000000000000000000};
            bins b_47 = {64'b0000000000000000100000000000000000000000000000000000000000000000};
            bins b_48 = {64'b0000000000000001000000000000000000000000000000000000000000000000};
            bins b_49 = {64'b0000000000000010000000000000000000000000000000000000000000000000};
            bins b_50 = {64'b0000000000000100000000000000000000000000000000000000000000000000};
            bins b_51 = {64'b0000000000001000000000000000000000000000000000000000000000000000};
            bins b_52 = {64'b0000000000010000000000000000000000000000000000000000000000000000};
            bins b_53 = {64'b0000000000100000000000000000000000000000000000000000000000000000};
            bins b_54 = {64'b0000000001000000000000000000000000000000000000000000000000000000};
            bins b_55 = {64'b0000000010000000000000000000000000000000000000000000000000000000};
            bins b_56 = {64'b0000000100000000000000000000000000000000000000000000000000000000};
            bins b_57 = {64'b0000001000000000000000000000000000000000000000000000000000000000};
            bins b_58 = {64'b0000010000000000000000000000000000000000000000000000000000000000};
            bins b_59 = {64'b0000100000000000000000000000000000000000000000000000000000000000};
            // No mode bits (63:60)
        }
    `else
        walking_ones : coverpoint ins.current.rs1_val {
            bins b_0  = {32'b00000000000000000000000000000001};
            bins b_1  = {32'b00000000000000000000000000000010};
            bins b_2  = {32'b00000000000000000000000000000100};
            bins b_3  = {32'b00000000000000000000000000001000};
            bins b_4  = {32'b00000000000000000000000000010000};
            bins b_5  = {32'b00000000000000000000000000100000};
            bins b_6  = {32'b00000000000000000000000001000000};
            bins b_7  = {32'b00000000000000000000000010000000};
            bins b_8  = {32'b00000000000000000000000100000000};
            bins b_9  = {32'b00000000000000000000001000000000};
            bins b_10 = {32'b00000000000000000000010000000000};
            bins b_11 = {32'b00000000000000000000100000000000};
            bins b_12 = {32'b00000000000000000001000000000000};
            bins b_13 = {32'b00000000000000000010000000000000};
            bins b_14 = {32'b00000000000000000100000000000000};
            bins b_15 = {32'b00000000000000001000000000000000};
            bins b_16 = {32'b00000000000000010000000000000000};
            bins b_17 = {32'b00000000000000100000000000000000};
            bins b_18 = {32'b00000000000001000000000000000000};
            bins b_19 = {32'b00000000000010000000000000000000};
            bins b_20 = {32'b00000000000100000000000000000000};
            bins b_21 = {32'b00000000001000000000000000000000};
            bins b_22 = {32'b00000000010000000000000000000000};
            bins b_23 = {32'b00000000100000000000000000000000};
            bins b_24 = {32'b00000001000000000000000000000000};
            bins b_25 = {32'b00000010000000000000000000000000};
            bins b_26 = {32'b00000100000000000000000000000000};
            bins b_27 = {32'b00001000000000000000000000000000};
            bins b_28 = {32'b00010000000000000000000000000000};
            bins b_29 = {32'b00100000000000000000000000000000};
            bins b_30 = {32'b01000000000000000000000000000000};
            bins b_31 = {32'b10000000000000000000000000000000};
        }
        satp_walking: coverpoint ins.current.rs1_val {
            bins b_0  = {32'b00000000000000000000000000000001};
            bins b_1  = {32'b00000000000000000000000000000010};
            bins b_2  = {32'b00000000000000000000000000000100};
            bins b_3  = {32'b00000000000000000000000000001000};
            bins b_4  = {32'b00000000000000000000000000010000};
            bins b_5  = {32'b00000000000000000000000000100000};
            bins b_6  = {32'b00000000000000000000000001000000};
            bins b_7  = {32'b00000000000000000000000010000000};
            bins b_8  = {32'b00000000000000000000000100000000};
            bins b_9  = {32'b00000000000000000000001000000000};
            bins b_10 = {32'b00000000000000000000010000000000};
            bins b_11 = {32'b00000000000000000000100000000000};
            bins b_12 = {32'b00000000000000000001000000000000};
            bins b_13 = {32'b00000000000000000010000000000000};
            bins b_14 = {32'b00000000000000000100000000000000};
            bins b_15 = {32'b00000000000000001000000000000000};
            bins b_16 = {32'b00000000000000010000000000000000};
            bins b_17 = {32'b00000000000000100000000000000000};
            bins b_18 = {32'b00000000000001000000000000000000};
            bins b_19 = {32'b00000000000010000000000000000000};
            bins b_20 = {32'b00000000000100000000000000000000};
            bins b_21 = {32'b00000000001000000000000000000000};
            bins b_22 = {32'b00000000010000000000000000000000};
            bins b_23 = {32'b00000000100000000000000000000000};
            bins b_24 = {32'b00000001000000000000000000000000};
            bins b_25 = {32'b00000010000000000000000000000000};
            bins b_26 = {32'b00000100000000000000000000000000};
            bins b_27 = {32'b00001000000000000000000000000000};
            bins b_28 = {32'b00010000000000000000000000000000};
            bins b_29 = {32'b00100000000000000000000000000000};
            bins b_30 = {32'b01000000000000000000000000000000};
            // no mode bit (31)
        }
    `endif

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
    satp: coverpoint ins.current.insn[31:20] {
        bins satp = {12'h180};
    }

    // main coverpoints
    cp_csrr:         cross csrr,    csr,         old_priv_mode_s, nonzerord;             
    cp_csrw_corners: cross csrrw,   csr, old_priv_mode_s, rs1_corners {
        ignore_bins satp = binsof(csr.satp);
    }
    
    cp_csrcs:        cross csrop,   csr, old_priv_mode_s, rs1_ones {
        ignore_bins satp = binsof(csr.satp);
    }
    cp_scsrwalk:     cross csrname, csrop,       old_priv_mode_s, walking_ones;
    cp_satp:         cross csrop,   satp,        old_priv_mode_s, satp_walking;
    cp_shadow_m:     cross csrrw,   mcsrs,       old_priv_mode_m, rs1_corners;  // write 1s/0s to mstatus, mie, mip in m mode
    cp_shadow_s:     cross csrrw,   scsrs,       old_priv_mode_s, rs1_corners;  // write 1s/0s to sstatus, sie, sip in s mode
endgroup

covergroup ZicsrS_scause_cg with function sample(ins_t ins);
    option.per_instance = 0; 
 
    csrrw_scause: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b000101000010_?????_001_?????_1110011};
    }
    priv_mode_s: coverpoint ins.current.mode {
       bins S_mode = {2'b01};
    }
    scause_interrupt : coverpoint ins.current.rs1_val[XLEN-1] {
        bins interrupt = {1};
    }
    scause_exception : coverpoint ins.current.rs1_val[XLEN-1] {
        bins exception = {0};
    }
    scause_exception_values: coverpoint ins.current.rs1_val[XLEN-2:0] {
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
        bins b_17_16_reserved = {[17:16]};
        bins b_18_software_check = {18};
        bins b_19_hardware_error = {19};
        bins b_23_20_reserved = {[23:20]};
        bins b_31_24_custom = {[31:24]};
        bins b_47_32_reserved = {[47:32]};
        bins b_63_48_custom = {[63:48]};
    }
    scause_interrupt_values: coverpoint ins.current.rs1_val[XLEN-2:0] {
        bins b_0_reserved = {0};
        bins b_1_supervisor_software = {1};
        bins b_2_reserved = {2};
        bins b_3_machine_software = {3};
        bins b_4_reserved = {4};
        bins b_5_supervisor_timer = {5};
        bins b_6_reserved = {6};
        bins b_7_machine_timer = {7};
        bins b_8_reserved = {8};
        bins b_9_supervisor_external = {9};
        bins b_10_reserved = {10};
        bins b_11_machine_external = {11};
        bins b_12_reserved = {12};
        bins b_13_counter_overflow = {13};
        bins b_14_reserved = {14};
        bins b_15_reserved = {15};
    }

    // main coverpoints
    cp_scause_write_exception: cross csrrw_scause, priv_mode_s, scause_exception_values, scause_exception; // CSR write of scause in S mode with interesting values
    cp_scause_write_interrupt: cross csrrw_scause, priv_mode_s, scause_interrupt_values, scause_interrupt; // CSR write of scause in S mode with interesting values
endgroup


covergroup ZicsrS_sstatus_cg with function sample(ins_t ins);
    option.per_instance = 0; 

    cp_sstatus_sd: coverpoint ins.current.rs1_val[XLEN-1]  {
    }
    cp_sstatus_fs: coverpoint ins.current.rs1_val[14:13] {
    }    
    cp_sstatus_vs: coverpoint ins.current.rs1_val[10:9] {
    }    
    cp_sstatus_xs: coverpoint ins.current.rs1_val[16:15] {
    }
    csrrw_sstatus: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b000100000000_?????_001_?????_1110011};  // csrrw to sstatus
    }
    priv_mode_s: coverpoint ins.current.mode {
       bins S_mode = {2'b01};
    }
    // main coverpoints
    cp_mstatus_sd_write: cross priv_mode_s, csrrw_sstatus, cp_sstatus_sd, cp_sstatus_fs, cp_sstatus_vs, cp_sstatus_xs;

 endgroup

covergroup ZicsrS_sprivinst_cg with function sample(ins_t ins);
    option.per_instance = 0; 

    privinstrs: coverpoint ins.current.insn  {
        bins ecall  = {32'h00000073};
        bins ebreak = {32'h00100073};
        // fences are not really privileged instructions, but are tested here for lack of a more convenient place
        bins fence =  {32'h0ff0000f}; // iowr, iowr
        bins fence_rw_rw = {32'h0330000f}; // iowr, iowr
        bins fence_tso_rw_rw = {32'h8330000f}; // fence.tso
        bins pause = {32'h0100000f};
    }
    mret: coverpoint ins.current.insn  {
        bins mret   = {32'h30200073};
    }
    sret: coverpoint ins.current.insn  {
        bins sret   = {32'h10200073};
    }
    priv_mode_s: coverpoint ins.current.mode { 
       bins S_mode = {2'b01};
    }    
    // mret and sret change the privilege mode, so check the old mode it was coming from for these coverpoints used in sret/mret cross products
    old_priv_mode_s: coverpoint ins.prev.mode { 
       bins S_mode = {2'b01};
    }
    // old_mstatus_mprv: coverpoint ins.prev.csr[12'h300][17] {
    // }
    old_mstatus_tsr: coverpoint ins.prev.csr[12'h300][22] {
    }
    old_sstatus_spp: coverpoint ins.prev.csr[12'h100][8] {
    }
    old_sstatus_spie: coverpoint ins.prev.csr[12'h100][5] {
    }
    old_sstatus_sie: coverpoint ins.prev.csr[12'h100][1] {
    }
    // main coverpoints
    cp_mprivinst: cross privinstrs, old_priv_mode_s;
    cp_mret:      cross mret,       old_priv_mode_s;
    cp_sret:      cross sret,       old_priv_mode_s, old_sstatus_spp, old_sstatus_spie, old_sstatus_sie, old_mstatus_tsr;
endgroup

function void zicsrs_sample(int hart, int issue, ins_t ins);
    ZicsrS_scsr_cg.sample(ins);
    ZicsrS_scause_cg.sample(ins);
    ZicsrS_sstatus_cg.sample(ins);
    ZicsrS_sprivinst_cg.sample(ins);
endfunction
