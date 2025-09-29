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
`define COVER_RV32CBO_VM
covergroup RV32CBO_VM_exceptions_cg with function sample(ins_t ins);
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

    PTE_rw_spage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_w_0 = {8'b???0?0?1};
    }

    PTE_spage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_s = {8'b???01111};
    }

    PTE_upage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
    }

    PTE_rw_upage_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_w_0 = {8'b???1?0?1};
    }

    PTE_Abit_unset_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b?0?11111};
        wildcard bins leaflvl_s = {8'b?0?01111};
    }

    PTE_Dbit_set_W_d: coverpoint ins.current.pte_d[7:0] {
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
        bins mega = {2'b01};
        bins kilo = {2'd0};
    }

    misaligned_PPN_d: coverpoint ins.current.ppn_d[9:0] {
        bins mega_not_zero = {[1:$]};
    }

     //satp.mode for coverage of both sv32
    mode: coverpoint  ins.current.csr[12'h180][31] {
        bins sv32   = {1'b1};
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
    d_phys_address_nonexistant: coverpoint ({ins.current.phys_adr_d[33:2], 2'b00} == `ACCESS_FAULT_ADDRESS) {
        bins non_existant_pa = {1};
    }

    cbo_ins: coverpoint ins.current.insn {
        wildcard bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
    }

    PTE_inv_write_s_d: cross PTE_d_inv, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s  {
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_u_w);
    }
    PTE_inv_write_u_d: cross PTE_d_inv, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_s_w);
    }

    PTE_res_rwx_s_d_write: cross PTE_d_res_rwx, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_exec_u);
        ignore_bins ig2 = binsof(PTE_d_res_rwx.leaflvl_noexec_u);
    }
    PTE_res_rwx_u_d_write: cross PTE_d_res_rwx, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u  {
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_exec_s);
        ignore_bins ig2 = binsof(PTE_d_res_rwx.leaflvl_noexec_s);
    }

    PTE_nonleaf_lvl0_s_d_write: cross PTE_nonleaf_lvl0_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
    }

    PTE_nonleaf_lvl0_u_d_write: cross PTE_nonleaf_lvl0_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
    }

    spage_nowrite_s_d: cross PTE_rw_spage_d, PageType_d, mode, cbo_ins, priv_mode_s, sum_sstatus, priv_mode_s {
    }

    spage_rwx_s_d_nowrite: cross PTE_spage_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
    }

    upage_smode_sumunset_nowrite_s: cross PTE_upage_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s, sum_sstatus {
        ignore_bins ig1 = binsof(sum_sstatus.set);
    }

    upage_umode_nowrite_u: cross PTE_rw_upage_d, PageType_d, mode, cbo_ins, priv_mode_u {
    }

    Abit_unset_write_s: cross PTE_Abit_unset_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_u);
    }
    Abit_unset_write_u: cross PTE_Abit_unset_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_s);
    }

    Dbit_set_w_write_s: cross PTE_Dbit_set_W_d, PageType_d, mode, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.leaflvl_u);
    }
    Dbit_set_w_write_u: cross PTE_Dbit_set_W_d, PageType_d, mode, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.leaflvl_s);
    }

    misaligned_write_s: cross PTE_RWX_d, misaligned_PPN_d, mode, store_page_fault, cbo_ins, priv_mode_s  {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_u);
    }
    misaligned_write_u: cross PTE_RWX_d, misaligned_PPN_d, mode, store_page_fault, cbo_ins, priv_mode_u  {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_s);
    }

    // PTE points to a non existant physical address
    leaf_PTE_to_nonexistant_pa_s: cross PTE_RWX_d, d_phys_address_nonexistant, PageType_d, mode, store_acc_fault, cbo_ins, priv_mode_s {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_u);
    }
    leaf_PTE_to_nonexistant_pa_u: cross PTE_RWX_d, d_phys_address_nonexistant, PageType_d, mode, store_acc_fault, cbo_ins, priv_mode_u {
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_s);
    }

    // Non leaf PTE points to a non existatant phys addr instead of next page table. Store access fault required during walk
    // Example: Setup a level 0 page in sv48, lvl 1 pte should point to lvl0 page table, but it points to non existant PA
    nonleaf_PTE_to_nonexistant_pa: cross pointer_PTE_d, d_phys_address_nonexistant, PageType_d, mode, store_acc_fault, cbo_ins, priv_mode_su {
        ignore_bins ig1 = binsof(PageType_d.mega);                          // Here PageType_d will be the type being pointed towards
    }

    PTE_nonleaf_DAU: cross PTE_DAU_d, PageType_d, mode, store_page_fault, cbo_ins, priv_mode_su {
        ignore_bins ig1 = binsof(PageType_d.kilo);
    }

endgroup

function void rv32cbo_vm_sample(int hart, int issue, ins_t ins);
    RV32CBO_VM_exceptions_cg.sample(ins);
endfunction
