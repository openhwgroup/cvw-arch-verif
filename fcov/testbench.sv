///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Testbench
//
// Copyright (C) 2025 Harvey Mudd College, 10x Engineers, UET Lahore
// Written: Jordan Carlin jcarlin@hmc.edu March 2025
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

module testbench;

  // Load configuration
  `include "coverage.svh"

  // Set up varialbe lengths
`ifdef XLEN32
  localparam XLEN = 32;
`else
  localparam XLEN = 64;
`endif

`ifdef D_COVERAGE
  localparam FLEN = 64;
`else
  localparam FLEN = 32;
`endif

  localparam VLEN = 256; // TODO: Make configurable (maybe just use the macro directly)

  localparam PA_BITS = (XLEN==32 ? 32'd34 : 32'd56);
  localparam PPN_BITS = (XLEN==32 ? 32'd22 : 32'd44);

  // Temporary signals for filling RVVI trace interface (file handling, string parsing, etc)
  string  traceFile;
  integer traceFileHandler, num;
  string  line;
  string  key, val;
  string  words[$];
  int     order;
  int     regNum;
  logic [(XLEN-1):0] regVal;

  // RVVI Trace interface signals
  // Basic signals
  logic              clk;
  logic [31:0]       insn;
  logic              trap;
  logic              valid;
  logic              debug_mode;
  logic [(XLEN-1):0] pc_rdata;
  logic [1:0]        mode;
  // Interrupts
  logic m_ext_intr, s_ext_intr, m_timer_intr, m_soft_intr;
  // Virtual Memory
  logic [(XLEN-1):0]     virt_adr_i, virt_adr_d;
  logic [(PA_BITS-1):0]  phys_adr_i, phys_adr_d;
  logic [(XLEN-1):0]     pte_i, pte_d;
  logic [(PPN_BITS-1):0] ppn_i, ppn_d;
  logic [1:0]            page_type_i, page_type_d;
  logic read_access, write_access, execute_access;
  // Registers
  logic [31:0][(XLEN-1):0]   x_wdata;
  logic [31:0]               x_wb;
  logic [31:0][(FLEN-1):0]   f_wdata;
  logic [31:0]               f_wb;
  logic [31:0][(VLEN-1):0]   v_wdata;
  logic [31:0]               v_wb;
  logic [4095:0][(XLEN-1):0] csr;
  logic [4095:0]             csr_wb;

  // Generate clock
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Load pre-formatted trace file from traceFile plusarg
  initial begin
    if (!$value$plusargs("traceFile=%s", traceFile)) begin
      $display("Error: trace file not provided");
      $finish;
    end
    traceFileHandler = $fopen(traceFile, "r");
    if (traceFileHandler == 0) begin
      $display("Error: Could not open trace file");
      $finish;
    end
    // TODO: Add check for correct format and exit if fails
  end

  // Load coverage model and connect to RVVI trace interface
  rvviTrace #(.XLEN(XLEN), .FLEN(FLEN), .VLEN(VLEN)) rvvi();
  cvw_arch_verif cvw_arch_verif(rvvi);

  // Sample an instruction from the trace file on each clock edge
  always_ff @(posedge clk) begin
    // Reset all signals at the beginning of each iteration
    {valid, insn, trap, debug_mode, pc_rdata, mode,
    m_ext_intr, s_ext_intr, m_timer_intr, m_soft_intr,
    virt_adr_i, virt_adr_d, phys_adr_i, phys_adr_d,
    pte_i, pte_d, ppn_i, ppn_d, page_type_i, page_type_d,
    read_access, write_access, execute_access,
    x_wb, f_wb, v_wb, csr_wb, x_wdata, f_wdata, v_wdata} = 0;

    // End simulation if end of trace file is reached
    if ($feof(traceFileHandler)) begin
      $display("Trace file finished");
      $fclose(traceFileHandler);
      $finish;
    end

    // Get next line from trace file
    num = $fgets(line, traceFileHandler);

    // Parse line and set signals
    if (line != "" & line != "\n") begin // Skip empty lines
      splitLine(line, words); // Split line into queue of individual words
      while (words.size > 0) begin
        key = words.pop_front();
        val = words.pop_front();
        // Need to parse values using $sscanf because standard ascii to int conversion
        // doesn't work for number larger than 32 bits
        case(key)
          // Standard signals
          "INSN":           num = $sscanf(val, "%h", insn);
          "TRAP":           num = $sscanf(val, "%b", trap);
          "DEBUG_MODE":     num = $sscanf(val, "%b", debug_mode);
          "PC":             num = $sscanf(val, "%h", pc_rdata);
          "MODE":           num = $sscanf(val, "%b", mode);
          // Interrupts
          "M_EXT_INTR":     num = $sscanf(val, "%b", m_ext_intr);
          "S_EXT_INTR":     num = $sscanf(val, "%b", s_ext_intr);
          "M_TIMER_INTR":   num = $sscanf(val, "%b", m_timer_intr);
          "M_SOFT_INTR":    num = $sscanf(val, "%b", m_soft_intr);
          // Virtual Memory
          "VIRT_ADR_I":     num = $sscanf(val, "%h", virt_adr_i);
          "VIRT_ADR_D":     num = $sscanf(val, "%h", virt_adr_d);
          "PHYS_ADR_I":     num = $sscanf(val, "%h", phys_adr_i);
          "PHYS_ADR_D":     num = $sscanf(val, "%h", phys_adr_d);
          "PTE_I":          num = $sscanf(val, "%h", pte_i);
          "PTE_D":          num = $sscanf(val, "%h", pte_d);
          "PPN_I":          num = $sscanf(val, "%h", ppn_i);
          "PPN_D":          num = $sscanf(val, "%h", ppn_d);
          "PAGE_TYPE_I":    num = $sscanf(val, "%b", page_type_i);
          "PAGE_TYPE_D":    num = $sscanf(val, "%b", page_type_d);
          "READ_ACCESS":    num = $sscanf(val, "%b", read_access);
          "WRITE_ACCESS":   num = $sscanf(val, "%b", write_access);
          "EXECUTE_ACCESS": num = $sscanf(val, "%b", execute_access);
          // Registers
          "X": begin
            num = $sscanf(val, "%d", regNum);
            val = words.pop_front();
            num = $sscanf(val, "%h", regVal);
            x_wdata[regNum] = regVal;
            x_wb |= (1 << regNum);
          end
          "F": begin
            num = $sscanf(val, "%d", regNum);
            val = words.pop_front();
            num = $sscanf(val, "%h", regVal);
            f_wdata[regNum] = regVal;
            f_wb |= (1 << regNum);
          end
          "V": begin
            num = $sscanf(val, "%d", regNum);
            val = words.pop_front();
            num = $sscanf(val, "%h", regVal);
            v_wdata[regNum] = regVal;
            v_wb |= (1 << regNum);
          end
          "CSR": begin
            num = $sscanf(val, "%h", regNum);
            $display("CSR: %h", regNum);
            val = words.pop_front();
            num = $sscanf(val, "%h", regVal);
            csr[regNum] = regVal;
            csr_wb |= (1 << regNum);
          end
          default: begin
            $display("Unknown key: %s", key);
            $finish();
          end
        endcase
      end
      order++;
      valid = 1;
    end else begin
      $display("Skipping empty line");
    end
  end

  // Connect testbench signals to RVVI trace interface
  // Basic signals
  assign rvvi.clk = clk;
  assign rvvi.valid[0][0] = valid;
  assign rvvi.order[0][0] = order;
  assign rvvi.insn[0][0] = insn;
  assign rvvi.trap[0][0] = trap;
  assign rvvi.debug_mode[0][0] = debug_mode;
  assign rvvi.pc_rdata[0][0] = pc_rdata;
  assign rvvi.mode[0][0] = mode;

  // Interrupts
  assign rvvi.m_ext_intr[0][0] = m_ext_intr;
  assign rvvi.s_ext_intr[0][0] = s_ext_intr;
  assign rvvi.m_timer_intr[0][0] = m_timer_intr;
  assign rvvi.m_soft_intr[0][0] = m_soft_intr;

  // Virtual Memory
  assign rvvi.virt_adr_i[0][0] = virt_adr_i;
  assign rvvi.virt_adr_d[0][0] = virt_adr_d;
  assign rvvi.phys_adr_i[0][0] = phys_adr_i;
  assign rvvi.phys_adr_d[0][0] = phys_adr_d;
  assign rvvi.pte_i[0][0] = pte_i;
  assign rvvi.pte_d[0][0] = pte_d;
  assign rvvi.ppn_i[0][0] = ppn_i;
  assign rvvi.ppn_d[0][0] = ppn_d;
  assign rvvi.page_type_i[0][0] = page_type_i;
  assign rvvi.page_type_d[0][0] = page_type_d;
  assign rvvi.read_access[0][0] = read_access;
  assign rvvi.write_access[0][0] = write_access;
  assign rvvi.execute_access[0][0] = execute_access;

  // Registers
  assign rvvi.x_wb[0][0] = x_wb;
  assign rvvi.x_wdata[0][0] = x_wdata;
  assign rvvi.f_wb[0][0] = f_wb;
  assign rvvi.f_wdata[0][0] = f_wdata;
  assign rvvi.v_wb[0][0] = v_wb;
  assign rvvi.v_wdata[0][0] = v_wdata;
  assign rvvi.csr_wb[0][0] = csr_wb;
  assign rvvi.csr[0][0] = csr;

  // Takes a string and splits it into individual words that are returned in the provided string queue
  function automatic void splitLine(string line, ref string words[$]);
    string word;
    while (line.len() > 0) begin
      num = $sscanf(line, "%s", word);
      words.push_back(word);
      line = line.substr(word.len() + 1, line.len() - 1);
    end
  endfunction

endmodule
