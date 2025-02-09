`include "riscv_instr.svh"

module dissassembler (
  input  logic [31:0] instr,
  output string       decoded);

  import riscv_instr::*;

  bit signed [11:0] immIType;
  bit signed [11:0] immSType;
  bit signed [12:0] immBType;
  bit signed [19:0] immUType;
  bit signed [20:0] immJType;
  bit [5:0]  uimm;
  bit [1:0]  bs;

  bit [4:0] crImm;

  bit [4:0]  rs1, rs2, rs3, rd, cr2;
  bit [2:0]  rs1p, rs2p;

  // Immediate values
  assign immIType = (instr[31:20]);
  assign immSType = ({instr[31:25], instr[11:7]});
  assign immBType = ({instr[31], instr[7], instr[30:25], instr[11:8], 1'b0});
  assign immUType = {instr[31:12]};
  assign immJType = ({instr[31], instr[19:12], instr[20], instr[30:21], 1'b0});
  assign uimm = instr[25:20];
  assign bs = instr[31:30];

  // int immIType_int;
  // assign immIType_int = $signed({instr[31], instr[31:20]});
  // int immSType_int = $signed({instr[31], instr[31:25], instr[11:7]});
  // int immBType_int = $signed({instr[31], instr[7], instr[30:25], instr[11:8], 1'b0});
  // int immUType_int;
  // assign immUType_int = $signed({instr[31:12], 12'b0});
  // int immJType_int = $signed({instr[31], instr[19:12], instr[20], instr[30:21], 1'b0});

  
  // always_comb begin
  //   $display("I Immediate - hex: 0x%h, dec: %d", immIType, immIType);
  //   $display("I Immediate Int - hex: 0x%h, dec: %d", immIType_int, immIType_int);
  //   $display("S Immediate - hex: 0x%h, dec: %d", immSType, immSType);
  //   $display("S Immediate Int - hex: 0x%h, dec: %d", immSType_int, immSType_int);
  //   $display("B Immediate - hex: 0x%h, dec: %d", immBType, immBType);
  //   $display("B Immediate Int - hex: 0x%h, dec: %d", immBType_int, immBType_int);
  //   $display("U Immediate - hex: 0x%h, dec: %d", immUType, immUType);
  //   $display("U Immediate Int - hex: 0x%h, dec: %d", immUType_int, immUType_int);
  //   $display("J Immediate - hex: 0x%h, dec: %d", immJType, immJType);
  //   $display("J Immediate Int - hex: 0x%h, dec: %d", immJType_int, immJType_int);
  // end

  // Registers (also used for floating point)
  assign rs1 = instr[19:15];
  assign rs2 = instr[24:20];
  assign rs3 = instr[31:27];
  assign rd  = instr[11:7];
  assign cr2 = instr[6:2];
  assign rs1p = instr[9:7];
  assign rs2p = instr[4:2];

  /* verilator lint_off CASEINCOMPLETE */
  always_comb begin
    decoded = "illegal";
    casez (instr)
      // Base Instructions
      ADD:     $sformat(decoded, "add x%0d, x%0d, x%0d", rd, rs1, rs2);
      SUB:     $sformat(decoded, "sub x%0d, x%0d, x%0d", rd, rs1, rs2);
      AND:     $sformat(decoded, "and x%0d, x%0d, x%0d", rd, rs1, rs2);
      OR:      $sformat(decoded, "or x%0d, x%0d, x%0d", rd, rs1, rs2);
      XOR:     $sformat(decoded, "xor x%0d, x%0d, x%0d", rd, rs1, rs2);
      SLT:     $sformat(decoded, "slt x%0d, x%0d, x%0d", rd, rs1, rs2);
      SLTU:    $sformat(decoded, "sltu x%0d, x%0d, x%0d", rd, rs1, rs2);
      SLL:     $sformat(decoded, "sll x%0d, x%0d, x%0d", rd, rs1, rs2);
      SRL:     $sformat(decoded, "srl x%0d, x%0d, x%0d", rd, rs1, rs2);
      SRA:     $sformat(decoded, "sra x%0d, x%0d, x%0d", rd, rs1, rs2);
      ADDI:    $sformat(decoded, "addi x%0d, x%0d, %0d", rd, rs1, immIType);
      ANDI:    $sformat(decoded, "andi x%0d, x%0d, %0d", rd, rs1, immIType);
      ORI:     $sformat(decoded, "ori x%0d, x%0d, %0d", rd, rs1, immIType);
      XORI:    $sformat(decoded, "xori x%0d, x%0d, %0d", rd, rs1, immIType);
      SLTI:    $sformat(decoded, "slti x%0d, x%0d, %0d", rd, rs1, immIType);
      SLTIU:   $sformat(decoded, "sltiu x%0d, x%0d, %0d", rd, rs1, immIType);
    `ifdef XLEN32
      SLLI_RV32: $sformat(decoded, "slli x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      SRAI_RV32: $sformat(decoded, "srai x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      SRLI_RV32: $sformat(decoded, "srli x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
    `else
      SLLI:      $sformat(decoded, "slli x%0d, x%0d, %0d", rd, rs1, uimm);
      SRAI:      $sformat(decoded, "srai x%0d, x%0d, %0d", rd, rs1, uimm);
      SRLI:      $sformat(decoded, "srli x%0d, x%0d, %0d", rd, rs1, uimm);
    `endif
      AUIPC:   $sformat(decoded, "auipc x%0d, %0d", rd, immUType);
      LUI:     $sformat(decoded, "lui x%0d, %0d", rd, immUType);
      BEQ:     $sformat(decoded, "beq x%0d, x%0d, %0d", rs1, rs2, immBType);
      BGE:     $sformat(decoded, "bge x%0d, x%0d, %0d", rs1, rs2, immBType);
      BGEU:    $sformat(decoded, "bgeu x%0d, x%0d, %0d", rs1, rs2, immBType);
      BLT:     $sformat(decoded, "blt x%0d, x%0d, %0d", rs1, rs2, immBType);
      BLTU:    $sformat(decoded, "bltu x%0d, x%0d, %0d", rs1, rs2, immBType);
      BNE:     $sformat(decoded, "bne x%0d, x%0d, %0d", rs1, rs2, immBType);
      EBREAK:  $sformat(decoded, "ebreak");
      ECALL:   $sformat(decoded, "ecall");
      MRET:    $sformat(decoded, "mret");
      WFI:     $sformat(decoded, "wfi");
      FENCE:   $sformat(decoded, "fence");
      JAL:     $sformat(decoded, "jal x%0d, %0h", rd, immJType);
      JALR:    $sformat(decoded, "jalr x%0d, %0d(x%0d)", rd, immIType, rs1);
      LB:      $sformat(decoded, "lb x%0d, %0d(x%0d)", rd, immIType, rs1);
      LBU:     $sformat(decoded, "lbu x%0d, %0d(x%0d)", rd, immIType, rs1);
      LH:      $sformat(decoded, "lh x%0d, %0d(x%0d)", rd, immIType, rs1);
      LHU:     $sformat(decoded, "lhu x%0d, %0d(x%0d)", rd, immIType, rs1);
      LW:      $sformat(decoded, "lw x%0d, %0d(x%0d)", rd, immIType, rs1);
      SB:      $sformat(decoded, "sb x%0d, %0d(x%0d)", rs2, immSType, rs1);
      SH:      $sformat(decoded, "sh x%0d, %0d(x%0d)", rs2, immSType, rs1);
      SW:      $sformat(decoded, "sw x%0d, %0d(x%0d)", rs2, immSType, rs1);
    `ifdef XLEN64 // Extra RV64 Base Instructions
      ADDIW: $sformat(decoded, "addiw x%0d, x%0d, %0d", rd, rs1, immIType);
      ADDW:  $sformat(decoded, "addw x%0d, x%0d, x%0d", rd, rs1, rs2);
      LD:    $sformat(decoded, "ld x%0d, %0d(x%0d)", rd, immIType, rs1);
      LWU:   $sformat(decoded, "lwu x%0d, %0d(x%0d)", rd, immIType, rs1);
      SD:    $sformat(decoded, "sd x%0d, %0d(x%0d)", rs2, immSType, rs1);
      SLLIW: $sformat(decoded, "slliw x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      SLLW:  $sformat(decoded, "sllw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SRAIW: $sformat(decoded, "sraiw x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      SRAW:  $sformat(decoded, "sraw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SRLIW: $sformat(decoded, "srliw x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      SRLW:  $sformat(decoded, "srlw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SUBW:  $sformat(decoded, "subw x%0d, x%0d, x%0d", rd, rs1, rs2);
    `endif
      // Supervisor Mode Instructions
      SFENCE_VMA: $sformat(decoded, "sfence.vma x%0d, x%0d", rs1, rs2);
      SRET:       $sformat(decoded, "sret");
      // Zicboz Extension
      CBO_ZERO: $sformat(decoded, "cbo.zero (x%0d)", rs1);
      // Zicbom Extension
      CBO_CLEAN: $sformat(decoded, "cbo.clean (x%0d)", rs1);
      CBO_FLUSH: $sformat(decoded, "cbo.flush (x%0d)", rs1);
      CBO_INVAL: $sformat(decoded, "cbo.inval (x%0d)", rs1);
      // Zicbop Extension
      PREFETCH_I: $sformat(decoded, "prefetch.i %0d(x%0d)", immIType, rs1);
      PREFETCH_R: $sformat(decoded, "prefetch.r %0d(x%0d)", immIType, rs1);
      PREFETCH_W: $sformat(decoded, "prefetch.w %0d(x%0d)", immIType, rs1);
      // Zicond Extension
      CZERO_EQZ: $sformat(decoded, "czero.eqz x%0d, x%0d, x%0d", rd, rs1, rs2);
      CZERO_NEZ: $sformat(decoded, "czero.nez x%0d, x%0d, x%0d", rd, rs1, rs2);
      // Zicsr Extension
      CSRRW:  $sformat(decoded, "csrrw x%0d, %0d, x%0d", rd, immIType, rs1);
      CSRRS:  $sformat(decoded, "csrrs x%0d, %0d, x%0d", rd, immIType, rs1);
      CSRRC:  $sformat(decoded, "csrrc x%0d, %0d, x%0d", rd, immIType, rs1);
      CSRRWI: $sformat(decoded, "csrrwi x%0d, %0d, %0d", rd, immIType, rs1);
      CSRRSI: $sformat(decoded, "csrrsi x%0d, %0d, %0d", rd, immIType, rs1);
      CSRRCI: $sformat(decoded, "csrrci x%0d, %0d, %0d", rd, immIType, rs1);
      // Zifencei Extension
      FENCE_I: $sformat(decoded, "fence.i");
      // M Extension
      MUL:    $sformat(decoded, "mul x%0d, x%0d, x%0d", rd, rs1, rs2);
      MULH:   $sformat(decoded, "mulh x%0d, x%0d, x%0d", rd, rs1, rs2);
      MULHSU: $sformat(decoded, "mulhsu x%0d, x%0d, x%0d", rd, rs1, rs2);
      MULHU:  $sformat(decoded, "mulhu x%0d, x%0d, x%0d", rd, rs1, rs2);
      DIV:    $sformat(decoded, "div x%0d, x%0d, x%0d", rd, rs1, rs2);
      DIVU:   $sformat(decoded, "divu x%0d, x%0d, x%0d", rd, rs1, rs2);
      REM:    $sformat(decoded, "rem x%0d, x%0d, x%0d", rd, rs1, rs2);
      REMU:   $sformat(decoded, "remu x%0d, x%0d, x%0d", rd, rs1, rs2);
    `ifdef XLEN64
      MULW:  $sformat(decoded, "mulw x%0d, x%0d, x%0d", rd, rs1, rs2);
      DIVW:  $sformat(decoded, "divw x%0d, x%0d, x%0d", rd, rs1, rs2);
      DIVUW: $sformat(decoded, "divuw x%0d, x%0d, x%0d", rd, rs1, rs2);
      REMW:  $sformat(decoded, "remw x%0d, x%0d, x%0d", rd, rs1, rs2);
      REMUW: $sformat(decoded, "remuw x%0d, x%0d, x%0d", rd, rs1, rs2);
    `endif
      // Zaamo Extension
      AMOADD_W:  $sformat(decoded, "amoadd.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOAND_W:  $sformat(decoded, "amoand.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMAX_W:  $sformat(decoded, "amomax.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMAXU_W: $sformat(decoded, "amomaxu.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMIN_W:  $sformat(decoded, "amomin.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMINU_W: $sformat(decoded, "amominu.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOOR_W:   $sformat(decoded, "amoor.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOSWAP_W: $sformat(decoded, "amoswap.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOXOR_W:  $sformat(decoded, "amoxor.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
    `ifdef XLEN64
      AMOADD_D:  $sformat(decoded, "amoadd.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOAND_D:  $sformat(decoded, "amoand.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMAX_D:  $sformat(decoded, "amomax.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMAXU_D: $sformat(decoded, "amomaxu.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMIN_D:  $sformat(decoded, "amomin.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOMINU_D: $sformat(decoded, "amominu.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOOR_D:   $sformat(decoded, "amoor.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOSWAP_D: $sformat(decoded, "amoswap.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
      AMOXOR_D:  $sformat(decoded, "amoxor.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
    `endif
      // Zalrsc Extension
      LR_W:      $sformat(decoded, "lr.w x%0d, (x%0d)", rd, rs1);
      SC_W:      $sformat(decoded, "sc.w x%0d, x%0d, (x%0d)", rd, rs2, rs1);
    `ifdef XLEN64
      LR_D:      $sformat(decoded, "lr.d x%0d, (x%0d)", rd, rs1);
      SC_D:      $sformat(decoded, "sc.d x%0d, x%0d, (x%0d)", rd, rs2, rs1);
    `endif
      // F Extension
      FADD_S:    $sformat(decoded, "fadd.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FCLASS_S:  $sformat(decoded, "fclass.s x%0d, f%0d", rd, rs1);
      FCVT_S_W:  $sformat(decoded, "fcvt.s.w f%0d, x%0d", rd, rs1);
      FCVT_S_WU: $sformat(decoded, "fcvt.s.wu f%0d, x%0d", rd, rs1);
      FCVT_W_S:  $sformat(decoded, "fcvt.w.s x%0d, f%0d", rd, rs1);
      FCVT_WU_S: $sformat(decoded, "fcvt.wu.s x%0d, f%0d", rd, rs1);
      FDIV_S:    $sformat(decoded, "fdiv.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FEQ_S:     $sformat(decoded, "feq.s x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLE_S:     $sformat(decoded, "fle.s x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLT_S:     $sformat(decoded, "flt.s x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLW:       $sformat(decoded, "flw f%0d, %0d(x%0d)", rd, immIType, rs1);
      FMADD_S:   $sformat(decoded, "fmadd.s f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMAX_S:    $sformat(decoded, "fmax.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMIN_S:    $sformat(decoded, "fmin.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMSUB_S:   $sformat(decoded, "fmsub.s f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMUL_S:    $sformat(decoded, "fmul.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMV_W_X:   $sformat(decoded, "fmv.w.x f%0d, x%0d", rd, rs1);
      FMV_X_W:   $sformat(decoded, "fmv.x.w x%0d, f%0d", rd, rs1);
      FNMADD_S:  $sformat(decoded, "fnmadd.s f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FNMSUB_S:  $sformat(decoded, "fnmsub.s f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FSGNJ_S:   $sformat(decoded, "fsgnj.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJN_S:  $sformat(decoded, "fsgnjn.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJX_S:  $sformat(decoded, "fsgnjx.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSQRT_S:   $sformat(decoded, "fsqrt.s f%0d, f%0d", rd, rs1);
      FSUB_S:    $sformat(decoded, "fsub.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSW:       $sformat(decoded, "fsw f%0d, %0d(x%0d)", rs2, immSType, rs1);
    `ifdef XLEN64
      FCVT_L_S:  $sformat(decoded, "fcvt.l.s x%0d, f%0d", rd, rs1);
      FCVT_LU_S: $sformat(decoded, "fcvt.lu.s x%0d, f%0d", rd, rs1);
      FCVT_S_L:  $sformat(decoded, "fcvt.s.l f%0d, x%0d", rd, rs1);
      FCVT_S_LU: $sformat(decoded, "fcvt.s.lu f%0d, x%0d", rd, rs1);
    `endif
      // D Extension
      FADD_D:    $sformat(decoded, "fadd.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FCLASS_D:  $sformat(decoded, "fclass.d x%0d, f%0d", rd, rs1);
      FCVT_D_S:  $sformat(decoded, "fcvt.d.s f%0d, f%0d", rd, rs1);
      FCVT_D_W:  $sformat(decoded, "fcvt.d.w f%0d, x%0d", rd, rs1);
      FCVT_D_WU: $sformat(decoded, "fcvt.d.wu f%0d, x%0d", rd, rs1);
      FCVT_S_D:  $sformat(decoded, "fcvt.s.d f%0d, f%0d", rd, rs1);
      FCVT_W_D:  $sformat(decoded, "fcvt.w.d x%0d, f%0d", rd, rs1);
      FCVT_WU_D: $sformat(decoded, "fcvt.wu.d x%0d, f%0d", rd, rs1);
      FDIV_D:    $sformat(decoded, "fdiv.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FEQ_D:     $sformat(decoded, "feq.d x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLD:       $sformat(decoded, "fld f%0d, %0d(x%0d)", rd, immIType, rs1);
      FLE_D:     $sformat(decoded, "fle.d x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLT_D:     $sformat(decoded, "flt.d x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMADD_D:   $sformat(decoded, "fmadd.d f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMAX_D:    $sformat(decoded, "fmax.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMIN_D:    $sformat(decoded, "fmin.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMSUB_D:   $sformat(decoded, "fmsub.d f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMUL_D:    $sformat(decoded, "fmul.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FNMADD_D:  $sformat(decoded, "fnmadd.d f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FNMSUB_D:  $sformat(decoded, "fnmsub.d f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FSD:       $sformat(decoded, "fsd f%0d, %0d(x%0d)", rs2, immSType, rs1);
      FSGNJ_D:   $sformat(decoded, "fsgnj.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJN_D:  $sformat(decoded, "fsgnjn.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJX_D:  $sformat(decoded, "fsgnjx.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSQRT_D:   $sformat(decoded, "fsqrt.d f%0d, f%0d", rd, rs1);
      FSUB_D:    $sformat(decoded, "fsub.d f%0d, f%0d, f%0d", rd, rs1, rs2);
    `ifdef XLEN64
      FCVT_D_L:  $sformat(decoded, "fcvt.d.l f%0d, x%0d", rd, rs1);
      FCVT_D_LU: $sformat(decoded, "fcvt.d.lu f%0d, x%0d", rd, rs1);
      FCVT_L_D:  $sformat(decoded, "fcvt.l.d x%0d, f%0d", rd, rs1);
      FCVT_LU_D: $sformat(decoded, "fcvt.lu.d x%0d, f%0d", rd, rs1);
      FMV_D_X:   $sformat(decoded, "fmv.d.x f%0d, x%0d", rd, rs1);
      FMV_X_D:   $sformat(decoded, "fmv.x.d x%0d, f%0d", rd, rs1);
    `endif
      // Q Extension
      FADD_Q:    $sformat(decoded, "fadd.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FCLASS_Q:  $sformat(decoded, "fclass.q x%0d, f%0d", rd, rs1);
      FCVT_D_Q:  $sformat(decoded, "fcvt.d.q f%0d, f%0d", rd, rs1);
      FCVT_Q_D:  $sformat(decoded, "fcvt.q.d f%0d, f%0d", rd, rs1);
      FCVT_Q_S:  $sformat(decoded, "fcvt.q.s f%0d, f%0d", rd, rs1);
      FCVT_Q_W:  $sformat(decoded, "fcvt.q.w f%0d, x%0d", rd, rs1);
      FCVT_Q_WU: $sformat(decoded, "fcvt.q.wu f%0d, x%0d", rd, rs1);
      FCVT_S_Q:  $sformat(decoded, "fcvt.s.q f%0d, f%0d", rd, rs1);
      FCVT_W_Q:  $sformat(decoded, "fcvt.w.q x%0d, f%0d", rd, rs1);
      FCVT_WU_Q: $sformat(decoded, "fcvt.wu.q x%0d, f%0d", rd, rs1);
      FDIV_Q:    $sformat(decoded, "fdiv.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FEQ_Q:     $sformat(decoded, "feq.q x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLE_Q:     $sformat(decoded, "fle.q x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLQ:       $sformat(decoded, "flq f%0d, %0d(x%0d)", rd, immIType, rs1);
      FLT_Q:     $sformat(decoded, "flt.q x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMADD_Q:   $sformat(decoded, "fmadd.q f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMAX_Q:    $sformat(decoded, "fmax.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMIN_Q:    $sformat(decoded, "fmin.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMSUB_Q:   $sformat(decoded, "fmsub.q f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMUL_Q:    $sformat(decoded, "fmul.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FNMADD_Q:  $sformat(decoded, "fnmadd.q f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FNMSUB_Q:  $sformat(decoded, "fnmsub.q f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FSGNJ_Q:   $sformat(decoded, "fsgnj.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJN_Q:  $sformat(decoded, "fsgnjn.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJX_Q:  $sformat(decoded, "fsgnjx.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSQ:       $sformat(decoded, "fsq f%0d, %0d(x%0d)", rs2, immSType, rs1);
      FSQRT_Q:   $sformat(decoded, "fsqrt.q f%0d, f%0d", rd, rs1);
      FSUB_Q:    $sformat(decoded, "fsub.q f%0d, f%0d, f%0d", rd, rs1, rs2);
    `ifdef XLEN64
      FCVT_L_Q:  $sformat(decoded, "fcvt.l.q x%0d, f%0d", rd, rs1);
      FCVT_LU_Q: $sformat(decoded, "fcvt.lu.q x%0d, f%0d", rd, rs1);
      FCVT_Q_L:  $sformat(decoded, "fcvt.q.l f%0d, x%0d", rd, rs1);
      FCVT_Q_LU: $sformat(decoded, "fcvt.q.lu f%0d, x%0d", rd, rs1);
    `endif
      // Zfh Extension
      FADD_H:    $sformat(decoded,"fadd.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FCLASS_H:  $sformat(decoded,"fclass.h x%0d, f%0d", rd, rs1);
      FCVT_H_S:  $sformat(decoded,"fcvt.h.s f%0d, f%0d", rd, rs1);
      FCVT_H_W:  $sformat(decoded,"fcvt.h.w f%0d, x%0d", rd, rs1);
      FCVT_H_WU: $sformat(decoded,"fcvt.h.wu f%0d, x%0d", rd, rs1);
      FCVT_S_H:  $sformat(decoded,"fcvt.s.h f%0d, f%0d", rd, rs1);
      FCVT_W_H:  $sformat(decoded,"fcvt.w.h x%0d, f%0d", rd, rs1);
      FCVT_WU_H: $sformat(decoded,"fcvt.wu.h x%0d, f%0d", rd, rs1);
      FDIV_H:    $sformat(decoded,"fdiv.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FEQ_H:     $sformat(decoded,"feq.h x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLE_H:     $sformat(decoded,"fle.h x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLH:       $sformat(decoded,"flh f%0d, %0d(x%0d)", rd, immIType, rs1);
      FLT_H:     $sformat(decoded,"flt.h x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMADD_H:   $sformat(decoded,"fmadd.h f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMAX_H:    $sformat(decoded,"fmax.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMIN_H:    $sformat(decoded,"fmin.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMSUB_H:   $sformat(decoded,"fmsub.h f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FMUL_H:    $sformat(decoded,"fmul.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMV_H_X:   $sformat(decoded,"fmv.h.x f%0d, x%0d", rd, rs1);
      FMV_X_H:   $sformat(decoded,"fmv.x.h x%0d, f%0d", rd, rs1);
      FNMADD_H:  $sformat(decoded,"fnmadd.h f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FNMSUB_H:  $sformat(decoded,"fnmsub.h f%0d, f%0d, f%0d, f%0d", rd, rs1, rs2, rs3);
      FSGNJ_H:   $sformat(decoded,"fsgnj.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJN_H:  $sformat(decoded,"fsgnjn.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSGNJX_H:  $sformat(decoded,"fsgnjx.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FSH:       $sformat(decoded,"fsh f%0d, %0d(x%0d)", rs2, immSType, rs1);
      FSQRT_H:   $sformat(decoded,"fsqrt.h f%0d, f%0d", rd, rs1);
      FSUB_H:    $sformat(decoded,"fsub.h f%0d, f%0d, f%0d", rd, rs1, rs2);
    `ifdef XLEN64
      FCVT_H_L:  $sformat(decoded,"fcvt.h.l f%0d, x%0d", rd, rs1);
      FCVT_H_LU: $sformat(decoded,"fcvt.h.lu f%0d, x%0d", rd, rs1);
      FCVT_L_H:  $sformat(decoded,"fcvt.l.h x%0d, f%0d", rd, rs1);
      FCVT_LU_H: $sformat(decoded,"fcvt.lu.h x%0d, f%0d", rd, rs1);
    `endif
      // Zfh + D Extensions
      FCVT_D_H: $sformat(decoded,"fcvt.d.h f%0d, f%0d", rd, rs1);
      FCVT_H_D: $sformat(decoded,"fcvt.h.d f%0d, f%0d", rd, rs1);
      // Zfh + Q Extensions
      FCVT_H_Q: $sformat(decoded,"fcvt.h.q f%0d, f%0d", rd, rs1);
      FCVT_Q_H: $sformat(decoded,"fcvt.q.h f%0d, f%0d", rd, rs1);
      // Zfa Extension
      FLEQ_S:     $sformat(decoded, "fleq.s x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLI_S:      $sformat(decoded, "fli.s f%0d, x%0d", rd, rs1);
      FLTQ_S:     $sformat(decoded, "fltq.s x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMAXM_S:    $sformat(decoded, "fmaxm.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMINM_S:    $sformat(decoded, "fminm.s f%0d, f%0d, f%0d", rd, rs1, rs2);
      FROUND_S:   $sformat(decoded, "fround.s f%0d, f%0d", rd, rs1);
      FROUNDNX_S: $sformat(decoded, "froundnx.s f%0d, f%0d", rd, rs1);
      // Zfa + D Extensions
      FCVTMOD_W_D: $sformat(decoded, "fcvtmod.w.d x%0d, f%0d", rd, rs1);
      FLEQ_D:      $sformat(decoded, "fleq.d x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLI_D:       $sformat(decoded, "fli.d f%0d, x%0d", rd, rs1);
      FLTQ_D:      $sformat(decoded, "fltq.d x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMAXM_D:     $sformat(decoded, "fmaxm.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMINM_D:     $sformat(decoded, "fminm.d f%0d, f%0d, f%0d", rd, rs1, rs2);
      FROUND_D:    $sformat(decoded, "fround.d f%0d, f%0d", rd, rs1);
      FROUNDNX_D:  $sformat(decoded, "froundnx.d f%0d, f%0d", rd, rs1);
    `ifdef XLEN32  // RV32 Only Zfa + D Extensions
      FMVP_D_X: $sformat(decoded, "fmvp.d.x f%0d, x%0d, x%0d", rd, rs1, rs2);
      FMVH_X_D: $sformat(decoded, "fmvh.x.d x%0d, f%0d", rd, rs1);
    `endif
      // Zfa + Q Extensions
      FLEQ_Q:     $sformat(decoded, "fleq.q x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLI_Q:      $sformat(decoded, "fli.q f%0d, x%0d", rd, rs1);
      FLTQ_Q:     $sformat(decoded, "fltq.q x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMAXM_Q:    $sformat(decoded, "fmaxm.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMINM_Q:    $sformat(decoded, "fminm.q f%0d, f%0d, f%0d", rd, rs1, rs2);
      FROUND_Q:   $sformat(decoded, "fround.q f%0d, f%0d", rd, rs1);
      FROUNDNX_Q: $sformat(decoded, "froundnx.q f%0d, f%0d", rd, rs1);
    `ifdef XLEN64 // RV64 Only Zfa + Q Extensions
      FMVP_Q_X: $sformat(decoded, "fmvp.q.x f%0d, x%0d, x%0d", rd, rs1, rs2);
      FMVH_X_Q: $sformat(decoded, "fmvh.x.q x%0d, f%0d", rd, rs1);
    `endif
      // Zfh + Zfa Extensions
      FLEQ_H:     $sformat(decoded, "fleq.h x%0d, f%0d, f%0d", rd, rs1, rs2);
      FLI_H:      $sformat(decoded, "fli.h f%0d, x%0d", rd, rs1);
      FLTQ_H:     $sformat(decoded, "fltq.h x%0d, f%0d, f%0d", rd, rs1, rs2);
      FMAXM_H:    $sformat(decoded, "fmaxm.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FMINM_H:    $sformat(decoded, "fminm.h f%0d, f%0d, f%0d", rd, rs1, rs2);
      FROUND_H:   $sformat(decoded, "fround.h f%0d, f%0d", rd, rs1);
      FROUNDNX_H: $sformat(decoded, "froundnx.h f%0d, f%0d", rd, rs1);
      // Zba Extension
      SH1ADD: $sformat(decoded, "sh1add x%0d, x%0d, x%0d", rd, rs1, rs2);
      SH2ADD: $sformat(decoded, "sh2add x%0d, x%0d, x%0d", rd, rs1, rs2);
      SH3ADD: $sformat(decoded, "sh3add x%0d, x%0d, x%0d", rd, rs1, rs2);
    `ifdef XLEN64
      ADD_UW:    $sformat(decoded, "add.uw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SH1ADD_UW: $sformat(decoded, "sh1add.uw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SH2ADD_UW: $sformat(decoded, "sh2add.uw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SH3ADD_UW: $sformat(decoded, "sh3add.uw x%0d, x%0d, x%0d", rd, rs1, rs2);
      SLLI_UW:   $sformat(decoded, "slli.uw x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
    `endif
      // Zbb Extension
      ANDN:   $sformat(decoded, "andn x%0d, x%0d, x%0d", rd, rs1, rs2);
      CLZ:    $sformat(decoded, "clz x%0d, x%0d", rd, rs1);
      CPOP:   $sformat(decoded, "cpop x%0d, x%0d", rd, rs1);
      CTZ:    $sformat(decoded, "ctz x%0d, x%0d", rd, rs1);
      MAX:    $sformat(decoded, "max x%0d, x%0d, x%0d", rd, rs1, rs2);
      MAXU:   $sformat(decoded, "maxu x%0d, x%0d, x%0d", rd, rs1, rs2);
      MIN:    $sformat(decoded, "min x%0d, x%0d, x%0d", rd, rs1, rs2);
      MINU:   $sformat(decoded, "minu x%0d, x%0d, x%0d", rd, rs1, rs2);
      ORC_B:  $sformat(decoded, "orc.b x%0d, x%0d", rd, rs1);
      ORN:    $sformat(decoded, "orn x%0d, x%0d, x%0d", rd, rs1, rs2);
      ROL:    $sformat(decoded, "rol x%0d, x%0d, x%0d", rd, rs1, rs2);
      ROR:    $sformat(decoded, "ror x%0d, x%0d, x%0d", rd, rs1, rs2);
      SEXT_B: $sformat(decoded, "sext.b x%0d, x%0d", rd, rs1);
      SEXT_H: $sformat(decoded, "sext.h x%0d, x%0d", rd, rs1);
      XNOR:   $sformat(decoded, "xnor x%0d, x%0d, x%0d", rd, rs1, rs2);
    `ifdef XLEN32
      REV8_RV32: $sformat(decoded, "rev8 x%0d, x%0d", rd, rs1);
      RORI_RV32: $sformat(decoded, "rori x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);      
      ZEXT_H_RV32: $sformat(decoded, "zext.h x%0d, x%0d", rd, rs1);
    `else // XLEN64
      REV8:      $sformat(decoded, "rev8 x%0d, x%0d", rd, rs1);
      RORI:      $sformat(decoded, "rori x%0d, x%0d, %0d", rd, rs1, uimm);
      ZEXT_H:      $sformat(decoded, "zext.h x%0d, x%0d", rd, rs1);
      CLZW:   $sformat(decoded, "clzw x%0d, x%0d", rd, rs1);
      CPOPW:  $sformat(decoded, "cpopw x%0d, x%0d", rd, rs1);
      CTZW:   $sformat(decoded, "ctzw x%0d, x%0d", rd, rs1);
      ROLW:   $sformat(decoded, "rolw x%0d, x%0d, x%0d", rd, rs1, rs2);
      RORIW:  $sformat(decoded, "roriw x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      RORW:   $sformat(decoded, "rorw x%0d, x%0d, x%0d", rd, rs1, rs2);
    `endif
      // Zbc Extension
      CLMUL:  $sformat(decoded, "clmul x%0d, x%0d, x%0d", rd, rs1, rs2);
      CLMULH: $sformat(decoded, "clmulh x%0d, x%0d, x%0d", rd, rs1, rs2);
      CLMULR: $sformat(decoded, "clmulr x%0d, x%0d, x%0d", rd, rs1, rs2);
      // Zbs Extension
      BCLR:  $sformat(decoded, "bclr x%0d, x%0d x%0d", rd, rs1, rs2);
      BEXT:  $sformat(decoded, "bext x%0d, x%0d x%0d", rd, rs1, rs2);
      BINV:  $sformat(decoded, "binv x%0d, x%0d x%0d", rd, rs1, rs2);
      BSET:  $sformat(decoded, "bset x%0d, x%0d x%0d", rd, rs1, rs2);
    `ifdef XLEN32
      BCLRI_RV32: $sformat(decoded, "bclri x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      BEXTI_RV32: $sformat(decoded, "bexti x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      BINVI_RV32: $sformat(decoded, "binvi x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
      BSETI_RV32: $sformat(decoded, "bseti x%0d, x%0d, %0d", rd, rs1, uimm[4:0]);
    `else // XLEN64
      BCLRI:      $sformat(decoded, "bclri x%0d, x%0d, %0d", rd, rs1, uimm);
      BEXTI:      $sformat(decoded, "bexti x%0d, x%0d, %0d", rd, rs1, uimm);
      BINVI:      $sformat(decoded, "binvi x%0d, x%0d, %0d", rd, rs1, uimm);
      BSETI:      $sformat(decoded, "bseti x%0d, x%0d, %0d", rd, rs1, uimm);
    `endif
      // Zbkb Extension
      BREV8: $sformat(decoded, "brv8 x%0d, x%0d", rd, rs1);
      PACK:  $sformat(decoded, "pack x%0d, x%0d, x%0d", rd, rs1, rs2);
      PACKH: $sformat(decoded, "packh x%0d, x%0d, x%0d", rd, rs1, rs2);
    `ifdef XLEN32
      UNZIP: $sformat(decoded, "unzip x%0d, x%0d", rd, rs1);
      ZIP:   $sformat(decoded, "zip x%0d, x%0d", rd, rs1);
    `else // XLEN64
      PACKW: $sformat(decoded, "packw x%0d, x%0d, x%0d", rd, rs1, rs2);
    `endif
      // Zbkx Extension
      XPERM4: $sformat(decoded, "xperm4 x%0d, x%0d, x%0d", rd, rs1, rs2);
      XPERM8: $sformat(decoded, "xperm8 x%0d, x%0d, x%0d", rd, rs1, rs2);
      // Zknd Extension
    `ifdef XLEN32
      AES32DSI:  $sformat(decoded, "aes32dsi x%0d, x%0d, x%0d, %0d", rd, rs1, rs2, bs);
      AES32DSMI: $sformat(decoded, "aes32dsmi x%0d, x%0d, x%0d, %0d", rd, rs1, rs2, bs);
    `else // XLEN64
      AES64DS:  $sformat(decoded, "aes64ds x%0d, x%0d, x%0d", rd, rs1, rs2);
      AES64DSM: $sformat(decoded, "aes64dsm x%0d, x%0d, x%0d", rd, rs1, rs2);
      AES64IM:  $sformat(decoded, "aes64im x%0d, x%0d", rd, rs1);
    `endif
      // Zkne Extension
    `ifdef XLEN32
      AES32ESI:  $sformat(decoded, "aes32esi x%0d, x%0d, x%0d, %0d", rd, rs1, rs2, bs);
      AES32ESMI: $sformat(decoded, "aes32esmi x%0d, x%0d, x%0d, %0d", rd, rs1, rs2, bs);
    `else // XLEN64
      AES64ES:  $sformat(decoded, "aes64es x%0d, x%0d, x%0d", rd, rs1, rs2);
      AES64ESM: $sformat(decoded, "aes64esm x%0d, x%0d, x%0d", rd, rs1, rs2);
    `endif
      // Zknd OR Zkne Extension
    `ifdef XLEN32
      AES64KS1I: $sformat(decoded, "aes64ks1i x%0d, x%0d, %0d", rd, rs1, instr[23:20]);
      AES64KS2:  $sformat(decoded, "aes64ks2 x%0d, x%0d, x%0d", rd, rs1, rs2);
    `endif
      // Zknh Extension
      SHA256SIG0: $sformat(decoded, "sha256sig0 x%0d, x%0d", rd, rs1);
      SHA256SIG1: $sformat(decoded, "sha256sig1 x%0d, x%0d", rd, rs1);
      SHA256SUM0: $sformat(decoded, "sha256sum0 x%0d, x%0d", rd, rs1);
      SHA256SUM1: $sformat(decoded, "sha256sum1 x%0d, x%0d", rd, rs1);
    `ifdef XLEN32
      SHA512SIG0H: $sformat(decoded, "sha512sig0h x%0d, x%0d, x%0d", rd, rs1, rs2);
      SHA512SIG0L: $sformat(decoded, "sha512sig0l x%0d, x%0d, x%0d", rd, rs1, rs2);
      SHA512SIG1H: $sformat(decoded, "sha512sig1h x%0d, x%0d, x%0d", rd, rs1, rs2);
      SHA512SIG1L: $sformat(decoded, "sha512sig1l x%0d, x%0d, x%0d", rd, rs1, rs2);
      SHA512SUM0R: $sformat(decoded, "sha512sum0r x%0d, x%0d, x%0d", rd, rs1, rs2);
      SHA512SUM1R: $sformat(decoded, "sha512sum1r x%0d, x%0d, x%0d", rd, rs1, rs2);
    `else // XLEN64
      SHA512SIG0: $sformat(decoded, "sha512sig0 x%0d, x%0d", rd, rs1);
      SHA512SIG1: $sformat(decoded, "sha512sig1 x%0d, x%0d", rd, rs1);
      SHA512SUM0: $sformat(decoded, "sha512sum0 x%0d, x%0d", rd, rs1);
      SHA512SUM1: $sformat(decoded, "sha512sum1 x%0d, x%0d", rd, rs1);
    `endif

      default: decoded = "illegal";
    endcase
  end
endmodule
