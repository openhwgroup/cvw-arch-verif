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

covergroup ExceptionsV_edgecases_cg with function sample(ins_t ins);
    option.per_instance = 0;

    vtype_prev_vill_clear: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
        bins vill_not_set = {1'b0};
    }

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

    //attempt to set lmul to all values
    vtype_lmul: coverpoint ins.prev.insn[22:20] {
        //autofill 000-111
    }

    //attempt to set sew to all values
    vtype_sew: coverpoint ins.prev.insn[25:23] {
        //autofill 000-111
    }

    cr_vset_i_vl_i_lmul_sew: cross vset_i_vl_i_instructions, vtype_lmul, vtype_sew, vtype_prev_vill_clear;

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

    cr_mask_write_lmul: cross vtype_lmul, mask_write, vtype_prev_vill_clear;

    vset_i_vl_i_instructions: coverpoint ins.current.insn {
        wildcard bins vsetvl    =   {32'b1000000_?????_?????_111_?????_1010111};
        wildcard bins vsetvli   =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
        wildcard bins vsetivli  =   {32'b1100_?_?_???_???_?????_111_?????_1010111};
    }

    whole_register_load: coverpoint ins.current.insn {
        wildcard bins bin = {32'b???_?_00_?_01000_?????_???_?????_0000111};
    }

    vill_set_whole_register_load: cross whole_register_load, vtype_prev_vill_set;
    vill_set_vset_i_vl_i: cross vset_i_vl_i_instructions, vtype_prev_vill_set;

    vl_ff: coverpoint ins.current.insn {
        //TODO:needs to be written
    }

    vl_update: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vl", "vl") !=
                           get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl")) {
        bins vl_updated = {1'b1};
    }

    //TODO needs another coverpoint for specific situation
    vl_update_vl_ff: cross vl_ff, vl_update, vtype_prev_vill_clear;

    vstart_set_non_zero: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart") == '0 &
                                     get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vstart", "vstart") != '0) {
        //boolean coverpoint
    }

    vector_vector_arithmatic_instruction: coverpoint ins.current.insn[14:0] {
        bins arithmatic_vv_opcode = {15'b000_?????_1010111};
    }

    vtype_prev_vill_set: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
        bins vill_set = {1'b1};
    }

    vstart_not_modified_illegal_instruction: cross vtype_prev_vill_set, vector_vector_arithmatic_instruction, vstart_set_non_zero;

    vstart_write: coverpoint ins.current.insn {
        wildcard bins vstart_csrrw     = {32'b000000001000_?????_001_?????_1110011};
    }

    rs1_val_pow_2: coverpoint unsigned'(ins.current.rs1_val) {
        bins zero = {1};
        bins one = {2};
        bins two = {4};
        bins three = {8};
        bins four = {16};
        bins five = {32};
        bins six = {64};
        bins seven = {128};
        bins eight = {256};
        bins nine = {512};
        bins ten = {1024};
        bins eleven = {2048};
        bins twelve = {4096};
        bins thirteen = {8192};
        bins fourteen = {16384};
        bins fifteen = {32768};
        bins sixteen = {65536};
    }

    set_vstart_pow_2: cross vstart_write, rs1_val_pow_2;

    arithmatic_vstart_pow_2: cross vstart_write, rs1_val_pow_2, vector_vector_arithmatic_instruction;

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

    reduction_vs1_vd_notdiv_2: cross vtype_lmul_2, vd_reg_notdiv_2, vs1_reg_notdiv_2, reduction_operation;
    reduction_vs1_vd_notdiv_4: cross vtype_lmul_4, vd_reg_notdiv_4, vs1_reg_notdiv_4, reduction_operation;
    reduction_vs1_vd_notdiv_8: cross vtype_lmul_8, vd_reg_notdiv_8, vs1_reg_notdiv_8, reduction_operation;

    vd_v0: coverpoint ins.current.insn[11:7] {
        bins zero = {5'b0};
    }

    vm_active: coverpoint ins.current.insn[25] {
        bins active = {1'b0};
    }

    reduce_to_v0_masked: cross reduction_operation, vd_v0, vm_active;
    mask_write_v0_masked: cross mask_write, vd_v0, vm_active;


endgroup

covergroup ExceptionsV_reserved_cg with function sample(ins_t ins);

    vtype_prev_vill_clear: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
        bins vill_clear = {1'b0};
    }

    vtype_prev_vill_set: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vill")) {
        bins vill_set = {1'b1};
    }

    reserved_vcsrs: coverpoint ins.current.insn[31:20] {
        bins first      = {12'h00B};
        bins second     = {12'h00C};
        bins third      = {12'h00D};
        bins fourth     = {12'h00E};
    }

    csrops: coverpoint ins.current.insn {
        wildcard bins csrrs     = {32'b????????????_?????_010_?????_1110011};
        wildcard bins csrrc     = {32'b????????????_?????_011_?????_1110011};
        wildcard bins csrrw     = {32'b????????????_?????_001_?????_1110011};
    }

    csrops_reserved_vcsrs: cross csrops, reserved_vcsrs;

    vset_i_vl_i_instructions: coverpoint ins.current.insn {
        wildcard bins vsetvl   =   {32'b1000000_?????_?????_111_?????_1010111};
        wildcard bins vsetvli  =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
        wildcard bins vsetivli =   {32'b1100_?_?_???_???_?????_111_?????_1010111};
    }

    vsew_reserved: coverpoint ins.current.insn[25:23] {
        wildcard bins reserved = {3'b1??};
    }

    vset_i_vl_i_reserved_vsew: cross vsew_reserved, vset_i_vl_i_instructions;

    //attempt to set lmul to all values
    vtype_lmul: coverpoint ins.prev.insn[22:20] {
        //autofill 000-111
    }

    lmul_vset_i_vl_i: cross vset_i_vl_i_instructions, vtype_lmul;

    //TODO
    vector_narrowing_instructions: coverpoint ins.current.insn {

    }

    //TODO
    vector_widening_instructions: coverpoint ins.current.insn {

    }

    vtype_lmul_1: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins two = {3'b000};
    }

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

    vs2_reg_notdiv_2: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard bins odd = {5'b????1};
    }

    vs2_reg_notdiv_4:coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard bins ndiv_4 = {5'b???01, 5'b???10, 5'b???11};
    }

    vs2_reg_notdiv_8: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard bins ndiv_8 = {5'b??001, 5'b??010, 5'b??011,
                                5'b??101, 5'b??110, 5'b??111, 5'b??100};
    }

    vd_reg_div_2: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard bins divisible_by_2 = {5'b????0};
    }

    vd_reg_div_4: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard bins divisible_by_4 = {5'b???00};
    }

    vd_reg_div_8: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard bins divisible_by_8 = {5'b??000};
    }

    vs1_reg_div_2: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard bins divisible_by_2 = {5'b????0};
    }

    vs1_reg_div_4: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard bins divisible_by_4 = {5'b???00};
    }

    vs1_reg_div_8: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard bins divisible_by_8 = {5'b??000};
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

    vector_vector_arithmatic_instruction: coverpoint ins.current.insn[14:0] {
        bins arithmatic_vv_opcode = {15'b000_?????_1010111};
    }

    lmul2_vd_off_group:   cross vector_vector_arithmatic_instruction, vd_reg_notdiv_2, vs1_reg_div_2, vs2_reg_div_2, vtype_prev_vill_clear;
    lmul2_vs1_off_group:  cross vector_vector_arithmatic_instruction, vd_reg_div_2, vs1_reg_notdiv_2, vs2_reg_div_2, vtype_prev_vill_clear;
    lmul2_vs2_off_group:  cross vector_vector_arithmatic_instruction, vd_reg_div_2, vs1_reg_div_2, vs2_reg_notdiv_2, vtype_prev_vill_clear;

    lmul4_vd_off_group:   cross vector_vector_arithmatic_instruction, vd_reg_notdiv_4, vs1_reg_div_4, vs2_reg_div_4, vtype_prev_vill_clear;
    lmul4_vs1_off_group:  cross vector_vector_arithmatic_instruction, vd_reg_div_4, vs1_reg_notdiv_4, vs2_reg_div_4, vtype_prev_vill_clear;
    lmul4_vs2_off_group:  cross vector_vector_arithmatic_instruction, vd_reg_div_4, vs1_reg_div_4, vs2_reg_notdiv_4, vtype_prev_vill_clear;

    lmul8_vd_off_group:   cross vector_vector_arithmatic_instruction, vd_reg_notdiv_8, vs1_reg_div_8, vs2_reg_div_8, vtype_prev_vill_clear;
    lmul8_vs1_off_group:  cross vector_vector_arithmatic_instruction, vd_reg_div_8, vs1_reg_notdiv_8, vs2_reg_div_8, vtype_prev_vill_clear;
    lmul8_vs2_off_group:  cross vector_vector_arithmatic_instruction, vd_reg_div_8, vs1_reg_div_8, vs2_reg_notdiv_8, vtype_prev_vill_clear;

    vector_load: coverpoint ins.current.insn {
        wildcard bins vle_v    =  {32'b???_?_00_?_00000_?????_???_?????_0000111};
        wildcard bins vleff_v  = {32'b???_?_00_?_10000_?????_???_?????_0000111};
        wildcard bins vlse_v   = {32'b???_?_10_?_?????_?????_???_?????_0000111};
        wildcard bins vluxei_v = {32'b???_?_01_?_?????_?????_???_?????_0000111};
        wildcard bins vloxei_v = {32'b???_?_11_?_?????_?????_???_?????_0000111};
        wildcard bins vlre_v   = {32'b???_?_00_?_01000_?????_???_?????_0000111};
        wildcard bins vlm_v    = {32'b???_?_00_?_01011_?????_???_?????_0000111};
    }

    mew_set: coverpoint ins.current.insn[28] {
        bins active = {1'b1};
    }

    vector_load_mew_set: cross vector_load, mew_set, vtype_prev_vill_clear;

    vsetvl_i_instructions: coverpoint ins.current.insn {
        wildcard bins vsetvl   =   {32'b1000000_?????_?????_111_?????_1010111};
        wildcard bins vsetvli  =   {32'b0000_?_?_???_???_?????_111_?????_1010111};
    }

    vd_v0: coverpoint ins.current.insn[11:7] {
        bins zero = {5'b0};
    }

    vs1_v0: coverpoint ins.current.insn[19:15] {
        bins zero = {5'b0};
    }

    vill_clear_post_instruction: coverpoint 1'(get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "vtype", "vill")) {
        bins clear = {1'b0};
    }

    //TODO need to devise way to make vlmax change (likely requiring function and boolean coverpoint)
    vsetvl_i_x0_x0_vlmax_change: cross vsetvl_i_instructions, vd_v0, vs1_v0, vtype_prev_vill_clear, vill_clear_post_instruction;
    vsetvl_i_x0_x0_vill_set: cross vsetvl_i_instructions, vd_v0, vs1_v0, vtype_prev_vill_set, vill_clear_post_instruction;

    //TODO EMUL < 1/8 (possible?)

    //EMUL > 8
    //for load instructions only (since EEW is in instruction)
    EMUL_2x_LMUL: coverpoint {ins.current.insn[14:12], 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vsew"))} {
        //width[2:0] sew[2:0]
        `ifdef SEW8_SUPPORTED
        `ifdef SEW16_SUPPORTED
        bins eew16_sew8: {6'b001_000};
        `endif
        `endif

        `ifdef SEW16_SUPPORTED
        `ifdef SEW32_SUPPORTED
        bins eew32_sew16: {6'b010_001};
        `endif
        `endif

        `ifdef SEW32_SUPPORTED
        `ifdef SEW64_SUPPORTED
        bins eew64_sew32: {6'b011_010};
        `endif
        `endif
    }

    NFIELDS_UPTO_4: coverpoint ins.current.insn[31:29] {
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins three  = {3'b010};
        bins four   = {3'b011};
    }

    NFIELDS_UPTO_2: coverpoint ins.current.insn[31:29] {
        bins one    = {3'b000};
        bins two    = {3'b001};
    }

    NFIELDS_1: coverpoint ins.current.insn[31:29] {
        bins pass    = {3'b000};
    }

    vector_load_emul_16: cross vector_load, EMUL_2x_LMUL, vtype_lmul_8, vtype_prev_vill_clear;

    vector_load_emul_2_vd_off_group: cross vector_load, EMUL_2x_LMUL, vtype_lmul_1, vd_reg_notdiv_2, vtype_prev_vill_clear, NFIELDS_UPTO_4;
    vector_load_emul_4_vd_off_group: cross vector_load, EMUL_2x_LMUL, vtype_lmul_2, vd_reg_notdiv_4, vtype_prev_vill_clear, NFIELDS_UPTO_2;
    vector_load_emul_8_vd_off_group: cross vector_load, EMUL_2x_LMUL, vtype_lmul_4, vd_reg_notdiv_8, vtype_prev_vill_clear, NFIELDS_1;

    NFIELDS: coverpoint ins.current.insn[31:29] {
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins three  = {3'b010};
        bins four   = {3'b011};
        bins five   = {3'b100};
        bins six    = {3'b101};
        bins seven  = {3'b110};
        bins eight  = {3'b111};
    }

    vtype_csr_lmul: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        `ifdef LMUL_F8_SUPPORTED
            bins f8 = {3'b101};
        `endif
        `ifdef LMUL_F4_SUPPORTED
            bins f4 = {3'b110};
        `endif
        `ifdef LMUL_F2_SUPPORTED
            bins f2 = {3'b111};
        `endif
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins four   = {3'b010};
        bins eight  = {3'b011};

        bins random_legal = {3'b000, 3'b001, 3'b010, 3'b011
        `ifdef LMUL_F8_SUPPORTED
            ,3'b101
        `endif
        `ifdef LMUL_F4_SUPPORTED
            ,3'b110
        `endif
        `ifdef LMUL_F2_SUPPORTED
            ,3'b111
        `endif
        };
    }

    vtype_csr_sew: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vsew")) {
        bins eight  = {3'b000};
        bins sixteen = {3'b001};
        bins thirtytwo = {3'b010};
        bins sixtyfour = {3'b011};
    }


    cr_vector_load_sew_lmul_nfields: cross vector_load, vtype_csr_sew, vtype_csr_lmul, NFIELDS, vd_reg_div_8, vtype_prev_vill_clear;


endgroup

covergroup ExcpetionsV_illegal_cg with function sample(ins_t ins);

endgroup


function void exceptionsv_sample(int hart, int issue, ins_t ins);
    if(traceDataQ[hart][issue][0].inst_name[0] == "v") begin
        ExceptionsV_edgecases_cg.sample(ins);
        ExceptionsV_reserved_cg.sample(ins); //Doesnt appear to be colleting coverage
        ExcpetionsV_illegal_cg.sample(ins);
    end
endfunction
