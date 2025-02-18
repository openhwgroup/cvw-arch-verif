///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu, Jordan Carlin jcarlin@hmc.edu 08 Feb 2025
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

`define COVER_INTERRUPTSM
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_interruptsm_t;

covergroup InterruptsM_cg with function sample(ins_interruptsm_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    mstatus_mie: coverpoint ins.current.csr[12'h300][3]  { }
    mstatus_sie: coverpoint ins.current.csr[12'h300][1]  { }
    mstatus_tw:  coverpoint ins.current.csr[12'h300][21] { }
    mie_ones: coverpoint ins.current.csr[12'h304][15:0] {
        wildcard bins ones = {16'b????1?1?1?1?1?1?}; // ones in every field that is not tied to zero
    }
    mip_mtip_one: coverpoint ins.current.csr[12'h344][7] {
        bins one = {1};
    }
    mip_stip_one: coverpoint ins.current.csr[12'h344][5] {
        bins one = {1};
    }
    mip_msip_one: coverpoint ins.current.csr[12'h344][3] {
        bins one = {1};
    }
    mip_ssip_one: coverpoint ins.current.csr[12'h344][1] {
        bins one = {1};
    }
    mip_meip_one: coverpoint ins.current.csr[12'h344][11] {
        bins one = {1};
    }
    mip_seip_one: coverpoint ins.current.csr[12'h344][9] {
        bins one = {1};
    }
    mie_mtie_one: coverpoint ins.current.csr[12'h304][7] {
        bins one = {1};
    }
    mstatus_mie_zero: coverpoint ins.current.csr[12'h300][3] {
        bins zero = {0};
    }
    mstatus_mie_one: coverpoint ins.current.csr[12'h300][3] {
        bins zero = {1};
    }
    mip_seip_zero: coverpoint ins.current.csr[12'h344][9] {
        bins zero = {0};
    }

    mie_walking: coverpoint {ins.current.csr[12'h304][7], 
                             ins.current.csr[12'h304][3], 
                             ins.current.csr[12'h304][11]} {
        bins mtie = {3'b001};
        bins msie = {3'b010};
        bins meie = {3'b100};
    }
    mip_walking: coverpoint {ins.current.csr[12'h344][7], 
                             ins.current.csr[12'h344][3], 
                             ins.current.csr[12'h344][11]} {
        bins mtip = {3'b001};
        bins msip = {3'b010};
        bins meip = {3'b100};
    }
    mie_mtie_msie_meie: coverpoint {ins.current.csr[12'h304][7], 
                                    ins.current.csr[12'h304][3], 
                                    ins.current.csr[12'h304][11]} {
        // auto fills all 8 combinations
    }
    mip_mtip_msip_meip: coverpoint {ins.current.csr[12'h344][7], 
                                    ins.current.csr[12'h344][3], 
                                    ins.current.csr[12'h344][11]} {
        // auto fills all 8 combinations
    }
    mtvec_mode: coverpoint ins.current.csr[12'h305][1:0] {
        bins direct   = {2'b00};
        bins vector   = {2'b01};
    }
    mtvec_mode_zero: coverpoint ins.current.csr[12'h305][1:0] {
        bins direct   = {2'b00};
    }
    write_mip_seip: coverpoint ins.current.rs1_val[9] {
        wildcard bins write_seip = {1}; 
    }
    write_mip_ssip: coverpoint ins.current.rs1_val[1] {
        wildcard bins write_ssip = {1};
    }
    csrrw: coverpoint ins.current.insn {
        wildcard bins csrrw = {32'b????????????_?????_001_?????_1110011}; 
    }
    csrrs: coverpoint ins.current.insn {
        wildcard bins csrrs = {32'b????????????_?????_010_?????_1110011};
    }
    clint_msip_set: coverpoint (ins.current.insn[6:0] == 7'b0100011)                  & // the current instruction is a store
                               (ins.current.imm + ins.current.rs1_val == `CLINT_BASE) & // store address is clint base + 0 (msip)
                               (ins.current.rs1_val[0] == 1) {                          // value to store has a 1 in bit 0 
        bins clint_msip_set = {1};
    }
    wfi: coverpoint ins.current.insn {
        bins wfi = {32'b0001000_00101_00000_000_00000_1110011};
    }
    priv_mode_m: coverpoint ins.current.mode {
        bins M_mode = {2'b11};
    }

    // TODO: Need a helper coverpoint for PLIC/EIC interrupts for sei3

    // main coverpoints

    cp_trigger_mti:      cross priv_mode_m, mstatus_mie, mie_ones, mip_ssip_one;
    cp_trigger_msi:      cross priv_mode_m, mstatus_mie, mie_ones, mip_msip_one, clint_msip_set;
    cp_trigger_mei:      cross priv_mode_m, mstatus_mie, mie_ones, mip_meip_one;
    cp_trigger_sti:      cross priv_mode_m, mstatus_mie, mie_ones, mip_stip_one;
    cp_trigger_ssi_mip:  cross priv_mode_m, csrrw, write_mip_ssip, mstatus_mie, mie_ones; 
    cp_trigger_sei_plic: cross priv_mode_m, mstatus_mie, mie_ones, mip_seip_one;
    cp_trigger_sei_sie:  cross priv_mode_m, csrrw, write_mip_seip, mstatus_mie, mie_ones;
    cp_global_ie:        cross priv_mode_m, mstatus_mie, mstatus_sie, mip_walking, mie_walking;
    cp_interrupts:       cross priv_mode_m, mstatus_mie, mtvec_mode_zero, mip_walking, mie_walking;
    cp_vectored:         cross priv_mode_m, mstatus_mie_one, mtvec_mode, mip_walking, mie_walking;
    cp_priority:         cross priv_mode_m, mstatus_mie_one, mie_mtie_msie_meie, mip_mtip_msip_meip;
    cp_wfi:              cross priv_mode_m, wfi, mstatus_mie, mstatus_sie, mstatus_tw, mie_mtie_one, mip_mtip_one;
    cp_sei1:             cross priv_mode_m, csrrw, write_mip_seip, mstatus_mie_zero, mip_seip_zero; // TODO MIGHT NEED TO BE INS.PREV
    cp_sei2:             cross priv_mode_m, csrrs, write_mip_seip, mstatus_mie_zero, mip_seip_zero;
    // cp_sei3:             cross mstatus_mie_zero, mip_seip_zero, 

endgroup

function void interruptsm_sample(int hart, int issue);
    ins_interruptsm_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    InterruptsM_cg.sample(ins);
    
endfunction
