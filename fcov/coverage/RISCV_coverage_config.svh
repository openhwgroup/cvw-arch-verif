///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Configuration
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

// Unprivileged extensions
`ifdef I_COVERAGE
  `include "I_coverage.svh"
`endif
`ifdef M_COVERAGE
  `include "M_coverage.svh"
`endif
`ifdef F_COVERAGE
  `include "F_coverage.svh"
`endif
`ifdef D_COVERAGE
  `include "D_coverage.svh"
`endif
`ifdef VX8_COVERAGE
  `include "Vx8_coverage.svh"
`endif
`ifdef VX16_COVERAGE
  `include "Vx16_coverage.svh"
`endif
`ifdef VX32_COVERAGE
  `include "Vx32_coverage.svh"
`endif
`ifdef VX64_COVERAGE
  `include "Vx64_coverage.svh"
`endif
`ifdef ZBA_COVERAGE
  `include "Zba_coverage.svh"
`endif
`ifdef ZBB_COVERAGE
  `include "Zbb_coverage.svh"
`endif
`ifdef ZBC_COVERAGE
  `include "Zbc_coverage.svh"
`endif
`ifdef ZBS_COVERAGE
  `include "Zbs_coverage.svh"
`endif
`ifdef ZFA_COVERAGE
  `include "ZfaF_coverage.svh"
  `ifdef D_COVERAGE
    `include "ZfaD_coverage.svh"
  `endif
  `ifdef ZFH_COVERAGE
    `include "ZfaZfh_coverage.svh"
    `ifdef D_COVERAGE
      `include "ZfaZfhD_coverage.svh"
    `endif
  `endif
`endif
`ifdef ZFH_COVERAGE
  `include "Zfh_coverage.svh"
  `ifdef D_COVERAGE
    `include "ZfhD_coverage.svh"
  `endif
`endif
`ifdef ZFHMIN_COVERAGE
  `include "Zfhmin_coverage.svh"
  `ifdef D_COVERAGE
    `include "ZfhminD_coverage.svh"
  `endif
`endif
`ifdef ZMMUL_COVERAGE
  `include "Zmmul_coverage.svh"
`endif
`ifdef ZICOND_COVERAGE
  `include "Zicond_coverage.svh"
`endif
`ifdef ZCA_COVERAGE
  `include "Zca_coverage.svh"
`endif
`ifdef ZCB_COVERAGE
  `include "Zcb_coverage.svh"
  `ifdef M_COVERAGE
    `include "ZcbM_coverage.svh"
  `elsif ZMMUL_COVERAGE
    `include "ZcbM_coverage.svh"
  `endif
  `ifdef ZBB_COVERAGE
    `include "ZcbZbb_coverage.svh"
  `endif
  `ifdef XLEN64
    `ifdef ZBA_COVERAGE
      `include "ZcbZba_coverage.svh"
    `endif
  `endif
`endif
`ifdef ZCD_COVERAGE
  `include "Zcd_coverage.svh"
`endif
`ifdef ZCF_COVERAGE
  `include "Zcf_coverage.svh"
`endif
`ifdef ZICSR_COVERAGE
  `include "Zicsr_coverage.svh"
`endif
`ifdef ZBKB_COVERAGE
  `include "Zbkb_coverage.svh"
`endif
`ifdef ZBKC_COVERAGE
  `include "Zbkc_coverage.svh"
`endif
`ifdef ZBKX_COVERAGE
  `include "Zbkx_coverage.svh"
`endif
`ifdef ZKND_COVERAGE
  `include "Zknd_coverage.svh"
`endif
`ifdef ZKNE_COVERAGE
  `include "Zkne_coverage.svh"
`endif
`ifdef ZKNH_COVERAGE
  `include "Zknh_coverage.svh"
`endif
`ifdef ZAAMO_COVERAGE
  `include "Zaamo_coverage.svh"
`endif
`ifdef ZALRSC_COVERAGE
  `include "Zalrsc_coverage.svh"
`endif

// Privileged extensions
`ifdef RV64VM_COVERAGE
  `include "RV64VM_coverage.svh"
`endif
`ifdef RV32VM_COVERAGE
  `include "RV32VM_coverage.svh"
`endif
`ifdef RV64VM_PMP_COVERAGE
  `include "RV64VM_PMP_coverage.svh"
`endif
`ifdef RV32VM_PMP_COVERAGE
  `include "RV32VM_PMP_coverage.svh"
`endif
`ifdef RV64CBO_VM_COVERAGE
  `include "RV64CBO_VM_coverage.svh"
`endif
`ifdef RV32CBO_VM_COVERAGE
  `include "RV32CBO_VM_coverage.svh"
`endif
`ifdef RV64CBO_PMP_COVERAGE
  `include "RV64CBO_PMP_coverage.svh"
`endif
`ifdef RV32CBO_PMP_COVERAGE
  `include "RV32CBO_PMP_coverage.svh"
`endif
`ifdef ZICSRM_COVERAGE
  `include "ZicsrM_coverage.svh"
`endif
`ifdef ZICSRS_COVERAGE
  `include "ZicsrS_coverage.svh"
`endif
`ifdef ZICSRU_COVERAGE
  `include "ZicsrU_coverage.svh"
`endif
`ifdef ZICSRF_COVERAGE
  `include "ZicsrF_coverage.svh"
`endif
`ifdef ENDIANU_COVERAGE
  `include "EndianU_coverage.svh"
`endif
`ifdef ENDIANS_COVERAGE
  `include "EndianS_coverage.svh"
`endif
`ifdef ENDIANM_COVERAGE
  `include "EndianM_coverage.svh"
`endif
`ifdef EXCEPTIONSM_COVERAGE
  `include "ExceptionsM_coverage.svh"
`endif
`ifdef EXCEPTIONSS_COVERAGE
  `include "ExceptionsS_coverage.svh"
`endif
`ifdef EXCEPTIONSU_COVERAGE
  `include "ExceptionsU_coverage.svh"
`endif
`ifdef EXCEPTIONSZC_COVERAGE
  `include "ExceptionsZc_coverage.svh"
`endif
`ifdef EXCEPTIONSF_COVERAGE
  `include "ExceptionsF_coverage.svh"
`endif
`ifdef ZICNTRU_COVERAGE
  `include "ZicntrU_coverage.svh"
`endif
`ifdef ZICNTRS_COVERAGE
  `include "ZicntrS_coverage.svh"
`endif
`ifdef ZICNTRM_COVERAGE
  `include "ZicntrM_coverage.svh"
`endif
`ifdef INTERRUPTSM_COVERAGE
  `include "InterruptsM_coverage.svh"
`endif
`ifdef INTERRUPTSS_COVERAGE
  `include "InterruptsS_coverage.svh"
`endif
`ifdef INTERRUPTSU_COVERAGE
  `include "InterruptsU_coverage.svh"
`endif
`ifdef INTERRUPTSSSTC_COVERAGE
  `include "InterruptsSstc_coverage.svh"
`endif
`ifdef EXCEPTIONSVM_COVERAGE
  `include "ExceptionsVM_coverage.svh"
`endif
`ifdef SSSTRICTS_COVERAGE
  `include "SsstrictS_coverage.svh"
`endif
`ifdef SSSTRICTM_COVERAGE
  `include "SsstrictM_coverage.svh"
`endif
`ifdef EXCEPTIONSZAAMO_COVERAGE
  `include "ExceptionsZaamo_coverage.svh"
`endif
`ifdef EXCEPTIONSZALRSC_COVERAGE
  `include "ExceptionsZalrsc_coverage.svh"
`endif
`ifdef EXCEPTIONSV_COVERAGE
  `include "ExceptionsV_coverage.svh"
`endif
