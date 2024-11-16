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

`define COVER_RV32VM_PMP
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv32vm_pmp_t;

covergroup PMP_cg with function sample(ins_rv32vm_pmp_t ins);
    option.per_instance = 0; 
    //pte permission for leaf PTEs
    PTE_i: coverpoint ins.current.PTE_i[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }
    PTE_d: coverpoint ins.current.PTE_d[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }
    //aligned PPN for I&DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PPN)
    PPN_i: coverpoint ins.current.PPN_i[9:0] {
        bins mega_zero = {10'd0};
        bins not_zero = {!10'd0}; 
    }
    PPN_d: coverpoint ins.current.PPN_d[9:0] {
        bins mega_zero = {10'd0};
        bins not_zero = {!10'd0}; 
    }

    //satp.mode for coverage of both sv39 and sv48
    mode: coverpoint  ins.current.csr[12'h180][31] {
        bins sv32   = {1'b1};
    }

    PTE_perm_s_i: cross PTE_i, PPN_i, mode  {
        ignore_bins ig1 = binsof(PTE_i.leaflvl_u);
    }

    PTE_perm_u_i: cross PTE_i, PPN_i, mode  {
        ignore_bins ig1 = binsof(PTE_i.leaflvl_s);
    }

    PTE_perm_s_d: cross PTE_d, PPN_d, mode  {
        ignore_bins ig1 = binsof(PTE_d.leaflvl_u);
    }

    PTE_perm_u_d: cross PTE_d, PPN_d, mode  {
        ignore_bins ig1 = binsof(PTE_d.leaflvl_s);
    }

    //For crosses with Read, write and execute accesses and their corresponding faults
    exec_acc: coverpoint ins.current.ExecuteAccess {
        bins set = {1};
    }
    read_acc: coverpoint ins.current.ReadAccess {
        bins set = {1};
    }
    write_acc: coverpoint ins.current.WriteAccess {
        bins set = {1};
    }

    Scause: coverpoint ins.current.csr[12'h142]{
        bins load_page_acc = {32'd5};
        bins ins_acc_fault  = {32'd1};
        bins store_amo_acc = {32'd7};
    }
    Mcause: coverpoint  ins.current.csr[12'h342] {
        bins load_page_acc = {32'd5};
        bins ins_acc_fault  = {32'd1};
        bins store_amo_acc = {32'd7};
    }

    PMP0_PTE: coverpoint  ins.current.csr[12'h3A0][7:0] {
        wildcard bins noread   = {8'b?????110};
        wildcard bins nowrite  = {8'b?????101};
        wildcard bins noexe    = {8'b?????011};
    }

    pmp0_pte_noread_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, read_acc { //pte.2
        ignore_bins ig1 = binsof(PMP0_PTE.nowrite);
        ignore_bins ig2 = binsof(PMP0_PTE.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.store_amo_acc);
    }
    pmp0_pte_noread_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, read_acc { //pte.2
        ignore_bins ig1 = binsof(PMP0_PTE.nowrite);
        ignore_bins ig2 = binsof(PMP0_PTE.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.store_amo_acc);
    }

    pmp0_pte_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, write_acc { //pte.2
        ignore_bins ig1 = binsof(PMP0_PTE.noread);
        ignore_bins ig2 = binsof(PMP0_PTE.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.load_page_acc);
    }
    pmp0_pte_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, write_acc { //pte.2
        ignore_bins ig1 = binsof(PMP0_PTE.noread);
        ignore_bins ig2 = binsof(PMP0_PTE.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.load_page_acc);
    }

    PMP0_PA: coverpoint  ins.current.csr[12'h3A0][15:8] {
        wildcard bins noread   = {8'b?????110};
        wildcard bins nowrite  = {8'b?????101};
        wildcard bins noexe    = {8'b?????011};
    }

    pmp0_PA_noread_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, read_acc { //pte.1
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.store_amo_acc);
    }
    pmp0_PA_noread_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, read_acc { //pte.1
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.store_amo_acc);
    }

    pmp0_PA_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, write_acc { //pte.1
        ignore_bins ig1 = binsof(PMP0_PA.noread);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(Scause.ins_acc_fault);
        ignore_bins ig4 = binsof(Scause.load_page_acc);
    }
    pmp0_PA_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, write_acc { //pte.1
        ignore_bins ig1 = binsof(PMP0_PA.noread);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
        ignore_bins ig4 = binsof(Mcause.load_page_acc);
    }

    pmp0_PA_noexec_s: cross PTE_perm_s_i, mode, PMP0_PA, Scause, exec_acc { //pte.1
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noread);
        ignore_bins ig3 = binsof(Scause.store_amo_acc);
        ignore_bins ig4 = binsof(Scause.load_page_acc);
    }
    pmp0_PA_noexec_u: cross PTE_perm_u_i, mode, PMP0_PA, Mcause, exec_acc { //pte.1
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noread);
        ignore_bins ig3 = binsof(Mcause.store_amo_acc);
        ignore_bins ig4 = binsof(Mcause.load_page_acc);
    }
endgroup

function void rv32vm_pmp_sample(int hart, int issue);
    ins_rv32vm_pmp_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_csr(0);
    ins.add_vm_signals(1);
    
    PMP_cg.sample(ins);
endfunction

