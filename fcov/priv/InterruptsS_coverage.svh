///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
// 
// Written: Corey Hickson chickson@hmc.edu 18 Feb 2025
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

`define COVER_INTERRUPTSS
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_interruptss_t;

covergroup InterruptsS_cg with function sample(ins_interruptss_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints
    mstatus_mie: coverpoint ins.current.csr[12'h300][3]  { }
    mstatus_sie: coverpoint ins.current.csr[12'h300][1]  { }
    mstatus_tw:  coverpoint ins.current.csr[12'h300][21] { }
    mie_ones: coverpoint ins.current.csr[12'h304][15:0] {
        wildcard bins ones = {16'b????1?1?1?1?1?1?}; // ones in every field that is not tied to zero
    }
    mip_ones: coverpoint ins.current.csr[12'h344][15:0] {
        wildcard bins ones = {16'b????1?1?1?1?1?1?}; // ones in every field that is not tied to zero
    }
    mideleg_ones_zeros: coverpoint ins.current.csr[12'h303] {
        wildcard bins ones  = {16'b????1?1?1?1?1?1?}; //  ones in every field that is not tied to zero
        wildcard bins zeros = {16'b????0?0?0?0?0?0?}; // zeros in every field that is not tied to zero
    }
    mideleg_zeros: coverpoint ins.current.csr[12'h303] {
        wildcard bins zeros = {16'b????0?0?0?0?0?0?}; // zeros in every field that is not tied to zero
    }
    mideleg_ones: coverpoint ins.current.csr[12'h303] {
        wildcard bins ones  = {16'b????1?1?1?1?1?1?}; //  ones in every field that is not tied to zero
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
    sip_seip_one: coverpoint int.current.csr[12'h144][9] {
        bins one = {1};
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
    mie_combinations: coverpoint {ins.current.csr[12'h304][1],
                                  ins.current.csr[12'h304][3],
                                  ins.current.csr[12'h304][5],
                                  ins.current.csr[12'h304][7],
                                  ins.current.csr[12'h304][9],
                                  ins.current.csr[12'h304][11]} {
        // auto fills all 2^6 combinations
    }
    mip_combinations: coverpoint {ins.current.csr[12'h344][1],
                                  ins.current.csr[12'h344][3],
                                  ins.current.csr[12'h344][5],
                                  ins.current.csr[12'h344][7],
                                  ins.current.csr[12'h344][9],
                                  ins.current.csr[12'h344][11]} {
        // auto fills all 2^6 combinations
    }
    mideleg_combinations: coverpoint {ins.current.csr[12'h303][1],
                                      ins.current.csr[12'h303][3],
                                      ins.current.csr[12'h303][5],
                                      ins.current.csr[12'h303][7],
                                      ins.current.csr[12'h303][9],
                                      ins.current.csr[12'h303][11]} {
        // auto fills all 2^6 combinations
    }
    mip_mie_eq: coverpoint (ins.current.csr[12'h304] == ins.current.csr[12'h344]) {
        bins equal = {1};
    }
    mideleg_mie_eq: coverpoint (ins.current.csr[12'h303] == ins.current.csr[12'h344]) {
        bins equal = {1};
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
    timeout: coverpoint ins.current.csr[12'h344][7] iff (ins.trap == 1) {
        bins no_timer_int = {0};
    }
    change_to_s_mode: coverpoint (ins.current.mode == 2'b01){
        wildcard bins change_to_s = {0 => 1}; // transition from another mode to S mode 
    }
    old_priv_mode_s: coverpoint ins.prev.mode {
        bins S_Mode = {2'b01};
    }

    // main coverpoints

    cp_trigger_mti:             cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, mip_mtip_one;
    cp_trigger_msi:             cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, mip_msip_one, clint_msip_set;
    cp_trigger_mei:             cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, mip_meip_one;
    cp_trigger_sti:             cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, mip_stip_one;
    cp_trigger_ssi_mip:         cross change_tp_s_mode, mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, mip_ssip_one; 
    cp_trigger_ssi_sip:         cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, csrrw, write_mip_ssip;
    cp_trigger_sei:             cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, sip_seip_one;
    cp_trigger_sei_seip:        cross old_priv_mode_s,  mstatus_mie, mstatus_sie, mie_ones, mideleg_ones_zeros, csrrw, write_mip_seip;
    // TODO: CLARIFY HOW TO COVER TWO WRITES SEPPARATED BY A PRIV MODE CHANGE
    cp_trigger_changingtos_mti: cross change_to_s_mode, mstatus_mie_zero, mideleg_ones_zeros, mip_mtip_one;               // TODO: missing part of the coverpoint "change to S mode, then write sstatus.SIE"
    cp_trigger_changingtos_msi: cross change_to_s_mode, mstatus_mie_zero, mideleg_ones_zeros, mip_msip_one;               // ^^^
    cp_trigger_changingtos_mei: cross change_to_s_mode, mstatus_mie_zero, mideleg_ones_zeros, mip_meip_one;               // ^^^
    cp_trigger_changingtos_sti: cross change_to_s_mode, mstatus_mie_zero, mideleg_ones_zeros, mip_stip_one;               // ^^^
    cp_trigger_changingtos_ssi: cross change_to_s_mode, mstatus_mid_zero, mideleg_ones_zeros, mip_ssip_one;               // ^^^
    cp_trigger_changingtos_sei: cross change_to_s_mode, mstatus_mid_zero, mideleg_ones_zeros, mip_seip_one;               // ^^^
    cp_interrupts:              cross old_priv_mode_s,  mstatus_mie, mtvec_mode_zero, mip_walking, mie_walking;
    cp_vectored:                cross change_to_s_mode, mstatus_mie_one, mtvec_mode, mip_walking;                         // ^^^
    cp_priority_mip_m:          cross change_to_s_mode, mstatus_mie_zero, mie_combinations, mie_ones, mideleg_zeros;      // ^^^
    cp_priority_mie_m:          cross change_to_s_mode, mstatus_mie_zero, mip_combinations, mie_ones, mideleg_zeros;      // ^^^
    cp_priority_both_m:         cross change_to_s_mode, mstatus_mie_zero, mie_combinations, mip_mie_eq, mideleg_zeros;    // ^^^
    cp_priority_mip_s:          cross change_to_s_mode, mstatus_mie_one, mie_combinations, mie_ones, mideleg_ones;        // ^^^
    cp_priority_mie_s:          cross change_to_s_mode, mstatus_mie_one, mip_combinations, mie_ones, mideleg_ones;        // ^^^
    cp_priority_both_s:         cross change_to_s_mode, mstatus_mie_one, mie_combinations, mip_mie_eq, mideleg_ones;      // ^^^
    cp_priority_mideleg_m:      cross change_to_s_mode, mstatus_mie_zero, mideleg_combinations, mip_ones, mie_ones;       // ^^^
    cp_priority_mideleg_s:      cross change_to_s_mode, mstatus_mie_zero, mideleg_combinations, mip_ones, mideleg_mie_eq; // ^^^
    cp_wfi:                     cross wfi, mstatus_mie, mstatus_sie, mideleg_ones_zeros, mstatus_tw, mie_mtie_one, mip_mtip_one;
    cp_wfi_timeout:             cross wfi, mstatus_mie, mstatus_sie, mideleg_ones_zeros, mstatus_tw, mie_mtie_one, timeout;

endgroup

function void interruptss_sample(int hart, int issue);
    ins_interruptss_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    InterruptsS_cg.sample(ins);
    
endfunction
