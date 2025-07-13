#!/usr/bin/env python3
##################################
# parse_corners.py
#
# Jordan Carlin
# jcarlin@hmc.edu 13 July 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate list of corner values from CSV files
##################################

import csv
import os
import sys
from pathlib import Path

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

def get_integer_corners(xlen, verilog = False):
    csv_path = Path(ARCH_VERIF) / "templates" / "corners" / "integer_corners.csv"
    with open(csv_path) as csvfile:
        reader = csv.DictReader(csvfile)
        corners = {}
        for row in reader:
            corner_name = row["Bin"]
            corner_str = row[f"RV{xlen}"]
            if corner_str != "" and corner_str != "n/a":
                corner_str = corner_str.replace("`", "") # Remove formatting backticks
                # For python convert to integer, for Verilog keep as string with base prefix
                if not verilog:
                    corner_str = corner_str.replace("?", "0")
                    corner_val = int(corner_str, 2)
                else:
                    corner_val = f"{xlen}'b{corner_str}"
                corners[corner_name] = corner_val
        return corners


def format_coverpoint_corners(rv32_corners = {}, rv64_corners = {}, general_corners = {}):
    corners = ""
    if rv32_corners != {}:
        corners = "        `ifdef XLEN32\n"
        for corner_name, corner_val in rv32_corners.items():
            corners += f"           {' wildcard' if '?' in corner_val else ''} bins {corner_name:<10} = {{{corner_val}}};\n"
        corners += "        `endif\n"
    if rv64_corners != {}:
        corners += "        `ifdef XLEN64\n"
        for corner_name, corner_val in rv64_corners.items():
            corners += f"           {' wildcard' if '?' in corner_val else ''} bins {corner_name:<10} = {{{corner_val}}};\n"
        corners += "        `endif\n"

    if general_corners != {}:
        for corner_name, corner_val in general_corners.items():
            corners += f"           {' wildcard' if '?' in corner_val else ''} bins {corner_name:<10} = {{{corner_val}}};\n"

    return corners

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: parse_corners.py <xlen>")
        sys.exit(1)

    xlen = int(sys.argv[1])
    corners = get_integer_corners(xlen, True)
    print(corners)

    # for corner in corners:
    #     print(f"{corner:0{xlen}b}")
