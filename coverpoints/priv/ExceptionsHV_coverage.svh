///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: James Kaden Cassidy jacassidy@hmc.edu June 12 2025
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

`define COVER_EXCEPTIONSHV

covergroup ExceptionsHV_exceptions_cg with function sample(ins_t ins);
    option.per_instance = 0;

    `include "coverage/RISCV_coverage_standard_coverpoints_vector.svh"

    //////////////////////////////////////////////////////////////////////////////////
    // cp_mstatus_vs_off
    // checks that instructions trap when mstatus.vs is inactive regardless of vsstatus.vs
    //////////////////////////////////////////////////////////////////////////////////

    vector_instruction: coverpoint ins.current.insn[14:0] {
        wildcard bins arithmetic_vv_opcode = {15'b000_?????_1010111};
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
    }

    mstatus_vs_inactive    : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "vs") {
        bins inactive = {0};
    }

    vsstatus_vs_active : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vsstatus", "vs") {
        bins init   = {1};
        bins clean  = {2};
        bins dirty  = {3};
    }

    cp_mstatus_vs_off : cross std_trap_vec, misa_v_active, mstatus_vs_inactive, vsstatus_vs_active, vector_instruction;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vsstatus_vs_off
    // checks that instructions trap when vsstatus.vs is inactive regardless of mstatus.vs
    //////////////////////////////////////////////////////////////////////////////////

    mstatus_vs_active    : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "vs") {
        bins init   = {1};
        bins clean  = {2};
        bins dirty  = {3};
    }

    vsstatus_vs_inactive : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vsstatus", "vs") {
        bins inactive = {0};
    }

    cp_vsstatus_vs_off : cross std_trap_vec, misa_v_active, mstatus_vs_active, vsstatus_vs_inactive, vector_instruction;


endgroup


function void exceptionshv_sample(int hart, int issue, ins_t ins);
    ExceptionsHV_exceptions_cg.sample(ins);
endfunction
