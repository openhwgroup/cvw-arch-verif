#!/usr/bin/env python3

import re
import sys
import os


def Combine(test_file, sig_file, output_file):
    """
    Combine the signature file with comments to the test file.
    """
    try:
        with open(test_file, 'r') as tf, open(sig_file, 'r') as sf:
            test_lines = tf.readlines()
            sig_lines = sf.readlines()

        sigBaseFound = False
        sig_idx = 1 #1 to skip canary need to be 2 for rv64 and skip missalignment jumps and take two lines for rv64
        new_lines = []
        for line in test_lines:
            # Add signature result as a comment to instruction lines (skip comments and blank lines)
            if "RVTEST_SIGUPD(" in line:
                if sig_idx < len(sig_lines):
                    new_lines.append(line.rstrip() + f'    // expected result: {sig_lines[sig_idx]}')
                    sig_idx += 1
                else:
                    new_lines.append(line)
            elif "signature_base:" in line:
                sigBaseFound = True
                #print (f"Signature base found in line: {line.strip()}")
                new_lines.append(line)
            elif sigBaseFound:
                #print("LINE: ", line.strip())
                #print("SIGNITURE IPORT", sig_lines)
                for sig_line in sig_lines[1:-1]:  # Skip the first and last lines of the signature file for canary
                    # Add each line of the signature file as a comment
                    new_lines.append("  .word 0x"+ sig_line.rstrip() + "   //Signiture Values\n")
                sigBaseFound = False
            else:
                new_lines.append(line)

        # Overwrite the test file with new lines
        with open(output_file, 'w') as tf:
            tf.writelines(new_lines)


    except Exception as e:
        print(f"Error: {e}")


# def testCombine():
#     """
#     Test the Combine function with a sample test file and signature file.
#     """
#     test_file = "test.S"
#     sig_file = "test.signature"

#     # Create sample files
#     with open(test_file, 'w') as tf:
#         tf.write("// Sample Test File\n")
#         tf.write("add x1, x2, x3\n")
#         tf.write("RVTEST_SIGUPD(x1\n")
#         tf.write("sub x4, x5, x6\n")
#         tf.write("RVTEST_SIGUPD(x2\n")

#     with open(sig_file, 'w') as sf:
#         sf.write("PASS\n")
#         sf.write("FAIL\n")

#     Combine(test_file, sig_file)



# if __name__ == "__main__":
#     testCombine()



if __name__ == "__main__":
    if len(sys.argv) == 4:
        TestFile = sys.argv[1]
        SigFile = sys.argv[2]
        OutputFile = sys.argv[3]
        Combine(TestFile, SigFile, OutputFile)
    else:
        print("Invalid number of arguments. \nUsage: combineSigWithComments.py <Test.S> <Test.signature> <Output.S>")
