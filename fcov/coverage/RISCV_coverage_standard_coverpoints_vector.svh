///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Standard Covergroups
//
// Written: Jordan Carlin jcarlin@hmc.edu 6 March 2025
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore
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

  // Privilege mode coverpoints
  // Uses ins.prev to check mode at end of previous instruction,
  // which is the mode the current instruction begins execution in

    //Common custom vector coverpoints
    //included at the top of every custom vector covergroup

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

    no_trap: coverpoint (ins.trap == 0) {
        bins true = {1'b1};
    }

    nontrivial: cross vtype_prev_vill_clear, vstart_zero, vl_nonzer, no_trap;

    vl_max: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl") ==
                        get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vlenb", "vlenb") * 8) {
        bins target = {1'b1};
    }

    vl_not_max: coverpoint (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl") ==
                        get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vlenb", "vlenb") * 8) {
        bins target = {1'b0};
    }

    vtype_lmulge1: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins four   = {3'b010};
        bins eight  = {3'b011};
    }

    vtype_lmul_1: coverpoint 3'(get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vlmul")) {
        bins one = {3'b000};
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

    //Register groups
    vd_all_reg_div_2: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard ignore_bins odd = {5'b????1};
    }

    vd_all_reg_div_4: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard ignore_bins end_1 = {5'b???01};
        wildcard ignore_bins end_1 = {5'b???10};
        wildcard ignore_bins end_1 = {5'b???11};
    }

    vd_all_reg_div_8: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard ignore_bins end_1 = {5'b??001};
        wildcard ignore_bins end_2 = {5'b??010};
        wildcard ignore_bins end_3 = {5'b??011};
        wildcard ignore_bins end_4 = {5'b??101};
        wildcard ignore_bins end_5 = {5'b??110};
        wildcard ignore_bins end_6 = {5'b??111};
        wildcard ignore_bins end_7 = {5'b??100};
    }

    vs1_all_reg_div_2: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard ignore_bins odd = {5'b????1};
    }

    vs1_all_reg_div_4: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard ignore_bins end_1 = {5'b???01};
        wildcard ignore_bins end_1 = {5'b???10};
        wildcard ignore_bins end_1 = {5'b???11};
    }

    vs1_all_reg_div_8: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard ignore_bins end_1 = {5'b??001};
        wildcard ignore_bins end_2 = {5'b??010};
        wildcard ignore_bins end_3 = {5'b??011};
        wildcard ignore_bins end_4 = {5'b??101};
        wildcard ignore_bins end_5 = {5'b??110};
        wildcard ignore_bins end_6 = {5'b??111};
        wildcard ignore_bins end_7 = {5'b??100};
    }

    vd_all_reg_notdiv_2: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard ignore_bins divisible_by_2 = {5'b????0};
    }

    vd_all_reg_notdiv_4: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard ignore_bins divisible_by_4 = {5'b???00};
    }

    vd_all_reg_notdiv_8: coverpoint ins.get_vr_reg(ins.current.vd){
        wildcard ignore_bins divisible_by_8 = {5'b??000};
    }

    vs1_all_reg_notdiv_2: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard ignore_bins divisible_by_2 = {5'b????0};
    }

    vs1_all_reg_notdiv_4: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard ignore_bins divisible_by_4 = {5'b???00};
    }

    vs1_all_reg_notdiv_8: coverpoint ins.get_vr_reg(ins.current.vs1){
        wildcard ignore_bins divisible_by_8 = {5'b??000};
    }

    vs2_all_reg_notdiv_2: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard ignore_bins divisible_by_2 = {5'b????0};
    }

    vs2_all_reg_notdiv_4: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard ignore_bins divisible_by_4 = {5'b???00};
    }

    vs2_all_reg_notdiv_8: coverpoint ins.get_vr_reg(ins.current.vs2){
        wildcard ignore_bins divisible_by_8 = {5'b??000};
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

    mask_enabled: coverpoint ins.current.insn[25] {
        bins enabled = {1'b0};
    }
