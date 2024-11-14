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

`define COVER_ZICSRF
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_zicsrf_t;

covergroup fcsr_cg with function sample(ins_zicsrf_t ins);
    option.per_instance = 0; 

    // building blocks for the main coverpoints

    csrrw_fcsr: coverpoint ins.current.insn {
        wildcard bins csrrw_fcsr = {32'b000000000011_?????_001_?????_1110011}; 
    }
    frm_corners: coverpoint ins.current.rs1_val[7:5] {

    }
    
    // main coverpoints
    cp_fcsr_frm_write: cross csrrw_fcsr, frm_corners;
endgroup



function void zicsrf_sample(int hart, int issue);
    ins_zicsrf_t ins;

    ins = new(hart, issue, traceDataQ); 
    ins.add_rd(0);
    ins.add_rs1(2);
    ins.add_csr(1);
    
    fcsr_cg.sample(ins);
    
endfunction
