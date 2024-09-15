//  
// Copyright (c) 2023 Imperas Software Ltd., www.imperas.com  
// Modified 3 Sept 2024 David_Harris@hmc.edu
//   support more EXTENSIONS
//   change capitalization of sample function
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
 





class RISCV_coverage
#(
    parameter int ILEN   = 32,  // Instruction length in bits
    parameter int XLEN   = 32,  // GPR length in bits
    parameter int FLEN   = 32,  // FPR length in bits
    parameter int VLEN   = 256, // Vector register size in bits
    parameter int NHART  = 1,   // Number of harts reported
    parameter int RETIRE = 1    // Number of instructions that can retire during valid event
);

    `include "coverage/RISCV_coverage_rvvi.svh"
    `include "coverage/RISCV_coverage_csr.svh"
    `include "coverage/RISCV_coverage_exceptions.svh"
    `include "coverage/RISCV_coverage_hazards.svh"

    // Load which extensions are supported in this configuration (from $WALLY/config/<config>/coverage.svh)
    `include "coverage.svh"

    virtual rvviTrace #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) rvvi;


    function new(virtual rvviTrace #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) rvvi);
   
        this.rvvi = rvvi;
        `cover_info("//  cvw_arch_verif    ");         
        `cover_info("//  adapted from riscvISACOV Version 20231026.0");         
        `cover_info("//  SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0");
        `cover_info("//    Configuration:");

    `ifdef COVER_BASE_RV32I
        `cover_info("//      BASE: RV32I");
    `endif
    `ifdef COVER_BASE_RV32E
        `cover_info("//      BASE: RV32E");
    `endif
    `ifdef COVER_BASE_RV64I
        `cover_info("//      BASE: RV64I");
    `endif
    `ifdef COVER_BASE_RV64E
        `cover_info("//      BASE: RV64E");
    `endif
        
    `cover_info("//    EXTENSIONS:"); 

    `ifdef COVER_RV32I
        `cover_info("//      RV32I - Enabled");
        `include "RV32I_coverage_init.svh"
    `endif
    `ifdef COVER_RV32M
        `cover_info("//      RV32M - Enabled");
        `include "RV32M_coverage_init.svh"
    `endif
    `ifdef COVER_RV32F
        `cover_info("//      RV32F - Enabled");
        `include "RV32F_coverage_init.svh"
    `endif
    `ifdef COVER_RV32ZICOND
        `cover_info("//      RV32ZICOND - Enabled");
        `include "RV32Zicond_coverage_init.svh"
    `endif


    `ifdef COVER_RV64I
        `cover_info("//      RV64I - Enabled");
        `include "RV64I_coverage_init.svh"
    `endif
    `ifdef COVER_RV64M
        `cover_info("//      RV64M - Enabled");
        `include "RV64M_coverage_init.svh"
    `endif
    `ifdef COVER_RV64F
        `cover_info("//      RV64F - Enabled");
        `include "RV64F_coverage_init.svh"
    `endif
    `ifdef COVER_RV64ZICOND
        `cover_info("//      RV64ZICOND - Enabled");
        `include "RV64Zicond_coverage_init.svh"
    `endif

    endfunction

    function string get_inst_name(bit trap, int hart, int issue, string disass); // break and move this first bit out
        string insbin, ins_str, ops;
        int num = $sscanf (disass, "%s %s %s", insbin, ins_str, ops);
        return ins_str;
    endfunction


    function void sample_extensions(int hart, int issue);
        
    `ifdef COVER_RV32I
        rv32i_sample(hart, issue);
    `endif
     `ifdef COVER_RV32M
        rv32m_sample(hart, issue);
    `endif
    `ifdef COVER_RV32F
        rv32f_sample(hart, issue);
    `endif
    `ifdef COVER_RV32ZICOND
        rv32zicond_sample(hart, issue);
    `endif

    `ifdef COVER_RV64I
        rv64i_sample(hart, issue);
    `endif
     `ifdef COVER_RV64M
        rv64m_sample(hart, issue);
    `endif
    `ifdef COVER_RV64F
        rv64f_sample(hart, issue);
    `endif
    `ifdef COVER_RV64ZICOND
        rv64zicond_sample(hart, issue);
    `endif

    endfunction

    function void sample_csrs(int hart, int issue);
    endfunction

    function void sample_idv_metrics();
    endfunction

endclass




