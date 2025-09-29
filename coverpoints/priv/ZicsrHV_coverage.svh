///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: James (Kaden) Cassidy jacassidy@hmc.edu June 11th 2025
//
// Copyright (C) 2025 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
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


`define COVER_ZICSRHV

covergroup ZicsrHV_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints_vector.svh"


    //////////////////////////////////////////////////////////////////////////////////
    // cp_vsstatus_vs_*
    // attempts to set and clear the misa.V field
    //////////////////////////////////////////////////////////////////////////////////

    mstatus_vs_clean : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "vs") {
        bins clean  = {2};
    }

    vsstatus_vs_initial_clean : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vsstatus", "vs") {
        bins init   = {1};
        bins clean  = {2};
    }

    vsetvli_instruction: coverpoint ins.current.insn {
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
    }

    vector_vector_arithmetic_instruction: coverpoint ins.current.insn[14:0] {
        bins arithmetic_vv_opcode = {15'b000_?????_1010111};
    }

    cp_vsstatus_vs_set_dirty_arithmetic  : cross std_vec,        vector_vector_arithmetic_instruction,  mstatus_vs_clean, vsstatus_vs_initial_clean;
    cp_vsstatus_vs_set_dirty_csr         : cross std_vec,        vsetvli_instruction,                   mstatus_vs_clean, vsstatus_vs_initial_clean;

endgroup

function void zicsrhv_sample(int hart, int issue, ins_t ins);
    ZicsrHV_cg.sample(ins);
endfunction
