//
// Copyright (c) 2023 Imperas Software Ltd., www.imperas.com
// Modified February 2024, jcarlin@hmc.edu
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

// Print coverage information if not in quiet mode
`ifndef COVER_QUIET
  `define cover_info(s)     $display(s);
`else
  `define cover_info(s)
`endif

// Constants
`define SAMPLE_AFTER 0
`define SAMPLE_BEFORE 1
`define SAMPLE_CURRENT 0
`define SAMPLE_PREV 1
`define NUM_RVVI_DATA 5

// Set register type length
`ifdef XLEN32
  `define XLEN_INT int
`else
  `define XLEN_INT longint
`endif

// Instruction operand data structure
typedef struct {
  string key;
  string val;
} ops_t;

// Register data structures for GPRs and FPRs
typedef enum {
  x0,
  x1,
  x2,
  x3,
  x4,
  x5,
  x6,
  x7,
  x8,
  x9,
  x10,
  x11,
  x12,
  x13,
  x14,
  x15
`ifndef COVER_E
  ,
  x16,
  x17,
  x18,
  x19,
  x20,
  x21,
  x22,
  x23,
  x24,
  x25,
  x26,
  x27,
  x28,
  x29,
  x30,
  x31
`endif
} gpr_name_t;

typedef enum {
  c_x8,
  c_x9,
  c_x10,
  c_x11,
  c_x12,
  c_x13,
  c_x14,
  c_x15
} gpr_reduced_name_t;

typedef enum {
  f0,
  f1,
  f2,
  f3,
  f4,
  f5,
  f6,
  f7,
  f8,
  f9,
  f10,
  f11,
  f12,
  f13,
  f14,
  f15,
  f16,
  f17,
  f18,
  f19,
  f20,
  f21,
  f22,
  f23,
  f24,
  f25,
  f26,
  f27,
  f28,
  f29,
  f30,
  f31
} fpr_name_t;

typedef enum {
  c_f8,
  c_f9,
  c_f10,
  c_f11,
  c_f12,
  c_f13,
  c_f14,
  c_f15
} fpr_reduced_name_t;


// Register name conversion functions
function int get_gpr_num(string key);
  case(key)
    "x0": return 0;
    "zero": return 0;
    "x1": return 1;
    "ra": return 1;
    "x2": return 2;
    "sp": return 2;
    "x3": return 3;
    "gp": return 3;
    "x4": return 4;
    "tp": return 4;
    "x5": return 5;
    "t0": return 5;
    "x6": return 6;
    "t1": return 6;
    "x7": return 7;
    "t2": return 7;
    "x8": return 8;
    "s0": return 8;
    "x9": return 9;
    "s1": return 9;
    "x10": return 10;
    "a0": return 10;
    "x11": return 11;
    "a1": return 11;
    "x12": return 12;
    "a2": return 12;
    "x13": return 13;
    "a3": return 13;
    "x14": return 14;
    "a4": return 14;
    "x15": return 15;
    "a5": return 15;
    "x16": return 16;
    "a6": return 16;
    "x17": return 17;
    "a7": return 17;
    "x18": return 18;
    "s2": return 18;
    "x19": return 19;
    "s3": return 19;
    "x20": return 20;
    "s4": return 20;
    "x21": return 21;
    "s5": return 21;
    "x22": return 22;
    "s6": return 22;
    "x23": return 23;
    "s7": return 23;
    "x24": return 24;
    "s8": return 24;
    "x25": return 25;
    "s9": return 25;
    "x26": return 26;
    "s10": return 26;
    "x27": return 27;
    "s11": return 27;
    "x28": return 28;
    "t3": return 28;
    "x29": return 29;
    "t4": return 29;
    "x30": return 30;
    "t5": return 30;
    "x31": return 31;
    "t6": return 31;
  endcase
  return -1;
endfunction



function int get_fpr_num(string key);
  case(key)
    "f0": return 0;
    "f1": return 1;
    "f2": return 2;
    "f3": return 3;
    "f4": return 4;
    "f5": return 5;
    "f6": return 6;
    "f7": return 7;
    "f8": return 8;
    "f9": return 9;
    "f10": return 10;
    "f11": return 11;
    "f12": return 12;
    "f13": return 13;
    "f14": return 14;
    "f15": return 15;
    "f16": return 16;
    "f17": return 17;
    "f18": return 18;
    "f19": return 19;
    "f20": return 20;
    "f21": return 21;
    "f22": return 22;
    "f23": return 23;
    "f24": return 24;
    "f25": return 25;
    "f26": return 26;
    "f27": return 27;
    "f28": return 28;
    "f29": return 29;
    "f30": return 30;
    "f31": return 31;
  endcase
  return -1;
endfunction

// Floating point rounding modes
typedef enum {
  dyn,
  rdn,
  rmm,
  rne,
  rtz,
  rup
} frm_name_t;

function frm_name_t get_frm(string s);
  case (s)
    "rdn": return rdn;
    "rmm": return rmm;
    "rne": return rne;
    "rtz": return rtz;
    "rup": return rup;
    default: return dyn;
  endcase
endfunction
