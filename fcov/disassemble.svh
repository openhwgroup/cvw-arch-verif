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

function string disassemble (logic [31:0] instrRaw);

  import RISCV_decode_pkg::*;

  string decoded;

  // Mask top bits if compressed instruction
  automatic bit compressedInstruction = instrRaw[1:0] != 2'b11;
  automatic bit [31:0] instr = compressedInstruction ? {16'b0, instrRaw[15:0]} : instrRaw;

  // Registers
  automatic bit [4:0] rs1Bits  = instr[19:15];
  automatic bit [4:0] rs2Bits  = instr[24:20];
  automatic bit [4:0] rdBits   = instr[11:7];
  automatic bit [4:0] crs2Bits = instr[6:2];

  // Register names
  automatic string rs1  = get_gpr_name(rs1Bits);
  automatic string rs2  = get_gpr_name(rs2Bits);
  automatic string rd   = get_gpr_name(rdBits);
  automatic string crs2 = get_gpr_name(crs2Bits);
  automatic string rs1p = get_c_gpr_name(instr[9:7]);
  automatic string rs2p = get_c_gpr_name(instr[4:2]);
  automatic string fs1  = get_fpr_name(instr[19:15]);
  automatic string fs2  = get_fpr_name(instr[24:20]);
  automatic string fs3  = get_fpr_name(instr[31:27]);
  automatic string fd   = get_fpr_name(instr[11:7]);
  automatic string cfs2 = get_fpr_name(instr[6:2]);
  automatic string fs1p = get_c_fpr_name(instr[9:7]);
  automatic string fs2p = get_c_fpr_name(instr[4:2]);

  // Immediates
  automatic bit signed [11:0] immIType = (instr[31:20]);
  automatic bit signed [11:0] immSType = ({instr[31:25], instr[11:7]});
  automatic bit signed [12:0] immBType = ({instr[31], instr[7], instr[30:25], instr[11:8], 1'b0});
  automatic bit signed [19:0] immUType = {instr[31:12]};
  automatic bit signed [20:0] immJType = ({instr[31], instr[19:12], instr[20], instr[30:21], 1'b0});
  automatic bit        [5:0]  uimm     = instr[25:20];
  automatic bit        [1:0]  bs       = instr[31:30];

  // Compressed immediates
  automatic bit signed [5:0]  immCIType     = {instr[12], instr[6:2]};
  automatic bit        [5:0]  immUCIType    = {instr[12], instr[6:2]};
  automatic bit        [7:0]  immCILSPType  = {instr[3:2], instr[12], instr[6:4], 2'b00};
  automatic bit        [8:0]  immCILSPDType = {instr[4:2], instr[12], instr[6:5], 3'b000};
  automatic bit signed [9:0]  immCIASPType  = {instr[12], instr[4:3], instr[5], instr[2], instr[6], 4'b0000};
  automatic bit        [9:0]  immCIWType    = {instr[10:7], instr[12:11], instr[5], instr[6], 2'b0};
  automatic bit        [8:0]  immCSSDType   = {instr[9:7], instr[12:10], 3'b0};
  automatic bit        [6:0]  immCLSType    = {instr[5], instr[12:10], instr[6], 2'b0};
  automatic bit        [7:0]  immCLSDType   = {instr[6:5], instr[12:10], 3'b0};
  automatic bit        [1:0]  immCLSHType   = {instr[5], 1'b0};
  automatic bit        [1:0]  immCLSBType   = {instr[5], instr[6]};
  automatic bit signed [8:0]  immCBType     = {instr[12], instr[6:5], instr[2], instr[11:10], instr[4:3], 1'b0};
  automatic bit        [5:0]  immCBpType    = {instr[12], instr[6:2]};
  automatic bit signed [11:0] immCJType     = {instr[12], instr[8], instr[10:9], instr[6], instr[7], instr[2], instr[11], instr[5:3], 1'b0};
  automatic bit        [8:0]  immCSSType    = {instr[8:7], instr[12:9], 2'b0};

  // Other fields
  automatic bit [2:0]  frm = instr[14:12];
  automatic string csr = get_csr_name(instr[31:20]);

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
    CSRRWI: $sformat(decoded, "csrrwi %s, %0d, %0d", rd, csr, rs1Bits);
    CSRRSI: $sformat(decoded, "csrrsi %s, %0d, %0d", rd, csr, rs1Bits);
    CSRRCI: $sformat(decoded, "csrrci %s, %0d, %0d", rd, csr, rs1Bits);
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
    SLLI_UW:   $sformat(decoded, "slli.uw %s, %s, %0d", rd, rs1, uimm);
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
  `ifdef XLEN64
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
    // Zca Extension
    C_ADDI4SPN: if(immCIWType != '0) $sformat(decoded, "c.addi4spn %s, sp, %0d", rs2p, immCIWType);
    C_LW:                             $sformat(decoded, "c.lw %s, %0d(%s)", rs2p, immCLSType, rs1p);
    C_SW:                             $sformat(decoded, "c.sw %s, %0d(%s)", rs2p, immCLSType, rs1p);
    C_NOP: if(rdBits == '0 & immCIType == '0) $sformat(decoded, "c.nop");
    C_ADDI: if(rdBits != '0 & immCIType != '0) $sformat(decoded, "c.addi %s, %0d", rd, immCIType);
    C_LI:   if(rdBits != '0) $sformat(decoded, "c.li %s, %0d", rd, immCIType);
    C_ADDI16SP: if(rdBits == 5'd2 & immCIASPType != '0) $sformat(decoded, "c.addi16sp sp, %0d", immCIASPType);
    C_LUI: if(rdBits != '0 & rdBits != 5'd2 & immCIType != '0) $sformat(decoded, "c.lui %s, %0d", rd, immCIType);
    C_SRLI: $sformat(decoded, "c.srli %s, %0d", rs1p, immCBpType);
    C_SRAI: $sformat(decoded, "c.srai %s, %0d", rs1p, immCBpType);
    C_ANDI: $sformat(decoded, "c.andi %s, %0d", rs1p, $signed(immCBpType));
    C_SUB:  $sformat(decoded, "c.sub %s, %s", rs1p, rs2p);
    C_XOR:  $sformat(decoded, "c.xor %s, %s", rs1p, rs2p);
    C_OR:   $sformat(decoded, "c.or %s, %s", rs1p, rs2p);
    C_AND:  $sformat(decoded, "c.and %s, %s", rs1p, rs2p);
    C_J:    $sformat(decoded, "c.j %0d", immCJType);
    C_BEQZ: $sformat(decoded, "c.beqz %s, %0d", rs1p, immCBType);
    C_BNEZ: $sformat(decoded, "c.bnez %s, %0d", rs1p, immCBType);
    C_SLLI: if(rdBits != '0) $sformat(decoded, "c.slli %s, %0d", rd, immUCIType);
    C_LWSP: if(rdBits != '0) $sformat(decoded, "c.lwsp %s, %0d", rd, immCILSPType);
    C_JR:   if(rdBits != '0 & crs2Bits == '0) $sformat(decoded, "c.jr %s", rd);
    C_MV:   if(rdBits != '0 & crs2Bits != '0) $sformat(decoded, "c.mv %s, %s", rd, crs2);
    C_EBREAK: if(rdBits == '0 & crs2Bits == '0) $sformat(decoded, "c.ebreak");
    C_JALR: if(rdBits != '0 & crs2Bits == '0) $sformat(decoded, "c.jalr %s", rd);
    C_ADD:  if(rdBits != '0 & crs2Bits != '0) $sformat(decoded, "c.add %s, %s", rd, crs2);
    C_SWSP: $sformat(decoded, "c.swsp %s, %0d", crs2, immCSSType);
  `ifdef XLEN32
    C_JAL:  $sformat(decoded, "c.jal %0d", immCJType);
  `else // XLEN64
    C_LD:   $sformat(decoded, "c.ld %s, %0d(%s)", rs2p, immCLSDType, rs1p);
    C_SD:   $sformat(decoded, "c.sd %s, %0d(%s)", rs2p, immCLSDType, rs1p);
    C_ADDIW: if(rdBits != '0) $sformat(decoded, "c.addiw %s, %0d", rd, immCIType);
    C_SUBW:  $sformat(decoded, "c.subw %s, %s", rs1p, rs2p);
    C_ADDW:  $sformat(decoded, "c.addw %s, %s", rs1p, rs2p);
    C_LDSP:  if(rdBits != '0) $sformat(decoded, "c.ldsp %s, %0d", rd, immCILSPDType);
    C_SDSP:  $sformat(decoded, "c.sdsp %s, %0d", crs2, immCSSDType);
  `endif
    // Zcb Extension
    C_LBU: $sformat(decoded, "c.lbu %s, %0d(%s)", rs2p, immCLSBType, rs1p);
    C_LH:  $sformat(decoded, "c.lh %s, %0d(%s)", rs2p, immCLSHType, rs1p);
    C_LHU: $sformat(decoded, "c.lhu %s, %0d(%s)", rs2p, immCLSHType, rs1p);
    C_SB:  $sformat(decoded, "c.sb %s, %0d(%s)", rs2p, immCLSBType, rs1p);
    C_SH:  $sformat(decoded, "c.sh %s, %0d(%s)", rs2p, immCLSHType, rs1p);
    C_ZEXT_B: $sformat(decoded, "c.zext.b %s", rs1p);
    C_SEXT_B: $sformat(decoded, "c.sext.b %s", rs1p);
    C_ZEXT_H: $sformat(decoded, "c.zext.h %s", rs1p);
    C_SEXT_H: $sformat(decoded, "c.sext.h %s", rs1p);
    C_NOT:    $sformat(decoded, "c.not %s", rs1p);
    C_MUL:   $sformat(decoded, "c.mul %s, %s", rs1p, rs2p);
  `ifdef XLEN64
    C_ZEXT_W: $sformat(decoded, "c.zext.w %s", rs1p);
  `endif
    // Zcf Extension
  `ifdef XLEN32
    C_FLW:  $sformat(decoded, "c.flw %s, %0d(%s)", fs2p, immCLSType, rs1p);
    C_FSW:  $sformat(decoded, "c.fsw %s, %0d(%s)", fs2p, immCLSType, rs1p);
    C_FLWSP: $sformat(decoded, "c.flwsp %s, %0d", fd, immCILSPType);
    C_FSWSP: $sformat(decoded, "c.fswsp %s, %0d", cfs2, immCSSType);
  `endif
    // Zcd Extension
    C_FLD:  $sformat(decoded, "c.fld %s, %0d(%s)", fs2p, immCLSDType, rs1p);
    C_FSD:  $sformat(decoded, "c.fsd %s, %0d(%s)", fs2p, immCLSDType, rs1p);
    C_FLDSP: $sformat(decoded, "c.fldsp %s, %0d", fd, immCILSPDType);
    C_FSDSP: $sformat(decoded, "c.fsdsp %s, %0d", cfs2, immCSSDType);

    //V Extension
    VADD_VV:      $sformat(decoded, "vadd.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VADD_VX:      $sformat(decoded, "vadd.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VADD_VI:      $sformat(decoded, "vadd.vi %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VWADD_VV:     $sformat(decoded, "vwadd.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VWADD_VX:     $sformat(decoded, "vwadd.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VWADDU_VV:    $sformat(decoded, "vwaddu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VWADDU_VX:    $sformat(decoded, "vwaddu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VWADD_WV:     $sformat(decoded, "vwadd.wv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VWADD_WX:     $sformat(decoded, "vwadd.wx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VWADDU_WV:    $sformat(decoded, "vwaddu.wv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VWADDU_WX:    $sformat(decoded, "vwaddu.wx %s, %s, %s%s",     vd, vs2, rs1, vm);

    VSUB_VV:      $sformat(decoded, "vsub.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VSUB_VX:      $sformat(decoded, "vsub.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VWSUB_VV:     $sformat(decoded, "vwsub.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VWSUB_VX:     $sformat(decoded, "vwsub.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VWSUBU_VV:    $sformat(decoded, "vwsubu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VWSUBU_VX:    $sformat(decoded, "vwsubu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VWSUB_WV:     $sformat(decoded, "vwsub.w %s, %s, %s%s",       vd, vs2, vs1, vm);
    VWSUB_WX:     $sformat(decoded, "vwsub.w %s, %s, %s%s",       vd, vs2, rs1, vm);
    VWSUBU_WV:    $sformat(decoded, "vwsubu.w %s, %s, %s%s",      vd, vs2, vs1, vm);
    VWSUBU_WX:    $sformat(decoded, "vwsubu.w %s, %s, %s%s",      vd, vs2, rs1, vm);
    VRSUB_VX:     $sformat(decoded, "vrsub.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VRSUB_VI:     $sformat(decoded, "vrsub.vi %s, %s, %0d%s",     vd, vs2, imm5, vm);

    VZEXT_VF2:    $sformat(decoded, "vzext.vf2 %s, %s%s",         vd, vs2, vm);
    VZEXT_VF4:    $sformat(decoded, "vzext.vf4 %s, %s%s",         vd, vs2, vm);
    VZEXT_VF8:    $sformat(decoded, "vzext.vf8 %s, %s%s",         vd, vs2, vm);
    VSEXT_VF2:    $sformat(decoded, "vsext.vf2 %s, %s%s",         vd, vs2, vm);
    VSEXT_VF4:    $sformat(decoded, "vsext.vf4 %s, %s%s",         vd, vs2, vm);
    VSEXT_VF8:    $sformat(decoded, "vsext.vf8 %s, %s%s",         vd, vs2, vm);

    VADC_VVM:     $sformat(decoded, "vadc.vvm %s, %s, %s, v0",    vd, vs2, vs1);
    VADC_VXM:     $sformat(decoded, "vadc.vxm %s, %s, %s, v0",    vd, vs2, rs1);
    VADC_VIM:     $sformat(decoded, "vadc.vim %s, %s, %0d, v0",   vd, vs2, imm5);
    VSBC_VVM:     $sformat(decoded, "vsbc.vvm %s, %s, %s, v0",    vd, vs2, vs1);
    VSBC_VXM:     $sformat(decoded, "vsbc.vxm %s, %s, %s, v0",    vd, vs2, rs1);
    VMADC_VV:     $sformat(decoded, "vmadc.vv %s, %s, %s",        vd, vs2, vs1);
    VMADC_VX:     $sformat(decoded, "vmadc.vx %s, %s, %s",        vd, vs2, rs1);
    VMADC_VI:     $sformat(decoded, "vmadc.vi %s, %s, %0d",       vd, vs2, imm5);
    VMADC_VVM:    $sformat(decoded, "vmadc.vvm %s, %s, %s, v0",   vd, vs2, vs1); 
    VMADC_VXM:    $sformat(decoded, "vmadc.vxm %s, %s, %s, v0",   vd, vs2, rs1);
    VMADC_VIM:    $sformat(decoded, "vmadc.vim %s, %s, %0d, v0",  vd, vs2, imm5);
    VMSBC_VV:     $sformat(decoded, "vmsbc.vv %s, %s, %s",        vd, vs2, vs1);
    VMSBC_VX:     $sformat(decoded, "vmsbc.vx %s, %s, %s",        vd, vs2, rs1);
    VMSBC_VVM:    $sformat(decoded, "vmsbc.vvm %s, %s, %s, v0",   vd, vs2, vs1);
    VMSBC_VXM:    $sformat(decoded, "vmsbc.vxm %s, %s, %s, v0",   vd, vs2, rs1);

    VAND_VV:      $sformat(decoded, "vand.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VAND_VX:      $sformat(decoded, "vand.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VAND_VI:      $sformat(decoded, "vand.vi %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VOR_VV:       $sformat(decoded, "vor.vv %s, %s, %s%s",        vd, vs2, vs1, vm);
    VOR_VX:       $sformat(decoded, "vor.vx %s, %s, %s%s",        vd, vs2, rs1, vm);
    VOR_VI:       $sformat(decoded, "vor.vi %s, %s, %0d%s",       vd, vs2, imm5, vm);
    VXOR_VV:      $sformat(decoded, "vxor.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VXOR_VX:      $sformat(decoded, "vxor.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VXOR_VI:      $sformat(decoded, "vxor.vi %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VSLL_VV:      $sformat(decoded, "vsll.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VSLL_VX:      $sformat(decoded, "vsll.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VSLL_VI:      $sformat(decoded, "vsll.vi %s, %s, %0d%s",      vd, vs2, uimm5, vm);
    VSRL_VV:      $sformat(decoded, "vsrl.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VSRL_VX:      $sformat(decoded, "vsrl.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VSRL_VI:      $sformat(decoded, "vsrl.vi %s, %s, %0d%s",      vd, vs2, uimm5, vm);
    VNSRL_WV:     $sformat(decoded, "vnsrl.wv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VNSRL_WX:     $sformat(decoded, "vnsrl.wx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VNSRL_WI:     $sformat(decoded, "vnsrl.wi %s, %s, %0d%s",     vd, vs2, uimm5, vm);
    VSRA_VV:      $sformat(decoded, "vsra.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VSRA_VX:      $sformat(decoded, "vsra.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VSRA_VI:      $sformat(decoded, "vsra.vi %s, %s, %0d%s",      vd, vs2, uimm5, vm);
    VNSRA_WV:     $sformat(decoded, "vnsra.wv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VNSRA_WX:     $sformat(decoded, "vnsra.wx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VNSRA_WI:     $sformat(decoded, "vnsra.wi %s, %s, %0d%s",     vd, vs2, uimm5, vm);

    VMSEQ_VV:     $sformat(decoded, "vmseq.v %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMSEQ_VX:     $sformat(decoded, "vmseq.v %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMSEQ_VI:     $sformat(decoded, "vmseq.v %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VMSNE_VV:     $sformat(decoded, "vmsne.v %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMSNE_VX:     $sformat(decoded, "vmsne.v %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMSNE_VI:     $sformat(decoded, "vmsne.v %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VMSLT_VV:     $sformat(decoded, "vmslt.v %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMSLT_VX:     $sformat(decoded, "vmslt.v %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMSLTU_VV:    $sformat(decoded, "vmsltu.v %s, %s, %s%s",      vd, vs2, vs1, vm);
    VMSLTU_VX:    $sformat(decoded, "vmsltu.v %s, %s, %s%s",      vd, vs2, rs1, vm);
    VMSLE_VV:     $sformat(decoded, "vmsle.v %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMSLE_VX:     $sformat(decoded, "vmsle.v %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMSLE_VI:     $sformat(decoded, "vmsle.v %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VMSLEU_VV:    $sformat(decoded, "vmsleu.v %s, %s, %s%s",      vd, vs2, vs1, vm);
    VMSLEU_VX:    $sformat(decoded, "vmsleu.v %s, %s, %s%s",      vd, vs2, rs1, vm);
    VMSLEU_VI:    $sformat(decoded, "vmsleu.v %s, %s, %0d%s",     vd, vs2, imm5, vm);
    VMSGT_VX:     $sformat(decoded, "vmsgt.v %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMSGT_VI:     $sformat(decoded, "vmsgt.v %s, %s, %0d%s",      vd, vs2, imm5, vm);
    VMSGTU_VX:    $sformat(decoded, "vmsgtu.v %s, %s, %s%s",      vd, vs2, rs1, vm);
    VMSGTU_VI:    $sformat(decoded, "vmsgtu.v %s, %s, %0d%s",     vd, vs2, imm5, vm);

    VMIN_VV:      $sformat(decoded, "vmin.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMIN_VX:      $sformat(decoded, "vmin.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMINU_VV:     $sformat(decoded, "vminu.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VMINU_VX:     $sformat(decoded, "vminu.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VMAX_VV:      $sformat(decoded, "vmax.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMAX_VX:      $sformat(decoded, "vmax.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMAXU_VV:     $sformat(decoded, "vmaxu.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VMAXU_VX:     $sformat(decoded, "vmaxu.vx %s, %s, %s%s",      vd, vs2, rs1, vm);

    VMUL_VV:      $sformat(decoded, "vmul.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VMUL_VX:      $sformat(decoded, "vmul.vv %s, %s, %s%s",       vd, vs2, rs1, vm);
    VMULH_VV      $sformat(decoded, "vmulh.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VMULH_VX:     $sformat(decoded, "vmulh.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VMULHU_VV:    $sformat(decoded, "vmulhu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VMULHU_VX:    $sformat(decoded, "vmulhu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VMULHSU_VV:   $sformat(decoded, "vmulhsu.vv %s, %s, %s%s",    vd, vs2, vs1, vm);
    VMULHSU_VX:   $sformat(decoded, "vmulhsu.vx %s, %s, %s%s",    vd, vs2, rs1, vm);
    VWMUL_VV:     $sformat(decoded, "vwmul.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VWMUL_VX:     $sformat(decoded, "vwmul.vv %s, %s, %s%s",      vd, vs2, rs1, vm);
    VWMULU_VV:    $sformat(decoded, "vwmulu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VWMULU_VX:    $sformat(decoded, "vwmulu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VWMULSU_VV:   $sformat(decoded, "vwmulsu.vv %s, %s, %s%s",    vd, vs2, vs1, vm);
    VWMULSU_VX:   $sformat(decoded, "vwmulsu.vx %s, %s, %s%s",    vd, vs2, rs1, vm);
    VDIV_VV:      $sformat(decoded, "vdiv.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VDIV_VX:      $sformat(decoded, "vdiv.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VDIVU_VV:     $sformat(decoded, "vdivu.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VDIVU_VX:     $sformat(decoded, "vdivu.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VREM_VV:      $sformat(decoded, "vrem.vv %s, %s, %s%s",       vd, vs2, vs1, vm);
    VREM_VX:      $sformat(decoded, "vrem.vx %s, %s, %s%s",       vd, vs2, rs1, vm);
    VREMU_VV:     $sformat(decoded, "vremu.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VREMU_VX:     $sformat(decoded, "vremu.vx %s, %s, %s%s",      vd, vs2, rs1, vm);

    VMACC_VV:     $sformat(decoded, "vmacc.vv %s, %s, %s%s",      vd, vs1, vs2, vm);
    VMACC_VX:     $sformat(decoded, "vmacc.vx %s, %s, %s%s",      vd, rs1, vs2, vm);
    VNMSAC_VV:    $sformat(decoded, "vnmsac.vv %s, %s, %s%s",     vd, vs1, vs2, vm);
    VNMSAC_VX:    $sformat(decoded, "vnmsac.vx %s, %s, %s%s",     vd, rs1, vs2, vm);
    VMADD_VV:     $sformat(decoded, "vmadd.vv %s, %s, %s%s",      vd, vs1, vs2, vm);
    VMADD_VX:     $sformat(decoded, "vmadd.vx %s, %s, %s%s",      vd, rs1, vs2, vm);
    VNMSUB_VV:    $sformat(decoded, "vnmsub.vv %s, %s, %s%s",     vd, vs1, vs2, vm);
    VNMSUB_VX:    $sformat(decoded, "vnmsub.vx %s, %s, %s%s",     vd, rs1, vs2, vm);
    VWMACC_VV:    $sformat(decoded, "vwmacc.vv %s, %s, %s%s",     vd, vs1, vs2, vm);
    VWMACC_VX:    $sformat(decoded, "vwmacc.vv %s, %s, %s%s",     vd, rs1, vs2, vm);
    VWMACCU_VV:   $sformat(decoded, "vwmaccu.vv %s, %s, %s%s",    vd, vs1, vs2, vm);
    VWMACCU_VX:   $sformat(decoded, "vwmaccu.vx %s, %s, %s%s",    vd, rs1, vs2, vm);
    VWMACCSU_VV:  $sformat(decoded, "vwmaccsu.vv %s, %s, %s%s",   vd, vs1, vs2, vm);
    VWMACCSU_VX:  $sformat(decoded, "vwmaccsu.vx %s, %s, %s%s",   vd, rs1, vs2, vm);
    VWMACCUS_VX:  $sformat(decoded, "vwmaccus.vx %s, %s, %s%s",   vd, rs1, vs2, vm);

    VMERGE_VVM:   $sformat(decoded, "vmerge.vvm %s, %s, %s, v0",  vd, vs2, vs1);
    VMERGE_VXM:   $sformat(decoded, "vmerge.vxm %s, %s, %s, v0",  vd, vs2, rs1);
    VMERGE_VIM:   $sformat(decoded, "vmerge.vim %s, %s, %0d, v0", vd, vs2, imm5);
    VMV_V_V:      $sformat(decoded, "vmv.v.v %s, %s",             vd, vs1);
    VMV_V_X:      $sformat(decoded, "vmv.v.x %s, %s",             vd, rs1);
    VMV_V_I:      $sformat(decoded, "vmv.v.i %s, %0d",            vd, imm5);

    VSADD_VV:     $sformat(decoded, "vsadd.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VSADD_VX:     $sformat(decoded, "vsadd.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VSADD_VI:     $sformat(decoded, "vsadd.vi %s, %s, %s%s",      vd, vs2, imm5, vm);
    VSADDU_VV:    $sformat(decoded, "vsaddu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VSADDU_VX:    $sformat(decoded, "vsaddu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VSADDU_VI:    $sformat(decoded, "vsaddu.vi %s, %s, %s%s",     vd, vs2, imm5, vm);
    VSSUB_VV:     $sformat(decoded, "vssub.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VSSUB_VX:     $sformat(decoded, "vssub.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VSSUBU_VV:    $sformat(decoded, "vssubu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VSSUBU_VX:    $sformat(decoded, "vssubu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VAADD_VV:     $sformat(decoded, "vaadd.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VAADD_VX:     $sformat(decoded, "vaadd.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VAADDU_VV:    $sformat(decoded, "vaaddu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VAADDU_VX:    $sformat(decoded, "vaaddu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VASUB_VV:     $sformat(decoded, "vasub.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VASUB_VX:     $sformat(decoded, "vasub.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VASUBU_VV:    $sformat(decoded, "vasubu.vv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VASUBU_VX:    $sformat(decoded, "vasubu.vx %s, %s, %s%s",     vd, vs2, rs1, vm);

    VSMUL_VV:     $sformat(decoded, "vsmul.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VSMUL_VX:     $sformat(decoded, "vsmul.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VSSRL_VV:     $sformat(decoded, "vssrl.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VSSRL_VX:     $sformat(decoded, "vssrl.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VSSRL_VI:     $sformat(decoded, "vssrl.vi %s, %s, %s%s",      vd, vs2, uimm5, vm);
    VSSRA_VV:     $sformat(decoded, "vssra.vv %s, %s, %s%s",      vd, vs2, vs1, vm);
    VSSRA_VX:     $sformat(decoded, "vssra.vx %s, %s, %s%s",      vd, vs2, rs1, vm);
    VSSRA_VI:     $sformat(decoded, "vssra.vi %s, %s, %s%s",      vd, vs2, uimm5, vm);
    VNCLIP_WV:    $sformat(decoded, "vnclip.wv %s, %s, %s%s",     vd, vs2, vs1, vm);
    VNCLIP_WX:    $sformat(decoded, "vnclip.wx %s, %s, %s%s",     vd, vs2, rs1, vm);
    VNCLIP_WI:    $sformat(decoded, "vnclip.wi %s, %s, %s%s",     vd, vs2, uimm5, vm);
    VNCLIPU_WV:   $sformat(decoded, "vnclipu.wv %s, %s, %s%s",    vd, vs2, vs1, vm);
    VNCLIPU_WX:   $sformat(decoded, "vnclipu.wx %s, %s, %s%s",    vd, vs2, rs1, vm);
    VNCLIPU_WI:   $sformat(decoded, "vnclipu.wi %s, %s, %s%s",    vd, vs2, uimm5, vm);

    VREDSUM_VS:   $sformat(decoded, "vredsum.vs %s, %s, %s%s",    vd, vs2, vs1, vm);
    VWREDSUM_VS:  $sformat(decoded, "vwredsum.vs_ %s, %s, %s%s",  vd, vs2, vs1, vm);
    VWREDSUMU_VS: $sformat(decoded, "vwredsumu.vs_ %s, %s, %s%s", vd, vs2, vs1, vm);
    VREDMAX_VS:   $sformat(decoded, "vredmax.vs %s, %s, %s%s",    vd, vs2, vs1, vm);
    VREDMAXU_VS:  $sformat(decoded, "vredmaxu.vs %s, %s, %s%s",   vd, vs2, vs1, vm);
    VREDMIN_VS:   $sformat(decoded, "vredmin.vs %s, %s, %s%s",    vd, vs2, vs1, vm);
    VREDMINU_VS:  $sformat(decoded, "vredminu.vs %s, %s, %s%s",   vd, vs2, vs1, vm);
    VREDAND_VS:   $sformat(decoded, "vredand.vs %s, %s, %s%s",    vd, vs2, vs1, vm);
    VREDOR_VS:    $sformat(decoded, "vredor.vs %s, %s, %s%s",     vd, vs2, vs1, vm);
    VREDXOR_VS:   $sformat(decoded, "vredxor.vs %s, %s, %s%s",    vd, vs2, vs1, vm);

    VMAND_MM      $sformat(decoded, "vmand.mm %s, %s, %s",        vd, vs2, vs1);
    VMNAND_MM:    $sformat(decoded, "vmnand.mm %s, %s, %s",       vd, vs2, vs1);
    VMANDN_MM:    $sformat(decoded, "vmandn.mm %s, %s, %s",       vd, vs2, vs1);
    VMOR_MM:      $sformat(decoded, "vmor.mm %s, %s, %s",         vd, vs2, vs1);
    VMNOR_MM:     $sformat(decoded, "vmnor.mm %s, %s, %s",        vd, vs2, vs1);
    VMORN_MM:     $sformat(decoded, "vmorn.mm %s, %s, %s",        vd, vs2, vs1);
    VMXOR_MM:     $sformat(decoded, "vmxor.mm %s, %s, %s",        vd, vs2, vs1);
    VMXNOR_MM:    $sformat(decoded, "vmxnor.mm %s, %s, %s",       vd, vs2, vs1);

    VCPOP_M:      $sformat(decoded, "vcpop.m %s, %s%s",           rd, vs2, vm);
    VFIRST_M:     $sformat(decoded, "vfirst.m %s, %s%s",          rd, vs2, vm);
    VMSBF_M:      $sformat(decoded, "vmsbf.m %s, %s%s",           vd, vs2, vm);
    VMSIF_M:      $sformat(decoded, "vmsif.m %s, %s%s",           vd, vs2, vm);
    VMSOF_M       $sformat(decoded, "vmsof.m %s, %s%s",           vd, vs2, vm);
    VIOTA_M:      $sformat(decoded, "viota.m %s, %s%s",           vd, vs2, vm);
    VID_V:        $sformat(decoded, "vid.v %s%s",                 vd, vm);

    VMV_X_S:      $sformat(decoded, "vmv.x.s %s, %s",             rd, vs2);
    VMV_S_X:      $sformat(decoded, "vmv.s.x %s, %s",             vd, rs1);

    VSLIDEUP_VX:  $sformat(decoded, "vslideup.vx %s, %s, %s%s",   vd, vs2, rs1, vm);
    VSLIDEUP_VI:  $sformat(decoded, "vslideup.vi %s, %s, %s%s",   vd, vs2, uimm5, vm);
    VSLIDEDOWN_VX:  $sformat(decoded, "vslidedown.vx %s, %s, %s%s",   vd, vs2, rs1, vm);
    VSLIDEDOWN_VI:  $sformat(decoded, "vslidedown.vi %s, %s, %s%s",   vd, vs2, uimm5, vm);
    VSLIDE1UP_VX:   $sformat(decoded, "vslide1up.vx %s, %s, %s%s",    vd, vs2, rs1, vm);
    VSLIDE1DOWN_VX: $sformat(decoded, "vslide1down.vx %s, %s, %s%s",  vd, vs2, rs1, vm);
    VRGATHER_VV:  $sformat(decoded, "vrgather.vv %s, %s, %s%s",   vd, vs2, vs1, vm);
    VRGATHER_VX:  $sformat(decoded, "vrgather.vx %s, %s, %s%s",   vd, vs2, rs1, vm);
    VRGATHER_VI   $sformat(decoded, "vrgather.vi %s, %s, %s%s",   vd, vs2, uimm5, vm);
    VCOMPRESS_VM: $sformat(decoded, "vcompress.vm %s, %s, %s",    vd, vs2, vs1);

    VMV1R_V:      $sformat(decoded, "vmv1r.v %s, %s",             vd, vs2);
    VMV2R_V:      $sformat(decoded, "vmv2r.v %s, %s",             vd, vs2);
    VMV4R_V:      $sformat(decoded, "vmv4r.v %s, %s",             vd, vs2);
    VMV8R_V:      $sformat(decoded, "vmv8r.v %s, %s",             vd, vs2);

    VRGATHEREI16_VV:  $sformat(decoded, "vrgatherei16.vv %s, %s, %s%s",   vd, vs2, vs1, vm);


// vle<eew>.v
// vle<eew>ff.v
// vlse<eew>.v
// vluxei<eew>.v
// vloxei<eew>.v
// vlseg<nf>e<eew>.v
// vlseg<nf>e<eew>ff.v
// vlsseg<nf>e<eew>.v
// vluxseg<nf>ei<eew>.v
// vloxseg<nf>ei<eew>.v
// vl<nf>re<eew>.v    
// vlm.v 

// vse<eew>.v
// vse<eew>.v
// vsuxei<eew>.v
// vsoxei<eew>.v
// vsseg<nf>e<eew>.v
// vssseg<nf>e<eew>.v
// vsuxseg<nf>ei<eew>.v
// vsoxseg<nf>ei<eew>.v
// vs<nf>r.v 
// vsm.v 

// vsetvli
// vsetivli
// vsetvl







    default: decoded = "illegal";
  endcase

  // Return possibly truncated instruction and decoded assembly
  if (compressedInstruction)
    return $sformatf("%04h %s", instr[15:0], decoded);
  else
    return $sformatf("%08h %s", instr[31:0], decoded);

endfunction
