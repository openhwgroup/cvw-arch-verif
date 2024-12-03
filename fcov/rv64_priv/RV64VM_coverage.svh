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

`define COVER_RV64VM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64vm_t;

covergroup satp_cg with function sample(ins_rv64vm_t ins);
    option.per_instance = 0; 

    mode_supported: coverpoint ins.current.csr[12'h180][63:60] { //sat.2
        bins sv39   = {4'b1000};
        bins sv48   = {4'b1001};
        bins bare   = {4'b0000}; //bare.1
    }

    satp_asid_PPN: coverpoint ins.current.csr[12'h180][59:0] {
        bins all_zero = {60'd0};
        bins not_zero = {[1:$]};
    }

    asid_Length: coverpoint ins.current.csr[12'h180][59:44] { //sat.4
        bins values = {16'h0001, 16'h0002, 16'h0004, 16'h0008, 16'h0010, 16'h0020, 16'h0040, 16'h0080, 16'h0100, 16'h0200, 16'h0400, 16'h0800, 16'h1000, 16'h2000, 16'h0400, 16'h8000};
    }

    bare_mode: cross mode_supported, satp_asid_PPN { //sat.3
        ignore_bins ig1 = binsof(mode_supported.sv39);
        ignore_bins ig2 = binsof(mode_supported.sv48);
    }

    tvm_mstatus: coverpoint ins.current.csr[12'h300][20]{
        bins zero = {0};
    }
    priv_mode: coverpoint ins.current.mode{
        bins S_mode = {2'b01};
        bins U_mode = {2'b00};
        bins M_mode = {2'b11};
    }
    Mcause: coverpoint ins.current.csr[12'h342]{
        bins illegal_ins  = {64'd2};
        bins no_exception = {64'd0};
    }
    ins: coverpoint ins.current.insn {
        wildcard bins csrrs = {32'b000110000000_?????_010_?????_1110011};
        wildcard bins csrrw = {32'b000110000000_?????_001_?????_1110011};
        wildcard bins csrrc = {32'b000110000000_?????_011_?????_1110011};
    }

    access_u: cross priv_mode, ins, Mcause, tvm_mstatus iff (ins.trap == 1) { //sat.1
        ignore_bins ig1 = binsof(priv_mode.S_mode);
        ignore_bins ig2 = binsof(priv_mode.M_mode);
        ignore_bins ig3 = binsof(Mcause.no_exception);
    }
    access_m_s: cross priv_mode, ins, Mcause, tvm_mstatus iff (ins.trap == 0) { //sat.1
        ignore_bins ig1 = binsof(priv_mode.U_mode);
        ignore_bins ig2 = binsof(Mcause.illegal_ins);
    }
endgroup

covergroup PA_VA_cg with function sample(ins_rv64vm_t ins); //checking that all bits of PA and VA are live
    option.per_instance = 0; 
    VA_i: coverpoint ins.current.VAdrI { 
        bins all_zeros = {64'd0};
        bins all_ones  = {64'hFFFFFFFF_FFFFFFFF};
    }
    VA_d: coverpoint ins.current.VAdrD { 
        bins all_zeros = {64'd0};
        bins all_ones  = {64'hFFFFFFFF_FFFFFFFF};
    }

    PA_i: coverpoint ins.current.PAI {
        bins all_zeros = {56'd0};
        bins all_ones  = {56'hFFFFFF_FFFFFFFF};
    }
    PA_d: coverpoint ins.current.PAD {
        bins all_zeros = {56'd0};
        bins all_ones  = {56'hFFFFFF_FFFFFFFF};
    }

    mode_supported: coverpoint ins.current.csr[12'h180][63:60] {
        bins sv39   = {4'b1000};
        bins sv48   = {4'b1001};
        bins bare   = {4'b0000};
    }

    VA_i_sv32: cross mode_supported, VA_i;
    VA_d_sv32: cross mode_supported, VA_d;
    PA_i_sv32: cross mode_supported, PA_i;
    PA_d_sv32: cross mode_supported, PA_d;

endgroup

covergroup sfence_cg with function sample(ins_rv64vm_t ins); //sf.1
    option.per_instance = 0; 
    ins: coverpoint ins.current.insn { 
        wildcard bins sfence = {32'b0001001_?????_?????_000_00000_1110011};
    }
endgroup

covergroup mstatus_mprv_cg with function sample(ins_rv64vm_t ins);
    option.per_instance = 0; 
    tvm_mstatus: coverpoint ins.current.csr[12'h300][20] {
        bins set = {1};
    }
    priv_mode: coverpoint ins.current.mode {
        bins S_mode = {2'b01};
        bins M_mode = {2'b11};
    }
    Mcause: coverpoint ins.current.csr[12'h142] iff (ins.trap == 1) {
        bins illegal_ins = {64'd2};
    }
    ins: coverpoint ins.current.insn {
        wildcard bins csrrs_stap = {32'b000110000000_?????_010_?????_1110011};
        wildcard bins csrrw_stap = {32'b000110000000_?????_001_?????_1110011};
        wildcard bins csrrc_stap = {32'b000110000000_?????_011_?????_1110011};
        wildcard bins sfence = {32'b0001001_?????_?????_000_00000_1110011};
    }

    tvm_exception_s: cross tvm_mstatus, priv_mode, Mcause, ins { //ms.1
        ignore_bins ig1 = binsof(priv_mode.M_mode);
    }

    mprv_mstatus: coverpoint ins.current.csr[12'h300][17]{
    bins set = {1};
    }
    mpp_mstatus: coverpoint ins.current.csr[12'h300][12:11] {
        bins U_mode = {2'b00};
        bins S_mode = {2'b01};
    }
    read_acc: coverpoint ins.current.ReadAccess {
        bins set = {1};
    }
    write_acc: coverpoint ins.current.WriteAccess {
        bins set = {1};
    }
    exec_acc: coverpoint ins.current.ExecuteAccess {
        bins set = {1};
    }
    satp_mode: coverpoint  ins.current.csr[12'h180][63:60] {
        bins sv39   = {4'b1000};
        bins sv48   = {4'b1001};
        bins bare   = {4'b0000};
    }

    mprv_load: cross mprv_mstatus, mpp_mstatus, read_acc, priv_mode, satp_mode { //ms.2
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }
    mprv_store: cross mprv_mstatus, mpp_mstatus, write_acc, priv_mode, satp_mode { //ms.2
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }
    mprv_ins: cross mprv_mstatus, mpp_mstatus, exec_acc , priv_mode, satp_mode { //ms.2
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }
endgroup

covergroup vm_permissions_cg with function sample(ins_rv64vm_t ins);
    option.per_instance = 0; 
    //pte permission for leaf PTEs
    PTE_i_inv: coverpoint ins.current.PTE_i[7:0] { //pte.2
        wildcard bins leaflvl_u = {8'b???11??0};
        wildcard bins leaflvl_s = {8'b???01??0};
    }
    PTE_d_inv: coverpoint ins.current.PTE_d[7:0] { //pte.2
        wildcard bins leaflvl_u_r = {8'b???1??10};
        wildcard bins leaflvl_u_w = {8'b???1?110};
        wildcard bins leaflvl_s_r = {8'b???0??10};
        wildcard bins leaflvl_s_w = {8'b???0?110};
    }

    PTE_i_res_rwx: coverpoint ins.current.PTE_i[7:0] { //pte.3
        wildcard bins leaflvl_exec_u = {8'b???11101};
        wildcard bins leaflvl_noexec_u = {8'b???10101};
        wildcard bins leaflvl_exec_s = {8'b???01101};
        wildcard bins leaflvl_noexec_s = {8'b???00101};
    }
    PTE_d_res_rwx: coverpoint ins.current.PTE_d[7:0] { //pte.3
        wildcard bins leaflvl_exec_u = {8'b???11101};
        wildcard bins leaflvl_noexec_u = {8'b???10101};
        wildcard bins leaflvl_exec_s = {8'b???01101};
        wildcard bins leaflvl_noexec_s = {8'b???00101};
    }

    PTE_nonleaf_lvl0_i: coverpoint ins.current.PTE_i[7:0] { //pte.4
        wildcard bins lvl0_s = {8'b???00001};
        wildcard bins lvl0_u = {8'b???10001};
    }
    PTE_nonleaf_lvl0_d: coverpoint ins.current.PTE_d[7:0] { //pte.4
        wildcard bins lvl0_s = {8'b???00001};
        wildcard bins lvl0_u = {8'b???10001};
    }

    PTE_x_spage_i: coverpoint ins.current.PTE_i[7:0] { //pte.5 & 6
        wildcard bins leaflvl_x_0 = {8'b???00??1};
        wildcard bins leaflvl_x_1 = {8'b???01??1};
    }
    PTE_rw_spage_d: coverpoint ins.current.PTE_d[7:0] { //pte.5 & 6
        wildcard bins leaflvl_w_0 = {8'b???0?0?1};
        wildcard bins leaflvl_w_1 = {8'b???0?111};
        wildcard bins leaflvl_r_0 = {8'b???0??01};
        wildcard bins leaflvl_r_1 = {8'b???0??11};
    }

    PTE_spage_i: coverpoint ins.current.PTE_i[7:0] { //pte.7
        wildcard bins leaflvl_s = {8'b???01111};
    }
    PTE_spage_d: coverpoint ins.current.PTE_d[7:0] { //pte.7
        wildcard bins leaflvl_s = {8'b???01111};
    }

    PTE_upage_i: coverpoint ins.current.PTE_i[7:0] { //pte.8 & 9
        wildcard bins leaflvl_u = {8'b???11111};
    }
    PTE_upage_d: coverpoint ins.current.PTE_d[7:0] { //pte.8 & 9
        wildcard bins leaflvl_u = {8'b???11111};
    }

    PTE_x_upage_i: coverpoint ins.current.PTE_i[7:0] { //pte.10
        wildcard bins leaflvl_x_0 = {8'b???10??1};
        wildcard bins leaflvl_x_1 = {8'b???11??1};
    }
    PTE_rw_upage_d: coverpoint ins.current.PTE_d[7:0] { //pte.10
        wildcard bins leaflvl_w_0 = {8'b???1?0?1};
        wildcard bins leaflvl_w_1 = {8'b???1?111};
        wildcard bins leaflvl_r_0 = {8'b???1??01};
        wildcard bins leaflvl_r_1 = {8'b???1??11};
    }

    PTE_XnoRW_d: coverpoint ins.current.PTE_d[7:0] { //pte.11 & 12
        wildcard bins leaflvl_u = {8'b???11001};
        wildcard bins leaflvl_s = {8'b???01001};
    }

    PTE_Abit_unset_i: coverpoint ins.current.PTE_i[7:0] { //pte.14
        wildcard bins leaflvl_u = {8'b?0?11111};
        wildcard bins leaflvl_s = {8'b?0?01111};
    }
    PTE_Abit_unset_d: coverpoint ins.current.PTE_d[7:0] { //pte.14
        wildcard bins leaflvl_u = {8'b?0?11111};
        wildcard bins leaflvl_s = {8'b?0?01111};
    }

    PTE_Dbit_set_W_d: coverpoint ins.current.PTE_d[7:0] { //pte.15
        wildcard bins leaflvl_u = {8'b01?1?111};
        wildcard bins leaflvl_s = {8'b01?0?111};
    }

    PTE_RWX_i: coverpoint ins.current.PTE_i[7:0] { //pte.16
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }
    PTE_RWX_d: coverpoint ins.current.PTE_d[7:0] { //pte.16
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }

    PTE_canonical_i: coverpoint ins.current.PTE_i[7:0] { //va.1
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }
    PTE_canonical_d: coverpoint ins.current.PTE_d[7:0] { //va.1
        wildcard bins leaflvl_u = {8'b???11111};
        wildcard bins leaflvl_s = {8'b???01111};
    }

    //Pagetype && misaligned PPN for I&DTLB to ensure that leaf pte is found at all levels (through crosses of PTE and PageType)

    PageType_i: coverpoint ins.current.PageType_i {
        bins tera = {2'b11};
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'd0};
    }

    PageType_d: coverpoint ins.current.PageType_d {
        bins tera = {2'b11};
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'd0};
    }

    misaligned_PPN_i: coverpoint ins.current.PPN_i[26:0] {
        bins tera_not_zero = {[27'd1:27'd134217727]};
        bins giga_not_zero = {[18'd1:18'd262143]};
        bins mega_not_zero = {[9'd1:9'd511]};
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

    PTE_inv_exec_s_i: cross PTE_i_inv, PageType_i, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_i_inv.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    PTE_inv_exec_u_i: cross PTE_i_inv, PageType_i, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_i_inv.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    PTE_inv_read_s_d: cross PTE_d_inv, PageType_d, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_u_r);
        ignore_bins ig2 = binsof(PTE_d_inv.leaflvl_u_w);
        ignore_bins ig3 = binsof(PTE_d_inv.leaflvl_s_w);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    PTE_inv_read_u_d: cross PTE_d_inv, PageType_d, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_s_r);
        ignore_bins ig2 = binsof(PTE_d_inv.leaflvl_s_w);
        ignore_bins ig3 = binsof(PTE_d_inv.leaflvl_u_w);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_inv_write_s_d: cross PTE_d_inv, PageType_d, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_u_r);
        ignore_bins ig2 = binsof(PTE_d_inv.leaflvl_u_w);
        ignore_bins ig3 = binsof(PTE_d_inv.leaflvl_s_r);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    PTE_inv_write_u_d: cross PTE_d_inv, PageType_d, mode  { //pte.2
        ignore_bins ig1 = binsof(PTE_d_inv.leaflvl_s_r);
        ignore_bins ig2 = binsof(PTE_d_inv.leaflvl_s_w);
        ignore_bins ig3 = binsof(PTE_d_inv.leaflvl_u_r);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_res_rwx_s_i: cross PTE_i_res_rwx, PageType_i, mode  { //pte.3
        ignore_bins ig1 = binsof(PTE_i_res_rwx.leaflvl_exec_u);
        ignore_bins ig2 = binsof(PTE_i_res_rwx.leaflvl_noexec_u);
        ignore_bins ig3 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    PTE_res_rwx_u_i: cross PTE_i_res_rwx, PageType_i, mode  { //pte.3
        ignore_bins ig1 = binsof(PTE_i_res_rwx.leaflvl_exec_s);
        ignore_bins ig2 = binsof(PTE_i_res_rwx.leaflvl_noexec_s);
        ignore_bins ig3 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    PTE_res_rwx_s_d: cross PTE_d_res_rwx, PageType_d, mode  { //pte.3
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_exec_u);
        ignore_bins ig2 = binsof(PTE_d_res_rwx.leaflvl_noexec_u);
        ignore_bins ig3 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    PTE_res_rwx_u_d: cross PTE_d_res_rwx, PageType_d, mode  { //pte.3
        ignore_bins ig1 = binsof(PTE_d_res_rwx.leaflvl_exec_s);
        ignore_bins ig2 = binsof(PTE_d_res_rwx.leaflvl_noexec_s);
        ignore_bins ig3 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    PTE_nonleaf_lvl0_s_i: cross PTE_nonleaf_lvl0_i, PageType_i, mode  { //pte.4
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_i.lvl0_u);
        ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_i.lvl0_s) && (binsof(PageType_i.tera) || binsof(PageType_i.giga) || binsof(PageType_i.mega)) ;        
    }

    PTE_nonleaf_lvl0_u_i: cross PTE_nonleaf_lvl0_i, PageType_i, mode  { //pte.4
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_i.lvl0_s);
        ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_i.lvl0_u) && (binsof(PageType_i.tera) || binsof(PageType_i.giga) || binsof(PageType_i.mega)) ;        
    }

    PTE_nonleaf_lvl0_s_d: cross PTE_nonleaf_lvl0_d, PageType_d, mode  { //pte.4
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_u);
        ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_s) && (binsof(PageType_d.tera) || binsof(PageType_d.giga) || binsof(PageType_d.mega)) ;        
    }

    PTE_nonleaf_lvl0_u_d: cross PTE_nonleaf_lvl0_d, PageType_d, mode  { //pte.4
        ignore_bins ig1 = binsof(PTE_nonleaf_lvl0_d.lvl0_s);
        ignore_bins ig2 = binsof(PTE_nonleaf_lvl0_d.lvl0_u) && (binsof(PageType_d.tera) || binsof(PageType_d.giga) || binsof(PageType_d.mega)) ;        
    }

    spage_exec_s_i: cross PTE_x_spage_i, PageType_i, mode  { //pte.5 & 6 
        ignore_bins ig1 = binsof(PTE_x_spage_i.leaflvl_x_0);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    spage_noexec_s_i: cross PTE_x_spage_i, PageType_i, mode  { //pte.5 & 6
        ignore_bins ig1 = binsof(PTE_x_spage_i.leaflvl_x_1);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    spage_read_s_d: cross PTE_rw_spage_d, PageType_d, mode  { //pte.5 & 6
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
        ignore_bins ig2 = binsof(PTE_rw_spage_d.leaflvl_r_0);
        ignore_bins ig3 = binsof(PTE_rw_spage_d.leaflvl_w_0);
        ignore_bins ig4 = binsof(PTE_rw_spage_d.leaflvl_w_1);
    }
    spage_noread_s_d: cross PTE_rw_spage_d, PageType_d, mode  { //pte.5 & 6
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
        ignore_bins ig2 = binsof(PTE_rw_spage_d.leaflvl_r_1);
        ignore_bins ig3 = binsof(PTE_rw_spage_d.leaflvl_w_0);
        ignore_bins ig4 = binsof(PTE_rw_spage_d.leaflvl_w_1);
    }

    spage_write_s_d: cross PTE_rw_spage_d, PageType_d, mode  { //pte.5 & 6
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
        ignore_bins ig2 = binsof(PTE_rw_spage_d.leaflvl_r_0);
        ignore_bins ig3 = binsof(PTE_rw_spage_d.leaflvl_w_0);
        ignore_bins ig4 = binsof(PTE_rw_spage_d.leaflvl_r_1);
    }
    spage_nowrite_s_d: cross PTE_rw_spage_d, PageType_d, mode  { //pte.5 & 6
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
        ignore_bins ig2 = binsof(PTE_rw_spage_d.leaflvl_r_0);
        ignore_bins ig3 = binsof(PTE_rw_spage_d.leaflvl_r_1);
        ignore_bins ig4 = binsof(PTE_rw_spage_d.leaflvl_w_1);
    }

    spage_rwx_s_i: cross PTE_spage_i, PageType_i, mode { //pte.7
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    spage_rwx_s_d: cross PTE_spage_d, PageType_d, mode { //pte.7
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    upage_rwx_u_i: cross PTE_upage_i, PageType_i, mode { //pte.8 & 9
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    upage_rwx_u_d: cross PTE_upage_d, PageType_d, mode { //pte.8 & 9
        ignore_bins ig1 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    upage_exec_u_i: cross PTE_x_upage_i, PageType_i, mode  { //pte.10 
        ignore_bins ig1 = binsof(PTE_x_upage_i.leaflvl_x_0);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    upage_noexec_u_i: cross PTE_x_upage_i, PageType_i, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_x_upage_i.leaflvl_x_1);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    upage_read_u_d: cross PTE_rw_upage_d, PageType_d, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_rw_upage_d.leaflvl_r_0);
        ignore_bins ig2 = binsof(PTE_rw_upage_d.leaflvl_w_0);
        ignore_bins ig3 = binsof(PTE_rw_upage_d.leaflvl_w_1);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    upage_noread_u_d: cross PTE_rw_upage_d, PageType_d, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_rw_upage_d.leaflvl_r_1);
        ignore_bins ig2 = binsof(PTE_rw_upage_d.leaflvl_w_0);
        ignore_bins ig3 = binsof(PTE_rw_upage_d.leaflvl_w_1);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    upage_write_u_d: cross PTE_rw_upage_d, PageType_d, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_rw_upage_d.leaflvl_r_0);
        ignore_bins ig2 = binsof(PTE_rw_upage_d.leaflvl_w_0);
        ignore_bins ig3 = binsof(PTE_rw_upage_d.leaflvl_r_1);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    upage_nowrite_u_d: cross PTE_rw_upage_d, PageType_d, mode  { //pte.10
        ignore_bins ig1 = binsof(PTE_rw_upage_d.leaflvl_r_0);
        ignore_bins ig2 = binsof(PTE_rw_upage_d.leaflvl_r_1);
        ignore_bins ig3 = binsof(PTE_rw_upage_d.leaflvl_w_1);
        ignore_bins ig4 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    xpage_s_d: cross PTE_XnoRW_d, PageType_d, mode  { //pte.11 & 12
        ignore_bins ig1 = binsof(PTE_XnoRW_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    xpage_u_d: cross PTE_XnoRW_d, PageType_d, mode  { //pte.11 & 12
        ignore_bins ig1 = binsof(PTE_XnoRW_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    Abit_unset_s_i: cross PTE_Abit_unset_i, PageType_i, mode  { //pte.14
        ignore_bins ig1 = binsof(PTE_Abit_unset_i.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }
    Abit_unset_u_i: cross PTE_Abit_unset_i, PageType_i, mode  { //pte.14
        ignore_bins ig1 = binsof(PTE_Abit_unset_i.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    Abit_unset_s_d: cross PTE_Abit_unset_d, PageType_d, mode  { //pte.14
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    Abit_unset_u_d: cross PTE_Abit_unset_d, PageType_d, mode  { //pte.14
        ignore_bins ig1 = binsof(PTE_Abit_unset_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    Dbit_set_w_s_d: cross PTE_Dbit_set_W_d, PageType_d, mode  { //pte.15
        ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }
    Dbit_set_w_u_d: cross PTE_Dbit_set_W_d, PageType_d, mode  { //pte.15
        ignore_bins ig1 = binsof(PTE_Dbit_set_W_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    misaligned_RorX_s_i: cross PTE_RWX_i, misaligned_PPN_i, mode { //pte.16
        ignore_bins ig1 = binsof(PTE_RWX_i.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_i.tera_not_zero);
    }
    misaligned_RorX_u_i: cross PTE_RWX_i, misaligned_PPN_i, mode { //pte.16
        ignore_bins ig1 = binsof(PTE_RWX_i.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_i.tera_not_zero);
    }

    misaligned_RorX_s_d: cross PTE_RWX_d, misaligned_PPN_d, mode { //pte.16
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_d.tera_not_zero);
    }
    misaligned_RorX_u_d: cross PTE_RWX_d, misaligned_PPN_d, mode { //pte.16
        ignore_bins ig1 = binsof(PTE_RWX_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(misaligned_PPN_d.tera_not_zero);
    }

    VA_sv48: coverpoint ins.current.VAdrI[63:48] { //va.1
        bins not_zero_and_not_all_ones = {[16'b1:16'b1111_1111_1111_1110]};
    }

    VA_sv39: coverpoint ins.current.VAdrI[63:39] { //va.1
        bins not_zero_and_not_all_ones = {[25'b1:25'b11111_11111_11111_11111_11110]};
    }

    sv48_canonical_s_i: cross PTE_canonical_i, PageType_i, VA_sv48, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_i.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39);
    }
    sv48_canonical_u_i: cross PTE_canonical_i, PageType_i, VA_sv48, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_i.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39);
    }

    sv48_canonical_s_d: cross PTE_canonical_d, PageType_d, VA_sv48, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39);
    }
    sv48_canonical_u_d: cross PTE_canonical_d, PageType_d, VA_sv48, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39);
    }

    sv39_canonical_s_i: cross PTE_canonical_i, PageType_i, VA_sv39, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_i.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv48);
        ignore_bins ig3 = binsof(PageType_i.tera);
    }
    sv39_canonical_u_i: cross PTE_canonical_i, PageType_i, VA_sv39, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_i.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv48);
        ignore_bins ig3 = binsof(PageType_i.tera);
    }

    sv39_canonical_s_d: cross PTE_canonical_d, PageType_d, VA_sv39, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv48);
        ignore_bins ig3 = binsof(PageType_d.tera);
    }
    sv39_canonical_u_d: cross PTE_canonical_d, PageType_d, VA_sv39, mode { //va.1
        ignore_bins ig1 = binsof(PTE_canonical_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv48);
        ignore_bins ig3 = binsof(PageType_d.tera);
    }

    //For crosses with Read, write and execute accesses and their corresponding faults
    exec_acc: coverpoint ins.current.ExecuteAccess {
        bins set = {1};
    }
    read_acc: coverpoint ins.current.ReadAccess {
        bins set = {1};
    }
    write_acc: coverpoint ins.current.WriteAccess{
        bins set = {1};
    }
<<<<<<< HEAD
=======
    Scause: coverpoint  ins.current.csr[12'h142] iff (ins.trap == 1) {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_page_fault = {64'd15};
    }
>>>>>>> b37edba7f625cc3bc2b161d03bc1cd90df0fa2e3
    Mcause: coverpoint  ins.current.csr[12'h342] iff (ins.trap == 1) {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
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
    mxr_sstatus: coverpoint ins.current.csr[12'h100][19] {
        bins notset = {0};
        bins set = {1};
    }

    invread_s: cross PTE_inv_read_s_d, Mcause, read_acc { //pte.2
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    invread_u: cross PTE_inv_read_u_d, Mcause, read_acc { //pte.2
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    invwrite_s: cross PTE_inv_write_s_d, Mcause, write_acc { //pte.2
        ignore_bins ig1 = binsof(Mcause.load_page_fault);
        ignore_bins ig2 = binsof(Mcause.ins_page_fault);
    }
    invwrite_u: cross PTE_inv_write_u_d, Mcause, write_acc { //pte.2
        ignore_bins ig1 = binsof(Mcause.load_page_fault);
        ignore_bins ig2 = binsof(Mcause.ins_page_fault);
    }

    invexec_s: cross PTE_inv_exec_s_i, Mcause, exec_acc { //pte.2
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    invexec_u: cross PTE_inv_exec_u_i, Mcause, exec_acc { //pte.2
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    read_res_rwx_s: cross PTE_res_rwx_s_d, Mcause, read_acc { //pte.3
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    read_res_rwx_u: cross PTE_res_rwx_u_d, Mcause, read_acc { //pte.3
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    write_res_rwx_s: cross PTE_res_rwx_s_d, Mcause, write_acc { //pte.3
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    write_res_rwx_u: cross PTE_res_rwx_u_d, Mcause, write_acc { //pte.3
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    exec_res_rwx_s: cross PTE_res_rwx_s_i, Mcause, exec_acc { //pte.3
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    exec_res_rwx_u: cross PTE_res_rwx_u_i, Mcause, exec_acc { //pte.3
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    nonleaf_lvl0_read_s: cross PTE_nonleaf_lvl0_s_d, Mcause, read_acc { //pte.4
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    nonleaf_lvl0_read_u: cross PTE_nonleaf_lvl0_u_d, Mcause, read_acc { //pte.4
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    nonleaf_lvl0_write_s: cross PTE_nonleaf_lvl0_s_d, Mcause, write_acc { //pte.4
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    nonleaf_lvl0_write_u: cross PTE_nonleaf_lvl0_u_d, Mcause, write_acc { //pte.4
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    nonleaf_lvl0_exec_s: cross PTE_nonleaf_lvl0_s_i, Mcause, exec_acc { //pte.4
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    nonleaf_lvl0_exec_u: cross PTE_nonleaf_lvl0_u_i, Mcause, exec_acc { //pte.4
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    spage_smode_read_s: cross spage_read_s_d,  Nopagefault, read_acc, priv_mode, sum_sstatus { //pte.5 & 6
        ignore_bins ig1 =  binsof(priv_mode.U_mode);
    }
    spage_smode_noread_s: cross spage_noread_s_d,  Mcause, read_acc, priv_mode, sum_sstatus { //pte.5 & 6
        ignore_bins ig1 =  binsof(Mcause.ins_page_fault);
        ignore_bins ig2 =  binsof(Mcause.store_amo_page_fault);
        ignore_bins ig3 =  binsof(priv_mode.U_mode);
    }

    spage_smode_write_s: cross spage_write_s_d,  Nopagefault, write_acc, priv_mode, sum_sstatus { //pte.5 & 6
        ignore_bins ig1 =  binsof(priv_mode.U_mode);
    }
    spage_smode_nowrite_s: cross spage_nowrite_s_d,  Mcause, write_acc, priv_mode, sum_sstatus { //pte.5 & 6
        ignore_bins ig1 =  binsof(Mcause.ins_page_fault);
        ignore_bins ig2 =  binsof(Mcause.load_page_fault);
        ignore_bins ig3 =  binsof(priv_mode.U_mode);
    }

    spage_smode_exec_s: cross spage_exec_s_i,  Nopagefault, exec_acc, priv_mode, sum_sstatus { //pte.5 & 6
        ignore_bins ig1 =  binsof(priv_mode.U_mode);
    }
    spage_smode_noexec_s: cross spage_noexec_s_i,  Mcause, exec_acc, priv_mode, sum_sstatus { //pte.5 & 6
        ignore_bins ig1 =  binsof(Mcause.load_page_fault);
        ignore_bins ig2 =  binsof(Mcause.store_amo_page_fault);
        ignore_bins ig3 =  binsof(priv_mode.U_mode);
    }

    spage_umode_noread_s: cross spage_rwx_s_d,  Mcause, read_acc, priv_mode { //pte.7
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig3 = binsof(priv_mode.S_mode);
    }
    spage_umode_nowrite_s: cross spage_rwx_s_d,  Mcause, write_acc, priv_mode { //pte.7
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig3 = binsof(priv_mode.S_mode);
    }
    spage_umode_noexec_s: cross spage_rwx_s_i,  Mcause, exec_acc, priv_mode { //pte.7
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig3 = binsof(priv_mode.S_mode);
    }

    upage_smode_sumunset_noread_s: cross upage_rwx_u_d,  Mcause, read_acc, priv_mode , sum_sstatus { //pte.8
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig3 = binsof(priv_mode.U_mode);
        ignore_bins ig4 = binsof(sum_sstatus.set);
    }
    upage_smode_sumunset_nowrite_s: cross upage_rwx_u_d,  Mcause, write_acc, priv_mode, sum_sstatus { //pte.8
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig3 = binsof(priv_mode.U_mode);
        ignore_bins ig4 = binsof(sum_sstatus.set);
    }
    upage_smode_sumunset_noexec_s: cross upage_rwx_u_i,  Mcause, exec_acc, priv_mode , sum_sstatus { //pte.8
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig3 = binsof(priv_mode.U_mode);
        ignore_bins ig4 = binsof(sum_sstatus.set);
    }

    upage_smode_sumset_noread_s: cross upage_rwx_u_d,  Nopagefault, read_acc, priv_mode , sum_sstatus  { //pte.9
        ignore_bins ig1 = binsof(priv_mode.U_mode);
        ignore_bins ig2 = binsof(sum_sstatus.notset);
    }
    upage_smode_sumset_write_s: cross upage_rwx_u_d,  Nopagefault, write_acc, priv_mode, sum_sstatus  { //pte.9
        ignore_bins ig1 = binsof(priv_mode.U_mode);
        ignore_bins ig2 = binsof(sum_sstatus.notset);
    }
    upage_smode_sumset_noexec_s: cross upage_rwx_u_i,  Mcause, exec_acc, priv_mode , sum_sstatus  { //pte.9
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);       
    }

    upage_umode_read_u: cross upage_read_u_d,  Nopagefault, read_acc, priv_mode { //pte.10
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }
    upage_umode_noread_u: cross upage_noread_u_d,  Mcause, read_acc, priv_mode { //pte.10
        ignore_bins ig1 =  binsof(Mcause.ins_page_fault);
        ignore_bins ig2 =  binsof(Mcause.store_amo_page_fault);
        ignore_bins ig3 = binsof(priv_mode.S_mode);
    }

    upage_umode_write_u: cross upage_write_u_d,  Nopagefault, write_acc, priv_mode { //pte.10
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }
    upage_umode_nowrite_u: cross upage_nowrite_u_d,  Mcause, write_acc, priv_mode { //pte.10
        ignore_bins ig1 =  binsof(Mcause.ins_page_fault);
        ignore_bins ig2 =  binsof(Mcause.load_page_fault);
        ignore_bins ig3 = binsof(priv_mode.S_mode);
    }

    upage_umode_exec_u: cross upage_exec_u_i,  Nopagefault, exec_acc, priv_mode { //pte.10
        ignore_bins ig1 = binsof(priv_mode.S_mode);
    }
    upage_umode_noexec_u: cross upage_noexec_u_i,  Mcause, exec_acc, priv_mode { //pte.10
        ignore_bins ig1 =  binsof(Mcause.load_page_fault);
        ignore_bins ig2 =  binsof(Mcause.store_amo_page_fault);
        ignore_bins ig3 = binsof(priv_mode.S_mode);
    }

    xpage_mxrunset_read_s: cross xpage_s_d, Mcause, read_acc, mxr_sstatus { //pte.11
        ignore_bins ig1 = binsof(mxr_sstatus.set);
        ignore_bins ig2 = binsof(Mcause.ins_page_fault);
        ignore_bins ig3 = binsof(Mcause.store_amo_page_fault);
    }
    xpage_mxrunset_read_u: cross xpage_u_d, Mcause, read_acc, mxr_sstatus { //pte.11
        ignore_bins ig1 = binsof(mxr_sstatus.set);
        ignore_bins ig2 = binsof(Mcause.ins_page_fault);
        ignore_bins ig3 = binsof(Mcause.store_amo_page_fault);
    }

    xpage_mxrset_read_s: cross xpage_s_d,  Nopagefault, mxr_sstatus, read_acc { //pte.12
        ignore_bins ig1 = binsof(mxr_sstatus.notset);
    }
    xpage_mxrset_read_u: cross xpage_u_d,  Nopagefault, mxr_sstatus, read_acc { //pte.12
        ignore_bins ig1 = binsof(mxr_sstatus.notset);
    }

    Abit_unset_read_s: cross Abit_unset_s_d, Mcause, read_acc { //pte.14
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    Abit_unset_read_u: cross Abit_unset_u_d, Mcause, read_acc { //pte.14
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    Abit_unset_write_s: cross Abit_unset_s_d, Mcause, write_acc { //pte.14
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    Abit_unset_write_u: cross Abit_unset_u_d, Mcause, write_acc { //pte.14
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    Abit_unset_exec_s: cross Abit_unset_s_i, Mcause, exec_acc { //pte.14
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    Abit_unset_exec_u: cross Abit_unset_u_i, Mcause, exec_acc { //pte.14
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    Dbit_set_w_write_s: cross Dbit_set_w_s_d,  Mcause, write_acc { //pte.15
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    Dbit_set_w_write_u: cross Dbit_set_w_u_d,  Mcause, write_acc { //pte.15
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    misaligned_read_s: cross misaligned_RorX_s_d,  Mcause, read_acc { //pte.16
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    misaligned_read_u: cross misaligned_RorX_u_d,  Mcause, read_acc  { //pte.16
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    misaligned_write_s: cross misaligned_RorX_s_d,  Mcause, write_acc  { //pte.16
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    misaligned_write_u: cross misaligned_RorX_u_d,  Mcause, write_acc  { //pte.16
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    misaligned_exec_s: cross misaligned_RorX_s_i,  Mcause, exec_acc  { //pte.16
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    misaligned_exec_u: cross misaligned_RorX_u_i,  Mcause, exec_acc  { //pte.16
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    sv39_canonical_read_s: cross sv39_canonical_s_d, Mcause, read_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    sv39_canonical_read_u: cross sv39_canonical_u_d, Mcause, read_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    sv39_canonical_write_s: cross sv39_canonical_s_d, Mcause, write_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    sv39_canonical_write_u: cross sv39_canonical_u_d, Mcause, write_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    sv39_canonical_exec_s: cross sv39_canonical_s_i, Mcause, exec_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    sv39_canonical_exec_u: cross sv39_canonical_u_i, Mcause, exec_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    sv48_canonical_read_s: cross sv48_canonical_s_d, Mcause, read_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }
    sv48_canonical_read_u: cross sv48_canonical_u_d, Mcause, read_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
    }

    sv48_canonical_write_s: cross sv48_canonical_s_d, Mcause, write_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    sv48_canonical_write_u: cross sv48_canonical_u_d, Mcause, write_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }

    sv48_canonical_exec_s: cross sv48_canonical_s_i, Mcause, exec_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
    sv48_canonical_exec_u: cross sv48_canonical_u_i, Mcause, exec_acc { //va.1
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
    }
endgroup

covergroup res_global_pte_cg with function sample(ins_rv64vm_t ins); 
    option.per_instance = 0; 
    //pte.1
    RSW: coverpoint ins.current.PTE_i[9:8] {
        bins all_comb[] = {[2'd0:2'd3]}; 
    }      
    mode: coverpoint  ins.current.csr[12'h180][63:60] {
        bins sv39   = {4'b1000};
        bins sv48   = {4'b1001};
    }
    rsw_pte: cross RSW, mode;

    //pte.13
    global_PTE_i: coverpoint ins.current.PTE_i[7:0] {
        wildcard bins leaflvl_u = {8'b??111111};
        wildcard bins leaflvl_s = {8'b??101111};
    }
    global_PTE_d: coverpoint ins.current.PTE_d[7:0] {
        wildcard bins leaflvl_u = {8'b??111111};
        wildcard bins leaflvl_s = {8'b??101111};
    }

    PageType_i: coverpoint ins.current.PageType_i {
        bins tera = {2'b11};
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'b00};
    }

    PageType_d: coverpoint ins.current.PageType_d {
        bins tera = {2'b11};
        bins giga = {2'b10};
        bins mega = {2'b01};
        bins kilo = {2'b00};
    }

    global_PTE_perm_s_i: cross global_PTE_i, PageType_i, mode {
        ignore_bins ig1 = binsof(global_PTE_i.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    global_PTE_perm_u_i: cross global_PTE_i, PageType_i, mode {
        ignore_bins ig1 = binsof(global_PTE_i.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_i.tera);
    }

    global_PTE_perm_s_d: cross global_PTE_d, PageType_d, mode {
        ignore_bins ig1 = binsof(global_PTE_d.leaflvl_u);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    global_PTE_perm_u_d: cross global_PTE_d, PageType_d, mode {
        ignore_bins ig1 = binsof(global_PTE_d.leaflvl_s);
        ignore_bins ig2 = binsof(mode.sv39) && binsof(PageType_d.tera);
    }

    exec_acc: coverpoint ins.current.ExecuteAccess {
        bins set = {1};
    }
    read_acc : coverpoint ins.current.ReadAccess {
        bins set = {1};
    }
    write_acc: coverpoint ins.current.WriteAccess {
        bins set = {1};
    }

    global_read_s: cross global_PTE_perm_s_d, read_acc;
    global_read_u: cross global_PTE_perm_u_d, read_acc;

    global_write_s: cross global_PTE_perm_s_d, write_acc;
    global_write_u: cross global_PTE_perm_u_d, write_acc;

    global_exec_s: cross global_PTE_perm_s_i, exec_acc;
    global_exec_u: cross global_PTE_perm_u_i, exec_acc;
endgroup

covergroup add_feature_cg with function sample(ins_rv64vm_t ins);
    option.per_instance = 0; 
    PTE_i: coverpoint ins.current.PTE_i[63:54] {
        bins all_zeros = {10'd0};
        bins svnapot = {10'b10000_00000}; 
        bins svpbmt = {10'b01100_00000, 10'b01000_00000, 10'b00100_00000};
        bins reserved = {[10'd1:10'd127]};
    }   
    PTE_d: coverpoint ins.current.PTE_d[63:54] {
        bins all_zeros = {10'd0};
        bins svnapot = {10'b10000_00000}; 
        bins svpbmt = {10'b01100_00000, 10'b01000_00000, 10'b00100_00000};
        bins reserved = {[10'd1:10'd127]}; 
    }  
    svpbmt_support: coverpoint ins.current.csr[12'h30A][62] {
        bins not_set = {1'b0};
    } 
    mode: coverpoint  ins.current.csr[12'h180][63:60] {
        bins sv39   = {4'b1000};
        bins sv48   = {4'b1001};
    }
    exec_acc: coverpoint ins.current.ExecuteAccess {
        bins set = {1};
    }
    read_acc : coverpoint ins.current.ReadAccess {
        bins set = {1};
    }
    write_acc: coverpoint ins.current.WriteAccess {
        bins set = {1};
    }
    Mcause: coverpoint  ins.current.csr[12'h342] iff (ins.trap == 1) {
        bins load_page_fault = {64'd13};
        bins ins_page_fault  = {64'd12};
        bins store_amo_page_fault = {64'd15};
    }
    Nopagefault: coverpoint  ins.current.csr[12'h143]{
        bins no_fault  = {32'd0};
    }

    //pte.17&20
    svnapot_read_fault: cross PTE_d, Mcause, read_acc, mode {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig4 = binsof(PTE_d.all_zeros);
        ignore_bins ig5 = binsof(PTE_d.svpbmt);
    }
    svnapot_write_fault: cross PTE_d, Mcause, write_acc, mode {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig4 = binsof(PTE_d.all_zeros);
        ignore_bins ig5 = binsof(PTE_d.svpbmt);
    }
    svnapot_exec_fault: cross PTE_i, Mcause, exec_acc, mode {
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig4 = binsof(PTE_i.all_zeros);
        ignore_bins ig5 = binsof(PTE_i.svpbmt);
    }

    //pte.19&20
    svpbmt_read_fault: cross PTE_d, Mcause, read_acc, mode, svpbmt_support {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig4 = binsof(PTE_d.all_zeros);
        ignore_bins ig5 = binsof(PTE_d.svnapot);
    }
    svpbmt_write_fault: cross PTE_d, Mcause, write_acc, mode, svpbmt_support {
        ignore_bins ig1 = binsof(Mcause.ins_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig4 = binsof(PTE_d.all_zeros);
        ignore_bins ig5 = binsof(PTE_d.svnapot);
    }
    svpbmt_exec_fault: cross PTE_i, Mcause, exec_acc, mode, svpbmt_support {
        ignore_bins ig1 = binsof(Mcause.store_amo_page_fault);
        ignore_bins ig2 = binsof(Mcause.load_page_fault);
        ignore_bins ig4 = binsof(PTE_i.all_zeros);
        ignore_bins ig5 = binsof(PTE_i.svnapot);
    }

    //pte.17&19&20
    read_nofault: cross PTE_d, Nopagefault, read_acc, mode {
        ignore_bins ig4 = binsof(PTE_d.svnapot); 
        ignore_bins ig5 = binsof(PTE_d.svpbmt); 
        ignore_bins ig6 = binsof(PTE_d.reserved); 
    }
    write_nofault: cross PTE_d, Nopagefault, write_acc, mode{
        ignore_bins ig4 = binsof(PTE_d.svnapot); 
        ignore_bins ig5 = binsof(PTE_d.svpbmt); 
        ignore_bins ig6 = binsof(PTE_d.reserved); 
    }
    exec_nofault: cross PTE_i, Nopagefault, exec_acc, mode {
        ignore_bins ig4 = binsof(PTE_i.svnapot); 
        ignore_bins ig5 = binsof(PTE_i.svpbmt); 
        ignore_bins ig6 = binsof(PTE_i.reserved); 
    }

    //pte.18
    menvcfg: coverpoint  ins.current.csr[12'h30A][61] {
        bins ADUE = {1'b0};
    }
    svadu_not_supported: cross menvcfg, mode;
endgroup

function void rv64vm_sample(int hart, int issue);
        ins_rv64vm_t ins;
        ins = new(hart, issue, traceDataQ); 
        ins.add_csr(0);
        ins.add_vm_signals(1);
        
        PA_VA_cg.sample(ins);
        satp_cg.sample(ins);
        sfence_cg.sample(ins);
        mstatus_mprv_cg.sample(ins);
        vm_permissions_cg.sample(ins);
        res_global_pte_cg.sample(ins);
        add_feature_cg.sample(ins);
endfunction

   
