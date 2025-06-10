///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: James (Kaden) Cassidy jacassidy@hmc.edu May 29 2025
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

`define COVER_ZICSRV

covergroup ZicsrV_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints_vector.svh"

    test: coverpoint ins.current.insn[0] {
        bins one    = {0};
        bins two    = {1};
        bins one_one    = {1'b0};
        bins one_two    = {1'b1};
    }

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vcsrrswc
    // writing setting and clearing all vector csrs
    //////////////////////////////////////////////////////////////////////////////////

    vcsrs: coverpoint ins.current.insn[31:20] {
        bins vstart = {12'h008};
        bins vxsat  = {12'h009};
        bins vxrm   = {12'h00A};
        bins vcsr   = {12'h00F};
        bins vl     = {12'hC20};
        bins vtype  = {12'hC21};
        bins vlenb  = {12'hC22};
    }

    csrops: coverpoint ins.current.insn {
        wildcard bins csrrs     = {32'b????????????_?????_010_?????_1110011};
        wildcard bins csrrc     = {32'b????????????_?????_011_?????_1110011};
        wildcard bins csrrw     = {32'b????????????_?????_001_?????_1110011};
    }

    cp_vcsrrswc: cross vcsrs, csrops;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_sew_lmul_vset*
    // writes all combinations of lmul and sew to vtype with all vset* instructions
    //////////////////////////////////////////////////////////////////////////////////

    vset_i_vli_instructions: coverpoint ins.current.insn {
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
        wildcard bins vsetivli  =   {32'b1100_?_?_???_???_?????_111_?????_1010111};
    }

    vsetvl_instruction: coverpoint ins.current.insn {
        wildcard bins vsetvl    =   {32'b1000000_?????_?????_111_?????_1010111};
    }

    // attempt to set lmul to all values
    vset_lmul: coverpoint ins.prev.insn[22:20] {
        // autofill 000-111
    }

    // attempt to set sew to all values
    vset_sew: coverpoint ins.prev.insn[25:23] {
        // autofill 000-111
    }

    // rs2 in vsetvl is written to vtype
    rs2_vtype_legal: coverpoint ins.current.rs2_val[`XLEN-1:8] {
        bins legal     =   {0};
    }

    rs2_lmul_sew: coverpoint ins.current.rs2_val[5:0] {
        // autofill all combinations of lmul and sew
    }

    cp_sew_lmul_vsetvl:         cross vsetvl_instruction, rs2_vtype_legal, rs2_lmul_sew;
    cp_sew_lmul_vset_i_vli:     cross vset_i_vli_instructions, vset_sew, vset_lmul;

    //////////////////////////////////////////////////////////////////////////////////
    // cr_vill_vset*
    // writes vtype with legal lmul and sew values starting with vill = 1
    //////////////////////////////////////////////////////////////////////////////////

    rs2_lmulge1_sew8: coverpoint ins.current.rs2_val[7:0] {
        wildcard bins lmul_one      = {8'b??_000_000};
        wildcard bins lmul_two      = {8'b??_000_001};
        wildcard bins lmul_four     = {8'b??_000_010};
        wildcard bins lmul_eight    = {8'b??_000_011};
    }

    vset_lmulge1:   coverpoint ins.current.insn[22:20] {
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins four   = {3'b010};
        bins eight  = {3'b011};
    }
    vset_sew8:      coverpoint ins.current.insn[25:23] {
        bins target = {3'b000};
    }

    cr_vill_vsetvl:     cross vsetvl_instruction, vtype_prev_vill_set, rs2_vtype_legal, rs2_lmulge1_sew8;
    cr_vill_vset_i_vli: cross vset_i_vli_instructions, vtype_prev_vill_set, vset_lmulge1, vset_sew8;

endgroup

function void zicsrv_sample(int hart, int issue, ins_t ins);
    ZicsrV_cg.sample(ins);
endfunction
