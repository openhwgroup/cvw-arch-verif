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
`define COVER_RV64CBO_PMP
covergroup RV64CBO_PMP_exceptions_cg with function sample(ins_t ins);
    option.per_instance = 0;
    //pte permission for leaf PTEs
    PTE_d: coverpoint ins.current.pte_d[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }
    //PageType for DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PPN)
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

    //For crosses with write accesses and its corresponding faults
    write_acc: coverpoint ins.current.write_access {
        bins set = {1};
    }

    Mcause: coverpoint  ins.current.csr[12'h342] {
        bins store_amo_acc = {64'd7};
    }

    cbo_ins: coverpoint ins.current.insn {
        wildcard bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
    }

    PMP0_PTE: coverpoint  ins.current.csr[12'h3A0][7:0] {
        wildcard bins nowrite  = {8'b?????101};
    }

    pmp0_pte_nowrite_s: cross PTE_d, PageType_d, mode, PMP0_PTE, Mcause, write_acc, cbo_ins { //pmp.2
        ignore_bins ig1 = binsof(PTE_d.leaflvl_u);
    }
    pmp0_pte_nowrite_u: cross PTE_d, PageType_d, mode, PMP0_PTE, Mcause, write_acc, cbo_ins { //pmp.2
        ignore_bins ig1 = binsof(PTE_d.leaflvl_s);
    }

    PMP0_PA: coverpoint  ins.current.csr[12'h3A0][15:8] {
        wildcard bins nowrite  = {8'b?????101};
    }

    pmp0_PA_nowrite_s: cross PTE_d, PageType_d, mode, PMP0_PA, Mcause, write_acc, cbo_ins { //pmp.1
        ignore_bins ig1 = binsof(PTE_d.leaflvl_u);
    }
    pmp0_PA_nowrite_u: cross PTE_d, PageType_d, mode, PMP0_PA, Mcause, write_acc, cbo_ins { //pmp.1
        ignore_bins ig1 = binsof(PTE_d.leaflvl_s);
    }
endgroup

function void rv64cbo_pmp_sample(int hart, int issue, ins_t ins);
    RV64CBO_PMP_exceptions_cg.sample(ins);
endfunction
