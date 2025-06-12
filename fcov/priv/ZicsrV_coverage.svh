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
    // cp_mstatus_vs_*
    // tests mstatus ability to set clean and initial to dirty only when supposed to
    //////////////////////////////////////////////////////////////////////////////////

    vector_vector_arithmetic_instruction: coverpoint ins.current.insn[14:0] {
        wildcard bins arithmetic_vv_opcode = {15'b000_?????_1010111};
    }

    mstatus_vs_initial_clean : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "vs") {
        bins intial = {1};
        bins clean  = {2};
    }

    vsetvli_instruction: coverpoint ins.current.insn {
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
    }

    mstatus_vs_inactive    : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "vs") {
        bins inactive = {0};
    }

    cp_mstatus_vs_set_dirty_arithmetic  : cross std_vec,        vector_vector_arithmetic_instruction,   mstatus_vs_initial_clean;
    cp_mstatus_vs_set_dirty_csr         : cross std_vec,        vsetvli_instruction,                    mstatus_vs_initial_clean;

    cp_mstatus_vs_off_arithmetic        : cross std_trap_vec,   misa_v_active, mstatus_vs_inactive,     vector_vector_arithmetic_instruction;
    cp_mstatus_vs_off_csr               : cross std_trap_vec,   misa_v_active, mstatus_vs_inactive,     vsetvli_instruction;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_misa_v
    // attempts to set and clear the misa.V field
    //////////////////////////////////////////////////////////////////////////////////

    misa_csr: coverpoint ins.current.insn[31:20] {
        bins misa = {12'h301};
    }

    csr_set_clear: coverpoint ins.current.insn {
        wildcard bins csrrs     = {32'b????????????_?????_010_?????_1110011};
        wildcard bins csrrc     = {32'b????????????_?????_011_?????_1110011};
    }

    rs1_misa_v_active : coverpoint ins.current.rs1_val[21] {
        bins set = {1};
    }

    cp_misa_v_clear_set : cross misa_csr, csr_set_clear, rs1_misa_v_active;

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

    cp_vill_vsetvl:     cross vsetvl_instruction,       vtype_prev_vill_set, rs2_vtype_legal,   vtype_all_sew_supported, vtype_lmul_8;
    cp_vill_vset_i_vli: cross vset_i_vli_instructions,  vtype_prev_vill_set,                    vtype_all_sew_supported, vtype_lmul_8;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vill_vsetvl_rs2_vill
    // make sure even if vill bit is already set, writing with another illegal value
    // doesnt change the vtype csr value
    //////////////////////////////////////////////////////////////////////////////////

    rs2_vill_set : coverpoint ins.current.rs2_val[`XLEN-1] {
        bins set = {1};
    }

    cp_vill_vsetvl_rs2_vill : cross vsetvl_instruction, vtype_prev_vill_set, rs2_vtype_legal,   vtype_all_sew_supported, vtype_lmul_8, rs2_vill_set;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vtype_walking1s
    // attempts to write vtype with a 1 in every location
    //////////////////////////////////////////////////////////////////////////////////

    walking_ones_rs2: coverpoint $clog2(ins.current.rs2_val) iff ($onehot(ins.current.rs2_val)) {
        bins b_1[] = { [0:`XLEN-1] };
    }

    cp_vtype_walking1s : cross vsetvl_instruction, walking_ones_rs2;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vset_vill
    // writes a 1 to the vill bit with the rest of the register being a valid configuration
    //////////////////////////////////////////////////////////////////////////////////

    rs2_sew_supported : coverpoint check_vtype_sew_supported({{(`XLEN-3){1'b0}}, ins.current.rs2_val[5:3]}) {
        bins supported = {1};
    }

    rs2_lmul_1 : coverpoint ins.current.rs2_val[2:0] {
        bins lmul1 = {3'b000};
    }

    cp_vset_vill : cross vsetvl_instruction, rs2_vill_set, rs2_sew_supported, rs2_lmul_1, rs2_vtype_legal, vtype_prev_vill_clear;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vtype_vill_set_vl_0
    // confirms vl = 0 when vill is set to 1
    //////////////////////////////////////////////////////////////////////////////////

    rs1_non_zero : coverpoint ins.current.rs1_val {
        bins nonzero = { [0:`XLEN-1] };
    }

    cp_vtype_vill_set_vl_0 : cross vsetvl_instruction, rs1_non_zero, rs2_vill_set, vl_nonzero;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vsetvl_i_rd_*_rs1_*
    // checks behavior regarding setting the vl register to max or leave unchanged
    //////////////////////////////////////////////////////////////////////////////////

    rd_n0 : coverpoint ins.current.insn[11:7] {
        bins not_zero = {[31:1]};
    }

    rs1_x0 : coverpoint ins.current.insn[19:15] {
        bins zero = {0};
    }

    rd_x0 : coverpoint ins.current.insn[19:15] {
        bins zero = {0};
    }

    vset_i_vli_vlmax_unchanged : coverpoint (get_vlmax(ins.hart, ins.issue, `SAMPLE_BEFORE)
                                        == get_vlmax_params(ins.hart, ins.issue, ins.current.insn[25:23], ins.current.insn[22:20])) {
                                            bins true = {1};
                                        }

    cp_vset_i_vli_rd_n0_rs1_x0 : cross vset_i_vli_instructions, vl_not_max, rd_n0, rs1_x0, vtype_all_sew_supported, vtype_all_lmul_supported;
    cp_vset_i_vli_rd_x0_rs1_x0 : cross vset_i_vli_instructions, vl_nonzero, rd_x0, rs1_x0, vset_i_vli_vlmax_unchanged;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vsetvl_i_avl_*
    // tests corner case avl behavior on the vset instructions
    //////////////////////////////////////////////////////////////////////////////////

    rs1_le_vlmax : coverpoint (ins.current.rs1_val <= get_vlmax(ins.hart, ins.issue, `SAMPLE_BEFORE)) {
        bins true = {1};
    }

    rs1_lt_2x_vlmax_gt_vlmax : coverpoint (ins.current.rs1_val < 2 * get_vlmax(ins.hart, ins.issue, `SAMPLE_BEFORE)
                                        & ins.current.rs1_val > get_vlmax(ins.hart, ins.issue, `SAMPLE_BEFORE)) {
        bins true = {1};
    }

    rs1_ge_2x_vlmax : coverpoint (ins.current.rs1_val >= 2 * get_vlmax(ins.hart, ins.issue, `SAMPLE_BEFORE)) {
        bins true = {1};
    }

    vsetvl_i_instructions: coverpoint ins.current.insn {
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
        wildcard bins vsetvl    =   {32'b1000000_?????_?????_111_?????_1010111};
    }

    vsetivli_instruction : coverpoint ins.current.insn {
        wildcard bins vsetivli  =   {32'b1100_?_?_???_???_?????_111_?????_1010111};
    }

    imm5_corners : coverpoint ins.current.insn[19:15] {
        // all generated bins for imm corners
    }

    cp_vsetvl_i_avl_le_vlmax    : cross vsetvl_i_instructions, rs1_le_vlmax;
    cp_vsetvl_i_avl_lt_2x_vlmax : cross vsetvl_i_instructions, rs1_lt_2x_vlmax_gt_vlmax;
    cp_vsetvl_i_avl_ge_2x_vlmax : cross vsetvl_i_instructions, rs1_ge_2x_vlmax;

    cp_vsetivli_avl_corners     : cross vsetivli_instruction, vtype_all_sew_supported, imm5_corners, vtype_lmul_1;

    //////////////////////////////////////////////////////////////////////////////////
    // cp_vstart_out_of_bounds
    // attempts to write an unwritable bit of vstart csr
    //////////////////////////////////////////////////////////////////////////////////

    vstart_csr: coverpoint ins.current.insn[31:20] {
        bins vstart = {12'h008};
    }

    csr_write: coverpoint ins.current.insn {
        wildcard bins csrrw     = {32'b????????????_?????_001_?????_1110011};
    }

    rs1_2_to_16 : coverpoint (ins.current.rs1_val == 2 ** 16) {
        bins true = {1'b1};
    }

    cp_vstart_out_of_bounds : cross vstart_csr, csr_write, rs1_2_to_16;

endgroup

function void zicsrv_sample(int hart, int issue, ins_t ins);
    ZicsrV_cg.sample(ins);
endfunction
