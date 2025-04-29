///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 29 November 2024
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

`define COVER_EXCEPTIONSZICBOS
covergroup ExceptionsZicboS_exceptions_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints
    cbo_inval: coverpoint ins.current.insn {
        bins cbo_inval = {32'b000000000000_?????_010_00000_0001111};
    }
    cbo_flushclean: coverpoint ins.current.insn {
        bins cbo_flush = {32'b000000000010_?????_010_00000_0001111};
        bins cbo_clean = {32'b000000000001_?????_010_00000_0001111};
    }
    cbo_zero: coverpoint ins.current.insn {
        bins cbo_zero = {32'b000000000100_?????_010_00000_0001111};
    }
    menvcfg_cbie: coverpoint ins.current.csr[12'h30A][5:4] {
        ignore_bins reserved = {2'b10};
    }
    menvcfg_cbcfe: coverpoint ins.current.csr[12'h30A][6] {
    }
    menvcfg_cbze: coverpoint ins.current.csr[12'h30A][7] {
    }
    senvcfg_cbie: coverpoint ins.current.csr[12'h10A][5:4] {
        ignore_bins reserved = {2'b10};
    }
    senvcfg_cbcfe: coverpoint ins.current.csr[12'h10A][6] {
    }
    senvcfg_cbze: coverpoint ins.current.csr[12'h10A][7] {
    }

    // main coverpoints
    cp_cbie:  cross cbo_inval,      menvcfg_cbie,  senvcfg_cbie,  priv_mode_sum;
    cp_cbcfe: cross cbo_flushclean, menvcfg_cbcfe, senvcfg_cbcfe, priv_mode_sum;
    cp_cbze:  cross cbo_zero,       menvcfg_cbze,  senvcfg_cbze,  priv_mode_sum;

endgroup

function void exceptionszicbos_sample(int hart, int issue, ins_t ins);
    ExceptionsZicboS_exceptions_cg.sample(ins);
endfunction
