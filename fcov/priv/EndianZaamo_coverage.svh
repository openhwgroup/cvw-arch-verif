///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
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

`define COVER_ENDIANZAAMO
covergroup EndianZaamo_endian_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"
    // "Endianness tests for Zaamo atomic instructions"

    // building blocks for the main coverpoints
    cp_amo: coverpoint ins.current.insn {
        wildcard bins amoaddw = {32'b0000000_?????_?????_010_?????_0101111};
        `ifdef XLEN64
            wildcard bins amoaddd = {32'b0000000_?????_?????_011_?????_0101111};
        `endif
    }
    `ifdef XLEN64
        mstatus_mbe: coverpoint ins.current.csr[12'h300][37] { // mbe is mstatus[37] in RV64
        }
    `else
        mstatus_mbe: coverpoint ins.current.csr[12'h310][5] { // mbe is mstatush[5] in RV32
        }
    `endif

    // main coverpoints
    cp_endianness_amo: cross priv_mode_m, mstatus_mbe, cp_amo;
endgroup

function void endianzaamo_sample(int hart, int issue, ins_t ins);
    EndianZaamo_endian_cg.sample(ins);
endfunction
