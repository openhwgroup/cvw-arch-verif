///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 25 March 2025
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

`define COVER_EXCEPTIONSVM
covergroup ExceptionsVM_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints

    mstatus_mprv_one: coverpoint ins.current.csr[12'h300][17] {
        bins one = {1};
    }
    mstatus_mpp: coverpoint ins.current.csr[12'h300][12:11] {
        bins u_mode = {2'b00};
        bins s_mode = {2'b01};
    }
    instr_page_fault: coverpoint (ins.current.csr[12'h342][31:0] == 32'd12) {
        // auto fill 0/1
    }
    load_page_fault: coverpoint (ins.current.csr[12'h342][31:0] == 32'd13) {
        // auto fill 0/1
    }
    store_page_fault: coverpoint (ins.current.csr[12'h342][31:0] == 32'd15) {
        // auto fill 0/1
    }
    i_virt_adr_misaligned: coverpoint ins.current.virt_adr_i[2:0] {
        bins aligned    = {2'b00};
        bins misaligned = {2'b10};
    }
    i_page_table_entry_invalid: coverpoint ins.current.pte_i[0] {
        // auto fill valid bit 0/1
    }
    d_virt_adr_misaligned: coverpoint ins.current.virt_adr_d[1:0] {
        bins aligned    = {2'b00};
        bins misaligned = {2'b10};
    }
    d_page_table_entry_invalid: coverpoint ins.current.pte_d[0] {
        // auto fill valid bit 0/1
    }
    `ifdef XLEN64 // Number of physical address bits is different by XLEN, either 34 or 56
        i_phys_address_nonexistant: coverpoint ({ins.current.phys_adr_i[55:2], 2'b00} == `ACCESS_FAULT_ADDRESS) {
            // auto fill 1/0 for the physical address being valid
        }
        d_phys_address_nonexistant: coverpoint ({ins.current.phys_adr_d[55:2], 2'b00} == `ACCESS_FAULT_ADDRESS) {
            // auto fill 1/0 for the physical address being valid
        }
    `else
        i_phys_address_nonexistant: coverpoint ({ins.current.phys_adr_i[33:2], 2'b00} == `ACCESS_FAULT_ADDRESS) {
            // auto fill 1/0 for the physical address being valid
        }
        d_phys_address_nonexistant: coverpoint ({ins.current.phys_adr_d[33:2], 2'b00} == `ACCESS_FAULT_ADDRESS) {
            // auto fill 1/0 for the physical address being valid
        }
    `endif
    // sw: coverpoint ins.current.insn {
    //     wildcard bins sw = {32'b????????????_?????_010_?????_0100011};
    // }
    // lw: coverpoint ins.current.insn {
    //     wildcard bins lw = {32'b????????????_?????_010_?????_0000011};
    // }
    memops: coverpoint ins.current.insn {
        wildcard bins sw       = {32'b????????????_?????_010_?????_0100011};
        wildcard bins lw       = {32'b????????????_?????_010_?????_0000011};
        wildcard bins lr_w     = {32'b000100000000_?????_010_?????_0101111};
        wildcard bins sc_w     = {32'b0001100_?????_?????_010_?????_0101111};
        wildcard bins amoadd_w = {32'b0000000_?????_?????_010_?????_0101111};
    }
    medeleg_walk: coverpoint ins.current.csr[12'h302] {
        bins zeros                    = {16'b0000_0000_0000_0000};
        `ifndef COVER_ZCA
            bins instrmisaligned_enabled  = {16'b0000_0000_0000_0001};
        `endif
        bins instraccessfault_enabled = {16'b0000_0000_0000_0010};
        bins illegalinstr_enabled     = {16'b0000_0000_0000_0100};
        bins breakpoint_enabled       = {16'b0000_0000_0000_1000};
        bins loadmisaligned_enabled   = {16'b0000_0000_0001_0000};
        bins loadaccessfault_enabled  = {16'b0000_0000_0010_0000};
        bins storemisaligned_enabled  = {16'b0000_0000_0100_0000};
        bins storeaccessfault_enabled = {16'b0000_0000_1000_0000};
        bins ecallu_enabled           = {16'b0000_0001_0000_0000};
        // Delegating ecall to S mode makes it impossible to escape S mode
        // bins ecalls_enabled           = {16'b0000_0010_0000_0000};
        // bit 10 reserved
        // bit 11 is read only zero
        bins instrpagefault_enabled   = {16'b0001_0000_0000_0000};
        bins loadpagefault_enabled    = {16'b0010_0000_0000_0000};
        // bit 14 reserved
        bins storepagefault_enabled   = {16'b1000_0000_0000_0000};
        wildcard bins ones            = {16'b1011_0001_1111_111?};
    }


    // main coverpoints
    cp_instr_page_fault_m:          cross priv_mode_m, mstatus_mprv_one, mstatus_mpp, instr_page_fault;
    cp_load_page_fault_m:           cross priv_mode_m, mstatus_mprv_one, mstatus_mpp, load_page_fault;
    cp_store_page_fault_m:          cross priv_mode_m, mstatus_mprv_one, mstatus_mpp, store_page_fault;
    cp_misaligned_priority_m:       cross priv_mode_m, memops, d_virt_adr_misaligned, d_page_table_entry_invalid, d_phys_address_nonexistant;
    cp_misaligned_priority_fetch_m: cross priv_mode_m, i_virt_adr_misaligned, i_page_table_entry_invalid, i_phys_address_nonexistant;
    cp_medeleg_m:                   cross priv_mode_m, memops,  d_page_table_entry_invalid, medeleg_walk;
    cp_medeleg_fetch_m:             cross priv_mode_m, i_page_table_entry_invalid, medeleg_walk;
    cp_instr_page_fault_s:          cross priv_mode_s, instr_page_fault;
    cp_load_page_fault_s:           cross priv_mode_s, load_page_fault;
    cp_store_page_fault_s:          cross priv_mode_s, store_page_fault;
    cp_misaligned_priority_s:       cross priv_mode_s, memops, d_virt_adr_misaligned, d_page_table_entry_invalid, d_phys_address_nonexistant;
    cp_misaligned_priority_fetch_s: cross priv_mode_s, i_virt_adr_misaligned, i_page_table_entry_invalid, i_phys_address_nonexistant;
    cp_medeleg_s:                   cross priv_mode_s, memops, d_page_table_entry_invalid, medeleg_walk;
    cp_medeleg_fetch_s:             cross priv_mode_s, i_page_table_entry_invalid, medeleg_walk;
    cp_instr_page_fault_u:          cross priv_mode_u, instr_page_fault;
    cp_load_page_fault_u:           cross priv_mode_u, load_page_fault;
    cp_store_page_fault_u:          cross priv_mode_u, store_page_fault;
    cp_misaligned_priority_u:       cross priv_mode_u, memops,  d_virt_adr_misaligned, d_page_table_entry_invalid, d_phys_address_nonexistant;
    cp_misaligned_priority_fetch_u: cross priv_mode_u, i_virt_adr_misaligned, i_page_table_entry_invalid, i_phys_address_nonexistant;
    cp_medeleg_u:                   cross priv_mode_u, memops,  d_page_table_entry_invalid, medeleg_walk;
    cp_medeleg_fetch_u:             cross priv_mode_u, i_page_table_entry_invalid, medeleg_walk;

endgroup

function void exceptionsvm_sample(int hart, int issue, ins_t ins);
    ExceptionsVM_cg.sample(ins);
endfunction
