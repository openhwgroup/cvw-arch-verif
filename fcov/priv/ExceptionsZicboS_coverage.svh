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

`define COVER_EXCEPTIONSZICBOS
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_exceptionszicbos_t;

covergroup exceptionsZicboS_cg with function sample(ins_exceptionszicbos_t ins);
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
        ignore_bins reserved = {2'b10};
    }
    menvcfg_cbcfe: coverpoint ins.current.csr[12'h30A][6] {
    }
    menvcfg_cbze: coverpoint ins.current.csr[12'h30A][7] {
    }
    senvcfg_cbie: coverpoint ins.current.csr[12'h10A][5:4] {
        ignore_bins reserved = {2'b10};
    }
    senvcfg_cbcfe: coverpoint ins.current.csr[12'h10A][6] {
    }
    senvcfg_cbze: coverpoint ins.current.csr[12'h10A][7] {
    }
    priv_mode_u: coverpoint ins.current.mode {
        bins U_mode = {2'b00};
    }
    priv_mode_s: coverpoint ins.current.mode {
        bins S_mode = {2'b10};
    }

    // main coverpoints
    cp_menvcfg_cbie_s:  cross cbo_inval,      menvcfg_cbie,  priv_mode_s;
    cp_menvcfg_cbcfe_s: cross cbo_flushclean, menvcfg_cbcfe, priv_mode_s;
    cp_menvcfg_cbze_s:  cross cbo_zero,       menvcfg_cbze,  priv_mode_s;
    cp_senvcfg_cbie_s:  cross cbo_inval,      senvcfg_cbie,  priv_mode_s;
    cp_senvcfg_cbcfe_s: cross cbo_flushclean, senvcfg_cbcfe, priv_mode_s;
    cp_senvcfg_cbze_s:  cross cbo_zero,       senvcfg_cbze,  priv_mode_s;
    cp_senvcfg_cbie_u:  cross cbo_inval,      senvcfg_cbie,  priv_mode_u;
    cp_senvcfg_cbcfe_u: cross cbo_flushclean, senvcfg_cbcfe, priv_mode_u;
    cp_senvcfg_cbze_u:  cross cbo_zero,       senvcfg_cbze,  priv_mode_u;

endgroup

function void exceptionszicbos_sample(int hart, int issue);
    ins_exceptionszicbos_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);

    // $display("Instruction is: PC %h: %h = %s (rd = %h rs1 = %h rs2 = %h) trap = %b mode = %b (old mode %b) mstatus %h (old mstatus %h).  Retired: %d",ins.current.pc_rdata, ins.current.insn, ins.current.disass, ins.current.rd_val, ins.current.rs1_val, ins.current.rs2_val, ins.current.trap, ins.current.mode, ins.prev.mode, ins.current.csr[12'h300], ins.prev.csr[12'h300], ins.current.csr[12'hB02]);
    
    exceptionsZicboS_cg.sample(ins);
    
endfunction
