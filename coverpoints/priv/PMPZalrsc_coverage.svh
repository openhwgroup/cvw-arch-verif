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

`define COVER_RV32PMP
`define COVER_RV64PMP

covergroup PMPZalrsc_cg with function sample(ins_t ins,logic [7:0] pmpcfg [63:0],logic [14:0] pmp_hit);
	option.per_instance = 0;
	`include  "coverage/RISCV_coverage_standard_coverpoints.svh"

	rs1_in_region: coverpoint ins.current.rs1_val {
		bins at_region = {`REGIONSTART};
	}

	atomic_intrs: coverpoint ins.current.insn {
		wildcard bins lr_w  = {32'b00010??00000?????010?????0101111};
		wildcard bins sc_w  = {32'b00011????????????010?????0101111};
		`ifdef XLEN64
			wildcard bins lr_d  = {32'b00010??00000?????011?????0101111};
			wildcard bins sc_d  = {32'b00011????????????011?????0101111};
		`endif
	}

	legal_lxwr: coverpoint {pmpcfg[0],pmpcfg[1],pmpcfg[2],pmpcfg[3],pmpcfg[4],pmpcfg[5],pmp_hit[5:0]} {
		wildcard bins cfg_l000 = {54'b????????????????????????????????????????10011000_100000};
		wildcard bins cfg_l001 = {54'b????????????????????????????????10011001????????_?10000};
		wildcard bins cfg_l011 = {54'b????????????????????????10011011????????????????_??1000};
		wildcard bins cfg_l100 = {54'b????????????????10011100????????????????????????_???100};
		wildcard bins cfg_l101 = {54'b????????10011101????????????????????????????????_????10};
		wildcard bins cfg_l111 = {54'b10011111????????????????????????????????????????_?????1};
	}

	cp_cfg_RW: cross priv_mode_m, legal_lxwr, atomic_intrs, rs1_in_region;

endgroup

function void pmpzalrsc_sample(int hart, int issue, ins_t ins);

	logic [7:0] pmpcfg [63:0];
	logic [XLEN-1:0] pmpaddr [62:0];
	logic [14:0] pmp_hit;   // for first 15 Regions

	`ifdef XLEN32
	    // Each pmpcfg CSR holds 4 region configs in 32-bit (4x 8-bit)
    	for (int i = 0; i < 16; i++) begin
    	    logic [31:0] cfg_word = ins.current.csr[12'h3A0 + i];
    	    pmpcfg[i*4 + 0] = cfg_word[7:0];
    	    pmpcfg[i*4 + 1] = cfg_word[15:8];
    	    pmpcfg[i*4 + 2] = cfg_word[23:16];
    	    pmpcfg[i*4 + 3] = cfg_word[31:24];
    	end
	`elsif XLEN64
	    // Each pmpcfg CSR holds 8 region configs in 64-bit (8x 8-bit)
		for (int i = 0; i < 8; i++) begin
		    logic [63:0] cfg_word = ins.current.csr[12'h3A0 + 2*i];
		    pmpcfg[i*8 + 0] = cfg_word[7:0];
		    pmpcfg[i*8 + 1] = cfg_word[15:8];
		    pmpcfg[i*8 + 2] = cfg_word[23:16];
		    pmpcfg[i*8 + 3] = cfg_word[31:24];
		    pmpcfg[i*8 + 4] = cfg_word[39:32];
		    pmpcfg[i*8 + 5] = cfg_word[47:40];
		    pmpcfg[i*8 + 6] = cfg_word[55:48];
		    pmpcfg[i*8 + 7] = cfg_word[63:56];
		end
	`endif

	for (int j = 0; j < 63; j++) begin
		pmpaddr[j] = ins.current.csr[12'h3B0 + j];
	end

	for (int k = 0; k < 15; k++) begin  // Check for first 15 PMP regions
		pmp_hit[k] = (pmpaddr[k] == `STANDARD_REGION) || (pmpaddr[k] == `NON_STANDARD_REGION);
	end

	PMPZalrsc_cg.sample(ins, pmpcfg, pmp_hit);
endfunction
