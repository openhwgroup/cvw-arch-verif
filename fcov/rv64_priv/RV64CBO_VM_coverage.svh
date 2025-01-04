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
`define COVER_RV64CBO_VM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64cbo_vm_t;

covergroup RV64CBO_VM_exceptions_cg with function sample(ins_rv64cbo_vm_t ins);
    option.per_instance = 0; 
    //pte permission for leaf PTEs
    PTE_d_inv: coverpoint ins.current.PTE_d[7:0] { //pte.1
        wildcard bins leaflvl_u_w = {8'b???10110};
        wildcard bins leaflvl_s_w = {8'b???00110};
    }

    PTE_d_res_rwx: coverpoint ins.current.PTE_d[7:0] { //pte.2
        wildcard bins leaflvl_u = {8'b???1?101};
        wildcard bins leaflvl_s = {8'b???0?101};
    }

    PTE_nonleaf_lvl0_d: coverpoint ins.current.PTE_d[7:0] { //pte.3
        wildcard bins lvl0_s = {8'b???00001};
        wildcard bins lvl0_u = {8'b???10001};
    }

    PTE_rw_spage_d: coverpoint ins.current.PTE_d[7:0] { //pte.4 & 5
        wildcard bins leaflvl_w_0 = {8'b???0?0?1};
        wildcard bins leaflvl_w_1 = {8'b???0?111};
    }

    PTE_spage_d: coverpoint ins.current.PTE_d[7:0] { //pte.6
        wildcard bins leaflvl_s = {8'b???01111};
    }

    PTE_upage_d: coverpoint ins.current.PTE_d[7:0] { //pte.7
        wildcard bins leaflvl_u = {8'b???11111};
    }

    PTE_rw_upage_d: coverpoint ins.current.PTE_d[7:0] { //pte.8
        wildcard bins leaflvl_w_0 = {8'b???1?0?1};
        wildcard bins leaflvl_w_1 = {8'b???1?111};
    }

    PTE_Abit_unset_d: coverpoint ins.current.PTE_d[7:0] { //pte.9
        wildcard bins leaflvl_u = {8'b?0?11111};
        wildcard bins leaflvl_s = {8'b?0?01111};
    }

    PTE_Dbit_set_W_d: coverpoint ins.current.PTE_d[7:0] { //pte.10
        wildcard bins leaflvl_u = {8'b01?1?111};
        wildcard bins leaflvl_s = {8'b01?0?111};
    }

    PTE_RorX_d: coverpoint ins.current.PTE_d[7:0] { //pte.11
        wildcard bins leaflvl_u = {8'b???11011};
        wildcard bins leaflvl_s = {8'b???01011};
    }

    //aligned and misaligned PPN for DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PPN)

    PPN_d: coverpoint ins.current.PPN_d[26:0] {
        bins tera_zero = {27'd0};
        wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
        wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
        wildcard bins not_zero = {!27'd0 && !27'b???_??????00_00000000_00000000 && !27'b???_????????_???????0_00000000}; 
    }

    misaligned_PPN_d: coverpoint ins.current.PPN_d[26:0] {
        bins tera_not_zero = {[27'd1:27'd134217727]};
        bins giga_not_zero = {[18'd1:18'd262143]};
        bins mega_not_zero = {[9'd1:9'd511]};
    }

    //satp.mode for coverage of both sv39 and sv48
    mode: coverpoint  ins.current.csr[12'h180][63:60] {
        bins sv48   = {4'b1001};
        bins sv39   = {4'b1000};
    }

    PTE_inv_write_s_d: cross PTE_d_inv, PPN_d, mode  { //pte.1
        ignore_bins ig2 = binsof(PTE_d_inv.leaflvl_u_w);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }
    PTE_inv_write_u_d: cross PTE_d_inv, PPN_d, mode  { //pte.1
        ignore_bins ig2 = binsof(PTE_d_inv.leaflvl_s_w);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    PTE_res_rwx_s_d: cross PTE_d_res_rwx, PPN_d, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }
    PTE_res_rwx_u_d: cross PTE_d_res_rwx, PPN_d, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }


    PTE_nonleaf_lvl0_s_d: cross PTE_nonleaf_lvl0_d, PPN_d, mode  { //pte.3
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
        ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_s) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;        
    }

    PTE_nonleaf_lvl0_u_d: cross PTE_nonleaf_lvl0_d, PPN_d, mode  { //pte.3
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
        ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_u) && (binsof(PPN_d.tera_zero) || binsof(PPN_d.giga_zero) || binsof(PPN_d.mega_zero)) ;        
    }

    spage_write_s_d: cross PTE_rw_spage_d, PPN_d, mode  { //pte.4 & 5
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
        ignore_bins ig3 = binsof(PTE_rw_spage_d.leaflvl_w_0);
    }
    spage_nowrite_s_d: cross PTE_rw_spage_d, PPN_d, mode  { //pte.4 & 5
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
        ignore_bins ig4 = binsof(PTE_rw_spage_d.leaflvl_w_1);
    }

    spage_rwx_s_d: cross PTE_spage_d, PPN_d, mode { //pte.6
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    upage_rwx_u_d: cross PTE_upage_d, PPN_d, mode { //pte.7
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    upage_write_u_d: cross PTE_rw_upage_d, PPN_d, mode  { //pte.8
        ignore_bins ig2 = binsof(PTE_rw_upage_d.leaflvl_w_0);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }
    upage_nowrite_u_d: cross PTE_rw_upage_d, PPN_d, mode  { //pte.8
        ignore_bins ig3 = binsof(PTE_rw_upage_d.leaflvl_w_1);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    Abit_unset_s_d: cross PTE_Abit_unset_d, PPN_d, mode  { //pte.9
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }
    Abit_unset_u_d: cross PTE_Abit_unset_d, PPN_d, mode  { //pte.9
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    Dbit_set_w_s_d: cross PTE_Dbit_set_W_d, PPN_d, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }
    Dbit_set_w_u_d: cross PTE_Dbit_set_W_d, PPN_d, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
    }

    misaligned_RorX_s_d: cross PTE_RorX_d, misaligned_PPN_d, mode { //pte.11
        ignore_bins ig1 = binsof(PTE_RorX_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_d.tera_not_zero);
    }
    misaligned_RorX_u_d: cross PTE_RorX_d, misaligned_PPN_d, mode { //pte.11
        ignore_bins ig1 = binsof(PTE_RorX_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_d.tera_not_zero);
    }

    //For crosses with write accesses and its corresponding faults
    write_acc: coverpoint ins.current.WriteAccess{
        bins set = {1};
    }
    Scause: coverpoint  ins.current.csr[12'h142] iff (ins.trap == 1) {
        bins store_amo_page_fault = {64'd15};
    }
    Mcause: coverpoint  ins.current.csr[12'h342] iff (ins.trap == 1) {
        bins store_amo_page_fault = {64'd15};
    }
    Nopagefault: coverpoint  ins.current.csr[12'h143]{
        bins no_fault  = {64'd0};
    }
    priv_mode: coverpoint ins.current.mode{
        bins S_mode = {2'b01};
        bins U_mode = {2'b00};
    }
    sum_sstatus: coverpoint ins.current.csr[12'h100][18]{
        bins notset = {0};
        bins set = {1};
    }

    cbo_ins: coverpoint ins.current.insn {
        wildcard bins any_cbo_ins = {32'b000000000000_?????_010_00000_0001111, 32'b000000000001_?????_010_00000_0001111, 32'b000000000010_?????_010_00000_0001111};
    }

    invwrite_s: cross PTE_inv_write_s_d, Scause, write_acc, cbo_ins; //pte.1
    invwrite_u: cross PTE_inv_write_u_d, Mcause, write_acc, cbo_ins; //pte.1

    write_res_rwx_s: cross PTE_res_rwx_s_d, Scause, write_acc, cbo_ins; //pte.2
    write_res_rwx_u: cross PTE_res_rwx_u_d, Mcause, write_acc, cbo_ins; //pte.2

    nonleaf_lvl0_write_s: cross PTE_nonleaf_lvl0_s_d, Scause, write_acc, cbo_ins; //pte.3
    nonleaf_lvl0_write_u: cross PTE_nonleaf_lvl0_u_d, Mcause, write_acc, cbo_ins; //pte.3

    spage_smode_write_s: cross spage_write_s_d,  Nopagefault, write_acc, cbo_ins, priv_mode, sum_sstatus { //pte.4 & 5
        ignore_bins ig1 =  binsof(priv_mode.U_mode);
    }
    spage_smode_nowrite_s: cross spage_nowrite_s_d,  Scause, write_acc, cbo_ins, priv_mode, sum_sstatus { //pte.4 & 5
        ignore_bins ig1 =  binsof(priv_mode.U_mode);
    }

    spage_umode_nowrite_s: cross spage_rwx_s_d,  Mcause, write_acc, cbo_ins, priv_mode { //pte.6
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }

    upage_smode_sumunset_nowrite_s: cross upage_rwx_u_d,  Scause, write_acc, cbo_ins, priv_mode, sum_sstatus { //pte.7
        ignore_bins ig1 = binsof(priv_mode.U_mode);
        ignore_bins ig2 = binsof(sum_sstatus.set);
    }

    upage_umode_nowrite_u: cross upage_nowrite_u_d,  Mcause, write_acc, cbo_ins, priv_mode { //pte.8
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }

    Abit_unset_write_s: cross Abit_unset_s_d, Scause, write_acc, cbo_ins; //pte.9
    Abit_unset_write_u: cross Abit_unset_u_d, Mcause, write_acc, cbo_ins; //pte.9

    Dbit_set_w_write_s: cross Dbit_set_w_s_d,  Scause, write_acc, cbo_ins; //pte.10
    Dbit_set_w_write_u: cross Dbit_set_w_u_d,  Mcause, write_acc, cbo_ins; //pte.10

    misaligned_write_s: cross misaligned_RorX_s_d,  Scause, write_acc, cbo_ins; //pte.11
    misaligned_write_u: cross misaligned_RorX_u_d,  Mcause, write_acc, cbo_ins; //pte.11
endgroup

function void rv64cbo_vm_sample(int hart, int issue);
    ins_rv64cbo_vm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_csr(0);
    ins.add_vm_signals(1);
    
    RV64CBO_VM_exceptions_cg.sample(ins);
endfunction