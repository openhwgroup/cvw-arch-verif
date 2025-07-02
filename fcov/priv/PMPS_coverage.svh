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

`define G 4	// Set G as needed (0, 1, 2, etc.)
//`define G_IS_0  // Uncomment this line iff G = 0

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

covergroup PMPS_cg with function sample(ins_t ins, logic [16*XLEN-1:0] pack_pmpaddr, logic [29:0] pmpcfg_a);
	option.per_instance = 0;
	`include  "coverage/RISCV_coverage_standard_coverpoints.svh"

	addr_in_region: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins at_region = {`REGIONSTART};
	}

	addr_offset_napot: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins at_base	  = {`REGIONSTART};			 // Access exactly at the region base
		bins below_base	  = {`REGIONSTART - 4};		 // Access 4 bytes below the region
		bins just_inside  = {`REGIONSTART + 4};		 // Access 4 bytes into the region
		bins highest_word = {`REGIONSTART + `g - 4}; // Access at the last word in region
		bins just_beyond  = {`REGIONSTART + `g};	 // Access exactly at the end of the region
	}

	addr_offset_na4: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins at_base	= {`REGIONSTART}; 		// Access exactly at the region base
		bins at_end		= {`REGIONSTART + 4};	// Access at the end of region
		bins beyond_top	= {`REGIONSTART + 6};	// Access beyond top of region
	}

	// if range is from `REGIONSTART to `REGIONSTART + `g
	addr_offset_tor: coverpoint (ins.current.rs1_val + ins.current.imm) {
		bins at_top		  = {`REGIONSTART + `g}; 	 // Access exactly at top of range
		bins highest_word = {`REGIONSTART + `g - 4}; // Access at the last word in region
		bins at_base	  = {`REGIONSTART};			 // Access exactly at the region base
		bins below_base	  = {`REGIONSTART - 4};		 // Access 4 bytes below the base
	}

	exec_instr: coverpoint ins.current.insn {
		wildcard bins jalr = {32'b????????????_?????_000_?????_1100111};
	}

	read_instr: coverpoint ins.current.insn {
		wildcard bins lb  = {32'b????????????_?????_000_?????_0000011};
		wildcard bins lbu = {32'b????????????_?????_100_?????_0000011};
		wildcard bins lh  = {32'b????????????_?????_001_?????_0000011};
		wildcard bins lhu = {32'b????????????_?????_101_?????_0000011};
		wildcard bins lw  = {32'b????????????_?????_010_?????_0000011};
		`ifdef XLEN64
			wildcard bins lwu = {32'b????????????_?????_110_?????_0000011};
			wildcard bins ld  = {32'b????????????_?????_011_?????_0000011};
		`endif
	}
	read_instr_lw: coverpoint ins.current.insn {
		wildcard bins lw  = {32'b????????????_?????_010_?????_0000011};
	}

	write_instr: coverpoint ins.current.insn {
		wildcard bins sb = {32'b???????_?????_?????_000_?????_0100011};
		wildcard bins sh = {32'b???????_?????_?????_001_?????_0100011};
		wildcard bins sw = {32'b???????_?????_?????_010_?????_0100011};
		`ifdef XLEN64
			wildcard bins sd = {32'b???????_?????_?????_011_?????_0100011};
		`endif
	}

	write_instr_sw: coverpoint ins.current.insn {
		wildcard bins sw = {32'b???????_?????_?????_010_?????_0100011};
	}

//-------------------------------------------------------

	standard_region: coverpoint ins.current.csr[12'h3B0] {
		bins standard_region = {`STANDARD_REGION};
	}

	legal_lxwr: coverpoint ins.current.csr[12'h3A0][7:0] {
		bins cfg_1000 = {8'b10011000};
		bins cfg_1001 = {8'b10011001};
		bins cfg_1011 = {8'b10011011};
		bins cfg_1100 = {8'b10011100};
		bins cfg_1101 = {8'b10011101};
		bins cfg_1111 = {8'b10011111};
		bins cfg_0000 = {8'b00011000};
		bins cfg_0001 = {8'b00011001};
		bins cfg_0011 = {8'b00011011};
		bins cfg_0100 = {8'b00011100};
		bins cfg_0101 = {8'b00011101};
		bins cfg_0111 = {8'b00011111};
	}

	all_pmp_entries_off: coverpoint pmpcfg_a { // Including Background Top PMP Entry
		bins PMP_OFF = {0};
	}

	// pack_pmpaddr has all the pmpaddr csrs, so when it's zero implies all pmpaddr = 0
	all_pmpaddr_zero: coverpoint pack_pmpaddr { // Including Background Top PMP Entry
		bins pmpaddr_zeros = {0};
	}

	pmpaddr_entries: coverpoint ins.current.insn[31:20] {
		bins pmpaddr0   = {12'h3B0};
		bins pmpaddr1   = {12'h3B1};
		bins pmpaddr2   = {12'h3B2};
		bins pmpaddr3   = {12'h3B3};
		bins pmpaddr4   = {12'h3B4};
		bins pmpaddr5   = {12'h3B5};
		bins pmpaddr6   = {12'h3B6};
		bins pmpaddr7   = {12'h3B7};
		bins pmpaddr8   = {12'h3B8};
		bins pmpaddr9   = {12'h3B9};
		bins pmpaddr10  = {12'h3BA};
		bins pmpaddr11  = {12'h3BB};
		bins pmpaddr12  = {12'h3BC};
		bins pmpaddr13  = {12'h3BD};
		bins pmpaddr14  = {12'h3BE};
		bins pmpaddr15  = {12'h3BF};
		bins pmpaddr16  = {12'h3C0};
		bins pmpaddr17  = {12'h3C1};
		bins pmpaddr18  = {12'h3C2};
		bins pmpaddr19  = {12'h3C3};
		bins pmpaddr20  = {12'h3C4};
		bins pmpaddr21  = {12'h3C5};
		bins pmpaddr22  = {12'h3C6};
		bins pmpaddr23  = {12'h3C7};
		bins pmpaddr24  = {12'h3C8};
		bins pmpaddr25  = {12'h3C9};
		bins pmpaddr26  = {12'h3CA};
		bins pmpaddr27  = {12'h3CB};
		bins pmpaddr28  = {12'h3CC};
		bins pmpaddr29  = {12'h3CD};
		bins pmpaddr30  = {12'h3CE};
		bins pmpaddr31  = {12'h3CF};
		bins pmpaddr32  = {12'h3D0};
		bins pmpaddr33  = {12'h3D1};
		bins pmpaddr34  = {12'h3D2};
		bins pmpaddr35  = {12'h3D3};
		bins pmpaddr36  = {12'h3D4};
		bins pmpaddr37  = {12'h3D5};
		bins pmpaddr38  = {12'h3D6};
		bins pmpaddr39  = {12'h3D7};
		bins pmpaddr40  = {12'h3D8};
		bins pmpaddr41  = {12'h3D9};
		bins pmpaddr42  = {12'h3DA};
		bins pmpaddr43  = {12'h3DB};
		bins pmpaddr44  = {12'h3DC};
		bins pmpaddr45  = {12'h3DD};
		bins pmpaddr46  = {12'h3DE};
		bins pmpaddr47  = {12'h3DF};
		bins pmpaddr48  = {12'h3E0};
		bins pmpaddr49  = {12'h3E1};
		bins pmpaddr50  = {12'h3E2};
		bins pmpaddr51  = {12'h3E3};
		bins pmpaddr52  = {12'h3E4};
		bins pmpaddr53  = {12'h3E5};
		bins pmpaddr54  = {12'h3E6};
		bins pmpaddr55  = {12'h3E7};
		bins pmpaddr56  = {12'h3E8};
		bins pmpaddr57  = {12'h3E9};
		bins pmpaddr58  = {12'h3EA};
		bins pmpaddr59  = {12'h3EB};
		bins pmpaddr60  = {12'h3EC};
		bins pmpaddr61  = {12'h3ED};
		bins pmpaddr62  = {12'h3EE};
		bins pmpaddr63  = {12'h3EF};
	}

	pmpcfg_entries: coverpoint ins.current.insn[31:20] {
		bins pmpcfg0   = {12'h3A0};
		bins pmpcfg1   = {12'h3A1};
		bins pmpcfg2   = {12'h3A2};
		bins pmpcfg3   = {12'h3A3};
		bins pmpcfg4   = {12'h3A4};
		bins pmpcfg5   = {12'h3A5};
		bins pmpcfg6   = {12'h3A6};
		bins pmpcfg7   = {12'h3A7};
		bins pmpcfg8   = {12'h3A8};
		bins pmpcfg9   = {12'h3A9};
		bins pmpcfg10  = {12'h3AA};
		bins pmpcfg11  = {12'h3AB};
		bins pmpcfg12  = {12'h3AC};
		bins pmpcfg13  = {12'h3AD};
		bins pmpcfg14  = {12'h3AE};
		bins pmpcfg15  = {12'h3AF};
	}

	csrrw: coverpoint ins.current.insn {
		wildcard bins csrrw  = {32'b????????????_?????_010_?????_1110011};
	}

	mprv_mstatus: coverpoint ins.current.csr[12'h300][17]{
		bins set   = {1};
		bins unset = {0};
	}

	mpp_mstatus: coverpoint ins.current.csr[12'h300][12:11] {
		bins U_mode = {2'b00};
		bins M_mode = {2'b11};
	}

	lxwr: coverpoint ins.current.csr[12'h3A0][7:0] {
		bins cfg_1000 = {8'b10011000};
		bins cfg_1111 = {8'b10011111};
		bins cfg_0000 = {8'b00011000};
		bins cfg_0111 = {8'b00011111};
	}

	// pmpcfg_i.L = 0, pmpcfg_i.A = OFF, pmpcfg_i.XWR = 000, pmpaddr_i = all 1s
	cfg_A_off: coverpoint {ins.current.csr[12'h3A0][7:0],ins.current.csr[12'h3B0]} {
		bins region_off = {8'b00000000,{$bits(ins.current.csr[12'h3B0]){1'b1}}};
	}

	// pmpcfg_i.L = 0, pmpcfg_i.A = NAPOT, all legal pmpcfg_i.XWR, pmpaddr_i = `STANDARD_REGION
	cfg_A_napot: coverpoint {ins.current.csr[12'h3A0][7:0],ins.current.csr[12'h3B0]} {
		bins napot_lwxr_0000 = {8'b00011000,`STANDARD_REGION};
		bins napot_lwxr_0001 = {8'b00011001,`STANDARD_REGION};
		bins napot_lwxr_0011 = {8'b00011011,`STANDARD_REGION};
		bins napot_lwxr_0100 = {8'b00011100,`STANDARD_REGION};
		bins napot_lwxr_0101 = {8'b00011101,`STANDARD_REGION};
		bins napot_lwxr_0111 = {8'b00011111,`STANDARD_REGION};
	}

	`ifdef G_IS_0
		// pmpcfg_i.L = 0, pmpcfg_i.A = NA4, all legal pmpcfg_i.XWR, pmpaddr_i = `NON_STANDARD_REGION
		cfg_A_na4: coverpoint {ins.current.csr[12'h3A0][7:0],ins.current.csr[12'h3B0]} {
			bins na4_lwxr_0000 = {8'b00010000,`NON_STANDARD_REGION};
			bins na4_lwxr_0001 = {8'b00010001,`NON_STANDARD_REGION};
			bins na4_lwxr_0011 = {8'b00010011,`NON_STANDARD_REGION};
			bins na4_lwxr_0100 = {8'b00010100,`NON_STANDARD_REGION};
			bins na4_lwxr_0101 = {8'b00010101,`NON_STANDARD_REGION};
			bins na4_lwxr_0111 = {8'b00010111,`NON_STANDARD_REGION};
		}
	`endif

	// pmpcfg_i.L = 0, pmpcfg_i.A = TOR, all legal pmpcfg_i.XWR, pmpaddr_i = `NON_STANDARD_REGION + `g, pmpaddr_i-1 = `NON_STANDARD_REGION
	cfg_A_tor: coverpoint {ins.current.csr[12'h3A0][7:0],ins.current.csr[12'h3B0],ins.current.csr[12'h3B1]} {
		bins tor_lwxr_0000 = {8'b00001000,`NON_STANDARD_REGION,`NON_STANDARD_REGION+`g};
		bins tor_lwxr_0001 = {8'b00001001,`NON_STANDARD_REGION,`NON_STANDARD_REGION+`g};
		bins tor_lwxr_0011 = {8'b00001011,`NON_STANDARD_REGION,`NON_STANDARD_REGION+`g};
		bins tor_lwxr_0100 = {8'b00001100,`NON_STANDARD_REGION,`NON_STANDARD_REGION+`g};
		bins tor_lwxr_0101 = {8'b00001101,`NON_STANDARD_REGION,`NON_STANDARD_REGION+`g};
		bins tor_lwxr_0111 = {8'b00001111,`NON_STANDARD_REGION,`NON_STANDARD_REGION+`g};
	}

//-------------------------------------------------------

	cp_cfg_X: cross priv_mode_s, legal_lxwr, exec_instr, standard_region, addr_in_region ;
	cp_cfg_R: cross priv_mode_s, legal_lxwr, read_instr, standard_region, addr_in_region ;
	cp_cfg_W: cross priv_mode_s, legal_lxwr, write_instr, standard_region, addr_in_region ;

	cp_none_lw: cross priv_mode_s, all_pmp_entries_off, all_pmpaddr_zero, read_instr_lw ;
	cp_none_sw: cross priv_mode_s, all_pmp_entries_off, all_pmpaddr_zero, write_instr_sw ;
	cp_none_jalr: cross priv_mode_s, all_pmp_entries_off, all_pmpaddr_zero, exec_instr ;

	cp_cfg_A_off_jalr: cross priv_mode_s, cfg_A_off, exec_instr, addr_in_region ;
	cp_cfg_A_off_lw: cross priv_mode_s, cfg_A_off, read_instr_lw, addr_in_region ;
	cp_cfg_A_off_sw: cross priv_mode_s, cfg_A_off, write_instr_sw, addr_in_region ;

	// Access at start of region, start - 4, start + 4, highest word in region, just beyond top of the region
	cp_cfg_A_napot_jalr: cross priv_mode_s, cfg_A_napot, exec_instr, addr_offset_napot ;
	cp_cfg_A_napot_lw: cross priv_mode_s, cfg_A_napot, read_instr_lw, addr_offset_napot ;
	cp_cfg_A_napot_sw: cross priv_mode_s, cfg_A_napot, write_instr_sw, addr_offset_napot ;

	`ifdef G_IS_0
		// Access at start of address, that address + 4, just beyond top of the region.
		cp_cfg_A_na4_jalr: cross priv_mode_s, cfg_A_na4, exec_instr, addr_offset_na4 ;
		cp_cfg_A_na4_lw: cross priv_mode_s, cfg_A_na4, read_instr_lw, addr_offset_na4 ;
		cp_cfg_A_na4_sw: cross priv_mode_s, cfg_A_na4, write_instr_sw, addr_offset_na4 ;
	`endif

	// Access at address, address-4, address-g, address-g-4.
	cp_cfg_A_tor_jalr: cross priv_mode_s, cfg_A_tor, exec_instr, addr_offset_tor ;
	cp_cfg_A_tor_lw: cross priv_mode_s, cfg_A_tor, read_instr_lw, addr_offset_tor ;
	cp_cfg_A_tor_sw: cross priv_mode_s, cfg_A_tor, write_instr_sw, addr_offset_tor ;

	cp_mprv_jalr: cross priv_mode_m, mprv_mstatus, mpp_mstatus, lxwr, exec_instr, standard_region, addr_in_region ;
	cp_mprv_lw: cross priv_mode_m, mprv_mstatus, mpp_mstatus, lxwr, read_instr_lw, standard_region, addr_in_region ;
	cp_mprv_sw: cross priv_mode_m, mprv_mstatus, mpp_mstatus, lxwr, write_instr_sw, standard_region, addr_in_region ;

	cp_pmpaddr_access_u: cross priv_mode_s, csrrw, pmpaddr_entries ;
	cp_pmpcfg_access_u: cross priv_mode_s, csrrw, pmpcfg_entries ;

endgroup

function void pmps_sample(int hart, int issue, ins_t ins);

	logic [16*XLEN-1:0] pack_pmpaddr;
	logic [29:0] pmpcfg_a;			// for first 15 Regions

	pack_pmpaddr = {  ins.current.csr[12'h3BF]
					 ,ins.current.csr[12'h3BE]
					 ,ins.current.csr[12'h3BD]
					 ,ins.current.csr[12'h3BC]
					 ,ins.current.csr[12'h3BB]
					 ,ins.current.csr[12'h3BA]
					 ,ins.current.csr[12'h3B9]
					 ,ins.current.csr[12'h3B8]
					 ,ins.current.csr[12'h3B7]
					 ,ins.current.csr[12'h3B6]
					 ,ins.current.csr[12'h3B5]
					 ,ins.current.csr[12'h3B4]
					 ,ins.current.csr[12'h3B3]
					 ,ins.current.csr[12'h3B2]
					 ,ins.current.csr[12'h3B1]
					 ,ins.current.csr[12'h3B0]
					};

	`ifdef XLEN32
		pmpcfg_a =  {
					ins.current.csr[12'h3A3][28:27],
					ins.current.csr[12'h3A3][20:19],
					ins.current.csr[12'h3A3][12:11],
					ins.current.csr[12'h3A3][4:3],
					ins.current.csr[12'h3A2][28:27],
					ins.current.csr[12'h3A2][20:19],
					ins.current.csr[12'h3A2][12:11],
					ins.current.csr[12'h3A2][4:3],
					ins.current.csr[12'h3A1][28:27],
					ins.current.csr[12'h3A1][20:19],
					ins.current.csr[12'h3A1][12:11],
					ins.current.csr[12'h3A1][4:3],
					ins.current.csr[12'h3A0][28:27],
					ins.current.csr[12'h3A0][20:19],
					ins.current.csr[12'h3A0][12:11],
					ins.current.csr[12'h3A0][4:3]
					};
	`endif
	`ifdef XLEN64
		pmpcfg_a =  {
					ins.current.csr[12'h3A2][60:59],
					ins.current.csr[12'h3A2][52:51],
					ins.current.csr[12'h3A2][44:43],
					ins.current.csr[12'h3A2][36:35],
					ins.current.csr[12'h3A2][28:27],
					ins.current.csr[12'h3A2][20:19],
					ins.current.csr[12'h3A2][12:11],
					ins.current.csr[12'h3A2][4:3],
					ins.current.csr[12'h3A0][60:59],
					ins.current.csr[12'h3A0][52:51],
					ins.current.csr[12'h3A0][44:43],
					ins.current.csr[12'h3A0][36:35],
					ins.current.csr[12'h3A0][28:27],
					ins.current.csr[12'h3A0][20:19],
					ins.current.csr[12'h3A0][12:11],
					ins.current.csr[12'h3A0][4:3]
					};
	`endif
	PMPS_cg.sample(ins, pack_pmpaddr, pmpcfg_a);
endfunction
