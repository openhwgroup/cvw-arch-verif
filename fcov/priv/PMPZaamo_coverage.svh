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

covergroup PMPZaamo_cg with function sample(ins_t ins);
	option.per_instance = 0;
	`include  "coverage/RISCV_coverage_standard_coverpoints.svh"

	rs1_in_region: coverpoint ins.current.rs1_val {
		bins at_region = {`REGIONSTART};
	}

	standard_region: coverpoint ins.current.csr[12'h3B0] {
		bins standard_region = {`STANDARD_REGION};
	}

	atomic_intrs: coverpoint ins.current.insn {
		wildcard bins amoswap_w  = {32'b00001????????????010?????0101111};
		wildcard bins amoadd_w   = {32'b00000????????????010?????0101111};
		wildcard bins amoxor_w   = {32'b00100????????????010?????0101111};
		wildcard bins amoand_w   = {32'b01100????????????010?????0101111};
		wildcard bins amoor_w    = {32'b01000????????????010?????0101111};
		wildcard bins amomin_w   = {32'b10000????????????010?????0101111};
		wildcard bins amomax_w   = {32'b10100????????????010?????0101111};
		wildcard bins amominu_w  = {32'b11000????????????010?????0101111};
		wildcard bins amomaxu_w  = {32'b11100????????????010?????0101111};
		`ifdef XLEN64
			wildcard bins amoswap_d  = {32'b00001????????????011?????0101111};
			wildcard bins amoadd_d   = {32'b00000????????????011?????0101111};
			wildcard bins amoxor_d   = {32'b00100????????????011?????0101111};
			wildcard bins amoand_d   = {32'b01100????????????011?????0101111};
			wildcard bins amoor_d    = {32'b01000????????????011?????0101111};
			wildcard bins amomin_d   = {32'b10000????????????011?????0101111};
			wildcard bins amomax_d   = {32'b10100????????????011?????0101111};
			wildcard bins amominu_d  = {32'b11000????????????011?????0101111};
			wildcard bins amomaxu_d  = {32'b11100????????????011?????0101111};
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

function void pmpzaamo_sample(int hart, int issue, ins_t ins);
	PMPZaamo_cg.sample(ins);
endfunction
