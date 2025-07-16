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
    #                             [STEP]     [MODE]:    0xPC              (0xINSN)           DISASM
    insn_pattern = re.compile(r'\[(\d+)\] \[([MSU])\]: 0x([0-9a-fA-F]+) \(0x([0-9a-fA-F]+)\) (.*)')

    # Regular expressions to match register updates
    reg_patterns = {
        'CSR': re.compile(r'CSR .* \(0x([0-9a-fA-F]+)\) (?:<-|->) 0x([0-9a-fA-F]+)'),
        'X':   re.compile(r'x(\d+) <- 0x([0-9a-fA-F]+)'),
        'F':   re.compile(r'f(\d+) <- 0x([0-9a-fA-F]+)'),
        'V':   re.compile(r'v(\d+) <- 0x([0-9a-fA-F]+)'),
    }

    # Mode mapping
    mode_map = {'M': '3', 'S': '1', 'U': '0'}

    # TODO: Add support for parsing traps, interrupts, and VM signals

    # Main parsing of log file
    with open(inputLogFile, 'r') as f, open(outputTraceFile, "w") as outfile:
        lines = f.readlines()
        output_line = ""
        for i in range(len(lines)):
            line = lines[i]

            # Check for instruction line
            insn_match = insn_pattern.search(line)
            if insn_match:
                order, prev_mode, pc, insn, _ = insn_match.groups()
                prev_mode_num = mode_map.get(prev_mode)

                # Format the beginning of the instruction line
                # mode_num is set later based on the mode for the next instruction because RVVI expects the
                # mode at the end of the instruction but Sail logs have the mode at the start of the instruction.
                next_output = f"ORDER {order} PC {pc} INSN {insn} MODE " + "{mode_num}"

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
                            next_output += f" {reg_type} {reg_num} {reg_val}"
                            break
                    if insn_pattern.search(lines[j]):
                        break
                    j += 1

                # Reached end of instruction
                next_output += "\n"

                # Update the previous instruction with the new privilege mode and output it to the trace file
                output_line = output_line.format(mode_num=prev_mode_num)
                outfile.write(output_line)
                output_line = next_output

if __name__ == "__main__":
    if len(sys.argv) == 3:
        input_file = sys.argv[1]
        output_file = sys.argv[2]
        sailLog2Trace(input_file, output_file)
    else:
        print("Invalid number of arguments. \nUsage: sail-parse.py <input_log_file> <output_trace_file>")
