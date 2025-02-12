// cvw_arch_verif.sv
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

// Load which extensions are supported in this configuration (from $WALLY/config/<config>/coverage.svh)
`include "coverage.svh"

// Load disassembler
`include "disassemble.svh"

// Load the coverage classes
`include "RISCV_coverage.svh"

module cvw_arch_verif(rvviTrace rvvi);
  string disass;
  logic compressedInstruction;
  logic [31:0] trimmedInsn;

  // Connect coverage class to RVVI trace interface
  coverage #(rvvi.ILEN, rvvi.XLEN, rvvi.FLEN, rvvi.VLEN, rvvi.NHART, rvvi.RETIRE) riscvISACOV;
  initial begin
    riscvISACOV = new(rvvi);
    $display("cvw_arch_verif: coverage initialized");
  end

  // Invoke the riscvISACOV sample function on each clock edge for the current instruction
  // If RVVI accepts more than one instruction or hart, iterate over all of them in the
  // correct order of retirement (TODO: multiple instructions/harts not implemented)
  always_ff @(posedge rvvi.clk) begin
    if (rvvi.valid[0][0] == 1) begin
      // Check for compressed instruction and zero out top bits if so
      compressedInstruction = rvvi.insn[0][0][1:0] != 2'b11;
      trimmedInsn = compressedInstruction ? {16'b0, rvvi.insn[0][0][15:0]} : rvvi.insn[0][0];
      // Generate disassembly string
      disass = disassemble(trimmedInsn);
      // When sampling, format instruction as 16 or 32 bits depending on if it was compressed
      if (compressedInstruction) begin
        riscvISACOV.sample(rvvi.trap[0][0], 0, 0, {$sformatf("%04h ", trimmedInsn), disass});
        // $display("cvw_arch_verif: sample taken for instruction %04h: %s", trimmedInsn, disass);
        $display("0x%04h: %s", trimmedInsn, disass);
      end else begin
        riscvISACOV.sample(rvvi.trap[0][0], 0, 0, {$sformatf("%08h ", trimmedInsn), disass});
        // $display("cvw_arch_verif: sample taken for instruction %08h: %s", trimmedInsn, disass);
        $display("0x%08h: %s", trimmedInsn, disass);
      end
    end
  end

  // Check assertion coverage
  `include "RV_Assertions.sv"
endmodule
