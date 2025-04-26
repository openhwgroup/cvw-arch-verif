///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: Corey Hickson chickson@hmc.edu 4 Mar 2025
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

`define COVER_INTERRUPTSSSTC

covergroup InterruptsSstc_cg with function sample(ins_t ins);
    option.per_instance = 0;
    `include "coverage/RISCV_coverage_standard_coverpoints.svh"

    // building blocks for the main coverpoints

    sip_stip_one: coverpoint ins.current.csr[12'h144][5]{
        bins one = {1};
    }
    stimecmp_zero: coverpoint ins.current.csr[12'h14D] {
        bins zero = {0};
    }
    mstatus_mie: coverpoint ins.current.csr[12'h300][3]  {
        // autofill 0/1
    }
    mstatus_mie_one: coverpoint ins.current.csr[12'h300][3] {
        bins one = {1};
    }
    mstatus_sie: coverpoint ins.current.csr[12'h300][1] {
        // autofill 0/1
    }
    mideleg_sti: coverpoint ins.current.csr[12'h303][5] {
        // autofill 0/1
    }
    mie_stie: coverpoint ins.current.csr[12'h304][5] {
        // autofill 0/1
    }
    mcounteren_tm: coverpoint ins.current.csr[12'h306][1] {
        // autofill 0/1
    }
    `ifdef XLEN64
        menvcfg_stce: coverpoint ins.current.csr[12'h30A][63] {
            // autofill 0/1
        }
        menvcfg_stce_one: coverpoint ins.current.csr[12'h30A][63] {
            bins one = {1};
        }
    `else
        menvcfg_stce: coverpoint ins.current.csr[12'h31A][31] {
            // autofill 0/1
        }
        menvcfg_stce_one: coverpoint ins.current.csr[12'h31A][31] {
            bins one = {1};
        }
    `endif
    csrr: coverpoint ins.current.insn[6:0] {
        wildcard bins csrr = {7'b1110011};
    }
    read_stimecmp: coverpoint ins.current.insn[31:20] {
        bins read_stimecmp = {12'h14D};
    }

    // main coverpoints
    cp_machine_sti:     cross priv_mode_m, menvcfg_stce_one, mstatus_mie_one, mideleg_sti, mie_stie, stimecmp_zero;
    cp_machine_tm:      cross priv_mode_m, csrr, read_stimecmp, mcounteren_tm;
    cp_machine_stce:    cross priv_mode_m, csrr, read_stimecmp, menvcfg_stce;
    cp_supervisor_sti:  cross priv_mode_s, menvcfg_stce, mstatus_mie, mstatus_sie, mideleg_sti, mie_stie, stimecmp_zero;
    cp_supervisor_tm:   cross priv_mode_s, csrr, read_stimecmp, mcounteren_tm;
    cp_supervisor_stce: cross priv_mode_s, csrr, read_stimecmp, menvcfg_stce;
    cp_user_sti:        cross priv_mode_u, menvcfg_stce, mstatus_mie, mstatus_sie, mideleg_sti, mie_stie, sip_stip_one;
    cp_user_tm:         cross priv_mode_u, csrr, read_stimecmp, mcounteren_tm;
    cp_user_stce:       cross priv_mode_u, csrr, read_stimecmp, menvcfg_stce;

endgroup

function void interruptssstc_sample(int hart, int issue, ins_t ins);
    InterruptsSstc_cg.sample(ins);
endfunction
