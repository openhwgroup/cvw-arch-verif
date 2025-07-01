///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Standard Covergroups
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore
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

//------------ Assuming it right for time being --------------
`define RAMBASEADDR 32'h80000000
`define LARGESTPROGRAM 32'h00010000
`define SAFEREGIONSTART (`RAMBASEADDR + `LARGESTPROGRAM)
`define REGIONSTART `SAFEREGIONSTART

`define G 0				// Set G as needed (0, 1, 2, etc.)
`define G_IS_0			 // Uncomment this when G=0
`define g (2**(`G+2))	// Region size = 2^(G+2)

// Define PMP_16 or PMP_64
`define PMP_16

// --- These are values that can be found in PMPADDR ---

// NA4 or TOR region
`define NON_STANDARD_REGION	(`REGIONSTART >> 2)	// yyyy...yyyy

// NAPOT region having one trailing 0 and k = (G - 1) trailing 1s
`define STANDARD_REGION	(`REGIONSTART >> 2) | (2**`k - 1) // yyyy...0111

//------------------------------------------------------------

`define COVER_RV32PMP
`define COVER_RV64PMP

covergroup PMPZicbo_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"

    cfg_for_menvcfg: coverpoint ins.current.csr[12'h30A]{
        bins configuration = {64'b?_?_?_?_??????????????????????????_??_????????????????????????_1_1_01_???_?}; //menvcfg.CBIE, CBCFE, CBZE = 1
    }

    pmpaddr: coverpoint ins.current.csr[12'h3B0]{
        bins region = {(`REGIONSTART>>2) | ((1 << 12) - 1) }; //for 4KiB region, No of trailing ones = 12
    }

    addr_in_region: coverpoint (ins.current.rs1_val) {
        bins at_base = {`REGIONSTART};
    }

    cbo_clean_instr: coverpoint ins.current.insn{
        wildcard bins cbo_clean = {32'b000000000001_?????_010_00000_0001111};
    }

    cbo_flush_instr: coverpoint ins.current.insn{
        wildcard bins cbo_flush = {32'b000000000010_?????_010_00000_0001111};
    }

    cbo_inval_instr: coverpoint ins.current.insn{
        wildcard bins cbo_inval = {32'b000000000000_?????_010_00000_0001111};
    }

    cbo_zero_instr: coverpoint ins.current.insn{
        wildcard bins cbo_zero = {32'b000000000100_?????_010_00000_0001111};
    }

    pmpcfg_for_cp_cbo: coverpoint ins.current.csr[12'h3A0][7:0]{
        bins pmpcfg1 = {8'b10011000}; //XWR = 000
        bins pmpcfg2 = {8'b10011001}; //XWR = 001
        bins pmpcfg3 = {8'b10011011}; //XWR = 011
    }

    cp_cbo_clean : cross priv_mode_m, pmpaddr, pmpcfg_for_cp_cbo, addr_in_region, cfg_for_menvcfg, cbo_clean_instr;
    cp_cbo_flush : cross priv_mode_m, pmpaddr, pmpcfg_for_cp_cbo, addr_in_region, cfg_for_menvcfg, cbo_flush_instr;
    cp_cbo_inval : cross priv_mode_m, pmpaddr, pmpcfg_for_cp_cbo, addr_in_region, cfg_for_menvcfg, cbo_inval_instr;
    cp_cbo_zero  : cross priv_mode_m, pmpaddr, pmpcfg_for_cp_cbo, addr_in_region, cfg_for_menvcfg, cbo_zero_instr;

    prefetch_i_instr: coverpoint ins.current.insn{
        wildcard bins prefetch_i_instr = {32'b???????_00000_?????_110_00000_0010011};
    }

    prefetch_r_instr: coverpoint ins.current.insn{
        wildcard bins prefetch_i_instr = {32'b???????_00001_?????_110_00000_0010011};
    }

    prefetch_w_instr: coverpoint ins.current.insn{
        wildcard bins prefetch_i_instr = {32'b???????_00011_?????_110_00000_0010011};
    }

    pmpcfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A0][7:0]{
        bins pmpcfg1 = {8'b10011000}; //XWR = 000
        bins pmpcfg2 = {8'b10011001}; //XWR = 001
        bins pmpcfg3 = {8'b10011011}; //XWR = 011
        bins pmpcfg4 = {8'b10011100}; //XWR = 100
        bins pmpcfg5 = {8'b10011101}; //XWR = 101
        bins pmpcfg6 = {8'b10011111}; //XWR = 111
    }

    cp_prefetch_i: cross priv_mode_m, addr_in_region, pmpaddr, pmpcfg_for_cp_prefetch,cfg_for_menvcfg, prefetch_i_instr;
    cp_prefetch_r: cross priv_mode_m, addr_in_region, pmpaddr, pmpcfg_for_cp_prefetch,cfg_for_menvcfg, prefetch_r_instr;
    cp_prefetch_w: cross priv_mode_m, addr_in_region, pmpaddr, pmpcfg_for_cp_prefetch,cfg_for_menvcfg, prefetch_w_instr;

endgroup

function void pmpZicbo_sample(int hart, int issue, ins_t ins);
    PMPZicbo_cg.sample(ins);
endfunction
