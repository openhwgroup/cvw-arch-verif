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
`define COVER_RV64VM_PMP
covergroup RV64VM_PMP_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include  "coverage/RISCV_coverage_standard_coverpoints.svh"
    //pte permission for leaf PTEs
    PTE_i: coverpoint ins.current.pte_i[7:0] {
        wildcard bins leaflvl_u = {8'b11?11111};
        wildcard bins leaflvl_s = {8'b11?01111};
    }
    PTE_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b11?11111};
        wildcard bins leaflvl_s = {8'b11?01111};
    }
    //Pagetype for I&DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PageType)

    PageType_i: coverpoint ins.current.page_type_i {
        `ifdef sv48
            bins tera = {2'b11};
        `endif
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'd0};
    }

    PageType_d: coverpoint ins.current.page_type_d {
        `ifdef sv48
            bins tera = {2'b11};
        `endif
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'd0};
    }

    //satp.mode for coverage of both sv39 and sv48
    mode: coverpoint ins.current.csr[12'h180][63:60] {
        `ifdef sv48
            bins sv48   = {4'b1001};
        `endif
        `ifdef sv39
            bins sv39   = {4'b1000};
        `endif
    }

    //For crosses with Read, write and execute accesses and their corresponding faults
    exec_acc: coverpoint ins.current.execute_access {
        bins set = {1};
    }
    read_acc: coverpoint ins.current.read_access {
        bins set = {1};
    }
    write_acc: coverpoint ins.current.write_access {
        bins set = {1};
    }

    load_acc_fault: coverpoint  ins.current.csr[12'h342] {
        bins load_acc_fault = {64'd5};
    }
    store_acc_fault: coverpoint  ins.current.csr[12'h342] {
        bins store_acc_fault = {64'd7};
    }
    ins_acc_fault: coverpoint  ins.current.csr[12'h342] {
        bins ins_acc_fault  = {64'd1};
    }

    lw: coverpoint ins.current.insn {
        wildcard bins lw = {32'b????????????_?????_010_?????_0000011};
    }
    sw: coverpoint ins.current.insn {
        wildcard bins sw = {32'b????????????_?????_010_?????_0100011};
    }
    jalr: coverpoint ins.prev.insn {
        wildcard bins jalr = {32'b????????????_?????_000_?????_1100111};
    }

    PMP0_PTE: coverpoint  ins.current.csr[12'h3A0][7:0] {        // PMP permissions of PTE
        wildcard bins noread   = {8'b?????100};
    }

    // pmp.2
    pmp0_pte_noread_s: cross PageType_d, mode, PMP0_PTE, load_acc_fault, priv_mode_s, lw {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_pte_noread_u: cross PageType_d, mode, PMP0_PTE, load_acc_fault, priv_mode_u, lw {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_pte_nowrite_s: cross PageType_d, mode, PMP0_PTE, store_acc_fault, priv_mode_s, sw {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_pte_nowrite_u: cross PageType_d, mode, PMP0_PTE, store_acc_fault, priv_mode_u, sw {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_pte_noexec_s: cross PageType_i, mode, PMP0_PTE, ins_acc_fault, priv_mode_s, jalr {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    pmp0_pte_noexec_u: cross PageType_i, mode, PMP0_PTE, ins_acc_fault, priv_mode_u, jalr {
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    PMP0_PA: coverpoint  ins.current.csr[12'h3A0][15:8] {       // PMP permissions of (translated) phys addr region
        wildcard bins noread   = {8'b?????100};
        wildcard bins nowrite  = {8'b?????101};
        wildcard bins noexe    = {8'b?????011};
    }

    // pmp.1
    pmp0_PA_noread_s: cross PTE_d, PageType_d, mode, PMP0_PA, load_acc_fault, read_acc {
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(PTE_d.leaflvl_u);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_PA_noread_u: cross PTE_d, PageType_d, mode, PMP0_PA, load_acc_fault, read_acc {
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(PTE_d.leaflvl_s);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_PA_nowrite_s: cross PTE_d, PageType_d, mode, PMP0_PA, store_acc_fault, write_acc {
        ignore_bins ig1 = binsof(PMP0_PA.noread);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(PTE_d.leaflvl_u);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_PA_nowrite_u: cross PTE_d, PageType_d, mode, PMP0_PA, store_acc_fault, write_acc {
        ignore_bins ig1 = binsof(PMP0_PA.noread);
        ignore_bins ig2 = binsof(PMP0_PA.noexe);
        ignore_bins ig3 = binsof(PTE_d.leaflvl_s);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    pmp0_PA_noexec_s: cross PTE_i, PageType_i, mode, PMP0_PA, ins_acc_fault, exec_acc {
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noread);
        ignore_bins ig3 = binsof(PTE_i.leaflvl_u);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    pmp0_PA_noexec_u: cross PTE_i, PageType_i, mode, PMP0_PA, ins_acc_fault, exec_acc {
        ignore_bins ig1 = binsof(PMP0_PA.nowrite);
        ignore_bins ig2 = binsof(PMP0_PA.noread);
        ignore_bins ig3 = binsof(PTE_i.leaflvl_s);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
endgroup

function void rv64vm_pmp_sample(int hart, int issue, ins_t ins);
    RV64VM_PMP_cg.sample(ins);
endfunction
