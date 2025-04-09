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

`define COVER_SSSTRICTINSTRS

covergroup SsstrictS_instr_cg with function sample(ins_t ins);
    option.per_instance = 0; 
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"
    `include "RISCV_coverage_instr.svh"
    
    // main coverpoints
    cp_illegal:           cross priv_mode_s, illegal;
    cp_load:              cross priv_mode_s, load;
    cp_fload:             cross priv_mode_s, fload;
    cp_fence_cbo:         cross priv_mode_s, fence_cbo;
    cp_cbo_immediate:     cross priv_mode_s, cbo_immediate;
    cp_cbo_rd:            cross priv_mode_s, cbo_rd;
    cp_Itype:             cross priv_mode_s, Itype;
    cp_aes64ks1i:         cross priv_mode_s, aes64ks1i;
    cp_IWtype:            cross priv_mode_s, IWtype;
    cp_IWshift:           cross priv_mode_s, IWshift;
    cp_store:             cross priv_mode_s, store;
    cp_fstore:            cross priv_mode_s, fstore;
    cp_atomic_funct3:     cross priv_mode_s, atomic_funct3;
    cp_atomic_funct7:     cross priv_mode_s, atomic_funct7;
    cl_lrsc:              cross priv_mode_s, lrsc;
    cp_Rtype:             cross priv_mode_s, Rtype;
    cp_RWtype:            cross priv_mode_s, RWtype;
    cp_Ftype:             cross priv_mode_s, Ftype;
    cp_fsqrt:             cross priv_mode_s, fsqrt;
    cp_fclass:            cross priv_mode_s, fclass;
    cp_fcvtif:            cross priv_mode_s, fcvtif;
    cp_fcvtif_fmt:        cross priv_mode_s, fcvtif_fmt;
    cp_fcvtfi:            cross priv_mode_s, fcvtfi;
    cp_fcvtfi_fmt:        cross priv_mode_s, fcvtfi_fmt;
    cp_fcvtff:            cross priv_mode_s, fcvtff;
    cp_fcvtff_fmt:        cross priv_mode_s, fcvtff_fmt;
    cp_fmvif:             cross priv_mode_s, fmvif;
    cp_fmvfi:             cross priv_mode_s, fmvfi;
    cp_fli:               cross priv_mode_s, fli;
    cp_fmvh:              cross priv_mode_s, fmvh;
    cp_fmvp:              cross priv_mode_s, fmvp;
    cp_cvtmodwd:          cross priv_mode_s, cvtmodwd;
    cp_branch:            cross priv_mode_s, branch;
    cp_jalr:              cross priv_mode_s, jalr;
    cp_privileged_funct3: cross priv_mode_s, privileged_funct3;
    cp_privileged_000:    cross priv_mode_s, privileged_000;
    cp_privileged_rd:     cross priv_mode_s, privileged_rd;
    cp_privileged_rs2:    cross priv_mode_s, privileged_rs2;
    cp_reserved:          cross priv_mode_s, reserved;
endgroup

covergroup SsstrictS_comp_instr_cg with function sample(ins_t ins);
    option.per_instance = 0; 
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"
    `include "RISCV_coverage_comp_instr.svh"

    // main coverpoints
    cp_compressed00: cross priv_mode_s, compressed00;
    cp_compressed01: cross priv_mode_s, compressed01;
    cp_compressed10: cross priv_mode_s, compressed10;
endgroup

function void ssstrictinstrs_sample(int hart, int issue, ins_t ins);
    SsstrictS_scsr_cg.sample(ins);
    SsstrictS_instr_cg.sample(ins);
    SsstrictS_comp_instr_cg.sample(ins);
endfunction
