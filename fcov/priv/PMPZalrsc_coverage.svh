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

`define RAMBASEADDR 32'h80000000
`define LARGESTPROGRAM 32'h00010000
`define SAFEREGIONSTART (`RAMBASEADDR + `LARGESTPROGRAM)
`define REGIONSTART `SAFEREGIONSTART

`define G 4				// Set G as needed (0, 1, 2, etc.)
`define g (2**(`G+2))	// Region size = 2^(G+2)
`define k ((`G > 1) ? (`G - 1) : 0)

// Define PMP_16 or PMP_64
`define PMP_16

// NA4 or TOR region
`define NON_STANDARD_REGION	(`REGIONSTART >> 2)	// yyyy...yyyy

// NAPOT region having one trailing 0 and k = (G - 1) trailing 1s
`define STANDARD_REGION	(`REGIONSTART >> 2) | (2**`k - 1) // yyyy...0111

//------------------------------------------------------------

`define COVER_RV32PMP
`define COVER_RV64PMP

covergroup PMPZalrsc_cg with function sample(ins_t ins);
	option.per_instance = 0;
	`include  "coverage/RISCV_coverage_standard_coverpoints.svh"

	rs1_in_region: coverpoint ins.current.rs1_val {
		bins at_region = {`REGIONSTART};
	}

	standard_region: coverpoint ins.current.csr[12'h3B0] {
		bins standard_region = {`STANDARD_REGION};
	}

	atomic_intrs: coverpoint ins.current.insn {
		wildcard bins lr_w  = {32'b00010??00000?????010?????0101111};
		wildcard bins sc_w  = {32'b00011????????????010?????0101111};
		`ifdef XLEN64
			wildcard bins lr_d  = {32'b00010??00000?????011?????0101111};
			wildcard bins sc_d  = {32'b00011????????????011?????0101111};
		`endif
	}

	legal_lxwr: coverpoint ins.current.csr[12'h3A0][7:0] {
		wildcard bins cfg_l000 = {8'b10011000};
		wildcard bins cfg_l001 = {8'b10011001};
		wildcard bins cfg_l011 = {8'b10011011};
		wildcard bins cfg_l100 = {8'b10011100};
		wildcard bins cfg_l101 = {8'b10011101};
		wildcard bins cfg_l111 = {8'b10011111};
	}

	cp_cfg_RW: cross priv_mode_m, legal_lxwr, atomic_intrs, standard_region, rs1_in_region;

endgroup

function void pmpzalrsc_sample(int hart, int issue, ins_t ins);
	PMPZalrsc_cg.sample(ins);
endfunction
