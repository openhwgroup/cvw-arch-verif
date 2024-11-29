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

`define COVER_EXCEPTIONSZICBOU
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionszicbou_t;

covergroup exceptionsZicboU_cg with function sample(ins_exceptionszicbou_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    cbo_inval: coverpoint ins.current.insn {
        bins cbo_inval = {32'b000000000000_?????_010_00000_0001111};
    }
    cbo_flushclean: coverpoint ins.current.insn {
        bins cbo_flush = {32'b000000000010_?????_010_00000_0001111};
        bins cbo_clean = {32'b000000000001_?????_010_00000_0001111};
    }
    cbo_zero: coverpoint ins.current.insn {
        bins cbo_zero = {32'b000000000100_?????_010_00000_0001111};
    }
    menvcfg_cbie: coverpoint ins.current.csr[12'h30A][5:4] {
    }
    menvcfg_cbcfe: coverpoint ins.current.csr[12'h30A][6] {
    }
    menvcfg_cbze: coverpoint ins.current.csr[12'h30A][7] {
    }
    priv_mode_m: coverpoint ins.current.mode {
        bins M_mode = {2'b11};
    }
    priv_mode_u: coverpoint ins.current.mode {
        bins U_mode = {2'b00};
    }


    // main coverpoints
    cp_menvcfg_cbie_u:  cross cbo_inval,      menvcfg_cbie,  priv_mode_u;
    cp_menvcfg_cbcfe_u: cross cbo_flushclean, menvcfg_cbcfe, priv_mode_u;
    cp_menvcfg_cbze_u:  cross cbo_zero,       menvcfg_cbze,  priv_mode_u;
    cp_menvcfg_cbie_m:  cross cbo_inval,      menvcfg_cbie,  priv_mode_m;
    cp_menvcfg_cbcfe_m: cross cbo_flushclean, menvcfg_cbcfe, priv_mode_m;
    cp_menvcfg_cbze_m:  cross cbo_zero,       menvcfg_cbze,  priv_mode_m;

endgroup

function void exceptionszicbou_sample(int hart, int issue);
    ins_exceptionszicbou_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);

    // $display("Instruction is: PC %h: %h = %s (rd = %h rs1 = %h rs2 = %h) trap = %b mode = %b (old mode %b) mstatus %h (old mstatus %h).  Retired: %d",ins.current.pc_rdata, ins.current.insn, ins.current.disass, ins.current.rd_val, ins.current.rs1_val, ins.current.rs2_val, ins.current.trap, ins.current.mode, ins.prev.mode, ins.current.csr[12'h300], ins.prev.csr[12'h300], ins.current.csr[12'hB02]);
    
    exceptionsZicboU_cg.sample(ins);
    
endfunction
