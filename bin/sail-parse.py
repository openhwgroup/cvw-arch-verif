#!/usr/bin/env python3
##################################
# sail-parse.py
#
# jcarlin@hmc.edu 9 May 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Convert a Sail log file into a trace format for use
# with RVVI input to cvw-arch-verif
##################################

import re
import sys

def sailLog2Trace(inputLogFile, outputTraceFile):
    # Regular expression to match instruction lines
    #                              [STEP]      [MODE]:  0xPC             (0xINSN)           DISASM
    insn_pattern = re.compile(r'\[(\d+)\] \[([MSU])\]: (0x[0-9a-fA-F]+) \((0x[0-9a-fA-F]+)\) (.*)')

    # Regular expressions to match register updates
    reg_patterns = {
        'CSR': re.compile(r'CSR .* \(0x(\d+)\) <- (0x[0-9a-fA-F]+)'),
        'X': re.compile(r'x(\d+) <- (0x[0-9a-fA-F]+)'),
        'F': re.compile(r'f(\d+) <- (0x[0-9a-fA-F]+)'),
        'V': re.compile(r'v(\d+) <- (0x[0-9a-fA-F]+)'),
    }

    # Mode mapping
    mode_map = {'M': '3', 'S': '1', 'U': '0'}

    # TODO: Add support for detecting traps, interrupts, and VM signals

    # Main parsing of log file
    with open(inputLogFile, 'r') as f, open(outputTraceFile, "w") as outfile:
        lines = f.readlines()
        i = 0
        while i < len(lines):
            line = lines[i]

            # Check for instruction line
            insn_match = insn_pattern.search(line)
            if insn_match:
                _, mode, pc, insn, _ = insn_match.groups()
                mode_num = mode_map.get(mode, mode)

                # Remove '0x' prefix
                pc = pc[2:]
                insn = insn[2:]

                # Format the beginning of the instruction line
                output = f"PC {pc} INSN {insn} MODE {mode_num}"

                # Check for register updates until the next instruction line
                j = i + 1
                while j < len(lines):
                    reg_match = None
                    reg_type = None
                    for reg, pattern in reg_patterns.items():
                        reg_match = pattern.search(lines[j])
                        if reg_match:
                            reg_type = reg
                            reg_num, reg_val = reg_match.groups()
                            reg_val = reg_val[2:]
                            output += f" {reg_type} {reg_num} {reg_val}"
                            break
                    if insn_pattern.search(lines[j]):
                        break
                    j += 1

                # Reached end of instruction
                output += "\n"
                outfile.write(output)

            i += 1

if __name__ == "__main__":
    if len(sys.argv) == 3:
        input_file = sys.argv[1]
        output_file = sys.argv[2]
        sailLog2Trace(input_file, output_file)
    else:
        print("Invalid number of arguments. \nUsage: sail-parse.py <input_log_file> <output_trace_file>")
