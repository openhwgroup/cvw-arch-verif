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

covergroup PMPF_cg with function sample(ins_t ins);
	option.per_instance = 0;
	`include  "coverage/RISCV_coverage_standard_coverpoints.svh"

	addr_in_region: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins at_region = {`REGIONSTART};
	}

	standard_region: coverpoint ins.current.csr[12'h3B0] {
		bins standard_region = {`STANDARD_REGION};
	}

	read_fp_instr: coverpoint ins.current.insn {
		wildcard bins flh = {32'b????????????_?????_001_?????_0000111};
		wildcard bins flw = {32'b????????????_?????_010_?????_0000111};
		`ifdef XLEN64
			wildcard bins fld = {32'b????????????_?????_011_?????_0000111};
		`endif
	}

	write_fp_instr: coverpoint ins.current.insn {
		wildcard bins fsh = {32'b???????_?????_?????_001_?????_0100111};
		wildcard bins fsw = {32'b???????_?????_?????_010_?????_0100111};
		`ifdef XLEN64
			wildcard bins fsd = {32'b???????_?????_?????_011_?????_0100111};
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

	fs_mstatus: coverpoint (ins.current.csr[12'h300][14:13]!=0) {
		bins non_zero = {1};
	}

	cp_cfg_R: cross priv_mode_m, fs_mstatus, legal_lxwr, read_fp_instr, standard_region, addr_in_region;
	cp_cfg_W: cross priv_mode_m, fs_mstatus, legal_lxwr, write_fp_instr, standard_region, addr_in_region;

endgroup

function void pmpf_sample(int hart, int issue, ins_t ins);
	PMPF_cg.sample(ins);
endfunction
