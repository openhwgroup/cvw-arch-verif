///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: James Kaden Cassidy jacassidy@hmc.edu 28 Mar 2025
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

`define COVER_EXCEPTIONSV

covergroup Vector_edgecases_cg with function sample(ins_t ins);
    option.per_instance = 0;

    vtype_prev_vill_clear: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
        bins vill_not_set = {1'b0};
    }

    vtype_prev_vill_set: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
        bins vill_set = {1'b1};
    }

    vstart_zero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") {
        bins target = {0};
    }

    vl_nonzero: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") {
        //Any value between max and 1
        bins target = {[`XLEN'h10000:`XLEN'h1]};
    }

    nontrivial: cross vtype_prev_vill_clear, vstart_zero, vl_nonzero;

    //TODO find new home for below

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

    cp_vcsrrwc: cross vcsrs, csrops;

    //TODO find new home for above

    vset_i_vli_instructions: coverpoint ins.current.insn {
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
        wildcard bins vsetivli  =   {32'b1100_?_?_???_???_?????_111_?????_1010111};
    }

    vsetvl_instruction: coverpoint ins.current.insn {
        wildcard bins vsetvl    =   {32'b1000000_?????_?????_111_?????_1010111};
    }

    //attempt to set lmul to all values
    vset_lmul: coverpoint ins.prev.insn[22:20] {
        //autofill 000-111
    }

    //attempt to set sew to all values
    vset_sew: coverpoint ins.prev.insn[25:23] {
        //autofill 000-111
    }

    rs2_vtype_legal: coverpoint ins.current.rs2_val[`XLEN:8] {
        bins legal     =   {0};
    }

    rs2_lmul_sew: coverpoint ins.current.rs2_val[5:0] {
        //autofill all combinations of lmul and sew
    }

    cp_sew_lmul_vsetvl:         cross vsetvl_instruction, rs2_vtype_legal, rs2_lmul_sew;
    cp_sew_lmul_vset_i_vli:     cross vset_i_vli_instructions, vset_sew, vset_lmul;

    mask_write: coverpoint ins.current.insn {
        wildcard bins vmand_mm  = {32'b011001_1??????????010?????1010111};
        wildcard bins vmnand_mm = {32'b011101_1??????????010?????1010111};
        wildcard bins vmandn_mm = {32'b011000_1??????????010?????1010111};
        wildcard bins vmxor_mm  = {32'b011011_1??????????010?????1010111};
        wildcard bins vmor_mm   = {32'b011010_1??????????010?????1010111};
        wildcard bins vmnor_mm  = {32'b011110_1??????????010?????1010111};
        wildcard bins vmorn_mm  = {32'b011100_1??????????010?????1010111};
        wildcard bins vmxnor_mm = {32'b011111_1??????????010?????1010111};
    }

    vtype_lmulge1: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins four   = {3'b010};
        bins eight  = {3'b011};
    }

    vl_max: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl") ==
                        get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vlenb", "vlenb") * 8) {
        bins target = {1'b1};
    }

    cr_mask_write_lmulge1: cross vtype_lmulge1, mask_write, nontrivial, vl_max;

    rs2_lmulge1_sew8: coverpoint ins.current.rs2_val[7:0] {
        wildcard bins lmul_one      = {8'b??_000_000};
        wildcard bins lmul_two      = {8'b??_000_001};
        wildcard bins lmul_four     = {8'b??_000_010};
        wildcard bins lmul_eight    = {8'b??_000_011};
    }

    whole_register_load_store: coverpoint ins.current.insn {
        wildcard bins load  = {32'b???_?_00_?_01000_?????_???_?????_0000111};
        wildcard bins store = {32'b???_?_00_?_01000_?????_???_?????_0100111};
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

    cr_lmul_vsetvl:     cross vtype_prev_vill_clear,    vsetvl_instruction,         vtype_lmulge1,    rs2_lmulge1_sew8, rs2_vtype_legal;
    cr_lmul_vset_i_vli: cross vtype_prev_vill_clear,    vset_i_vli_instructions,    vtype_lmulge1,    vset_lmulge1, vset_sew8;

    cr_vill_whole_register_load_store: cross vl_nonzero, vstart_zero, whole_register_load_store, vtype_prev_vill_set;
    cr_lmul_whole_register_load_store: cross vl_max, nontrivial, whole_register_load_store, vtype_lmulge1;

    vl_ff: coverpoint ins.current.insn {
        bins load = {32'b???_0_00_?_10000_?????_???_?????_0000111};
    }

    vl_update: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") !=
                           get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl")) {
        bins vl_updated = {1'b1};
    }

    vl_update_vl_ff: cross vl_ff, vl_update;

    vtype_lmul_2: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins two = {3'b001};
    }

    vtype_lmul_4: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins two = {3'b010};
    }

    vtype_lmul_8: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins two = {3'b011};
    }

    vd_reg_notdiv_2: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard bins odd = {5'b????1};
    }
    //TODO: this is considered bit swizzling rather than an option of bins to hit
    vd_reg_notdiv_4: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard bins ndiv_4 = {5'b???01, 5'b???10, 5'b???11};
    }

    vd_reg_notdiv_8: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard bins ndiv_8 = {5'b??001, 5'b??010, 5'b??011,
                                5'b??101, 5'b??110, 5'b??111, 5'b??100};
    }

    vs1_reg_notdiv_2: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard bins odd = {5'b????1};
    }

    vs1_reg_notdiv_4: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard bins ndiv_4 = {5'b???01, 5'b???10, 5'b???11};
    }

    vs1_reg_notdiv_8: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard bins ndiv_8 = {5'b??001, 5'b??010, 5'b??011,
                                5'b??101, 5'b??110, 5'b??111, 5'b??100};
    }

    vs2_reg_div_2: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard bins divisible_by_2 = {5'b????0};
    }

    vs2_reg_div_4: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard bins divisible_by_4 = {5'b???00};
    }

    vs2_reg_div_8: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard bins divisible_by_8 = {5'b??000};
    }

    reduction_operation: coverpoint ins.current.insn {
        wildcard bins vredsum_vs    =   {32'b000000_?_?????_?????_010_?????_1010111};
        wildcard bins vwredsumu_vs  =   {32'b110000_?_?????_?????_000_?????_1010111};
        wildcard bins vwredsum_vs   =   {32'b110001_?_?????_?????_000_?????_1010111};
        wildcard bins vredmaxu_vs   =   {32'b000110_?_?????_?????_010_?????_1010111};
        wildcard bins vredmax_vs    =   {32'b000111_?_?????_?????_010_?????_1010111};
        wildcard bins vredminu_vs   =   {32'b000100_?_?????_?????_010_?????_1010111};
        wildcard bins vredmin_vs    =   {32'b000101_?_?????_?????_010_?????_1010111};
        wildcard bins vredand_vs    =   {32'b000001_?_?????_?????_010_?????_1010111};
        wildcard bins vredor_vs     =   {32'b000010_?_?????_?????_010_?????_1010111};
        wildcard bins vredxor_vs    =   {32'b000011_?_?????_?????_010_?????_1010111};
    }

    reduction_vs1_vd_notdiv_2: cross vtype_lmul_2, vd_reg_notdiv_2, vs1_reg_notdiv_2, vs2_reg_div_2, reduction_operation, nontrivial;
    reduction_vs1_vd_notdiv_4: cross vtype_lmul_4, vd_reg_notdiv_4, vs1_reg_notdiv_4, vs2_reg_div_4, reduction_operation, nontrivial;
    reduction_vs1_vd_notdiv_8: cross vtype_lmul_8, vd_reg_notdiv_8, vs1_reg_notdiv_8, vs2_reg_div_8, reduction_operation, nontrivial;

    vd_v0: coverpoint ins.current.insn[11:7] {
        bins zero = {5'b0};
    }

    vm_active: coverpoint ins.current.insn[25] {
        bins active = {1'b0};
    }

    reduce_to_v0_masked: cross reduction_operation, vd_v0, vm_active, nontrivial;
    mask_write_v0_masked: cross mask_write, vd_v0, vm_active, nontrivial;


endgroup

// covergroup ExceptionsV_illegal_cg with function sample(ins_t ins);
//     option.per_instance = 0;

//     Test: coverpoint ins.current.insn[31:29] {
//         bins one    = {3'b000};
//         bins two    = {3'b001};
//         bins three  = {3'b010};
//         bins four   = {3'b011};
//         bins five   = {3'b100};
//         bins six    = {3'b101};
//         bins seven  = {3'b110};
//         bins eight  = {3'b111};
//     }

//     //TODO find new home for coverpoint bellow on spreadsheet

//     vstart_write: coverpoint ins.current.insn {
//         wildcard bins vstart_csrrw     = {32'b000000001000_?????_001_?????_1110011};
//     }

//     rs1_val_pow_2: coverpoint unsigned'(ins.current.rs1_val) {
//         bins zero = {1};
//         bins one = {2};
//         bins two = {4};
//         bins three = {8};
//         bins four = {16};
//         bins five = {32};
//         bins six = {64};
//         bins seven = {128};
//         bins eight = {256};
//         bins nine = {512};
//         bins ten = {1024};
//         bins eleven = {2048};
//         bins twelve = {4096};
//         bins thirteen = {8192};
//         bins fourteen = {16384};
//         bins fifteen = {32768};
//         bins sixteen = {65536};
//     }

//     set_vstart_pow_2: cross vstart_write, rs1_val_pow_2;

//     arithmatic_vstart_pow_2: cross vstart_write, rs1_val_pow_2, vector_vector_arithmatic_instruction;

//     //TODO find new home for coverpoint above on spreadsheet (currently at top of exceptions I think)


//     vstart_set_non_zero: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") == '0 &
//                                      get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vstart", "vstart") != '0) {
//         //boolean coverpoint
//     }

//     vector_vector_arithmatic_instruction: coverpoint ins.current.insn[14:0] {
//         bins arithmatic_vv_opcode = {15'b000_?????_1010111};
//     }

//     vtype_prev_vill_set: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
//         bins vill_set = {1'b1};
//     }
//     //TODO coverpoint may be unreachable
//     vstart_not_modified_illegal_instruction: cross vtype_prev_vill_set, vector_vector_arithmatic_instruction, vstart_set_non_zero;

// endgroup


function void exceptionsv_sample(int hart, int issue, ins_t ins);
    // if(traceDataQ[hart][issue][0].inst_name[0] == "v") begin
        Vector_edgecases_cg.sample(ins);
        // ExcepptionsV_illegal_cg.sample(ins);
    // end
endfunction
