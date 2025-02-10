///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Instruction Disassembler
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
// Written: Jordan Carlin jcarlin@hmc.edu February 2024
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

`include "coverage/RISCV_decode_pkg.svh"
`include "coverage/RISCV_disassemble_helpers.svh"

function string disassemble (logic [31:0] instr);

  import RISCV_decode_pkg::*;

  string decoded;

  // Register names
  automatic string rs1 = get_gpr_name(instr[19:15]);
  automatic string rs2 = get_gpr_name(instr[24:20]);
  automatic string rd  = get_gpr_name(instr[11:7]);
  automatic string cr2 = get_gpr_name(instr[6:2]);
  automatic string rs1p = get_c_gpr_name(instr[9:7]);
  automatic string rs2p = get_c_gpr_name(instr[4:2]);
  automatic string fs1 = get_fpr_name(instr[19:15]);
  automatic string fs2 = get_fpr_name(instr[24:20]);
  automatic string fs3 = get_fpr_name(instr[31:27]);
  automatic string fd  = get_fpr_name(instr[11:7]);

  // Immediates
  automatic bit signed [11:0] immIType = (instr[31:20]);
  automatic bit signed [11:0] immSType = ({instr[31:25], instr[11:7]});
  automatic bit signed [12:0] immBType = ({instr[31], instr[7], instr[30:25], instr[11:8], 1'b0});
  automatic bit signed [19:0] immUType = {instr[31:12]};
  automatic bit signed [20:0] immJType = ({instr[31], instr[19:12], instr[20], instr[30:21], 1'b0});
  automatic bit [5:0]  uimm = instr[25:20];
  automatic bit [1:0]  bs  = instr[31:30];
  automatic bit [4:0] crImm;

  // Other fields
  automatic bit [2:0]  frm = instr[14:12];
  automatic string csr = get_csr_name(instr[31:20]);

  /* verilator lint_off CASEINCOMPLETE */
  casez (instr)
    // Base Instructions
    ADD:     $sformat(decoded, "add %s, %s, %s", rd, rs1, rs2);
    SUB:     $sformat(decoded, "sub %s, %s, %s", rd, rs1, rs2);
    AND:     $sformat(decoded, "and %s, %s, %s", rd, rs1, rs2);
    OR:      $sformat(decoded, "or %s, %s, %s", rd, rs1, rs2);
    XOR:     $sformat(decoded, "xor %s, %s, %s", rd, rs1, rs2);
    SLT:     $sformat(decoded, "slt %s, %s, %s", rd, rs1, rs2);
    SLTU:    $sformat(decoded, "sltu %s, %s, %s", rd, rs1, rs2);
    SLL:     $sformat(decoded, "sll %s, %s, %s", rd, rs1, rs2);
    SRL:     $sformat(decoded, "srl %s, %s, %s", rd, rs1, rs2);
    SRA:     $sformat(decoded, "sra %s, %s, %s", rd, rs1, rs2);
    ADDI:    $sformat(decoded, "addi %s, %s, %0d", rd, rs1, immIType);
    ANDI:    $sformat(decoded, "andi %s, %s, %0d", rd, rs1, immIType);
    ORI:     $sformat(decoded, "ori %s, %s, %0d", rd, rs1, immIType);
    XORI:    $sformat(decoded, "xori %s, %s, %0d", rd, rs1, immIType);
    SLTI:    $sformat(decoded, "slti %s, %s, %0d", rd, rs1, immIType);
    SLTIU:   $sformat(decoded, "sltiu %s, %s, %0d", rd, rs1, immIType);
  `ifdef XLEN32
    SLLI_RV32: $sformat(decoded, "slli %s, %s, %0d", rd, rs1, uimm[4:0]);
    SRAI_RV32: $sformat(decoded, "srai %s, %s, %0d", rd, rs1, uimm[4:0]);
    SRLI_RV32: $sformat(decoded, "srli %s, %s, %0d", rd, rs1, uimm[4:0]);
  `else
    SLLI:      $sformat(decoded, "slli %s, %s, %0d", rd, rs1, uimm);
    SRAI:      $sformat(decoded, "srai %s, %s, %0d", rd, rs1, uimm);
    SRLI:      $sformat(decoded, "srli %s, %s, %0d", rd, rs1, uimm);
  `endif
    AUIPC:   $sformat(decoded, "auipc %s, %0d", rd, immUType);
    LUI:     $sformat(decoded, "lui %s, %0d", rd, immUType);
    BEQ:     $sformat(decoded, "beq %s, %s, %0d", rs1, rs2, immBType);
    BGE:     $sformat(decoded, "bge %s, %s, %0d", rs1, rs2, immBType);
    BGEU:    $sformat(decoded, "bgeu %s, %s, %0d", rs1, rs2, immBType);
    BLT:     $sformat(decoded, "blt %s, %s, %0d", rs1, rs2, immBType);
    BLTU:    $sformat(decoded, "bltu %s, %s, %0d", rs1, rs2, immBType);
    BNE:     $sformat(decoded, "bne %s, %s, %0d", rs1, rs2, immBType);
    EBREAK:  $sformat(decoded, "ebreak");
    ECALL:   $sformat(decoded, "ecall");
    MRET:    $sformat(decoded, "mret");
    WFI:     $sformat(decoded, "wfi");
    FENCE:   $sformat(decoded, "fence");
    JAL:     $sformat(decoded, "jal %s, %0d", rd, immJType);
    JALR:    $sformat(decoded, "jalr %s, %0d(%s)", rd, immIType, rs1);
    LB:      $sformat(decoded, "lb %s, %0d(%s)", rd, immIType, rs1);
    LBU:     $sformat(decoded, "lbu %s, %0d(%s)", rd, immIType, rs1);
    LH:      $sformat(decoded, "lh %s, %0d(%s)", rd, immIType, rs1);
    LHU:     $sformat(decoded, "lhu %s, %0d(%s)", rd, immIType, rs1);
    LW:      $sformat(decoded, "lw %s, %0d(%s)", rd, immIType, rs1);
    SB:      $sformat(decoded, "sb %s, %0d(%s)", rs2, immSType, rs1);
    SH:      $sformat(decoded, "sh %s, %0d(%s)", rs2, immSType, rs1);
    SW:      $sformat(decoded, "sw %s, %0d(%s)", rs2, immSType, rs1);
  `ifdef XLEN64 // Extra RV64 Base Instructions
    ADDIW: $sformat(decoded, "addiw %s, %s, %0d", rd, rs1, immIType);
    ADDW:  $sformat(decoded, "addw %s, %s, %s", rd, rs1, rs2);
    LD:    $sformat(decoded, "ld %s, %0d(%s)", rd, immIType, rs1);
    LWU:   $sformat(decoded, "lwu %s, %0d(%s)", rd, immIType, rs1);
    SD:    $sformat(decoded, "sd %s, %0d(%s)", rs2, immSType, rs1);
    SLLIW: $sformat(decoded, "slliw %s, %s, %0d", rd, rs1, uimm[4:0]);
    SLLW:  $sformat(decoded, "sllw %s, %s, %s", rd, rs1, rs2);
    SRAIW: $sformat(decoded, "sraiw %s, %s, %0d", rd, rs1, uimm[4:0]);
    SRAW:  $sformat(decoded, "sraw %s, %s, %s", rd, rs1, rs2);
    SRLIW: $sformat(decoded, "srliw %s, %s, %0d", rd, rs1, uimm[4:0]);
    SRLW:  $sformat(decoded, "srlw %s, %s, %s", rd, rs1, rs2);
    SUBW:  $sformat(decoded, "subw %s, %s, %s", rd, rs1, rs2);
  `endif
    // Supervisor Mode Instructions
    SFENCE_VMA: $sformat(decoded, "sfence.vma %s, %s", rs1, rs2);
    SRET:       $sformat(decoded, "sret");
    // Zicboz Extension
    CBO_ZERO: $sformat(decoded, "cbo.zero (%s)", rs1);
    // Zicbom Extension
    CBO_CLEAN: $sformat(decoded, "cbo.clean (%s)", rs1);
    CBO_FLUSH: $sformat(decoded, "cbo.flush (%s)", rs1);
    CBO_INVAL: $sformat(decoded, "cbo.inval (%s)", rs1);
    // Zicbop Extension
    PREFETCH_I: $sformat(decoded, "prefetch.i %0d(%s)", immIType, rs1);
    PREFETCH_R: $sformat(decoded, "prefetch.r %0d(%s)", immIType, rs1);
    PREFETCH_W: $sformat(decoded, "prefetch.w %0d(%s)", immIType, rs1);
    // Zicond Extension
    CZERO_EQZ: $sformat(decoded, "czero.eqz %s, %s, %s", rd, rs1, rs2);
    CZERO_NEZ: $sformat(decoded, "czero.nez %s, %s, %s", rd, rs1, rs2);
    // Zicsr Extension
    CSRRW:  $sformat(decoded, "csrrw %s, %0d, %s", rd, csr, rs1);
    CSRRS:  $sformat(decoded, "csrrs %s, %0d, %s", rd, csr, rs1);
    CSRRC:  $sformat(decoded, "csrrc %s, %0d, %s", rd, csr, rs1);
    CSRRWI: $sformat(decoded, "csrrwi %s, %0d, %0d", rd, csr, rs1);
    CSRRSI: $sformat(decoded, "csrrsi %s, %0d, %0d", rd, csr, rs1);
    CSRRCI: $sformat(decoded, "csrrci %s, %0d, %0d", rd, csr, rs1);
    // Zifencei Extension
    FENCE_I: $sformat(decoded, "fence.i");
    // M Extension
    MUL:    $sformat(decoded, "mul %s, %s, %s", rd, rs1, rs2);
    MULH:   $sformat(decoded, "mulh %s, %s, %s", rd, rs1, rs2);
    MULHSU: $sformat(decoded, "mulhsu %s, %s, %s", rd, rs1, rs2);
    MULHU:  $sformat(decoded, "mulhu %s, %s, %s", rd, rs1, rs2);
    DIV:    $sformat(decoded, "div %s, %s, %s", rd, rs1, rs2);
    DIVU:   $sformat(decoded, "divu %s, %s, %s", rd, rs1, rs2);
    REM:    $sformat(decoded, "rem %s, %s, %s", rd, rs1, rs2);
    REMU:   $sformat(decoded, "remu %s, %s, %s", rd, rs1, rs2);
  `ifdef XLEN64
    MULW:  $sformat(decoded, "mulw %s, %s, %s", rd, rs1, rs2);
    DIVW:  $sformat(decoded, "divw %s, %s, %s", rd, rs1, rs2);
    DIVUW: $sformat(decoded, "divuw %s, %s, %s", rd, rs1, rs2);
    REMW:  $sformat(decoded, "remw %s, %s, %s", rd, rs1, rs2);
    REMUW: $sformat(decoded, "remuw %s, %s, %s", rd, rs1, rs2);
  `endif
    // Zaamo Extension
    AMOADD_W:  $sformat(decoded, "amoadd.w %s, %s, (%s)", rd, rs2, rs1);
    AMOAND_W:  $sformat(decoded, "amoand.w %s, %s, (%s)", rd, rs2, rs1);
    AMOMAX_W:  $sformat(decoded, "amomax.w %s, %s, (%s)", rd, rs2, rs1);
    AMOMAXU_W: $sformat(decoded, "amomaxu.w %s, %s, (%s)", rd, rs2, rs1);
    AMOMIN_W:  $sformat(decoded, "amomin.w %s, %s, (%s)", rd, rs2, rs1);
    AMOMINU_W: $sformat(decoded, "amominu.w %s, %s, (%s)", rd, rs2, rs1);
    AMOOR_W:   $sformat(decoded, "amoor.w %s, %s, (%s)", rd, rs2, rs1);
    AMOSWAP_W: $sformat(decoded, "amoswap.w %s, %s, (%s)", rd, rs2, rs1);
    AMOXOR_W:  $sformat(decoded, "amoxor.w %s, %s, (%s)", rd, rs2, rs1);
  `ifdef XLEN64
    AMOADD_D:  $sformat(decoded, "amoadd.d %s, %s, (%s)", rd, rs2, rs1);
    AMOAND_D:  $sformat(decoded, "amoand.d %s, %s, (%s)", rd, rs2, rs1);
    AMOMAX_D:  $sformat(decoded, "amomax.d %s, %s, (%s)", rd, rs2, rs1);
    AMOMAXU_D: $sformat(decoded, "amomaxu.d %s, %s, (%s)", rd, rs2, rs1);
    AMOMIN_D:  $sformat(decoded, "amomin.d %s, %s, (%s)", rd, rs2, rs1);
    AMOMINU_D: $sformat(decoded, "amominu.d %s, %s, (%s)", rd, rs2, rs1);
    AMOOR_D:   $sformat(decoded, "amoor.d %s, %s, (%s)", rd, rs2, rs1);
    AMOSWAP_D: $sformat(decoded, "amoswap.d %s, %s, (%s)", rd, rs2, rs1);
    AMOXOR_D:  $sformat(decoded, "amoxor.d %s, %s, (%s)", rd, rs2, rs1);
  `endif
    // Zalrsc Extension
    LR_W:      $sformat(decoded, "lr.w %s, (%s)", rd, rs1);
    SC_W:      $sformat(decoded, "sc.w %s, %s, (%s)", rd, rs2, rs1);
  `ifdef XLEN64
    LR_D:      $sformat(decoded, "lr.d %s, (%s)", rd, rs1);
    SC_D:      $sformat(decoded, "sc.d %s, %s, (%s)", rd, rs2, rs1);
  `endif
    // F Extension
    FMADD_S:   $sformat(decoded, "fmadd.s %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FMSUB_S:   $sformat(decoded, "fmsub.s %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMADD_S:  $sformat(decoded, "fnmadd.s %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMSUB_S:  $sformat(decoded, "fnmsub.s %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FADD_S:    $sformat(decoded, "fadd.s %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSUB_S:    $sformat(decoded, "fsub.s %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FMUL_S:    $sformat(decoded, "fmul.s %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FDIV_S:    $sformat(decoded, "fdiv.s %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSQRT_S:   $sformat(decoded, "fsqrt.s %s, %s, %s", fd, fs1, get_frm_string(frm));
    FSGNJ_S:   $sformat(decoded, "fsgnj.s %s, %s, %s", fd, fs1, fs2);
    FSGNJN_S:  $sformat(decoded, "fsgnjn.s %s, %s, %s", fd, fs1, fs2);
    FSGNJX_S:  $sformat(decoded, "fsgnjx.s %s, %s, %s", fd, fs1, fs2);
    FMAX_S:    $sformat(decoded, "fmax.s %s, %s, %s", fd, fs1, fs2);
    FMIN_S:    $sformat(decoded, "fmin.s %s, %s, %s", fd, fs1, fs2);
    FEQ_S:     $sformat(decoded, "feq.s %s, %s, %s", rd, fs1, fs2);
    FLE_S:     $sformat(decoded, "fle.s %s, %s, %s", rd, fs1, fs2);
    FLT_S:     $sformat(decoded, "flt.s %s, %s, %s", rd, fs1, fs2);
    FCLASS_S:  $sformat(decoded, "fclass.s %s, %s", rd, fs1);
    FLW:       $sformat(decoded, "flw %s, %0d(%s)", fd, immIType, rs1);
    FSW:       $sformat(decoded, "fsw %s, %0d(%s)", fs2, immSType, rs1);
    FCVT_S_W:  $sformat(decoded, "fcvt.s.w %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_S_WU: $sformat(decoded, "fcvt.s.wu %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_W_S:  $sformat(decoded, "fcvt.w.s %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_WU_S: $sformat(decoded, "fcvt.wu.s %s, %s, %s", rd, fs1, get_frm_string(frm));
    FMV_W_X:   $sformat(decoded, "fmv.w.x %s, %s", fd, rs1);
    FMV_X_W:   $sformat(decoded, "fmv.x.w %s, %s", rd, fs1);
  `ifdef XLEN64
    FCVT_L_S:  $sformat(decoded, "fcvt.l.s %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_LU_S: $sformat(decoded, "fcvt.lu.s %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_S_L:  $sformat(decoded, "fcvt.s.l %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_S_LU: $sformat(decoded, "fcvt.s.lu %s, %s, %s", fd, rs1, get_frm_string(frm));
  `endif
    // D Extension
    FMADD_D:   $sformat(decoded, "fmadd.d %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FMSUB_D:   $sformat(decoded, "fmsub.d %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMADD_D:  $sformat(decoded, "fnmadd.d %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMSUB_D:  $sformat(decoded, "fnmsub.d %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FADD_D:    $sformat(decoded, "fadd.d %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSUB_D:    $sformat(decoded, "fsub.d %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FMUL_D:    $sformat(decoded, "fmul.d %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FDIV_D:    $sformat(decoded, "fdiv.d %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSQRT_D:   $sformat(decoded, "fsqrt.d %s, %s, %s", fd, fs1, get_frm_string(frm));
    FSGNJ_D:   $sformat(decoded, "fsgnj.d %s, %s, %s", fd, fs1, fs2);
    FSGNJN_D:  $sformat(decoded, "fsgnjn.d %s, %s, %s", fd, fs1, fs2);
    FSGNJX_D:  $sformat(decoded, "fsgnjx.d %s, %s, %s", fd, fs1, fs2);
    FMAX_D:    $sformat(decoded, "fmax.d %s, %s, %s", fd, fs1, fs2);
    FMIN_D:    $sformat(decoded, "fmin.d %s, %s, %s", fd, fs1, fs2);
    FEQ_D:     $sformat(decoded, "feq.d %s, %s, %s", rd, fs1, fs2);
    FLE_D:     $sformat(decoded, "fle.d %s, %s, %s", rd, fs1, fs2);
    FLT_D:     $sformat(decoded, "flt.d %s, %s, %s", rd, fs1, fs2);
    FLD:       $sformat(decoded, "fld %s, %0d(%s)", fd, immIType, rs1);
    FSD:       $sformat(decoded, "fsd %s, %0d(%s)", fs2, immSType, rs1);
    FCLASS_D:  $sformat(decoded, "fclass.d %s, %s", rd, fs1);
    FCVT_D_S:  $sformat(decoded, "fcvt.d.s %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_D_W:  $sformat(decoded, "fcvt.d.w %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_D_WU: $sformat(decoded, "fcvt.d.wu %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_S_D:  $sformat(decoded, "fcvt.s.d %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_W_D:  $sformat(decoded, "fcvt.w.d %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_WU_D: $sformat(decoded, "fcvt.wu.d %s, %s, %s", rd, fs1, get_frm_string(frm));
  `ifdef XLEN64
    FCVT_D_L:  $sformat(decoded, "fcvt.d.l %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_D_LU: $sformat(decoded, "fcvt.d.lu %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_L_D:  $sformat(decoded, "fcvt.l.d %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_LU_D: $sformat(decoded, "fcvt.lu.d %s, %s, %s", rd, fs1, get_frm_string(frm));
    FMV_D_X:   $sformat(decoded, "fmv.d.x %s, %s, %s", fd, rs1, get_frm_string(frm));
    FMV_X_D:   $sformat(decoded, "fmv.x.d %s, %s, %s", rd, fs1, get_frm_string(frm));
  `endif
    // Q Extension
    FMADD_Q:   $sformat(decoded, "fmadd.q %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FMSUB_Q:   $sformat(decoded, "fmsub.q %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMADD_Q:  $sformat(decoded, "fnmadd.q %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMSUB_Q:  $sformat(decoded, "fnmsub.q %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FADD_Q:    $sformat(decoded, "fadd.q %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSUB_Q:    $sformat(decoded, "fsub.q %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FMUL_Q:    $sformat(decoded, "fmul.q %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FDIV_Q:    $sformat(decoded, "fdiv.q %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSQRT_Q:   $sformat(decoded, "fsqrt.q %s, %s, %s", fd, fs1, get_frm_string(frm));
    FSGNJ_Q:   $sformat(decoded, "fsgnj.q %s, %s, %s", fd, fs1, fs2);
    FSGNJN_Q:  $sformat(decoded, "fsgnjn.q %s, %s, %s", fd, fs1, fs2);
    FSGNJX_Q:  $sformat(decoded, "fsgnjx.q %s, %s, %s", fd, fs1, fs2);
    FMAX_Q:    $sformat(decoded, "fmax.q %s, %s, %s", fd, fs1, fs2);
    FMIN_Q:    $sformat(decoded, "fmin.q %s, %s, %s", fd, fs1, fs2);
    FEQ_Q:     $sformat(decoded, "feq.q %s, %s, %s", rd, fs1, fs2);
    FLE_Q:     $sformat(decoded, "fle.q %s, %s, %s", rd, fs1, fs2);
    FLT_Q:     $sformat(decoded, "flt.q %s, %s, %s", rd, fs1, fs2);
    FCLASS_Q:  $sformat(decoded, "fclass.q %s, %s", rd, fs1);
    FLQ:       $sformat(decoded, "flq %s, %0d(%s)", fd, immIType, rs1);
    FSQ:       $sformat(decoded, "fsq %s, %0d(%s)", fs2, immSType, rs1);
    FCVT_D_Q:  $sformat(decoded, "fcvt.d.q %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_Q_D:  $sformat(decoded, "fcvt.q.d %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_Q_S:  $sformat(decoded, "fcvt.q.s %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_Q_W:  $sformat(decoded, "fcvt.q.w %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_Q_WU: $sformat(decoded, "fcvt.q.wu %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_S_Q:  $sformat(decoded, "fcvt.s.q %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_W_Q:  $sformat(decoded, "fcvt.w.q %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_WU_Q: $sformat(decoded, "fcvt.wu.q %s, %s, %s", fd, rs1, get_frm_string(frm));
  `ifdef XLEN64
    FCVT_L_Q:  $sformat(decoded, "fcvt.l.q %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_LU_Q: $sformat(decoded, "fcvt.lu.q %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_Q_L:  $sformat(decoded, "fcvt.q.l %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_Q_LU: $sformat(decoded, "fcvt.q.lu %s, %s, %s", fd, rs1, get_frm_string(frm));
  `endif
    // Zfh Extension
    FMADD_H:   $sformat(decoded,"fmadd.h %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FMSUB_H:   $sformat(decoded,"fmsub.h %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMADD_H:  $sformat(decoded,"fnmadd.h %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FNMSUB_H:  $sformat(decoded,"fnmsub.h %s, %s, %s, %s, %s", fd, fs1, fs2, fs3, get_frm_string(frm));
    FADD_H:    $sformat(decoded,"fadd.h %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSUB_H:    $sformat(decoded,"fsub.h %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FMUL_H:    $sformat(decoded,"fmul.h %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FDIV_H:    $sformat(decoded,"fdiv.h %s, %s, %s, %s", fd, fs1, fs2, get_frm_string(frm));
    FSQRT_H:   $sformat(decoded,"fsqrt.h %s, %s, %s", fd, fs1, get_frm_string(frm));
    FSGNJ_H:   $sformat(decoded,"fsgnj.h %s, %s, %s", fd, fs1, fs2);
    FSGNJN_H:  $sformat(decoded,"fsgnjn.h %s, %s, %s", fd, fs1, fs2);
    FSGNJX_H:  $sformat(decoded,"fsgnjx.h %s, %s, %s", fd, fs1, fs2);
    FMAX_H:    $sformat(decoded,"fmax.h %s, %s, %s", fd, fs1, fs2);
    FMIN_H:    $sformat(decoded,"fmin.h %s, %s, %s", fd, fs1, fs2);
    FEQ_H:     $sformat(decoded,"feq.h %s, %s, %s", rd, fs1, fs2);
    FLE_H:     $sformat(decoded,"fle.h %s, %s, %s", rd, fs1, fs2);
    FLT_H:     $sformat(decoded,"flt.h %s, %s, %s", rd, fs1, fs2);
    FCLASS_H:  $sformat(decoded,"fclass.h %s, %s", rd, fs1);
    FLH:       $sformat(decoded,"flh %s, %0d(%s)", fd, immIType, rs1);
    FSH:       $sformat(decoded,"fsh %s, %0d(%s)", fs2, immSType, rs1);
    FCVT_H_S:  $sformat(decoded,"fcvt.h.s %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_H_W:  $sformat(decoded,"fcvt.h.w %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_H_WU: $sformat(decoded,"fcvt.h.wu %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_S_H:  $sformat(decoded,"fcvt.s.h %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_W_H:  $sformat(decoded,"fcvt.w.h %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_WU_H: $sformat(decoded,"fcvt.wu.h %s, %s, %s", rd, fs1, get_frm_string(frm));
    FMV_H_X:   $sformat(decoded,"fmv.h.x %s, %s, %s", fd, rs1, get_frm_string(frm));
    FMV_X_H:   $sformat(decoded,"fmv.x.h %s, %s, %s", rd, fs1, get_frm_string(frm));
  `ifdef XLEN64
    FCVT_H_L:  $sformat(decoded,"fcvt.h.l %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_H_LU: $sformat(decoded,"fcvt.h.lu %s, %s, %s", fd, rs1, get_frm_string(frm));
    FCVT_L_H:  $sformat(decoded,"fcvt.l.h %s, %s, %s", rd, fs1, get_frm_string(frm));
    FCVT_LU_H: $sformat(decoded,"fcvt.lu.h %s, %s, %s", rd, fs1, get_frm_string(frm));
  `endif
    // Zfh + D Extensions
    FCVT_D_H: $sformat(decoded,"fcvt.d.h %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_H_D: $sformat(decoded,"fcvt.h.d %s, %s, %s", fd, fs1, get_frm_string(frm));
    // Zfh + Q Extensions
    FCVT_H_Q: $sformat(decoded,"fcvt.h.q %s, %s, %s", fd, fs1, get_frm_string(frm));
    FCVT_Q_H: $sformat(decoded,"fcvt.q.h %s, %s, %s", fd, fs1, get_frm_string(frm));
    // Zfa Extension
    FLEQ_S:     $sformat(decoded, "fleq.s %s, %s, %s", rd, fs1, fs2);
    FLI_S:      $sformat(decoded, "fli.s %s, %s", fd, rs1);
    FLTQ_S:     $sformat(decoded, "fltq.s %s, %s, %s", rd, fs1, fs2);
    FMAXM_S:    $sformat(decoded, "fmaxm.s %s, %s, %s", fd, fs1, fs2);
    FMINM_S:    $sformat(decoded, "fminm.s %s, %s, %s", fd, fs1, fs2);
    FROUND_S:   $sformat(decoded, "fround.s %s, %s, %s", fd, fs1, get_frm_string(frm));
    FROUNDNX_S: $sformat(decoded, "froundnx.s %s, %s, %s", fd, fs1, get_frm_string(frm));
    // Zfa + D Extensions
    FCVTMOD_W_D: $sformat(decoded, "fcvtmod.w.d %s, %s", rd, fs1);
    FLEQ_D:      $sformat(decoded, "fleq.d %s, %s, %s", rd, fs1, fs2);
    FLI_D:       $sformat(decoded, "fli.d %s, %s", fd, rs1);
    FLTQ_D:      $sformat(decoded, "fltq.d %s, %s, %s", rd, fs1, fs2);
    FMAXM_D:     $sformat(decoded, "fmaxm.d %s, %s, %s", fd, fs1, fs2);
    FMINM_D:     $sformat(decoded, "fminm.d %s, %s, %s", fd, fs1, fs2);
    FROUND_D:    $sformat(decoded, "fround.d %s, %s, %s", fd, fs1, get_frm_string(frm));
    FROUNDNX_D:  $sformat(decoded, "froundnx.d %s, %s, %s", fd, fs1, get_frm_string(frm));
  `ifdef XLEN32  // RV32 Only Zfa + D Extensions
    FMVP_D_X: $sformat(decoded, "fmvp.d.x %s, %s, %s", fd, rs1, rs2);
    FMVH_X_D: $sformat(decoded, "fmvh.x.d %s, %s", rd, fs1);
  `endif
    // Zfa + Q Extensions
    FLEQ_Q:     $sformat(decoded, "fleq.q %s, %s, %s", rd, fs1, fs2);
    FLI_Q:      $sformat(decoded, "fli.q %s, %s", fd, rs1);
    FLTQ_Q:     $sformat(decoded, "fltq.q %s, %s, %s", rd, fs1, fs2);
    FMAXM_Q:    $sformat(decoded, "fmaxm.q %s, %s, %s", fd, fs1, fs2);
    FMINM_Q:    $sformat(decoded, "fminm.q %s, %s, %s", fd, fs1, fs2);
    FROUND_Q:   $sformat(decoded, "fround.q %s, %s, %s", fd, fs1, get_frm_string(frm));
    FROUNDNX_Q: $sformat(decoded, "froundnx.q %s, %s, %s", fd, fs1, get_frm_string(frm));
  `ifdef XLEN64 // RV64 Only Zfa + Q Extensions
    FMVP_Q_X: $sformat(decoded, "fmvp.q.x %s, %s, %s", fd, rs1, rs2);
    FMVH_X_Q: $sformat(decoded, "fmvh.x.q %s, %s", rd, fs1);
  `endif
    // Zfh + Zfa Extensions
    FLEQ_H:     $sformat(decoded, "fleq.h %s, %s, %s", rd, fs1, fs2);
    FLI_H:      $sformat(decoded, "fli.h %s, %s", fd, rs1);
    FLTQ_H:     $sformat(decoded, "fltq.h %s, %s, %s", rd, fs1, fs2);
    FMAXM_H:    $sformat(decoded, "fmaxm.h %s, %s, %s", fd, fs1, fs2);
    FMINM_H:    $sformat(decoded, "fminm.h %s, %s, %s", fd, fs1, fs2);
    FROUND_H:   $sformat(decoded, "fround.h %s, %s, %s", fd, fs1, get_frm_string(frm));
    FROUNDNX_H: $sformat(decoded, "froundnx.h %s, %s, %s", fd, fs1, get_frm_string(frm));
    // Zba Extension
    SH1ADD: $sformat(decoded, "sh1add %s, %s, %s", rd, rs1, rs2);
    SH2ADD: $sformat(decoded, "sh2add %s, %s, %s", rd, rs1, rs2);
    SH3ADD: $sformat(decoded, "sh3add %s, %s, %s", rd, rs1, rs2);
  `ifdef XLEN64
    ADD_UW:    $sformat(decoded, "add.uw %s, %s, %s", rd, rs1, rs2);
    SH1ADD_UW: $sformat(decoded, "sh1add.uw %s, %s, %s", rd, rs1, rs2);
    SH2ADD_UW: $sformat(decoded, "sh2add.uw %s, %s, %s", rd, rs1, rs2);
    SH3ADD_UW: $sformat(decoded, "sh3add.uw %s, %s, %s", rd, rs1, rs2);
    SLLI_UW:   $sformat(decoded, "slli.uw %s, %s, %0d", rd, rs1, uimm[4:0]);
  `endif
    // Zbb Extension
    ANDN:   $sformat(decoded, "andn %s, %s, %s", rd, rs1, rs2);
    CLZ:    $sformat(decoded, "clz %s, %s", rd, rs1);
    CPOP:   $sformat(decoded, "cpop %s, %s", rd, rs1);
    CTZ:    $sformat(decoded, "ctz %s, %s", rd, rs1);
    MAX:    $sformat(decoded, "max %s, %s, %s", rd, rs1, rs2);
    MAXU:   $sformat(decoded, "maxu %s, %s, %s", rd, rs1, rs2);
    MIN:    $sformat(decoded, "min %s, %s, %s", rd, rs1, rs2);
    MINU:   $sformat(decoded, "minu %s, %s, %s", rd, rs1, rs2);
    ORC_B:  $sformat(decoded, "orc.b %s, %s", rd, rs1);
    ORN:    $sformat(decoded, "orn %s, %s, %s", rd, rs1, rs2);
    ROL:    $sformat(decoded, "rol %s, %s, %s", rd, rs1, rs2);
    ROR:    $sformat(decoded, "ror %s, %s, %s", rd, rs1, rs2);
    SEXT_B: $sformat(decoded, "sext.b %s, %s", rd, rs1);
    SEXT_H: $sformat(decoded, "sext.h %s, %s", rd, rs1);
    XNOR:   $sformat(decoded, "xnor %s, %s, %s", rd, rs1, rs2);
  `ifdef XLEN32
    REV8_RV32: $sformat(decoded, "rev8 %s, %s", rd, rs1);
    RORI_RV32: $sformat(decoded, "rori %s, %s, %0d", rd, rs1, uimm[4:0]);      
    ZEXT_H_RV32: $sformat(decoded, "zext.h %s, %s", rd, rs1);
  `else // XLEN64
    REV8:      $sformat(decoded, "rev8 %s, %s", rd, rs1);
    RORI:      $sformat(decoded, "rori %s, %s, %0d", rd, rs1, uimm);
    ZEXT_H:      $sformat(decoded, "zext.h %s, %s", rd, rs1);
    CLZW:   $sformat(decoded, "clzw %s, %s", rd, rs1);
    CPOPW:  $sformat(decoded, "cpopw %s, %s", rd, rs1);
    CTZW:   $sformat(decoded, "ctzw %s, %s", rd, rs1);
    ROLW:   $sformat(decoded, "rolw %s, %s, %s", rd, rs1, rs2);
    RORIW:  $sformat(decoded, "roriw %s, %s, %0d", rd, rs1, uimm[4:0]);
    RORW:   $sformat(decoded, "rorw %s, %s, %s", rd, rs1, rs2);
  `endif
    // Zbc Extension
    CLMUL:  $sformat(decoded, "clmul %s, %s, %s", rd, rs1, rs2);
    CLMULH: $sformat(decoded, "clmulh %s, %s, %s", rd, rs1, rs2);
    CLMULR: $sformat(decoded, "clmulr %s, %s, %s", rd, rs1, rs2);
    // Zbs Extension
    BCLR:  $sformat(decoded, "bclr %s, %s %s", rd, rs1, rs2);
    BEXT:  $sformat(decoded, "bext %s, %s %s", rd, rs1, rs2);
    BINV:  $sformat(decoded, "binv %s, %s %s", rd, rs1, rs2);
    BSET:  $sformat(decoded, "bset %s, %s %s", rd, rs1, rs2);
  `ifdef XLEN32
    BCLRI_RV32: $sformat(decoded, "bclri %s, %s, %0d", rd, rs1, uimm[4:0]);
    BEXTI_RV32: $sformat(decoded, "bexti %s, %s, %0d", rd, rs1, uimm[4:0]);
    BINVI_RV32: $sformat(decoded, "binvi %s, %s, %0d", rd, rs1, uimm[4:0]);
    BSETI_RV32: $sformat(decoded, "bseti %s, %s, %0d", rd, rs1, uimm[4:0]);
  `else // XLEN64
    BCLRI:      $sformat(decoded, "bclri %s, %s, %0d", rd, rs1, uimm);
    BEXTI:      $sformat(decoded, "bexti %s, %s, %0d", rd, rs1, uimm);
    BINVI:      $sformat(decoded, "binvi %s, %s, %0d", rd, rs1, uimm);
    BSETI:      $sformat(decoded, "bseti %s, %s, %0d", rd, rs1, uimm);
  `endif
    // Zbkb Extension
    BREV8: $sformat(decoded, "brev8 %s, %s", rd, rs1);
    PACK:  $sformat(decoded, "pack %s, %s, %s", rd, rs1, rs2);
    PACKH: $sformat(decoded, "packh %s, %s, %s", rd, rs1, rs2);
  `ifdef XLEN32
    UNZIP: $sformat(decoded, "unzip %s, %s", rd, rs1);
    ZIP:   $sformat(decoded, "zip %s, %s", rd, rs1);
  `else // XLEN64
    PACKW: $sformat(decoded, "packw %s, %s, %s", rd, rs1, rs2);
  `endif
    // Zbkx Extension
    XPERM4: $sformat(decoded, "xperm4 %s, %s, %s", rd, rs1, rs2);
    XPERM8: $sformat(decoded, "xperm8 %s, %s, %s", rd, rs1, rs2);
    // Zknd Extension
  `ifdef XLEN32
    AES32DSI:  $sformat(decoded, "aes32dsi %s, %s, %s, %0d", rd, rs1, rs2, bs);
    AES32DSMI: $sformat(decoded, "aes32dsmi %s, %s, %s, %0d", rd, rs1, rs2, bs);
  `else // XLEN64
    AES64DS:  $sformat(decoded, "aes64ds %s, %s, %s", rd, rs1, rs2);
    AES64DSM: $sformat(decoded, "aes64dsm %s, %s, %s", rd, rs1, rs2);
    AES64IM:  $sformat(decoded, "aes64im %s, %s", rd, rs1);
  `endif
    // Zkne Extension
  `ifdef XLEN32
    AES32ESI:  $sformat(decoded, "aes32esi %s, %s, %s, %0d", rd, rs1, rs2, bs);
    AES32ESMI: $sformat(decoded, "aes32esmi %s, %s, %s, %0d", rd, rs1, rs2, bs);
  `else // XLEN64
    AES64ES:  $sformat(decoded, "aes64es %s, %s, %s", rd, rs1, rs2);
    AES64ESM: $sformat(decoded, "aes64esm %s, %s, %s", rd, rs1, rs2);
  `endif
    // Zknd OR Zkne Extension
  `ifdef XLEN32
    AES64KS1I: $sformat(decoded, "aes64ks1i %s, %s, %0d", rd, rs1, instr[23:20]);
    AES64KS2:  $sformat(decoded, "aes64ks2 %s, %s, %s", rd, rs1, rs2);
  `endif
    // Zknh Extension
    SHA256SIG0: $sformat(decoded, "sha256sig0 %s, %s", rd, rs1);
    SHA256SIG1: $sformat(decoded, "sha256sig1 %s, %s", rd, rs1);
    SHA256SUM0: $sformat(decoded, "sha256sum0 %s, %s", rd, rs1);
    SHA256SUM1: $sformat(decoded, "sha256sum1 %s, %s", rd, rs1);
  `ifdef XLEN32
    SHA512SIG0H: $sformat(decoded, "sha512sig0h %s, %s, %s", rd, rs1, rs2);
    SHA512SIG0L: $sformat(decoded, "sha512sig0l %s, %s, %s", rd, rs1, rs2);
    SHA512SIG1H: $sformat(decoded, "sha512sig1h %s, %s, %s", rd, rs1, rs2);
    SHA512SIG1L: $sformat(decoded, "sha512sig1l %s, %s, %s", rd, rs1, rs2);
    SHA512SUM0R: $sformat(decoded, "sha512sum0r %s, %s, %s", rd, rs1, rs2);
    SHA512SUM1R: $sformat(decoded, "sha512sum1r %s, %s, %s", rd, rs1, rs2);
  `else // XLEN64
    SHA512SIG0: $sformat(decoded, "sha512sig0 %s, %s", rd, rs1);
    SHA512SIG1: $sformat(decoded, "sha512sig1 %s, %s", rd, rs1);
    SHA512SUM0: $sformat(decoded, "sha512sum0 %s, %s", rd, rs1);
    SHA512SUM1: $sformat(decoded, "sha512sum1 %s, %s", rd, rs1);
  `endif
    default: decoded = "illegal";
  endcase
  return decoded;
endfunction
