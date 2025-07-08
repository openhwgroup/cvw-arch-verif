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

`undef G
`define G 4		// Set G as needed (0, 1, 2, etc.)
//`define G_IS_0  // Uncomment this line iff G = 0

`undef k
`define k ((`G > 1) ? (`G - 1) : 0)		// k = max(0,G-1) no of trailing ones in napot region.
`undef g
`define g (2**(`k+3))	// Region size = 2^(G+2) for napot and tor => min size of 8 bytes.

// Define PMP_16 or PMP_64
`define PMP_16

`undef NON_STANDARD_REGION
// NA4 or TOR region
`define NON_STANDARD_REGION	(`REGIONSTART >> 2)	// yyyy...yyyy

`undef STANDARD_REGION
// NAPOT region having one trailing 0 and k = (G - 1) trailing 1s
`define STANDARD_REGION	(`REGIONSTART >> 2) | (2**`k - 1) // yyyy...0111

//------------------------------------------------------------

`define COVER_RV32PMP
`define COVER_RV64PMP

covergroup PMPZca_cg with function sample(ins_t ins);
	option.per_instance = 0;
	`include  "coverage/RISCV_coverage_standard_coverpoints.svh"

	addr_in_region: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins at_region = {`REGIONSTART};
	}

	standard_region: coverpoint ins.current.csr[12'h3B0] {
		bins standard_region = {`STANDARD_REGION};
	}

	exec_c_instr: coverpoint ins.current.insn {
		wildcard bins c_jalr = {16'b1001_?????_?????_10};
	}

	uncompressed_jalr: coverpoint ins.current.insn {
		wildcard bins jalr = {32'b????????????_?????_000_?????_1100111};
	}

	read_c_instr: coverpoint ins.current.insn {
		wildcard bins c_lw   = {16'b010_???????????_00};
		wildcard bins c_lwsp = {16'b010_???????????_10};
		`ifdef XLEN64
			wildcard bins c_ld   = {16'b011_???????????_00};
			wildcard bins c_ldsp = {16'b011_???????????_10};
		`endif
		`ifdef COVER_ZCF
			wildcard bins c_flw   = {16'b011_???????????_00};
			wildcard bins c_flwsp = {16'b011_???????????_10};
		`endif
		`ifdef COVER_ZCD
			wildcard bins c_fld   = {16'b001_???????????_00};
			wildcard bins c_fldsp = {16'b001_???????????_10};
		`endif
		`ifdef COVER_ZCB
			wildcard bins c_lbu = {16'b100000_????????_00};
			wildcard bins c_lh  = {16'b100001_???1????_00};
			wildcard bins c_lhu = {16'b100001_???0????_00};
		`endif
}

	write_c_instr: coverpoint ins.current.insn {
		wildcard bins c_sw   = {16'b110_???????????_00};
		wildcard bins c_swsp = {16'b110_???????????_10};
		`ifdef XLEN64
			wildcard bins c_sd   = {16'b111_???????????_00};
			wildcard bins c_sdsp = {16'b111_???????????_10};
		`endif
		`ifdef COVER_ZCF
			wildcard bins c_fsw   = {16'b111_???????????_00};
			wildcard bins c_fswsp = {16'b111_???????????_10};
		`endif
		`ifdef COVER_ZCD
			wildcard bins c_fsd   = {16'b101_???????????_00};
			wildcard bins c_fsdsp = {16'b101_???????????_10};
		`endif
		`ifdef COVER_ZCB
			wildcard bins c_sb = {16'b100010_????????_00};
			wildcard bins c_sh = {16'b100011_???0????_00};
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

	addr_in_consecutive_regions: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins inside_first_region   = {`REGIONSTART};
		bins straddle_first_second = {`REGIONSTART + `g - 2};
		bins inside_second_region  = {`REGIONSTART + `g};
		bins straddle_second_third = {`REGIONSTART + 2*`g - 2 };
	}

	`ifdef G_IS_0
		addr_in_consecutive_na4: coverpoint (ins.current.rs1_val + ins.current.imm) {
			bins straddle_first_second = {`REGIONSTART + 2};
			bins straddle_second_third = {`REGIONSTART + 6};
		}
	`endif

	addr_adjacent_to_pmp_boundary: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins just_below_pmp = {`REGIONSTART - 2};        // 2 bytes before region start (possible straddle)
		bins at_start_pmp   = {`REGIONSTART};            // aligned to start of region
		bins at_end_pmp     = {`REGIONSTART + `g - 2};   // 2 bytes before end → straddles out
		bins just_above_pmp = {`REGIONSTART + `g};       // just outside region
	}

	`ifdef G_IS_0
		addr_adjacent_to_na4_boundary: coverpoint (ins.current.rs1_val + ins.current.imm) {
			// NA4 region (4 bytes): (REGIONSTART, REGIONSTART + 4)
			bins at_end_pmp     = {`REGIONSTART + 2};     // 2 bytes before end → straddles out
			bins just_above_pmp = {`REGIONSTART + 4};     // just outside region
		}
	`endif

	// First three consecutive standard napot regions.
	// Region 0 -> LXWR 1111, Region 1 -> LXWR 1111, Region 2 -> LXWR 1000
	cfg_consecutive_napot: coverpoint (ins.current.csr[12'h3A0][23:0]) {
		bins locked_napot_regions = {24'b100110001001111110011111};
	}

	// First region is starting at `REGIONSTART, second region is at `REGIONSTART + `g, and third region is at `REGIONSTART + 2*`g.
	pmpaddr_consecutive_napot: coverpoint ({ins.current.csr[12'h3B2],ins.current.csr[12'h3B1],ins.current.csr[12'h3B0]}) {
		bins first_three_regions = {((`REGIONSTART+2**(`k+4)) >> 2) | (2**`k - 1), ((`REGIONSTART+2**(`k+3)) >> 2) | (2**`k - 1), `STANDARD_REGION};
	}

	napot_region_setup: coverpoint ({ins.current.csr[12'h3B0],ins.current.csr[12'h3A0][7:0]}) {
		bins napot_lxwr = {`STANDARD_REGION, 8'b10011111}; // NAPOT region with LXWR 1111
	}

	// First three consecutive standard tor regions.
	// Region 0 -> LXWR 1111, Region 1 -> LXWR 1111, Region 2 -> LXWR 1000
	cfg_consecutive_tor: coverpoint (ins.current.csr[12'h3A0][23:0]) {
		bins locked_tor_regions = {24'b100010001000111110001111};
	}

	// PMP TOR regions configured as follows:
	// - Region 0: start at 0, end at `REGIONSTART + `g` (pmpaddr0)
	// - Region 1: start at `REGIONSTART + `g`, end at `REGIONSTART + 2*`g` (pmpaddr1)
	// - Region 2: start at `REGIONSTART + 2*`g`, end at `REGIONSTART + 3*`g` (pmpaddr2)
	pmpaddr_consecutive_tor: coverpoint ({ins.current.csr[12'h3B2], ins.current.csr[12'h3B1], ins.current.csr[12'h3B0]}) {
		bins first_three_regions = {{(`REGIONSTART + 3*`g) >> 2, (`REGIONSTART + 2*`g) >> 2, (`REGIONSTART + `g) >> 2}};
	}

	tor_region_setup: coverpoint ({ins.current.csr[12'h3B1],ins.current.csr[12'h3B0],ins.current.csr[12'h3A0][7:0]}) {
		bins tor_lxwr = {(`REGIONSTART + `g) >> 2,(`REGIONSTART >> 2), 8'b10001111}; // TOR region with LXWR 1111
	}

	`ifdef G_IS_0
		cfg_consecutive_na4: coverpoint (ins.current.csr[12'h3A0][23:0]) {
			bins locked_na4_regions = {24'b100100001001011110010111};
		}

		// PMP0, PMP1, PMP2: NA4, L=1, XWR=111 — regions at REGIONSTART, REGIONSTART+4, REGIONSTART+8
		pmpaddr_consecutive_na4: coverpoint ({ins.current.csr[12'h3B2], ins.current.csr[12'h3B1], ins.current.csr[12'h3B0]}) {
			bins first_three_regions = {{((`REGIONSTART + 8) >> 2), ((`REGIONSTART + 4) >> 2), (`REGIONSTART >> 2)}};
		}

		na4_region_setup: coverpoint ({ins.current.csr[12'h3B0],ins.current.csr[12'h3A0][7:0]}) {
			bins na4_lxwr = {`REGIONSTART >> 2, 8'b10010111}; // NA4 region with LXWR 1111
		}
	`endif

	cfg_consecutive_off: coverpoint (ins.current.csr[12'h3A0][23:0]) {
		bins locked_off_regions = {24'b100001111000000010000111};
	}

	cp_cfg_R: cross priv_mode_m, legal_lxwr, standard_region, addr_in_region, read_c_instr;
	cp_cfg_W: cross priv_mode_m, legal_lxwr, standard_region, addr_in_region, write_c_instr;

	cp_misaligned_napot: cross priv_mode_m, cfg_consecutive_napot, pmpaddr_consecutive_napot, addr_in_consecutive_regions, uncompressed_jalr;
	cp_cret_napot: cross priv_mode_m, napot_region_setup, exec_c_instr, addr_adjacent_to_pmp_boundary;

	cp_misaligned_tor: cross priv_mode_m, cfg_consecutive_tor, pmpaddr_consecutive_tor, addr_in_consecutive_regions, uncompressed_jalr;
	cp_cret_tor: cross priv_mode_m, tor_region_setup, exec_c_instr, addr_adjacent_to_pmp_boundary;

	`ifdef G_IS_0
		cp_misaligned_na4: cross priv_mode_m, cfg_consecutive_na4, pmpaddr_consecutive_na4, addr_in_consecutive_na4, uncompressed_jalr;
		cp_cret_na4: cross priv_mode_m, na4_region_setup, exec_c_instr, addr_adjacent_to_na4_boundary;
	`endif

	cp_misaligned_off: cross priv_mode_m, cfg_consecutive_off, addr_in_consecutive_regions, uncompressed_jalr;

endgroup

function void pmpzca_sample(int hart, int issue, ins_t ins);
	PMPZca_cg.sample(ins);
endfunction
