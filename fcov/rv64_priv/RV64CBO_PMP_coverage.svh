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
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64cbo_pmp_t;

covergroup RV64CBO_PMP_exceptions_cg with function sample(ins_rv64cbo_pmp_t ins);
    option.per_instance = 0; 
    //pte permission for leaf PTEs
    PTE_d: coverpoint ins.current.PTE_d[7:0] {
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }
    //aligned PPN for DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PPN)
    PPN_d: coverpoint ins.current.PPN_d[26:0] {
        bins tera_zero = {27'd0};
        wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
        wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
        wildcard bins not_zero = {!27'd0 && !27'b???_??????00_00000000_00000000 && !27'b???_????????_???????0_00000000}; 
    }

    //satp.mode for coverage of both sv39 and sv48
    mode: coverpoint  ins.current.csr[12'h180][63:60] {
        bins sv48   = {4'b1001};
        bins sv39   = {4'b1000};
    }

    PTE_perm_s_d: cross PTE_d, PPN_d, mode  {
        ignore_bins ig1 = binsof(PTE_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    PTE_perm_u_d: cross PTE_d, PPN_d, mode  {
        ignore_bins ig1 = binsof(PTE_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    //For crosses with write accesses and its corresponding faults
    write_acc: coverpoint ins.current.WriteAccess {
        bins set = {1};
    }

    Scause: coverpoint ins.current.csr[12'h142] iff (ins.trap == 1){
        bins store_amo_acc = {64'd7};
    }
    Mcause: coverpoint  ins.current.csr[12'h342] iff (ins.trap == 1) {
        bins store_amo_acc = {64'd7};
    }

    cbo_ins: coverpoint ins.current.insn {
        wildcard bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
    }

    PMP0_PTE: coverpoint  ins.current.csr[12'h3A0][7:0] {
        wildcard bins nowrite  = {8'b?????101};
    }

    pmp0_pte_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, write_acc; //pmp.2
    pmp0_pte_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, write_acc; //pmp.2

    PMP0_PA: coverpoint  ins.current.csr[12'h3A0][15:8] {
        wildcard bins nowrite  = {8'b?????101};
    }

    pmp0_PA_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, write_acc, cbo_ins; //pmp.1
    pmp0_PA_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, write_acc, cbo_ins; //pmp.1
endgroup

function void rv64cbo_pmp_sample(int hart, int issue);
    ins_rv64cbo_pmp_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_csr(0);
    ins.add_vm_signals(1);
    
    RV64CBO_PMP_exceptions_cg.sample(ins);
endfunction