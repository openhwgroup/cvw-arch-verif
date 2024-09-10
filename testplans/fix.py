#!/usr/bin/env python3

# read all the CSV files in the current directory
# find the second occurrence of cp_rs1_corners
# and delete that column from each row

import csv
import os
import sys

for dup in ["cp_rd_corners", "cp_rs2_corners", "cp_rd_toggle", "cp_rs2_toggle", "cp_rs2_toggle", "cp_rs1_toggle", "cp_rs1_corners"]:
    for filename in os.listdir('.'):
        if filename.endswith('csv'):
            with open(filename, 'r') as f:
                reader = csv.reader(f)
                rows = list(reader)
                header = rows[0]
                print("Filename: ", filename, "header:", header )
                found = 0
                col = -1
                items = dict()
                for i in range(len(header)):
                    if (header[i] in items):
                        print("Duplicate item: ", header[i], "at entry", i, "(was at ", items[header[i]],")")
                    items[header[i]] = i
                    if (header[i] == dup):
                        found = found + 1
                        if (found == 2):
                            col = i
                if (col > -1):
                    hdr = header[col]
                    print("Filename: ",filename,"col:", col, "header[col] = ", header[col])
                    for row in rows:
                        #if (row[col] != ""):
                        if (row[col] == "x"):
                            print("Deleting ", row[col],"for ", filename, hdr)
                        del(row[col])
#                    with open(filename+"2", 'w') as f:
                    with open(filename, 'w') as f:
                        writer = csv.writer(f)
                        writer.writerow(header)
                        writer.writerows(rows[1:])
                        f.close()