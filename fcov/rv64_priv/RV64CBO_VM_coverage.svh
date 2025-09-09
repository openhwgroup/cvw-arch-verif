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

`define sv48
`define sv39
`define COVER_RV64CBO_VM
covergroup RV64CBO_VM_exceptions_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include  "coverage/RISCV_coverage_standard_coverpoints.svh"
    //pte permission for leaf PTEs
    PTE_d_inv: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u_w = {8'b???1?110};
        wildcard bins leaflvl_s_w = {8'b???0?110};
    }

    PTE_d_res_rwx: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_exec_u = {8'b???11101};
        wildcard bins leaflvl_noexec_u = {8'b???10101};
        wildcard bins leaflvl_exec_s = {8'b???01101};
        wildcard bins leaflvl_noexec_s = {8'b???00101};
    }

    PTE_nonleaf_lvl0_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins lvl0_s = {8'b???00001};
        wildcard bins lvl0_u = {8'b???10001};
    }

    PTE_r_spage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_w_0 = {8'b???0?011};
    }

    PTE_x_spage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_x_s = {8'b???01001};
    }

    PTE_spage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_s = {8'b???01111};
    }

    PTE_upage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
    }

    PTE_r_upage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_w_0 = {8'b???1?011};
    }

    PTE_x_upage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_x_u = {8'b???11001};
    }

    PTE_Abit_unset_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b?0?11111};
        wildcard bins leaflvl_s = {8'b?0?01111};
    }

    PTE_Dbit_unset_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b01?1?111};
        wildcard bins leaflvl_s = {8'b01?0?111};
    }

    PTE_RWX_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }

    pointer_PTE_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins pointer = {8'b00?00001};
    }

    PTE_DAU_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins nonleaf_D_bit = {8'b1?0?0001};
        wildcard bins nonleaf_A_bit = {8'b?10?0001};
        wildcard bins nonleaf_U_bit = {8'b??010001};
    }

    //PageType && misaligned PPN for DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PPN)

    PageType_d: coverpoint ins.current.page_type_d {
        `ifdef sv48
            bins tera = {2'b11};
        `endif
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'd0};
    }

    misaligned_PPN_d: coverpoint check_misalignment(ins.current.ppn_d[26:0], ins.current.page_type_d) {
        `ifdef sv48
            wildcard bins tera_not_zero = {3'b100};
        `endif
        wildcard bins giga_not_zero = {3'b010};
        wildcard bins mega_not_zero = {3'b001};
    }

    //satp.mode for coverage of both sv39 and sv48
    mode: coverpoint  ins.current.csr[12'h180][63:60] {
        `ifdef sv48
            bins sv48   = {4'b1001};
        `endif
        `ifdef sv39
            bins sv39   = {4'b1000};
        `endif
    }

    store_page_fault: coverpoint  ins.current.csr[12'h342] iff (ins.trap == 1) {
        bins store_amo_page_fault = {64'd15};
    }
    store_acc_fault: coverpoint  ins.current.csr[12'h342] iff (ins.trap == 1) {
        bins store_amo_access_fault = {64'd7};
    }
    sum_sstatus: coverpoint ins.current.csr[12'h100][18]{
        bins notset = {0};
        bins set = {1};
    }
    d_phys_address_nonexistant: coverpoint ({ins.current.phys_adr_d[55:2], 2'b00} == `ACCESS_FAULT_ADDRESS) {
        bins non_existant_pa = {1};
    }

    cbo_ins: coverpoint ins.current.insn {
        wildcard bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
    }

    PTE_inv_cbo_s: cross PTE_d_inv, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_u_w);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    PTE_inv_cbo_u: cross PTE_d_inv, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_s_w);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_res_rwx_cbo_s: cross PTE_d_res_rwx, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_exec_u);
        ignore_bins ig2 = binsof(PTE_d_res_rwx.leaflvl_noexec_u);
        ignore_bins ig3 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    PTE_res_rwx_cbo_u: cross PTE_d_res_rwx, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u  {
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_exec_s);
        ignore_bins ig2 = binsof(PTE_d_res_rwx.leaflvl_noexec_s);
        ignore_bins ig3 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_nonleaf_lvl0_cbo_s: cross PTE_nonleaf_lvl0_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
        ignore_bins ig2 = binsof(PageType_d.giga);
        ignore_bins ig3 = binsof(PageType_d.mega);
        `ifdef sv48
            ignore_bins ig4 = binsof(PageType_d.tera);
        `endif
    }

    PTE_nonleaf_lvl0_cbo_u: cross PTE_nonleaf_lvl0_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
        ignore_bins ig2 = binsof(PageType_d.giga);
        ignore_bins ig3 = binsof(PageType_d.mega);
        `ifdef sv48
            ignore_bins ig4 = binsof(PageType_d.tera);
        `endif
    }

    PTE_w_unset_cbo_s: cross PTE_r_spage_d, PageType_d, mode, cbo_ins, priv_mode_s, sum_sstatus {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    spage_rwx_cbo_s: cross PTE_spage_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    upage_smode_sumunset_cbo_s: cross PTE_upage_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s, sum_sstatus {
        ignore_bins ig1 = binsof(sum_sstatus.set);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_w_unset_cbo_u: cross PTE_r_upage_d, PageType_d, mode, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_rw_unset_cbo_s: cross PTE_x_spage_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_rw_unset_cbo_u: cross PTE_x_upage_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    Abit_unset_cbo_s: cross PTE_Abit_unset_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    Abit_unset_cbo_u: cross PTE_Abit_unset_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    Dbit_unset_cbo_s: cross PTE_Dbit_unset_d, PageType_d, mode, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_Dbit_unset_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    Dbit_unset_cbo_u: cross PTE_Dbit_unset_d, PageType_d, mode, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_Dbit_unset_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    misaligned_page_cbo_s: cross PTE_RWX_d, misaligned_PPN_d, mode, store_page_fault, cbo_ins, priv_mode_s  {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_d.tera_not_zero);
    }
    misaligned_page_cbo_u: cross PTE_RWX_d, misaligned_PPN_d, mode, store_page_fault, cbo_ins, priv_mode_u  {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_d.tera_not_zero);
    }

    // PTE points to a non existant physical address
    leaf_PTE_to_nonexistant_pa_cbo_s: cross PTE_RWX_d, d_phys_address_nonexistant, PageType_d, mode, store_acc_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    leaf_PTE_to_nonexistant_pa_cbo_u: cross PTE_RWX_d, d_phys_address_nonexistant, PageType_d, mode, store_acc_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    // Non leaf PTE points to a non existatant phys addr instead of next page table. Store access fault required during walk
    // Example: Setup a giga page in sv48, lvl 3 pte (tera) should point to lvl2 page table, but it points to non existant PA
    nonleaf_PTE_to_nonexistant_pa_cbo: cross pointer_PTE_d, d_phys_address_nonexistant, PageType_d, mode, store_acc_fault, cbo_ins, priv_mode_su {
        ignore_bins ig1 = binsof(PageType_d.tera);                          // Here PageType_d will be the type being pointed towards
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.giga);
    }

    PTE_nonleaf_DAU_cbo: cross PTE_DAU_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_su {
        ignore_bins ig1 = binsof(PageType_d.kilo);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

endgroup

function void rv64cbo_vm_sample(int hart, int issue, ins_t ins);
    RV64CBO_VM_exceptions_cg.sample(ins);
endfunction
