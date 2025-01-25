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

`define COVER_EXCEPTIONSZALRSC
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionszalrsc_t;

covergroup ExceptionsZalrsc_exceptions_cg with function sample(ins_exceptionszalrsc_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    lr: coverpoint ins.current.insn {
        bins lr_w = {32'b00010_??_00000_?????_010_?????_0101111};
        `ifdef XLEN64
            bins lr_d = {32'b00010_??_00000_?????_011_?????_0101111};
        `endif
    }
    sc: coverpoint ins.current.insn {
        bins sc_w = {32'b00011_??_?????_?????_010_?????_0101111};
        `ifdef XLEN64
            bins sc_d = {32'b00011_??_?????_?????_011_?????_0101111};
        `endif
    }
    illegal_address: coverpoint ins.current.rs1_val {
        bins illegal = {`ACCESS_FAULT_ADDRESS};
    }
    adr_LSBs: coverpoint ins.current.rs1_val[2:0]  {
        // auto fills 000 through 111
    }
    rd_boolean: coverpoint ins.current.rd_val {
        bins one  = {1};
        bins zero = {0};
    }
    // main coverpoints
    cp_load_address_misaligned:  cross lr, adr_LSBs;
    cp_load_access_fault:        cross lr, illegal_address;
    cp_store_address_misaligned: cross sc, adr_LSBs, rd_boolean;
    cp_store_access_fault:       cross sc, illegal_address, rd_boolean;
    
endgroup

function void exceptionszalrsc_sample(int hart, int issue);
    ins_exceptionszalrsc_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    ExceptionsZalrsc_exceptions_cg.sample(ins);
    
endfunction
