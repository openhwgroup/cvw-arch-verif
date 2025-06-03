//
// Copyright (c) 2023 Imperas Software Ltd., www.imperas.com
// Created June 3rd 2025, James Kaden Cassidy jacassidy@hmc.edu
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//
//

function get_vlmax(int hart, int issue, int prev);

    int vlen = get_csr_val(hart, issue, prev, "vlenb", "vlenb") * 8;
    int vlen_div_sew;
    int vlmax;

    case (get_csr_val(hart, issue, prev, "vtype", "vsew")[1:0])
        2'b00: vlen_div_sew = vlen / 8;
        2'b01: vlen_div_sew = vlen / 16;
        2'b10: vlen_div_sew = vlen / 32;
        2'b11: vlen_div_sew = vlen / 64;
        default: begin
            $display("ERROR: SystemVerilog Functional Coverage: get_vlmax sew is undefined (%0s)",
                    get_csr_val(hart, issue, prev, "vtype", "vsew"));
            $finish(-1);
        end
    endcase

    case (get_csr_val(hart, issue, prev, "vtype", "vlmul")[2:0])
        3'b000: vlmax = vlen_div_sew;
        3'b001: vlmax = vlen_div_sew * 2;
        3'b010: vlmax = vlen_div_sew * 4;
        3'b011: vlmax = vlen_div_sew * 8;
        3'b101: vlmax = vlen_div_sew / 8; // 1/8
        3'b110: vlmax = vlen_div_sew / 4; // 1/4
        3'b111: vlmax = vlen_div_sew / 2; // 1/2
        default: begin
            $display("ERROR: SystemVerilog Functional Coverage: get_vlmax lmul is undefined (%0s)",
                    get_csr_val(hart, issue, prev, "vtype", "vlmul"));
            $finish(-1);
        end
    endcase

    return vlmax;

endfunction
