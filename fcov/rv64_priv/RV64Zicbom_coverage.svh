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
`define COVER_RV64ZICBOM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zicbom_t;

covergroup cbo_inval_cg with function sample(ins_rv64zicbom_t ins);
    option.per_instance = 1; 
    option.comment = "cbo_inval";
    priv_mode: coverpoint ins.current.mode{
        bins not_M_mode = {!2'b11};
        bins U_mode = {2'b00};
    }
    menvcfg_cbie: coverpoint ins.current.csr[12'h30A][5:4]{
        bins insrt_exception = {2'b00};
        bins flush = {2'b01};
        bins inval = {2'b11};
    }
    senvcfg_cbie: coverpoint ins.current.csr[12'h10A][5:4]{
        bins insrt_exception = {2'b00};
        bins flush = {2'b01};
        bins inval = {2'b11};
    }
    cbo: coverpoint ins.current.insn{
        wildcard bins inval = {32'b000000000000_?????_010_00000_0001111};
    }
    Mcause: coverpoint  ins.current.csr[12'h342]{
        bins illegal_ins = {64'd2};
    }
    illegal_ins_exception_m: cross priv_mode, menvcfg_cbie, cbo, Mcause{ //inv.1
        ignore_bins ig1 = binsof(menvcfg_cbie.flush);
        ignore_bins ig2 = binsof(menvcfg_cbie.inval);
        ignore_bins ig3 = binsof(priv_mode.U_mode);
    }
    illegal_ins_exception_s: cross priv_mode, senvcfg_cbie, cbo, Mcause{ //inv.2
        ignore_bins ig1 = binsof(senvcfg_cbie.flush);
        ignore_bins ig2 = binsof(senvcfg_cbie.inval);
        ignore_bins ig3 = binsof(priv_mode.not_M_mode);
    }
    flush_m: cross priv_mode, cbo, menvcfg_cbie { //inv.4
        ignore_bins ig1 = binsof(menvcfg_cbie.insrt_exception);
        ignore_bins ig2 = binsof(menvcfg_cbie.inval);
        ignore_bins ig3 = binsof(priv_mode.U_mode);
    }
    flush_s: cross priv_mode, cbo, senvcfg_cbie { //inv.5
        ignore_bins ig1 = binsof(senvcfg_cbie.insrt_exception);
        ignore_bins ig2 = binsof(senvcfg_cbie.inval);
        ignore_bins ig3 = binsof(priv_mode.not_M_mode);
    }
    inval_m: cross priv_mode, cbo, menvcfg_cbie { //inv.6
        ignore_bins ig1 = binsof(menvcfg_cbie.insrt_exception);
        ignore_bins ig2 = binsof(menvcfg_cbie.flush);
        ignore_bins ig3 = binsof(priv_mode.U_mode);
    }
    inval_s: cross priv_mode, cbo, senvcfg_cbie { //inv.7
        ignore_bins ig1 = binsof(senvcfg_cbie.insrt_exception);
        ignore_bins ig2 = binsof(senvcfg_cbie.flush);
        ignore_bins ig3 = binsof(priv_mode.not_M_mode);
    }
endgroup

covergroup cbo_clean_cg with function sample(ins_rv64zicbom_t ins);
    option.per_instance = 1; 
    option.comment = "cbo_clean";
    priv_mode: coverpoint ins.current.mode{
        bins not_M_mode = {!2'b11};
        bins U_mode = {2'b00};
    }
    menvcfg_cbcfe: coverpoint ins.current.csr[12'h30A][6]{
        bins set = {1'b1};
        bins not_set = {1'b0};
    }
    senvcfg_cbcfe: coverpoint ins.current.csr[12'h10A][6]{
        bins set = {1'b1};
        bins not_set = {1'b0};
    }
    cbo: coverpoint ins.current.insn {
        wildcard bins clean = {32'b000000000001_?????_010_00000_0001111};
    }
    Mcause: coverpoint  ins.current.csr[12'h342] {
        bins illegal_ins = {64'd2};
    }
    illegal_ins_exception_m: cross priv_mode, menvcfg_cbcfe, cbo, Mcause{ //cl.1
        ignore_bins ig1 = binsof(menvcfg_cbcfe.set);
        ignore_bins ig2 = binsof(priv_mode.U_mode);
    }
    illegal_ins_exception_s: cross priv_mode, senvcfg_cbcfe, cbo, Mcause{ //cl.2
        ignore_bins ig1 = binsof(senvcfg_cbcfe.set);
        ignore_bins ig2 = binsof(priv_mode.not_M_mode);
    }
    clean_m: cross priv_mode, cbo, menvcfg_cbcfe { //cl.4
        ignore_bins ig1 = binsof(menvcfg_cbcfe.not_set);
        ignore_bins ig2 = binsof(priv_mode.U_mode);
    }
    clean_s: cross priv_mode, cbo, senvcfg_cbcfe { //cl.5
        ignore_bins ig1 = binsof(senvcfg_cbcfe.not_set);
        ignore_bins ig2 = binsof(priv_mode.not_M_mode);
    }
endgroup

covergroup cbo_flush_cg with function sample(ins_rv64zicbom_t ins);
    option.per_instance = 1; 
    option.comment = "cbo_flush";
    priv_mode: coverpoint ins.current.mode{
        bins not_M_mode = {!2'b11};
        bins U_mode = {2'b00};
    }
    menvcfg_cbcfe: coverpoint ins.current.csr[12'h30A][6]{
        bins set = {1'b1};
        bins not_set = {1'b0};
    }
    senvcfg_cbcfe: coverpoint ins.current.csr[12'h10A][6]{
        bins set = {1'b1};
        bins not_set = {1'b0};
    }
    cbo: coverpoint ins.current.insn {
        wildcard bins flush = {32'b000000000010_?????_010_00000_0001111};
    }
    Mcause: coverpoint  ins.current.csr[12'h342] {
        bins illegal_ins = {64'd2};
    }
    illegal_ins_exception_m: cross priv_mode, menvcfg_cbcfe, cbo, Mcause{ //fl.1
        ignore_bins ig1 = binsof(menvcfg_cbcfe.set);
        ignore_bins ig2 = binsof(priv_mode.U_mode);
    }
    illegal_ins_exception_s: cross priv_mode, senvcfg_cbcfe, cbo, Mcause{ //fl.2
        ignore_bins ig1 = binsof(senvcfg_cbcfe.set);
        ignore_bins ig2 = binsof(priv_mode.not_M_mode);
    }
    flush_m: cross priv_mode, cbo, menvcfg_cbcfe, Mcause { //fl.4
        ignore_bins ig1 = binsof(menvcfg_cbcfe.not_set);
        ignore_bins ig2 = binsof(priv_mode.U_mode);
    }
    flush_s: cross priv_mode, cbo, senvcfg_cbcfe, Mcause { //fl.5
        ignore_bins ig1 = binsof(senvcfg_cbcfe.not_set);
        ignore_bins ig2 = binsof(priv_mode.not_M_mode);
    }
endgroup

function void rv64zicbom_sample(int hart, int issue);
    ins_rv64zicbom_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_csr(0);
    
    cbo_inval_cg.sample(ins);
    cbo_clean_cg.sample(ins);
    cbo_flush_cg.sample(ins);
endfunction