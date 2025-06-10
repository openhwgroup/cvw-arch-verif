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


typedef enum {
    zero, //     = {(`SEW){1'b0}},
    one, //      = {(`SEW-1){1'b0}, {1'b1}},
    two, //      = {(`SEW-2){1'b0}, {2'b10}},
    min, //      = {{1'b1}, (`SEW-1){1'b0}},
    minp1, //    = {{1'b1}, (`SEW-2){1'b0}, {1'b1}},
    max, //      = {{1'b0}, (`SEW-1){1'b1}},
    maxm1, //    = {{1'b0}, (`SEW-2){1'b1}, {1'b0}},
    ones, //     = {(`SEW){1'b1}},
    onesm1, //   = {(`SEW-1){1'b1}, {1'b0}},
    walkeodd, // = {(`SEW/2){2'b10}},
    walkeven, // = {(`SEW/2){2'b01}},
    random
} corner_vs_values_t;

// Check for vector operand corner values, assuming vl = 1
function corner_vs_values_t vs_corners_check(int hart, int issue, `VLEN_BITS val, string sew_multiplier);
  `XLEN_BITS vsew = get_csr_val(hart, issue, `SAMPLE_BEFORE, "vtype", "vsew");
  int sew = 2 ** (3 + unsigned'(vsew[2:0]));
  int eew;

  case (sew_multiplier)
    "1":     eew = sew;
    "2":     eew = 2 * sew;
    "4":     eew = 4 * sew;
    "8":     eew = 8 * sew;
    "f2":    eew = sew / 2;
    "f4":    eew = sew / 4;
    "f8":    eew = sew / 8;
    "m":     eew = 1;
    default: begin
      $display("ERROR: SystemVerilog Functional Coverage: Unsupported SEW multiplier: %s", sew_multiplier);
      $finish(-1);
    end
  endcase

  case (eew)
    1:   return vs_corners_check_eew_1(val);
    8:   return vs_corners_check_eew_8(val);
    `ifdef SEW16_SUPPORTED
    16:  return vs_corners_check_eew_16(val);
    `endif
    `ifdef SEW32_SUPPORTED
    32:  return vs_corners_check_eew_32(val);
    `endif
    `ifdef SEW64_SUPPORTED
    64:  return vs_corners_check_eew_64(val);
    `endif
    default: begin
      $display("ERROR: SystemVerilog Functional Coverage: Unsupported EEW: %s", eew);
      $finish(-1);
    end
  endcase
endfunction

function corner_vs_values_t vs_corners_check_eew_1(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-1){1'b?}}, {1'b1}}:  return one;
    default:                      return zero;
  endcase
endfunction

function corner_vs_values_t vs_corners_check_eew_8(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-8){1'b?}},         {(8){1'b0}}}:            return zero;
    {{(`VLEN-8){1'b?}},         {(8-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-8){1'b?}},         {(8-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-8){1'b?}}, {1'b1}, {(8-1){1'b0}}}:          return min;
    {{(`VLEN-8){1'b?}}, {1'b1}, {(8-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-8){1'b?}}, {1'b0}, {(8-1){1'b1}}}        :  return max;
    {{(`VLEN-8){1'b?}}, {1'b0}, {(8-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-8){1'b?}},         {(8){1'b1}}}:            return ones;
    {{(`VLEN-8){1'b?}},         {(8-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-8){1'b?}},         {(8/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-8){1'b?}},         {(8/2){2'b01}}}:         return walkeven;
    default:                                             return random;
  endcase
endfunction

`ifdef SEW16_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_16(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-16){1'b?}},         {(16){1'b0}}}:            return zero;
    {{(`VLEN-16){1'b?}},         {(16-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-16){1'b?}},         {(16-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-16){1'b?}}, {1'b1}, {(16-1){1'b0}}}:          return min;
    {{(`VLEN-16){1'b?}}, {1'b1}, {(16-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-16){1'b?}}, {1'b0}, {(16-1){1'b1}}}        :  return max;
    {{(`VLEN-16){1'b?}}, {1'b0}, {(16-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-16){1'b?}},         {(16){1'b1}}}:            return ones;
    {{(`VLEN-16){1'b?}},         {(16-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-16){1'b?}},         {(16/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-16){1'b?}},         {(16/2){2'b01}}}:         return walkeven;
    default:                                               return random;
  endcase
endfunction
`endif
`ifdef SEW32_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_32(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-32){1'b?}},         {(32){1'b0}}}:            return zero;
    {{(`VLEN-32){1'b?}},         {(32-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-32){1'b?}},         {(32-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-32){1'b?}}, {1'b1}, {(32-1){1'b0}}}:          return min;
    {{(`VLEN-32){1'b?}}, {1'b1}, {(32-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-32){1'b?}}, {1'b0}, {(32-1){1'b1}}}        :  return max;
    {{(`VLEN-32){1'b?}}, {1'b0}, {(32-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-32){1'b?}},         {(32){1'b1}}}:            return ones;
    {{(`VLEN-32){1'b?}},         {(32-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-32){1'b?}},         {(32/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-32){1'b?}},         {(32/2){2'b01}}}:         return walkeven;
    default:                                               return random;
  endcase
endfunction
`endif
`ifdef SEW64_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_64(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-64){1'b?}},         {(64){1'b0}}}:            return zero;
    {{(`VLEN-64){1'b?}},         {(64-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-64){1'b?}},         {(64-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-64){1'b?}}, {1'b1}, {(64-1){1'b0}}}:          return min;
    {{(`VLEN-64){1'b?}}, {1'b1}, {(64-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-64){1'b?}}, {1'b0}, {(64-1){1'b1}}}        :  return max;
    {{(`VLEN-64){1'b?}}, {1'b0}, {(64-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-64){1'b?}},         {(64){1'b1}}}:            return ones;
    {{(`VLEN-64){1'b?}},         {(64-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-64){1'b?}},         {(64/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-64){1'b?}},         {(64/2){2'b01}}}:         return walkeven;
    default:                                               return random;
  endcase
endfunction
`endif

function logic[63:0] get_vr_element_zero(hart, issue, `VLEN_BITS val);
    `XLEN_BITS vsew = get_csr_val(hart, issue, `SAMPLE_BEFORE, "vtype", "vsew");

    case (vsew)
    2'b00:   return {56'b0, val[7:0]};
    `ifdef SEW16_SUPPORTED
    2'b01:  return {48'b0, val[15:0]};
    `endif
    `ifdef SEW32_SUPPORTED
    2'b10:  return {32'b0, val[31:0]};
    `endif
    `ifdef SEW64_SUPPORTED
    2'b11:  return val[63:0];
    `endif
    default: begin
      $display("ERROR: SystemVerilog Functional Coverage: Unsupported SEW: %s", vsew);
      $finish(-1);
    end
  endcase

endfunction
