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
`define k ((`G > 1) ? (`G - 1) : 0)

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

    cfg_for_menvcfg: coverpoint ins.current.csr[12'h30A][7:4] {
        bins configuration = {4'b1111}; //menvcfg.CBIE, CBCFE, CBZE = 1
    }

    pmpaddr_region0: coverpoint ins.current.csr[12'h3B0]{
        bins region = {(`REGIONSTART>>2) | ((1 << 9) - 1) }; //for 4KiB region, No of trailing ones = 9
    }

    pmpaddr_region1: coverpoint ins.current.csr[12'h3B1]{
        bins region = {((`REGIONSTART + 1*4096)>>2) | ((1 << 9) - 1) };
    }

    pmpaddr_region2: coverpoint ins.current.csr[12'h3B2]{
        bins region = {((`REGIONSTART + 2*4096)>>2) | ((1 << 9) - 1) };
    }

    addr_in_region0: coverpoint ins.current.rs1_val {
        bins address0 = {`REGIONSTART};
    }

    addr_in_region1: coverpoint ins.current.rs1_val {
        bins address1 = {(`REGIONSTART + 1*4096)};
    }

    addr_in_region2: coverpoint ins.current.rs1_val {
        bins address2 = {(`REGIONSTART + 2*4096)};
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

    pmp0cfg_for_cp_cbo: coverpoint ins.current.csr[12'h3A0][7:0]{
        bins pmpcfg0 = {8'b10011000}; //XWR = 000
    }

    pmp1cfg_for_cp_cbo: coverpoint ins.current.csr[12'h3A0][15:8]{
        bins pmpcfg1 = {8'b10011001}; //XWR = 001
    }

    pmp2cfg_for_cp_cbo: coverpoint ins.current.csr[12'h3A0][23:16]{
        bins pmpcfg2 = {8'b10011011}; //XWR = 011
    }

    //for each instruction, there are 3 configurations, in 3 seperate regions
    cp_cbo_clean1 : cross priv_mode_m, pmpaddr_region0, pmp0cfg_for_cp_cbo, addr_in_region0, cfg_for_menvcfg, cbo_clean_instr;
    cp_cbo_clean2 : cross priv_mode_m, pmpaddr_region1, pmp1cfg_for_cp_cbo, addr_in_region1, cfg_for_menvcfg, cbo_clean_instr;
    cp_cbo_clean3 : cross priv_mode_m, pmpaddr_region2, pmp2cfg_for_cp_cbo, addr_in_region2, cfg_for_menvcfg, cbo_clean_instr;

    cp_cbo_flush1 : cross priv_mode_m, pmpaddr_region0, pmp0cfg_for_cp_cbo, addr_in_region0, cfg_for_menvcfg, cbo_flush_instr;
    cp_cbo_flush2 : cross priv_mode_m, pmpaddr_region1, pmp1cfg_for_cp_cbo, addr_in_region1, cfg_for_menvcfg, cbo_flush_instr;
    cp_cbo_flush3 : cross priv_mode_m, pmpaddr_region2, pmp2cfg_for_cp_cbo, addr_in_region2, cfg_for_menvcfg, cbo_flush_instr;

    cp_cbo_inval1 : cross priv_mode_m, pmpaddr_region0, pmp0cfg_for_cp_cbo, addr_in_region0, cfg_for_menvcfg, cbo_inval_instr;
    cp_cbo_inval2 : cross priv_mode_m, pmpaddr_region1, pmp1cfg_for_cp_cbo, addr_in_region1, cfg_for_menvcfg, cbo_inval_instr;
    cp_cbo_inval3 : cross priv_mode_m, pmpaddr_region2, pmp2cfg_for_cp_cbo, addr_in_region2, cfg_for_menvcfg, cbo_inval_instr;

    cp_cbo_zero1  : cross priv_mode_m, pmpaddr_region0, pmp0cfg_for_cp_cbo, addr_in_region0, cfg_for_menvcfg, cbo_zero_instr;
    cp_cbo_zero2  : cross priv_mode_m, pmpaddr_region1, pmp1cfg_for_cp_cbo, addr_in_region1, cfg_for_menvcfg, cbo_zero_instr;
    cp_cbo_zero3  : cross priv_mode_m, pmpaddr_region2, pmp2cfg_for_cp_cbo, addr_in_region2, cfg_for_menvcfg, cbo_zero_instr;

    pmpaddr_region3: coverpoint ins.current.csr[12'h3B3]{
        bins region = {((`REGIONSTART + 3*4096)>>2) | ((1 << 9) - 1) };
    }

    pmpaddr_region4: coverpoint ins.current.csr[12'h3B4]{
        bins region = {((`REGIONSTART + 4*4096)>>2) | ((1 << 9) - 1) };
    }

    pmpaddr_region5: coverpoint ins.current.csr[12'h3B5]{
        bins region = {((`REGIONSTART + 5*4096)>>2) | ((1 << 9) - 1) };
    }

    pmpaddr_region6: coverpoint ins.current.csr[12'h3B6]{
        bins region = {((`REGIONSTART + 6*4096)>>2) | ((1 << 9) - 1) };
    }

    pmpaddr_region7: coverpoint ins.current.csr[12'h3B7]{
        bins region = {((`REGIONSTART + 7*4096)>>2) | ((1 << 9) - 1) };
    }

    pmpaddr_region8: coverpoint ins.current.csr[12'h3B8]{
        bins region = {((`REGIONSTART + 8*4096)>>2) | ((1 << 9) - 1) };
    }

    addr_in_region3: coverpoint ins.current.rs1_val + ins.current.imm {
        bins address3 = {(`REGIONSTART + 3*4096)};
    }

    addr_in_region4: coverpoint ins.current.rs1_val + ins.current.imm {
        bins address4 = {(`REGIONSTART + 4*4096)};
    }

    addr_in_region5: coverpoint ins.current.rs1_val + ins.current.imm {
        bins address5 = {(`REGIONSTART + 5*4096)};
    }

    addr_in_region6: coverpoint ins.current.rs1_val + ins.current.imm {
        bins address6 = {(`REGIONSTART + 6*4096)};
    }

    addr_in_region7: coverpoint ins.current.rs1_val + ins.current.imm {
        bins adress7 = {(`REGIONSTART + 7*4096)};
    }

    addr_in_region8: coverpoint ins.current.rs1_val + ins.current.imm {
        bins address8 = {(`REGIONSTART + 8*4096)};
    }

    prefetch_i_instr: coverpoint ins.current.insn{
        wildcard bins prefetch_i_instr = {32'b???????_00000_?????_110_00000_0010011};
    }

    prefetch_r_instr: coverpoint ins.current.insn{
        wildcard bins prefetch_i_instr = {32'b???????_00001_?????_110_00000_0010011};
    }

    prefetch_w_instr: coverpoint ins.current.insn{
        wildcard bins prefetch_i_instr = {32'b???????_00011_?????_110_00000_0010011};
    }

    pmp3cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A0][31:24]{
        bins pmpcfg3 = {8'b10011000}; //XWR = 000
    }

    `ifdef XLEN_64
        pmp4cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A0][39:32]{
            bins pmpcfg4 = {8'b10011001}; //XWR = 001
        }

        pmp5cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A0][47:40]{
            bins pmpcfg5 = {8'b10011011}; //XWR = 011
        }

        pmp6cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A0][55:48]{
            bins pmpcfg6 = {8'b10011100}; //XWR = 100
        }

        pmp7cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A0][63:56]{
            bins pmpcfg7 = {8'b10011101}; //XWR = 101
        }
    `else
        pmp4cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A1][7:0]{
            bins pmpcfg4 = {8'b10011001}; //XWR = 001
        }

        pmp5cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A1][15:8]{
            bins pmpcfg5 = {8'b10011011}; //XWR = 011
        }

        pmp6cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A1][23:16]{
            bins pmpcfg6 = {8'b10011100}; //XWR = 100
        }

        pmp7cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A1][31:24]{
            bins pmpcfg7 = {8'b10011101}; //XWR = 101
        }
    `endif

    pmp8cfg_for_cp_prefetch: coverpoint ins.current.csr[12'h3A2][7:0]{
        bins pmpcfg8 = {8'b10011111}; //XWR = 111
    }

    //for each instruction, there are 6 configurations, in 6 seperate regions
    cp_prefetch_i1: cross priv_mode_m, addr_in_region3, pmpaddr_region3, pmp3cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_i_instr;
    cp_prefetch_i2: cross priv_mode_m, addr_in_region4, pmpaddr_region4, pmp4cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_i_instr;
    cp_prefetch_i3: cross priv_mode_m, addr_in_region5, pmpaddr_region5, pmp5cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_i_instr;
    cp_prefetch_i4: cross priv_mode_m, addr_in_region6, pmpaddr_region6, pmp6cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_i_instr;
    cp_prefetch_i5: cross priv_mode_m, addr_in_region7, pmpaddr_region7, pmp7cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_i_instr;
    cp_prefetch_i6: cross priv_mode_m, addr_in_region8, pmpaddr_region8, pmp8cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_i_instr;

    cp_prefetch_r1: cross priv_mode_m, addr_in_region3, pmpaddr_region3, pmp3cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_r_instr;
    cp_prefetch_r2: cross priv_mode_m, addr_in_region4, pmpaddr_region4, pmp4cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_r_instr;
    cp_prefetch_r3: cross priv_mode_m, addr_in_region5, pmpaddr_region5, pmp5cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_r_instr;
    cp_prefetch_r4: cross priv_mode_m, addr_in_region6, pmpaddr_region6, pmp6cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_r_instr;
    cp_prefetch_r5: cross priv_mode_m, addr_in_region7, pmpaddr_region7, pmp7cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_r_instr;
    cp_prefetch_r6: cross priv_mode_m, addr_in_region8, pmpaddr_region8, pmp8cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_r_instr;

    cp_prefetch_w1: cross priv_mode_m, addr_in_region3, pmpaddr_region3, pmp3cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_w_instr;
    cp_prefetch_w2: cross priv_mode_m, addr_in_region4, pmpaddr_region4, pmp4cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_w_instr;
    cp_prefetch_w3: cross priv_mode_m, addr_in_region5, pmpaddr_region5, pmp5cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_w_instr;
    cp_prefetch_w4: cross priv_mode_m, addr_in_region6, pmpaddr_region6, pmp6cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_w_instr;
    cp_prefetch_w5: cross priv_mode_m, addr_in_region7, pmpaddr_region7, pmp7cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_w_instr;
    cp_prefetch_w6: cross priv_mode_m, addr_in_region8, pmpaddr_region8, pmp8cfg_for_cp_prefetch, cfg_for_menvcfg, prefetch_w_instr;

endgroup

function void pmpZicbo_sample(int hart, int issue, ins_t ins);
    PMPZicbo_cg.sample(ins);
endfunction
