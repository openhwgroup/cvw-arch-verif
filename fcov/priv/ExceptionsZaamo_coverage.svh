///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 29 November 2024
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

`define COVER_EXCEPTIONSZAAMO
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionszaamo_t;

covergroup ExceptionsZaamo_exceptions_cg with function sample(ins_exceptionszaamo_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    amo_instrs: coverpoint ins.current.insn {
        bins amoswap_w = {32'b00001_??_?????_?????_010_?????_0101111};
        bins amoadd_w  = {32'b00000_??_?????_?????_010_?????_0101111};
        bins amoand_w  = {32'b01100_??_?????_?????_010_?????_0101111};
        bins amoor_w   = {32'b01000_??_?????_?????_010_?????_0101111};
        bins amoxor_w  = {32'b00100_??_?????_?????_010_?????_0101111};
        bins amomax_w  = {32'b10100_??_?????_?????_010_?????_0101111};
        bins amomaxu_w = {32'b11100_??_?????_?????_010_?????_0101111};
        bins amomin_w  = {32'b10000_??_?????_?????_010_?????_0101111};
        bins amominu_w = {32'b11000_??_?????_?????_010_?????_0101111};
        `ifdef XLEN64
            bins amoswap_d = {32'b00001_??_?????_?????_011_?????_0101111};
            bins amoadd_d  = {32'b00000_??_?????_?????_011_?????_0101111};
            bins amoand_d  = {32'b01100_??_?????_?????_011_?????_0101111};
            bins amoor_d   = {32'b01000_??_?????_?????_011_?????_0101111};
            bins amoxor_d  = {32'b00100_??_?????_?????_011_?????_0101111};
            bins amomax_d  = {32'b10100_??_?????_?????_011_?????_0101111};
            bins amomaxu_d = {32'b11100_??_?????_?????_011_?????_0101111};
            bins amomin_d  = {32'b10000_??_?????_?????_011_?????_0101111};
            bins amominu_d = {32'b11000_??_?????_?????_011_?????_0101111};
        `endif
    }
    illegal_address: coverpoint ins.current.rs1_val {
        bins illegal = {`ACCESS_FAULT_ADDRESS};
    }
    adr_LSBs: coverpoint ins.current.rs1_val[2:0]  {
        // auto fills 000 through 111
    }
    // main coverpoints
    cp_load_address_misaligned:  cross amo_instrs, adr_LSBs;
    cp_load_access_fault:        cross amo_instrs, illegal_address;
    
endgroup

function void exceptionszaamo_sample(int hart, int issue);
    ins_exceptionszaamo_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    ExceptionsZaamo_exceptions_cg.sample(ins);
    
endfunction
