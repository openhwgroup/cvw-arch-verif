///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: James (Kaden) Cassidy jacassidy@hmc.edu May 29 2025
//
// Copyright (C) 2025 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
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

`define COVER_ZICSRV

covergroup ZicsrV_cg with function sample(ins_t ins);
    option.per_instance = 0;

    Test: coverpoint ins.current.insn[31:29] {
        bins one    = {3'b000};
        bins two    = {3'b001};
        bins three  = {3'b010};
        bins four   = {3'b011};
        bins five   = {3'b100};
        bins six    = {3'b101};
        bins seven  = {3'b110};
        bins eight  = {3'b111};
    }

endgroup

function void zicsrv_sample(int hart, int issue, ins_t ins);
    ZicsrV_cg.sample(ins);
endfunction
