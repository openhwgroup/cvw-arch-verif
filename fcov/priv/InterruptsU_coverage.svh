///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 16 Feb 2025
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

`define COVER_INTERRUPTSU
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_interruptsu_t;

covergroup InterruptsU_cg with function sample(ins_interruptsu_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    mtvec_mode: coverpoint ins.current.csr[12'h305][1:0] {
        bins direct   = {2'b00};
        bins vector   = {2'b01};
    }
    mideleg_ones_zeros: coverpoint ins.current.csr[12'h303] {
        wildcard bins ones  = {16'b????1?1?1?1?1?1?}; //  ones in every field that is not tied to zero
        wildcard bins zeros = {16'b????0?0?0?0?0?0?}; // zeros in every field that is not tied to zero
    }
    mstatus_mie: coverpoint ins.current.csr[12'h300][3]  { }
    mstatus_sie: coverpoint ins.current.csr[12'h300][1]  { }
    mstatus_tw:  coverpoint ins.current.csr[12'h300][21] { }
    mip_mtip:    coverpoint ins.current.csr[12'h344][7]  { }
    mip_meip:    coverpoint ins.current.csr[12'h344][11] { }
    mip_seip:    coverpoint ins.current.csr[12'h344][9]  { }
    mie_mtie_one: coverpoint ins.current.csr[12'h304][7] {
        bins one = {1};
    }
    mie_msie_one: coverpoint ins.current.csr[12'h304][3] {
        bins one = {1};
    }
    mie_meie_one: coverpoint ins.current.csr[12'h304][11] {
        bins one = {1};
    }
    mie_seie_one: coverpoint ins.current.csr[12'h304][9] {
        bins one = {1};
    }
    mideleg_mti_zero: coverpoint ins.current.csr[12'h303][7] {
        bins zero = {0};
    }
    mideleg_msi_zero: coverpoint ins.current.csr[12'h303][3] {
        bins zero = {0};
    }
    mideleg_mei_zero: coverpoint ins.current.csr[12'h303][11] {
        bins zero = {0};
    }
    mideleg_sei_zero: coverpoint ins.current.csr[12'h303][9] {
        bins zero = {0};
    }
    wfi: coverpoint ins.current.insn {
        bins wfi = {32'b0001000_00101_00000_000_00000_1110011};
    }
    timeout: coverpoint ins.current.csr[12'h344][7] iff (ins.trap == 1) {
        bins no_timer_int = {0};
    }
    clint_msip_set: coverpoint (ins.current.insn[6:0] == 7'b0100011)                  & // the current instruction is a store
                               (ins.current.imm + ins.current.rs1_val == `CLINT_BASE) & // store address is clint base + 0 (msip)
                               (ins.current.rs1_val[0] == 1) {                          // value to store has a 1 in bit 0 
        bins clint_msip_set = {1};
    }

    // main coverpoints
    cp_user_mti:    cross mtvec_mode, mstatus_mie, mstatus_sie, mideleg_mti_zero, mie_mtie_one, mip_mtip; 
    cp_user_msi:    cross mtvec_mode, mstatus_mie, mstatus_sie, mideleg_msi_zero, mie_msie_one, clint_msip_set;
    cp_user_mei:    cross mtvec_mode, mstatus_mie, mstatus_sie, mideleg_mei_zero, mie_meie_one, mip_meip;
    cp_user_sei:    cross mtvec_mode, mstatus_mie, mstatus_sie, mideleg_sei_zero, mie_seie_one, mip_seip;
    cp_wfi:         cross wfi,        mstatus_mie, mstatus_sie, mideleg_ones_zeros, mstatus_tw, mie_mtie_one, mip_mtip;
    cp_wfi_timeout: cross wfi,        mstatus_mie, mstatus_sie, mideleg_ones_zeros, mstatus_tw, mie_mtie_one, timeout;

endgroup

function void interruptsu_sample(int hart, int issue);
    ins_interruptsu_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    InterruptsU_cg.sample(ins);
    
endfunction