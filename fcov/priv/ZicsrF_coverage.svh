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

`define COVER_ZICSRF
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicsrf_t;

covergroup fcsr_cg with function sample(ins_zicsrf_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrF fcsr";

    // building blocks for the main coverpoints

    csrrw_fcsr: coverpoint ins.current.insn {
        wildcard bins csrrw_fcsr = {32'b000000000011_?????_001_?????_1110011}; 
    }
    fcsr_frm_corners: coverpoint ins.current.rs1_val[7:5] {

    }
    fflags_corners: coverpoint ins.current.rs1_val[4:0] {

    }
    fcsr_reserved_walking: coverpoint ins.current.rs1_val[31:8]{
        bins b_8  = {24'b000000000000000000000001};
        bins b_9  = {24'b000000000000000000000010};
        bins b_10 = {24'b000000000000000000000100};
        bins b_11 = {24'b000000000000000000001000};
        bins b_12 = {24'b000000000000000000010000};
        bins b_13 = {24'b000000000000000000100000};
        bins b_14 = {24'b000000000000000001000000};
        bins b_15 = {24'b000000000000000010000000};
        bins b_16 = {24'b000000000000000100000000};
        bins b_17 = {24'b000000000000001000000000};
        bins b_18 = {24'b000000000000010000000000};
        bins b_19 = {24'b000000000000100000000000};
        bins b_20 = {24'b000000000001000000000000};
        bins b_21 = {24'b000000000010000000000000};
        bins b_22 = {24'b000000000100000000000000};
        bins b_23 = {24'b000000001000000000000000};
        bins b_24 = {24'b000000010000000000000000};
        bins b_25 = {24'b000000100000000000000000};
        bins b_26 = {24'b000001000000000000000000};
        bins b_27 = {24'b000010000000000000000000};
        bins b_28 = {24'b000100000000000000000000};
        bins b_29 = {24'b001000000000000000000000};
        bins b_30 = {24'b010000000000000000000000};
        bins b_31 = {24'b100000000000000000000000};
    }
    mstatus_FS: coverpoint ins.current.csr[12'h300][14:13] {

    }
    
    // main coverpoints
    cp_fcsr_frm_write:    cross csrrw_fcsr, fcsr_frm_corners,      mstatus_FS;
    cp_fcsr_fflags_write: cross csrrw_fcsr, fflags_corners,        mstatus_FS;
    cp_fcsr_reserved:     cross csrrw_fcsr, fcsr_reserved_walking, mstatus_FS; 
endgroup

covergroup frm_cg with function sample(ins_zicsrf_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrF frm csr";

    // building blocks for main coverpoints
    csrrw_frm: coverpoint ins.current.insn {
    wildcard bins csrrw_frm = {32'b000000000010_?????_001_?????_1110011}; 
    }
    frm_corners: coverpoint ins.current.rs1_val[2:0] {

    }
    frm_reserved_walking: coverpoint ins.current.rs1_val[31:3] {
        bins b_3  = {29'b00000000000000000000000000001};
        bins b_4  = {29'b00000000000000000000000000010};
        bins b_5  = {29'b00000000000000000000000000100};
        bins b_6  = {29'b00000000000000000000000001000};
        bins b_7  = {29'b00000000000000000000000010000};
        bins b_8  = {29'b00000000000000000000000100000};
        bins b_9  = {29'b00000000000000000000001000000};
        bins b_10 = {29'b00000000000000000000010000000};
        bins b_11 = {29'b00000000000000000000100000000};
        bins b_12 = {29'b00000000000000000001000000000};
        bins b_13 = {29'b00000000000000000010000000000};
        bins b_14 = {29'b00000000000000000100000000000};
        bins b_15 = {29'b00000000000000001000000000000};
        bins b_16 = {29'b00000000000000010000000000000};
        bins b_17 = {29'b00000000000000100000000000000};
        bins b_18 = {29'b00000000000001000000000000000};
        bins b_19 = {29'b00000000000010000000000000000};
        bins b_20 = {29'b00000000000100000000000000000};
        bins b_21 = {29'b00000000001000000000000000000};
        bins b_22 = {29'b00000000010000000000000000000};
        bins b_23 = {29'b00000000100000000000000000000};
        bins b_24 = {29'b00000001000000000000000000000};
        bins b_25 = {29'b00000010000000000000000000000};
        bins b_26 = {29'b00000100000000000000000000000};
        bins b_27 = {29'b00001000000000000000000000000};
        bins b_28 = {29'b00010000000000000000000000000};
        bins b_29 = {29'b00100000000000000000000000000};
        bins b_30 = {29'b01000000000000000000000000000};
        bins b_31 = {29'b10000000000000000000000000000};
    }
    mstatus_FS: coverpoint ins.current.csr[12'h300][14:13] {

    }
    // main coverpoints
    cp_frm_write:          cross csrrw_frm, frm_corners,          mstatus_FS;
    cp_frm_write_reserved: cross csrrw_frm, frm_reserved_walking, mstatus_FS;
endgroup

covergroup fflags_cg with function sample(ins_zicsrf_t ins);
    option.per_instance = 1; 
    option.comment = "ZicsrF fflags csr";

    // building blocks for main coverpoints
    csrrw_fflags: coverpoint ins.current.insn {
    wildcard bins csrrw_fflags = {32'b000000000001_?????_001_?????_1110011}; 
    }
    fflags_corners: coverpoint ins.current.rs1_val[4:0] {

    }
    fflags_reserved_walking: coverpoint ins.current.rs1_val[31:5] {
        bins b_5  = {27'b000000000000000000000000001};
        bins b_6  = {27'b000000000000000000000000010};
        bins b_7  = {27'b000000000000000000000000100};
        bins b_8  = {27'b000000000000000000000001000};
        bins b_9  = {27'b000000000000000000000010000};
        bins b_10 = {27'b000000000000000000000100000};
        bins b_11 = {27'b000000000000000000001000000};
        bins b_12 = {27'b000000000000000000010000000};
        bins b_13 = {27'b000000000000000000100000000};
        bins b_14 = {27'b000000000000000001000000000};
        bins b_15 = {27'b000000000000000010000000000};
        bins b_16 = {27'b000000000000000100000000000};
        bins b_17 = {27'b000000000000001000000000000};
        bins b_18 = {27'b000000000000010000000000000};
        bins b_19 = {27'b000000000000100000000000000};
        bins b_20 = {27'b000000000001000000000000000};
        bins b_21 = {27'b000000000010000000000000000};
        bins b_22 = {27'b000000000100000000000000000};
        bins b_23 = {27'b000000001000000000000000000};
        bins b_24 = {27'b000000010000000000000000000};
        bins b_25 = {27'b000000100000000000000000000};
        bins b_26 = {27'b000001000000000000000000000};
        bins b_27 = {27'b000010000000000000000000000};
        bins b_28 = {27'b000100000000000000000000000};
        bins b_29 = {27'b001000000000000000000000000};
        bins b_30 = {27'b010000000000000000000000000};
        bins b_31 = {27'b100000000000000000000000000};
    }
    fflags_toggle: coverpoint ins.current.csr[12'h003][4:0] {
        wildcard bins NX = (5'b????0 => 5'b????1);
        wildcard bins UF = (5'b???0? => 5'b???1?);
        wildcard bins OF = (5'b??0?? => 5'b??1??);
        wildcard bins DZ = (5'b?0??? => 5'b?1???);
        wildcard bins NV = (5'b0???? => 5'b1????);
    }
    mstatus_FS: coverpoint ins.current.csr[12'h300][14:13] {

    }
    mstatus_FS_n0: coverpoint ins.current.csr[12'h300][14:13] {
        bins not_zero = {!3'b000};
    }
    // main coverpoints
    cp_fflags_write:          cross csrrw_fflags, fflags_corners,          mstatus_FS;
    cp_fflags_write_reserved: cross csrrw_fflags, fflags_reserved_walking, mstatus_FS;
    cp_fflags_set_m:          cross fflags_toggle, mstatus_FS_n0;
endgroup

function void zicsrf_sample(int hart, int issue);
    ins_zicsrf_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    fcsr_cg.sample(ins);
    frm_cg.sample(ins);
    fflags.sample(ins);
    
endfunction
