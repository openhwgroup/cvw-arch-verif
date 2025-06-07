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

`define COVER_SVINVAL
covergroup Svinval_sfence_inval_ir_cg with function sample(ins_t ins);
    option.per_instance = 0;
    cp_asm_count : coverpoint ins.ins_str == "sfence.inval.ir" {
        bins goal = {1};
    }
    priv_tvm : coverpoint {ins.prev.mode, ins.prev.csr[12'h300][20]} {
        bins M_mode     = {3'b11_0};
        bins S_mode     = {3'b01_0};
        bins S_mode_tvm = {3'b01_1};
        bins U_mode     = {3'b00_0};
    }
    cr_instr_mode : cross cp_asm_count, priv_tvm {
        // instruction executed in each mode
    }
 endgroup
// ---------------------
covergroup Svinval_sfence_w_inval_cg with function sample(ins_t ins);
    option.per_instance = 0;
    cp_asm_count : coverpoint ins.ins_str == "sfence.w.inval"  {
        bins goal = {1};
    }
    priv_tvm : coverpoint {ins.prev.mode, ins.prev.csr[12'h300][20]} {
        bins M_mode     = {3'b11_0};
        bins S_mode     = {3'b01_0};
        bins S_mode_tvm = {3'b01_1};
        bins U_mode     = {3'b00_0};
    }
    cr_instr_mode : cross cp_asm_count, priv_tvm {
        // instruction executed in each mode
    }
endgroup
// ---------------------
covergroup Svinval_sinval_vma_cg with function sample(ins_t ins);
    option.per_instance = 0;
    cp_asm_count : coverpoint ins.ins_str == "sinval.vma"   {
        bins goal = {1};
    }
    priv_tvm : coverpoint {ins.prev.mode, ins.prev.csr[12'h300][20]} {
        bins M_mode     = {3'b11_0};
        bins S_mode     = {3'b01_0};
        bins S_mode_tvm = {3'b01_1};
        bins U_mode     = {3'b00_0};
    }
    cr_instr_mode : cross cp_asm_count, priv_tvm {
        // instruction executed in each mode
    }
endgroup
// ---------------------
function void svinval_sample(int hart, int issue, ins_t ins);

    //$display("Svinval coverage: ins_str %s ins,prev.mode %b tvm %b", ins.ins_str, ins.prev.mode, ins.prev.csr[12'h300][20]);
    case (traceDataQ[hart][issue][0].inst_name)
        "sfence.inval.ir"     : begin
            Svinval_sfence_inval_ir_cg.sample(ins);
        end
        "sfence.w.inval"     : begin
            Svinval_sfence_w_inval_cg.sample(ins);
        end
        "sinval.vma"     : begin
            Svinval_sinval_vma_cg.sample(ins);
        end
    endcase
endfunction
