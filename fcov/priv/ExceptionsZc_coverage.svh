///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 24 November 2024
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

`define COVER_EXCEPTIONSZC
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionszc_t;

covergroup exceptionsZc_cg with function sample(ins_exceptionszc_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    loadops: coverpoint ins.current.insn[15:0] {
        wildcard bins c_lw  = {16'b010_???_???_??_???_00}; 
        wildcard bins c_lh  = {16'b100001_???_1?_???_00}; 
        wildcard bins c_lhu = {16'b100001_???_0?_???_00}; 
        wildcard bins c_lbu = {16'b100000_???_??_???_00}; 
        `ifdef XLEN64
            wildcard bins c_ld  = {16'b011_???_???_??_???_00}; 
        `endif
    }
    storeops: coverpoint ins.current.insn[15:0] {
        wildcard bins c_sb = {16'b100010_???_??_???_00}; 
        wildcard bins c_sh = {16'b100011_???_0?_???_00}; 
        wildcard bins c_sw = {16'b110_???_???_??_???_00}; 
        `ifdef XLEN64
            wildcard bins c_sd = {16'b111_???_???_??_???_00}; 
        `endif
    }
    adr_LSBs: coverpoint {ins.current.rs1_val + ins.current.imm}[2:0]  {
        // auto fills 000 through 111
    }
    illegal_address: coverpoint ins.current.imm + ins.current.rs1_val {
        bins illegal = {`ACCESS_FAULT_ADDRESS};
    }
    
    // main coverpoints
    cp_breakpoint:                           coverpoint ins.current.insn[15:0] {bins c_ebreak = {16'h9002};}
    cp_load_address_misaligned:              cross loadops, adr_LSBs;
    cp_load_access_fault:                    cross loadops, illegal_address;
    cp_store_address_misaligned:             cross storeops, adr_LSBs;
    cp_store_access_fault:                   cross storeops, illegal_address;

endgroup

function void exceptionszc_sample(int hart, int issue);
    ins_exceptionszc_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);

    // $display("Instruction is: PC %h: %h = %s (rd = %h rs1 = %h rs2 = %h) trap = %b mode = %b (old mode %b) mstatus %h (old mstatus %h).  Retired: %d",ins.current.pc_rdata, ins.current.insn, ins.current.disass, ins.current.rd_val, ins.current.rs1_val, ins.current.rs2_val, ins.current.trap, ins.current.mode, ins.prev.mode, ins.current.csr[12'h300], ins.prev.csr[12'h300], ins.current.csr[12'hB02]);
    
    exceptionsZc_cg.sample(ins);
    
endfunction
