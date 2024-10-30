#!/usr/bin/env python3
##################################
# testgen.py
#
# David_Harris@hmc.edu 27 March 2024
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed tests for functional coverage
##################################

##################################
# libraries
##################################
from datetime import datetime
from random import randint 
from random import seed
from random import getrandbits
import os
import re

##################################
# functions
##################################

def legalizecompr(r):
  # bring into range 8-15 for compressed instructions with limited
  return r % 8 + 8

def shiftImm(imm, xlen):
  imm = imm % xlen
  return str(imm)

def signedImm12(imm, immOffset = False):
#                          ^~~~~~~~~~~~~~~~~ if the imm is used as an offset, restrict the range to [-2047, 2047]
  pos = imm > 0
  imm = imm % pow(2, 12)
  if (imm & 0x800): # Check if the 12th bit (0x800) is set
    imm = imm - 0x1000 # Convert to negative value
  if immOffset and imm == -2048:
    imm += 1 +  pos * 0x0ffe # change to abs(2047) with the sign of the original
  return str(imm)

def unsignedImm20(imm):
  imm = imm % pow(2, 20)
  return str(imm)

def unsignedImm5(imm):
  imm = imm % pow(2, 5)
  # zero immediates are prohibited
  if test not in ["c.lw","c.sw","c.ld","c.sd","c.lwsp","c.ldsp","c.flw","c.fsw"]:
    if imm == 0:
      imm = 8
  return str(imm)

def SextImm6(imm):
  imm = imm % pow(2, 6)
  if (imm & 0x20):
    #if the 6th bit is high, sign extend it
    imm = imm | 0xfffC0
  if (imm == 0):
    imm = 1
  return str(imm)


def ZextImm6(imm):
  imm = imm % pow(2, 6) 
  if test not in ["c.lw","c.sw","c.ld","c.sd","c.lwsp","c.ldsp","c.sdsp","c.swsp"]:
    if imm == 0:
      imm = 8
  return str(imm)

def signedImm6(imm):
  imm = imm % pow(2, 6)
  if (imm & 0x20):
    imm = imm - 0x40
  return str(imm)

def unsignedImm10(imm):
  imm = imm % pow(2, 10)
  # zero immediates are prohibited
  if imm == 0:
    imm = 16
  return str(imm)

def unsignedImm8(imm):
  imm = imm % pow(2, 8)
  # zero immediates are prohibited
  if imm == 0:
    imm = 16
  return str(imm)

def unsignedImm2(imm):
  imm = imm % pow(2, 2)
  return str(imm)

def unsignedImm1(imm):
  imm = imm % pow(2, 1)
  return str(imm)

def loadFloatReg(reg, val, xlen, flen):
  # Assumes that x2 is loaded with the base addres to avoid repeated `la` instructions
  lines = "" # f"# Loading value {val} into f{reg}\n"
  if test[-1] == "h":
    precision = 16
    loadop = "flh"
  elif test[-1] == "d":
    precision = 64
    loadop = "fld"
  else:
    precision = 32
    loadop = "flw"
  storeop =  "sw" if (min (xlen, flen) == 32) else "sd"
  # loadop  = "flw" if             (flen == 32) else "fld"
  if (precision > xlen): # precision = 64, xlen = 32
  # lines = lines + "la x2, scratch # base address \n"
    lines = lines + f"li x3, 0x{formatstrFP.format(val)[10:18]} # load x3 with 32 MSBs {formatstrFP.format(val)}\n"
    lines = lines + f"li x4, 0x{formatstrFP.format(val)[2:10]} # load x4 with 32 LSBs of {formatstrFP.format(val)}\n"
    lines = lines + f"{storeop} x3, 0(x2) # store x3 (0x{formatstrFP.format(val)[10:18]}) in memory\n"
    lines = lines + f"{storeop} x4, 4(x2) # store x4 (0x{formatstrFP.format(val)[2:10]}) in memory 4 bytes after x3\n"
    lines = lines + f"{loadop} f{reg}, 0(x2) # load {formatstrFP.format(val)} from memory into f{reg}\n"
  else:
  # lines = lines + "la x2, scratch # base address \n"
    lines = lines + f"li x3, {formatstrFP.format(val)} # load x3 with value {formatstrFP.format(val)}\n"
    lines = lines + f"{storeop} x3, 0(x2) # store {formatstrFP.format(val)} in memory\n"
    lines = lines + f"{loadop} f{reg}, 0(x2) # load {formatstrFP.format(val)} from memory into f{reg}\n"
  return lines

def genFrmTests(testInstr):
  lines = ""
  frm = ["dyn", "rdn", "rmm", "rne", "rtz", "rup"]
  csrFrm = ["0x4", "0x3", "0x2", "0x1", "0x0"]
  for roundingMode in frm:
    lines = lines + f"{testInstr}, {roundingMode} # perform operation\n"
  for csrMode in csrFrm:
    lines = lines + f"\n # set fcsr.frm to {csrMode} \n"
    lines = lines + f"fsrmi {csrMode}\n"
    lines = lines + f"{testInstr} # perform operation\n"
  
  return lines

def writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen, rs3=None, rs3val=None, frm=False):
  lines = "\n# Testcase " + str(desc) + "\n"
  if (rs1val < 0):
    rs1val = rs1val + 2**xlen
  if (rs2val < 0):
    rs2val = rs2val + 2**xlen
  lines = lines + "li x" + str(rd) + ", " + formatstr.format(rdval) + " # initialize rd to a random value that should get changed; helps covering rd_toggle\n"
  if (test in rtype):
    lines = lines + "li x" + str(rs1) + ", " + formatstr.format(rs1val) + " # initialize rs1\n"
    lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val) + " # initialize rs2\n"
    lines = lines + test + " x" + str(rd) + ", x" + str(rs1) + ", x" + str(rs2) + " # perform operation\n" 
  elif (test in frtype):
    lines = lines + "la x2, scratch\n"
    lines = lines + loadFloatReg(rs1, rs1val, xlen, flen)
    lines = lines + loadFloatReg(rs2, rs2val, xlen, flen)
    if not frm:
      lines = lines + test + " f" + str(rd) + ", f" + str(rs1) + ", f" + str(rs2) + " # perform operation\n"
    else:
      testInstr = f"{test} f{rd}, f{rs1}, f{rs2}"
      lines = lines + genFrmTests(testInstr)
  elif (test in fixtype):
    lines = lines + "la x2, scratch\n"
    lines = lines + loadFloatReg(rs1, rs1val, xlen, flen)
    lines = lines + test + " x" + str(rd) + ", f" + str(rs1) +  " # perform operation\n"
  elif (test in fitype):
    lines = lines + "la x2, scratch\n"
    lines = lines + loadFloatReg(rs1, rs1val, xlen, flen)
    lines = lines + test + " f" + str(rd) + ", f" + str(rs1) +  " # perform operation\n"
    if not frm:
      lines = lines + test + " f" + str(rd) + ", f" + str(rs1) + " # perform operation\n"
    else:
      testInstr = f"{test} f{rd}, f{rs1}"
      lines = lines + genFrmTests(testInstr)
  elif (test in citype):
    if(test == "c.lui" and rd ==2): # rd ==2 is illegal operand 
      rd = 9 # change to arbitrary other register
    elif (test == "c.addiw" and rd == 0):
      rd = 1
    if (test == "c.addi16sp"):
      immval = int(signedImm6(immval)) * 16
      if (immval == 0):
        immval = 16
      lines = lines + test + " sp, " + str(immval) + " # perform operation\n"
    elif test in ["c.lwsp","c.ldsp"]:
      if (test == "c.lwsp"):
        storeop = "c.swsp"
        mul = 4
      else:
        storeop = "c.sdsp"
        mul = 8
      while (rd == 0):
        rd = randint(1,31)     
      while (rs2 == 2):
        rs2 = randint(1,31)
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
      lines = lines + "la " + "sp" + ", scratch" + " # base address \n"
      lines = lines + "addi " + "sp" + ", " + "sp" + ", -" + str(int(ZextImm6(immval))*mul) + " # sub immediate from rs1 to counter offset\n"
      lines = lines + storeop + " x" + str(rs2) + ", " + str(int(ZextImm6(immval))*mul) + "(" + "sp" + ")   # store value to put something in memory\n"
      lines = lines + test + " x" + str(rd) + ", " + str(int(ZextImm6(immval))*mul) + "(" + "sp" + ") # perform operation\n"
    else:
      if test in ["c.li", "c.addi", "c.addiw"]:    # Add tests with signed Imm in the list
        lines = lines + test + " x" + str(rd) + ", " + signedImm6(immval) + " # perform operation\n"
      elif test == "c.lui":
        lines = lines + test + " x" + str(rd) + ", " + SextImm6(immval) + " # perform operation\n"
      else:
        lines = lines + test + " x" + str(rd) + ", " + ZextImm6(immval) + " # perform operation\n"
  elif (test in c_shiftitype):
    if (test == "c.srli" or test == "c.srai"):
        rd = legalizecompr(rd)
    if shiftImm(int(ZextImm6(immval)),xlen) == "0":    # imm = 0 isn't allowed
      imm = "1"
    else:
      imm = shiftImm(int(ZextImm6(immval)),xlen)
    lines = lines + "li x" + str(rd) + ", " + formatstr.format(rs2val)+"\n"
    lines = lines + test + " x" + str(rd) + ", " + imm + " # perform operation\n" 
  elif (test in crtype):
    if (test in ["c.add", "c.mv"]):
      if (rs2 == 0):
        rs2 = 11
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val) + "\n"
      lines = lines + test + " x" + str(rd) + ", x" + str(rs2) + " # perform operation\n"
    elif test in ["c.jalr", "c.jr"]:
      if (rs1 == 0):
        rs1 = randint(1, 31)
      if (test == "c.jalr"):
        lines = lines + "li x1" + ", " + formatstr.format(rdval) + " # initialize legalized rd (x1) to a random value that should get changed\n"
      lines = lines + "la x" + str(rs1) + ", 1f\n"
      lines = lines + test + " x" + str(rs1) + " # perform operation\n"
      lines = lines + "nop\nnop\n"
      lines = lines + "1:\n"
  elif (test in catype):
    rd_c = legalizecompr(rd)
    rs2_c = legalizecompr(rs2)
    lines = lines + "li x" + str(rd_c) + ", " + formatstr.format(rs1val) + " # initialize leagalized rd to a random value that should get changed\n"
    lines = lines + "li x" + str(rs2_c) + ", " + formatstr.format(rs2val) + " # initialize rs2\n"
    lines = lines + test + " x" + str(rd_c) +", x" + str(rs2_c) + " # perform operation\n"
  elif (test in cbptype):
    rd = legalizecompr(rd)
    lines = lines + "li x" + str(rd) + ", " + formatstr.format(rdval)+"\n"
    lines = lines + test + " x" + str(rd) + ", " + signedImm6(immval) + " # perform operation\n"
  elif (test in cbtype):
    rs1 = legalizecompr(rs1)
    lines = lines + "li x" + str(rs1) + ", " + formatstr.format(rs1val) + " # initialize rs1\n"
    lines = lines + test + " x" + str(rs1) + ", some_label_for_cbtype_" + str(immval) + " # perform operation \n"
    lines = lines + "addi x0, x1, 1\n"
    lines = lines + "some_label_for_cbtype_" + str(immval) + ":\n"
    lines = lines + "addi x0, x2, 2\n"
    lines = lines + "nop\nnop\n"
  elif (test in ciwtype): # addi4spn
    rd = legalizecompr(rd)
    lines = lines + test + " x" + str(rd) + ", sp, " + str(int(unsignedImm8(immval))*4) + " # perform operation\n"
   # lines = lines + test + " x" + str(rd) + ", sp, 32 # perform operation\n"
  elif (test in shiftitype):
    lines = lines + "li x" + str(rs1) + ", " + formatstr.format(rs1val) + " # initialize rs1\n"
    if (test in shiftiwtype):
      lines = lines + test + " x" + str(rd) + ", x" + str(rs1) + ", " + shiftImm(immval, 32) + " # perform operation\n"
    else:
      lines = lines + test + " x" + str(rd) + ", x" + str(rs1) + ", " + shiftImm(immval, xlen) + " # perform operation\n"
  elif (test in itype):
    lines = lines + "li x" + str(rs1) + ", " + formatstr.format(rs1val) + " # initialize rs1\n"
    lines = lines + test + " x" + str(rd) + ", x" + str(rs1) + ", " + signedImm12(immval) + " # perform operation\n"
  elif (test in loaditype):#["lb", "lh", "lw", "ld", "lbu", "lhu", "lwu"]
    if (rs1 != 0):
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
      lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
      lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", " + signedImm12(-immval, immOffset=True) + " # sub immediate from rs1 to counter offset\n"
      if (xlen == 32):
        storeop = "sw"
      else:
        storeop = "sd"
      lines = lines + storeop + " x" + str(rs2) + ", " + signedImm12(immval, immOffset=True) +" (x" + str(rs1) + ") # store value to put something in memory\n"
      lines = lines + test + " x" + str(rd) + ", " + signedImm12(immval, immOffset=True) + "(x" + str(rs1) + ") # perform operation\n"
#      lines = lines + test + " x" + str(rd) + ", 0(x" + str(rs1) + ") # perform operation\n"
  elif (test in cltype):
    rd = legalizecompr(rd)
    rs1 = legalizecompr(rs1)
    rs2 = legalizecompr(rs2) 
    while (rs1 == rs2):
      rs2 = randint(8,15)
    if test in ["c.lw","c.ld"]:
      if (test == "c.lw"):
          storeop = "c.sw"
          mul = 4
      else:
          storeop = "c.sd"
          mul = 8
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
      lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
      lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", -" + str(int(unsignedImm5(immval))*mul) + " # sub immediate from rs1 to counter offset\n"
      lines = lines + storeop + " x" + str(rs2) + ", " + str(int(unsignedImm5(immval))*mul) +"(x" + str(rs1) + ") # store value to put something in memory\n"
      lines = lines + test + " x" + str(rd) + ", " + str(int(unsignedImm5(immval))*mul) + "(x" + str(rs1) + ") # perform operation\n"
    else:
      if (test == "c.flw"):
        storeop = "c.sw"
        mul = 4
      else:
        storeop = "c.sd"
        mul = 8
      lines = lines + "la x"       + str(rs1) + ", scratch" + " # base address \n"
      lines = lines + "addi x"     + str(rs1) + ", x" + str(rs1) + ", -" + str(int(unsignedImm5(immval))*mul) + " # sub immediate from rs1 to counter offset\n"
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val) + " # load immediate value into integer register\n"
      lines = lines + "sw x" + str(rs2) + ", " + str(int(unsignedImm5(immval))*mul) + "(x" + str(rs1) + ") # store value to memory\n"
      lines = lines +  test + " f" + str(rd)  + ", " + str(int(unsignedImm5(immval))*mul) + "(x" + str(rs1) + ") # perform operation\n" 

  elif (test in clhtype or test in clbtype):
    rd = legalizecompr(rd)
    rs1 = legalizecompr(rs1)
    rs2 = legalizecompr(rs2) 
    while (rs1 == rs2):
      rs2 = randint(8,15)
    if (test in clhtype):
      storeop = "c.sh"
      mul = 2
    else:
      storeop = "c.sb"
      mul = 1
    lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
    lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
    lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", -" + str(int(unsignedImm1(immval))*mul) + " # sub immediate from rs1 to counter offset\n"
    lines = lines + storeop + " x" + str(rs2) + ", " + str(int(unsignedImm1(immval))*mul) +"(x" + str(rs1) + ") # store value to put something in memory\n"
    lines = lines + test + " x" + str(rd) + ", " + str(int(unsignedImm1(immval))*mul) + "(x" + str(rs1) + ") # perform operation\n"
  elif (test in cstype):
    rs1 = legalizecompr(rs1)
    rs2 = legalizecompr(rs2)
    while (rs1 == rs2):
      rs2 = randint(8,15)
    mul = 4 if (test in ["c.sw", "c.fsw"]) else 8
    lines = lines + "la x" + str(rs1) + ", scratch" + " # base address\n"
    lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2 with random value\n"
    if (test in ["c.fsw", "c.fsd"]):
      lines = lines + "sw x" + str(rs2) + ", 0(x" + str(rs1) + ")" + " # store " + hex(rs2val) + " in memory\n"
      lines = lines + "flw f" + str(rs2) + ", 0(x" + str(rs1) + ")" + " # load " + hex(rs2val) + " from memory into fs2\n"
      lines = lines + "sw x0, 0(x" + str(rs1) + ")" + " # clearing the random value store at scratch\n"
    lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", -" + str(int(unsignedImm5(immval))*mul) + " # sub immediate from rs1 to counter offset\n"
    lines = lines + test + (" f" if test in ["c.fsw","c.fsd"] else " x") + str(rs2) + ", " + str(int(unsignedImm5(immval))*mul) + "(x" + str(rs1) + ") # perform operation \n"
    
  elif (test in cutype):
    rd = legalizecompr(rd)
    rs1 = legalizecompr(rs1)
    if (test == "c.not"):
      lines = lines + "li x" + str(rd) + ", " + formatstr.format(rs2val)  + " # initialize rd to specific value\n"
      lines = lines + test + " x" + str(rd) + "  # performing not operation on rd and storing it in same register \n"
      lines = lines + test + " x" + str(rd) + "  # reverting to the prev value, help in covering rd_corners \n"
    elif test in ["c.zext.b","c.zext.h","c.zext.w","c.sext.b","c.sext.h"]:
      lines = lines + "li x" + str(rd) + ", " + formatstr.format(rs1val) + " # initialize leagalized rd to a random value that should get changed\n"
      lines = lines + test + " x" + str(rd) + " # perform operation\n"
  elif (test in stype):#["sb", "sh", "sw", "sd"]
    if (rs1 != 0):
      if (rs2 == rs1): # make sure registers are different so they don't conflict
          rs2 = (rs1 + 1) % 32
          if (rs2 == 0):
            rs2 = 1
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
      lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
      lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", " + signedImm12(-immval, immOffset=True) + " # sub immediate from rs1 to counter offset\n"
      lines = lines + test + " x" + str(rs2) + ", " + signedImm12(immval, immOffset=True) + "(x" + str(rs1) + ") # perform operation \n"
  elif (test in csstype):
    if (test == "c.swsp"):
      mul = 4
    elif (test == "c.sdsp"):
      mul = 8
    lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n" 
    lines = lines + "la sp" + ", scratch" + " # base address \n"
    lines = lines + test + " x" + str(rs2) +", " + str(int(ZextImm6(immval))*mul) + "(sp)" + "# perform operation\n"
  elif (test in csbtype):
    rs1 = legalizecompr(rs1)
    rs2 = legalizecompr(rs2)
    while (rs1 == rs2):
      rs2 = randint(8,15)
    lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
    lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
    lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", -" + unsignedImm2(immval) + " # sub immediate from rs1 to counter offset\n"
    lines = lines + test + " x" + str(rs2) + ", " + unsignedImm2(immval) + "(x" + str(rs1) + ") # perform operation \n"
  elif (test in cshtype):
    rs1 = legalizecompr(rs1)
    rs2 = legalizecompr(rs2)
    while (rs1 == rs2):
      rs2 = randint(8,15)
    lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val)  + " # initialize rs2\n"
    lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
    lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", -" + str(int(unsignedImm1(immval))*2) + " # sub immediate from rs1 to counter offset\n"
    lines = lines + test + " x" + str(rs2) + ", " + str(int(unsignedImm1(immval))*2) + "(x" + str(rs1) + ") # perform operation \n"
  elif (test in btype):#["beq", "bne", "blt", "bge", "bltu", "bgeu"]
    for same in range(2):
      if (same):
        rs1val = rs2val
        lines = lines + "# same values in both registers\n"
      lines = lines + "nop\n"
      lines = lines + "li x" + str(rs1) + ", " + formatstr.format(rs1val) + " # initialize rs1\n"
      lines = lines + "li x" + str(rs2) + ", " + formatstr.format(rs2val) + " # initialize rs2\n"
      lines = lines + test + " x" + str(rs1) + ", x" + str(rs2) + ", some_label_for_btype_" + str(immval) + str(same) + " # perform operation \n"
      lines = lines + "addi x0, x1, 1\n"
      lines = lines + "some_label_for_btype_" + str(immval)+ str(same) + ":\n"
      lines = lines + "addi x0, x2, 2\n"
      lines = lines + "nop\nnop\nnop\nnop\nnop\n"
  elif (test in jtype):#["jal"]
    lines = lines + "jal x" + str(rd) + ", 1f # perform operation\n"
    lines = lines + "nop\n"
    lines = lines + "1:\n"
  elif (test in jalrtype):#["jalr"]
    lines = lines + "la x" + str(rs1) + ", 1f\n"
    lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", " + signedImm12(-immval, immOffset=True) + " # add immediate to lower part of rs1\n"
    lines = lines + "jalr x" + str(rd) + ", x" + str(rs1) + ", " + signedImm12(immval, immOffset=True) + " # perform operation\n"
    lines = lines + "nop\n"
    lines = lines + "1:\n"
  elif (test in utype):#["lui", "auipc"]
    lines = lines + test + " x" + str(rd) + ", " + unsignedImm20(immval) + " # perform operation\n"
  elif (test in fr4type): #["fmadd.s", "fmsub.s", "fnmadd.s", "fnmsub.s"]
    lines = lines + "la x2, scratch\n"
    lines = lines + loadFloatReg(rs1, rs1val, xlen, flen)
    lines = lines + loadFloatReg(rs2, rs2val, xlen, flen)
    lines = lines + loadFloatReg(rs3, rs3val, xlen, flen)
    if not frm:
      lines = lines + test + " f" + str(rd) + ", f" + str(rs1) + ", f" + str(rs2) + ", f" + str(rs3) + " # perform operation\n"
    else:
      testInstr = f"{test} f{rd}, f{rs1}, f{rs2}, f{rs3}"
      lines = lines + genFrmTests(testInstr)
  elif (test in fltype):#["flw", "flh"]
    while (rs1 == 0):
      rs1 = randint(1, 31)
    while (rs1 == rs2):
      rs2 = randint(1, 31)
    tempreg1 = 1
    tempreg2 = 2
    while (tempreg1 in [rs1, rs2]):
      tempreg1 = randint(1,31)
    while (tempreg2 in [rs1, rs2, tempreg1]):
      tempreg2 = randint(1,31)
    storeop =  "sw" if (min (xlen, flen) == 32) else "sd"
    lines = lines + "la x" + str(rs1) + ", scratch" + " # base address \n"
    lines = lines + "addi x" + str(rs1) + ", x" + str(rs1) + ", " + signedImm12(-immval, immOffset=True) + " # sub immediate from rs1 to counter offset\n"
    if (flen > xlen): # flen = 64, xlen = 32
      lines = lines + f"li x{tempreg1}, 0x{formatstrFP.format(rs2val)[2:10]} # load x3 with 32 LSBs of {formatstrFP.format(rs2val)}\n"
      lines = lines + f"li x{tempreg2}, 0x{formatstrFP.format(rs2val)[10:18]} # load x3 with 32 MSBs {formatstrFP.format(rs2val)}\n"
      lines = lines + f"{storeop} x{tempreg1}, {signedImm12(immval, immOffset=True)}(x{rs1}) # store x3 (0x{formatstrFP.format(rs2val)[2:10]}) in memory\n"
      lines = lines + f"addi x{rs1}, x{rs1}, 4 # move address up by 4\n"
      lines = lines + f"{storeop} x{tempreg2}, {signedImm12(immval, immOffset=True)}(x{rs1}) # store x4 (0x{formatstrFP.format(rs2val)[10:18]}) in memory 4 bytes after x3\n"
      lines = lines + f"addi x{rs1}, x{rs1}, - 4 # move back to scratch\n"
      lines = lines + f"{test} f{rd}, {signedImm12(immval, immOffset=True)}(x{rs1}) # perform operation\n"
    else:
      lines = lines + f"li x{tempreg1}, {formatstrFP.format(rs2val)} # load x3 with value {formatstrFP.format(rs2val)}\n"
      lines = lines + f"{storeop} x{tempreg1}, {signedImm12(immval, immOffset=True)}(x{rs1}) # store {formatstrFP.format(rs2val)} in memory\n"
      lines = lines + f"{test} f{rd}, {signedImm12(immval, immOffset=True)}(x{rs1}) # perform operation\n" 
  elif (test in fstype):#["fsw"]
    while (rs1 == 0): 
      rs1 = randint(1, 31) 
    lines = lines + f"la x2, scratch # base address\n"
    lines = lines + loadFloatReg(rs2, rs2val, xlen, flen)
    lines = lines + f"la x{rs1}, scratch # base address\n"
    lines = lines + f"addi x{rs1}, x{rs1}, {signedImm12(-immval, immOffset=True)} # sub immediate from rs1 to counter offset\n"
    lines = lines + test + " f" + str(rs2)  + ", " + signedImm12(immval, immOffset=True) + "(x" + str(rs1) + ") # perform operation\n" 
  elif (test in F2Xtype):#["fcvt.w.s", "fcvt.wu.s", "fmv.x.w"]
    while (rs2 == rs1):
      rs2 = randint(1, 31)
    lines = lines + "la x2, scratch" + " # base address \n"
    lines = lines + loadFloatReg(rs1, rs1val, xlen, flen)
    if not frm:
      lines = lines + test + " x" + str(rd) + ", f" + str(rs1) + " # perform operation\n"
    else:
      testInstr = f"{test} x{rd}, f{rs1}"
      lines = lines + genFrmTests(testInstr)
  elif (test in fcomptype): # ["feq.s", "flt.s", "fle.s"]
    lines = lines + "la x2, scratch\n"
    lines = lines + loadFloatReg(rs1, rs1val, xlen, flen)
    lines = lines + loadFloatReg(rs2, rs2val, xlen, flen)
    lines = lines + test + " x" + str(rd) + ", f" + str(rs1) + ", f" + str(rs2) + " # perform fcomp-type op\n"
  elif test in X2Ftype: # ["fcvt.s.w", "fcvt.s.wu", "fmv.w.x"]
    lines = lines + f"li x{rs1}, {formatstr.format(rs1val)} # load immediate value into integer register\n"
    testInstr = f"{test} f{rd}, x{rs1}"
    if not frm:
      lines = lines + testInstr
    else:
      lines = lines + genFrmTests(testInstr)
  else:
    print("Error: %s type not implemented yet" % test)
  f.write(lines)

def writeHazardVector(desc, rs1a, rs2a, rda, rs1b, rs2b, rdb, test, regconfig="xxxx", rs3a=None, rs3b=None, haz_type='waw'):
  # consecutive R-type instructions to trigger hazards                           ^~~~~~~~~ the types of the registers {rd, rs1, rs2, rs3} (x for int, f for float)
  reg0 = regconfig[0]
  reg1 = regconfig[1]
  reg2 = regconfig[2]
  reg3 = regconfig[3]

  lines = "\n# Testcase " + str(desc) + "\n"

  match haz_type:
    case 'waw':
      if reg0 == 'f':
        test2 = 'fmul.s'
        reg0_2 = 'f'
        reg1_2 = 'f'
        reg2_2 = 'f'
      else:
        test2 = 'add'
        reg0_2 = 'x'
        reg1_2 = 'x'
        reg2_2 = 'x'
    case 'war':
      if reg1 == 'f':
        test2 = 'fmul.s'
        reg0_2 = 'f'
        reg1_2 = 'f'
        reg2_2 = 'f'
      else: 
        test2 = 'add'
        reg0_2 = 'x'
        reg1_2 = 'x'
        reg2_2 = 'x'
    case 'raw':
      if reg0 == 'f':
        test2 = 'fmul.s'
        reg0_2 = 'f'
        reg1_2 = 'f'
        reg2_2 = 'f'
      else:
        test2 = 'add'
        reg0_2 = 'x'
        reg1_2 = 'x'
        reg2_2 = 'x'

  if (test in rd_rs1_rs2_rs3_format): 
    lines = lines + test + " " + reg0 + str(rda) + ", " + reg1 + str(rs1a) + ", " + reg2 + str(rs2a) + ", " + reg3 + str(rs3a) + " # perform first operation\n" 
    lines = lines + test2 + " " + reg0_2 + str(rdb) + ", " + reg1_2 + str(rs1b) + ", " + reg2_2 + str(rs2b) + " # perform second operation\n" 
  elif (test in rd_rs1_format):
    lines = lines + test + " " + reg0 + str(rda) + ", " + reg1 + str(rs1a) +  " # perform first operation\n"
    lines = lines + test2 + " " + reg0_2 + str(rdb) + ", " + reg1_2 + str(rs1b) + ", " + reg2_2 + str(rs2b) + " # perform second operation\n" 
  elif (test in flitype):
    lines = lines + f"{test} f{rda}, {flivals[rs1a]} # perform first operation\n"
    lines = lines + test2 + " " + reg0_2 + str(rdb) + ", " + reg1_2 + str(rs1b) + ", " + reg2_2 + str(rs2b) + " # perform second operation\n" 
    #                                      ^~~~~~~~~~~~~~~~~~~~~~~ translate register encoding to C-style literal to make the assembler happy
  elif (test in rd_rs1_rs2_format): 
    lines = lines + test + " " + reg0 + str(rda) + ", " + reg1 + str(rs1a) + ", " + reg2 + str(rs2a) + " # perform first operation\n" 
    lines = lines + test2 + " " + reg0_2 + str(rdb) + ", " + reg1_2 + str(rs1b) + ", " + reg2_2 + str(rs2b) + " # perform second operation\n" 
  else:
    # TODO: need to make new cases for instruction formats not accounted for above
    print(f"Warning: Hazard tests not yet implemented for {test}")
    pass
  f.write(lines)

def randomize(rs1=None, rs2=None, rs3=None, allunique=True):
    if rs1 is None: 
      rs1 = randint(1, 31)
    if rs2 is None: 
      rs2 = randint(1, 31)
    if (rs3 is not None):
      rs3 = randint(1, 31)
      rs3val = randint(0, 2**xlen-1)
    # all three source registers must be different for corners to work
    while (rs1 == rs2 and allunique):
      rs2 = randint(1,31)
    while ((rs3 is not None) and ((rs3 == rs1) or (rs3 == rs2)) and allunique):
      rs3 = randint(1,31)
    # choose rd that is different than rs1 and rs2 and rs3
    rd = rs1
    while ((rd == rs1) or (rd == rs2) or ((rs3 is not None) and (rd == rs3))):
      rd = randint(1, 31)
    rs1val = randint(0, 2**xlen-1)
    rs2val = randint(0, 2**xlen-1)
    immval = randint(0, 2**xlen-1)
    rdval = randint(0, 2**xlen-1)
    if (rs3 is None): return [rs1, rs2, rd, rs1val, rs2val, immval, rdval]
    else: return [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval]

def make_rd(test, xlen, rng):
  for r in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = "cp_rd (Test destination rd = x" + str(r) + ")"
    writeCovVector(desc, rs1, rs2, r, rs1val, rs2val, immval, rdval, test, xlen)

def make_fd(test, xlen):
  for r in range(32):
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    desc = "cp_fd (Test destination fd = x" + str(r) + ")"
    writeCovVector(desc, rs1, rs2, r, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val)

def make_fs1(test, xlen):
  for r in range(32):
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    while (r == rs2):
      rs2 = randint(1,31)
    desc = "cp_fs1 (Test source fs1 = f" + str(r) + ")"
    writeCovVector(desc, r, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val)

def make_fs2(test, xlen):
  for r in range(32):
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    while (r == rs1):
      rs1 = randint(1,31)
    desc = "cp_fs2 (Test source fs2 = f" + str(r) + ")"
    writeCovVector(desc, rs1, r, rd, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val)

def make_rs1(test, xlen, rng = range(32)):
  for r in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize(rs1=r, allunique=True)
    desc = "cp_rs1 (Test source rs1 = x" + str(r) + ")"
    writeCovVector(desc, r, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen)

def make_rs2(test, xlen, rng = range(32)):
  for r in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize(rs2=r, allunique=True)
    desc = "cp_rs2 (Test source rs2 = x" + str(r) + ")"
    writeCovVector(desc, rs1, r, rd, rs1val, rs2val, immval, rdval, test, xlen)

def make_rd_rs1(test, xlen, rng):
  for r in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = f"cmp_rd_rs1 (Test rd = rs1 = x{r})"
    writeCovVector(desc, r, rs2, r, rs1val, rs2val, immval, rdval, test, xlen)

def make_rd_rs2(test, xlen, rng):
  for r in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = "cmp_rd_rs2 (Test rd = rs1 = x" + str(r) + ")"
    writeCovVector(desc, rs1, r, r, rs1val, rs2val, immval, rdval, test, xlen)

def make_rd_rs1_rs2(test, xlen):
  for r in range(32):
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = "cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x" + str(r) + ")"
    writeCovVector(desc, r, r, r, rs1val, rs2val, immval, rdval, test, xlen)

def make_rs1_rs2(test, xlen):
  for r in range(32):
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = "cmp_rs1_rs2 (Test rs1 = rs2 = x" + str(r) + ")"
    writeCovVector(desc, r, r, rd, rs1val, rs2val, immval, rdval, test, xlen)

def make_rs1_corners(test, xlen):
  for v in corners:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = "cp_rs1_corners (Test source rs1 value = " + hex(v) + ")"
    if ((test in cbptype) or (test in citype)):
      writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, v, test, xlen)
    else:
      writeCovVector(desc, rs1, rs2, rd, v, rs2val, immval, rdval, test, xlen)

def make_rs2_corners(test, xlen):
    for v in corners:
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      if test in ["c.swsp", "c.sdsp"]:
        while (rs2 == 2):
          rs2 = randint(0,31)
      desc = "cp_rs2_corners (Test source rs2 value = " + hex(v) + ")"
      writeCovVector(desc, rs1, rs2, rd, rs1val, v, immval, rdval, test, xlen)

def make_rd_corners(test, xlen, corners):
  if test in c_shiftitype:
    for v in corners:
      # rs1 = all 1s, rs2 = v, others are random
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + " Shifted by 1)"
      writeCovVector(desc, rs1, rs2, rd, -1, v, 1, rdval, test, xlen)
  elif test in catype:   # Using rs1val as temp variable to pass rd value
    for v in corners:
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      while (legalizecompr(rd) == legalizecompr(rs2)):
        rs2 = randint(0,31)   
      if test in ["c.or","c.addw","c.xor"]:
        rd_temp = 0
        rs2_temp = v
      elif test in ["c.and"]:
        rd_temp = -1
        rs2_temp = v
      elif test in ["c.mul"]:
        rd_temp = 1
        rs2_temp = v
      elif test in ["c.sub","c.subw"]:
        rd_temp =  v>>1
        rs2_temp = (-v)>>1
      writeCovVector(desc, rs1, rs2, rd, rd_temp, rs2_temp, 0, rdval, test, xlen)          
  elif test in crtype:
    for v in corners:
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      rs2val = -(rdval - v)
      writeCovVector(desc, rs1, rs2, rd, 0, rs2val, 0, rdval, test, xlen)
  elif (test == "c.addiw" or test == "c.addi"):
    for v in corners:
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      immval = int(signedImm6(immval))
      rdval = v - immval
      rdval &= 0xFFFFFFFFFFFFFFFF   # This prevents -ve decimal rdval (converts -10 to 18446744073709551606)
      writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen)
  elif (test == "c.lui"):
    for v in corners:
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      writeCovVector(desc, rs1, rs2, rd, v, v, v, rdval, test, xlen)
  else:
    for v in corners:
      # rs1 = 0, rs2 = v, others are random
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      writeCovVector(desc, rs1, 0, rd, v, rs2val, 0, rdval, test, xlen)
      # rs1, rs2 = v, others are random
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      writeCovVector(desc, rs1, rs2, rd, v, v, v, rdval, test, xlen)
      # rs1 = all 1s, rs2 = v, others are random
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cp_rd_corners (Test rd value = " + hex(v) + ")"
      writeCovVector(desc, rs1, rs2, rd, -1, v, -1, rdval, test, xlen)

def make_rd_corners_lui(test, xlen, corners):
  for v in corners:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    desc = "cp_rd_corners_lui (Test rd value = " + hex(v) + ")"
    writeCovVector(desc, rs1, rs2, rd,rs1val, rs2val, v>>12, rdval, test, xlen)   

def make_rd_rs1_eqval(test, xlen):
  [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
  desc = "cmp_rdm_rs1_eqval (Test rs1 = rd = " + hex(rs1val) + ")"
  writeCovVector(desc, rs1, 0, rd, rdval, rs2val, immval, rdval, test, xlen)

def make_rd_rs2_eqval(test, xlen):
  [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
  desc = "cmp_rd_rs2_eqval (Test rs2 = rd = " + hex(rdval) + ")"
  writeCovVector(desc, 0, rs2, rd, rdval, rdval, immval, rdval, test, xlen)

def make_rs1_rs2_eqval(test, xlen):
  [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
  desc = "cmp_rs1_rs2_eqval (Test rs1 = rs2 = " + hex(rs1val) + ")"
  writeCovVector(desc, rs1, rs2, rd, rs1val, rs1val, immval, rdval, test, xlen)

def make_cp_gpr_hazard(test, xlen):
  for haz in ["raw", "waw", "war"]:
    for src in range(2):
      [rs1a, rs2a, rs3a, rda, rs1vala, rs2vala, rs3vala, immvala, rdvala] = randomize(rs3=True)
      [rs1b, rs2b, rs3b, rdb, rs1valb, rs2valb, rs3valb, immvalb, rdvalb] = randomize(rs3=True)
      # set up hazard
      if (haz == "raw"):
        if (src):
          rs2b = rda
        else:
          rs1b = rda
      elif (haz == "waw"):  
        rdb = rda
      elif (haz == "war"):
        if (src):
          rdb = rs2a
        else:
          rdb = rs1a
      desc = "cmp_gpr_hazard " + haz +  " test"
      regconfig = 'xxxx' # default to all int registers
      if (test in regconfig_ffff):
        regconfig = 'ffff'
      if (test in regconfig_xfff):
        regconfig = 'xfff'
      if (test in regconfig_fxxx):
        regconfig = 'fxxx'
      writeHazardVector(desc, rs1a, rs2a, rda, rs1b, rs2b, rdb, test, regconfig=regconfig, rs3a=rs3a, rs3b=rs3b, haz_type=haz)

def make_cp_gpr_hazard_no_war(test, xlen):
  for haz in ["raw", "waw"]:
    for src in range(2):
      [rs1a, rs2a, rs3a, rda, rs1vala, rs2vala, rs3vala, immvala, rdvala] = randomize(rs3=True)
      [rs1b, rs2b, rs3b, rdb, rs1valb, rs2valb, rs3valb, immvalb, rdvalb] = randomize(rs3=True)
      # set up hazard
      if (haz == "raw"):
        if (src):
          rs2b = rda
        else:
          rs1b = rda
      elif (haz == "waw"):  
        rdb = rda
      desc = "cmp_gpr_hazard " + haz +  " test"
      regconfig = 'xxxx' # default to all int registers
      if (test in regconfig_ffff):
        regconfig = 'ffff'
      if (test in regconfig_xfff):
        regconfig = 'xfff'
      if (test in regconfig_fxxx):
        regconfig = 'fxxx'
      writeHazardVector(desc, rs1a, rs2a, rda, rs1b, rs2b, rdb, test, regconfig=regconfig, rs3a=rs3a, rs3b=rs3b, haz_type=haz)

def make_rs1_sign(test, xlen):
   for v in [1, -1]:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    rs1val = abs(rs1val % 2**(xlen-1)) * v;
    desc = "cp_rs1_sign (Test source rs1 value = " + hex(rs1val) + ")"
    writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen)

def make_rs2_sign(test, xlen):
  for v in [1, -1]:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    rs2val = abs(rs2val % 2**(xlen-1)) * v;
    desc = "cp_rs2_sign (Test source rs2 value = " + hex(rs2val) + ")"
    writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen)

def make_cr_rs1_rs2_corners(test, xlen):
  for v1 in corners:
    for v2 in corners:
      # select distinct rs1 and rs2
      [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      while rs1 == rs2:
        [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
      desc = "cr_rs1_rs2_corners (Test source rs1 = " + hex(v1) + " rs2 = " + hex(v2) + ")"
      writeCovVector(desc, rs1, rs2, rd, v1, v2, immval, rdval, test, xlen)

def make_imm_zero(test, xlen):
  [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
  desc = "cp_imm_zero"
  writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, 0, rdval, test, xlen)

def make_j_imm_ones_zeros(test, xlen):
  for align in range(2,12):
    lines = "\n# Testcase cp_imm_ones_zeros " + str(align) + "\n"
    if (test == "jal"):
      lines = lines + "jal x20, 1f # jump to aligned address to stress immediate\n"
    elif (test in ["c.jal", "c.j"]):
      lines = lines + test + " 1f # jump to aligned address to stress immediate\n"
    lines = lines + ".align " + str(align) + "\n"
    lines = lines + "1:\n"
    f.write(lines)

def make_jalr_imm_ones_zeros(test, xlen):

  for i in range(0,12):
    imm_value = 2**i # immediate value from 2^0 to 2^11        
    lines = "\n# Testcase cp_imm_ones_zeros bin " + str(i) + "_1 \n"
    lines = lines + "la x21, 1f\n" #load the address of the label '1' into x21
    # if (imm_value >= 2047):
    #   lines = lines + "addi x21, x21, 2047\n"
    #   new_imm = imm_value - 2047
    #   lines = lines + "addi x21, x21, " + signedImm12(new_imm, immOffset=True)  + "\n"
    # else:
    lines = lines + "addi x21, x21, " + signedImm12(-imm_value, immOffset=True)  + "\n"

    lines = lines + "jalr x20, x21, "+ signedImm12(imm_value, immOffset=True) +" # jump to assigned address to stress immediate\n" # jump to the label using jalr
    lines = lines + "1:\n"
    f.write(lines)

def make_offset(test, xlen):
  lines = "\n# Testcase cp_offset\n"
  if (test in btype):
    lines = lines + "j 2f # jump past backward branch target\n"
    lines = lines + "1: j 3f # backward branch target: jump past backward branch\n"
    lines = lines + "2: " + test + " x0, x0, 1b # backward branch\n"
  elif (test in crtype):
    lines = lines + "j 2f # jump past backward branch target\n"
    lines = lines + "1: j 3f # backward branch target: jump past backward branch\n"
    rs1 = randint(1, 31)
    lines = lines + "2: " + "la x" + str(rs1) + ", 1b\n"
    lines = lines + test + " x" + str(rs1) + " # backward branch\n"
  elif (test in cjtype):
    lines = lines + "j 2f # jump past backward branch target\n"
    lines = lines + "1: j 3f # backward branch target: jump past backward branch\n"
    lines = lines + "2: " + "nop\n"
    lines = lines + test + " 1b" + " # backward branch\n"
  elif (test in cbtype):
    lines = lines + "j 2f # jump past backward branch target\n"
    lines = lines + "1: j 3f # backward branch target: jump past backward branch\n"
    rs1val = 0 if test == "c.beqz" else 1  # This makes sure branch is taken for both beqz & bnez
    lines = lines + "2: " + f"li x8, {rs1val}" + f" # initialize rs1 to {rs1val}\n"
    lines = lines + test + " x8,  1b # backward branch\n"
  lines = lines + "3: nop # done with sequence\n"
  f.write(lines)

def make_mem_hazard(test, xlen): 
  lines = "\n# Testcase mem_hazard (no dependency)\n"
  lines = lines + "la x1, scratch\n"
  lines = lines + test + " x2, 0(x1)\n"
  f.write(lines)

def make_f_mem_hazard(test, xlen):
  lines = "\n# Testcase f_mem_hazard (no dependency)\n"
  lines = lines + "la x1, scratch\n"
  lines = lines + test + " f2, 0(x1)\n"
  f.write(lines)

def make_cp_imm_corners(test, xlen, corners_imm):
  desc = "cp_imm_corners"
  [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
  for v1 in corners_imm:
    writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, v1, rdval, test, xlen)

def make_cr_rs1_imm_corners(test, xlen, corners_imm):
  desc = "cr_rs1_imm_corners"
  [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
  for v1 in corners:
    for v2 in corners_imm:
      if ((test in cbptype) or (test in citype)):
        writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, v2, v1, test, xlen)
      else:
        writeCovVector(desc, rs1, rs2, rd, v1, rs2val, v2, rdval, test, xlen)


def make_imm_shift(test, xlen):
  desc = "cp_imm_shift"
  if test in shiftwtype:
    rng = range(1, 32)
  elif test in c_shiftitype:
    rng = range(1, xlen)
  else:
    rng = range(0, xlen)
  
  for shift in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, shift, rdval, test, xlen)


def make_imm_mul(test, xlen):
  desc = "cp_imm_mul"
  if test in ciwtype:
    rng = range(1,256)
  elif test in citype or test in csstype:
    if test in ["c.lwsp", "c.ldsp", "c.swsp", "c.sdsp"]:
      rng = range(64)
    else:
      rng = range(-32,32)
  else:
    rng = range(32) 
  for imm in rng:
    [rs1, rs2, rd, rs1val, rs2val, immval, rdval] = randomize()
    writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, imm, rdval, test, xlen)

def make_fd_fs1(test, xlen, frm=False):
  for r in range(32):
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    desc = "cmp_fd_fs1 (Test fd = fs1 = f" + str(r) + ")"
    writeCovVector(desc, r, rs2, r, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val, frm=frm)

def make_fd_fs2(test, xlen):
  for r in range(32):
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    desc = "cmp_fd_fs2 (Test fd = fs2 = f" + str(r) + ")"
    writeCovVector(desc, rs1, r, r, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val)

def make_frm(test, xlen):
  [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
  desc = "cp_frm"
  writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3, frm=True)

def make_cr_fs1_fs2_corners(test, xlen, frm = False):
  corners = fcorners
  if test[-1] == "h":
    corners = fcornersH
  if test[-1] == "d":
    corners = fcornersD
  for v1 in corners:
    for v2 in corners:
      # select distinct fs1 and fs2
      [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
      while rs1 == rs2:
        [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
      desc = "cr_fs1_fs2_corners (Test source fs1 = " + hex(v1) + " fs2 = " + hex(v2) + ")"
      writeCovVector(desc, rs1, rs2, rd, v1, v2, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val, frm=frm)

def make_cr_fs1_fs3_corners(test, xlen, frm = False):
  corners = fcorners
  if test[-1] == "h":
    corners = fcornersH
  if test[-1] == "d":
    corners = fcornersD
  for v1 in corners:
    for v2 in corners:
      # select distinct fs1 and fs3
      [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
      desc = "cr_fs1_fs3_corners (Test source fs1 = " + hex(v1) + " fs3 = " + hex(v2) + ")"
      writeCovVector(desc, rs1, rs2, rd, v1, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=v2, frm=frm)

def make_fs1_corners(test, xlen, fcorners):
  for v in fcorners:
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    while rs2 == rs1:
      rs2 = randint(1, 31)
    desc = "cp_fs1_corners (Test source fs1 value = " + hex(v) + ")"
    writeCovVector(desc, rs1, rs2, rd, v, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val)

def make_fs2_corners(test, xlen, fcorners):
  for v in fcorners:
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    while rs2 == rs1:
      rs2 = randint(1, 31)
    desc = "cp_fs2_corners (Test source fs2 value = " + hex(v) + ")"
    writeCovVector(desc, rs1, rs2, rd, rs1val, v, immval, rdval, test, xlen, rs3=rs3, rs3val=rs3val)

def make_fs3_corners(test, xlen, fcorners):
  for v in fcorners:
    [rs1, rs2, rs3, rd, rs1val, rs2val, rs3val, immval, rdval] = randomize(rs3=True)
    desc = "cp_fs3_corners (Test source fs3 value = " + hex(v) + ")"
    writeCovVector(desc, rs1, rs2, rd, rs1val, rs2val, immval, rdval, test, xlen, rs3=rs3, rs3val=v)

def write_tests(coverpoints, test, xlen):
  for coverpoint in coverpoints:
    if (coverpoint == "cp_asm_count"):
      if (test == "c.nop"):   # Writing cp_asm_count for 'c.nop' only
        f.write("\n# Testcase cp_asm_count\nc.nop\n")
    elif (coverpoint == "cp_rd"):
      make_rd(test, xlen, range(32))
    elif(coverpoint == "cp_rd_nx0" or coverpoint == "cp_rd_nx2"):
      make_rd(test, xlen, range(1,32))
    elif (coverpoint == "cp_rdp"):
      make_rd(test, xlen, range(8, 16))
    elif (coverpoint == "cp_rs1p"):
      make_rs1(test, xlen, range(8, 16))
    elif (coverpoint == "cp_rs2p"):
      make_rs2(test, xlen, range(8, 16))
    elif (coverpoint == "cp_fd"):
      make_fd(test, xlen)
    elif (coverpoint == "cp_fs1"):
      make_fs1(test, xlen)
    elif (coverpoint == "cp_fs2"):
      make_fs2(test, xlen)
    elif (coverpoint == "cp_fs1_corners"):
      make_fs1_corners(test, xlen, fcorners)
    elif (coverpoint == "cp_fs2_corners"):
      make_fs2_corners(test, xlen, fcorners)
    elif (coverpoint == "cp_fs3_corners"):
      make_fs3_corners(test, xlen, fcorners)
    elif (coverpoint == "cp_fs1_corners_D"):
      make_fs1_corners(test, xlen, fcornersD)
    elif (coverpoint == "cp_fs2_corners_D"):
      make_fs2_corners(test, xlen, fcornersD)
    elif (coverpoint == "cp_fs3_corners_D"):
      make_fs3_corners(test, xlen, fcornersD)
    elif (coverpoint == "cp_fs1_corners_H"):
      make_fs1_corners(test, xlen, fcornersH)
    elif (coverpoint == "cp_fs2_corners_H"):
      make_fs2_corners(test, xlen, fcornersH)
    elif (coverpoint == "cp_fs3_corners_H"):
      make_fs3_corners(test, xlen, fcornersH)
    # elif (coverpoint == "cp_fs1_corners_Q"):
    #   make_fs1_corners(test, xlen, fcornersQ)
    # elif (coverpoint == "cp_fs2_corners_Q"):
    #   make_fs2_corners(test, xlen, fcornersQ)
    # elif (coverpoint == "cp_fs3_corners_Q"):
    #   make_fs3_corners(test, xlen, fcornersQ)
    elif (coverpoint == "cp_rs1"):
      make_rs1(test, xlen, range(32))
    elif (coverpoint == "cp_rs1_nx0"):
      make_rs1(test, xlen, range(1,32))
    elif (coverpoint == "cp_rs2"):
      make_rs2(test, xlen, range(32)) 
    elif (coverpoint == "cp_rs2_nx0"):
      make_rs2(test, xlen, range(1,32))
    elif (coverpoint == "cmp_rd_rs1"):
      make_rd_rs1(test, xlen, range(32))
    elif (coverpoint == "cmp_rd_rs1_c"):
      make_rd_rs1(test, xlen, range(8, 16))
    elif (coverpoint == "cmp_rd_rs2"):
      make_rd_rs2(test, xlen, range(32))
    elif (coverpoint == "cmp_rd_rs2_c"):
      make_rd_rs2(test, xlen, range(8, 16))
    elif (coverpoint == "cmp_rd_rs1_rs2"):
      make_rd_rs1_rs2(test, xlen)
    elif (coverpoint == "cmp_rs1_rs2"):
      make_rs1_rs2(test, xlen)
    elif (coverpoint == "cp_rs1_corners"):
      make_rs1_corners(test, xlen)
    elif (coverpoint == "cp_rs2_corners"):
      make_rs2_corners(test, xlen)
    elif (coverpoint == "cp_rd_corners_slli"):
      if (xlen == 32):
        make_rd_corners(test, xlen, c_slli_32_corners)
      else:
        make_rd_corners(test, xlen, c_slli_64_corners)
    elif (coverpoint == "cp_rd_corners_srli"):
      if (xlen == 32):
        make_rd_corners(test, xlen, c_srli_32_corners)
      else:
        make_rd_corners(test, xlen, c_srli_64_corners)
    elif (coverpoint == "cp_rd_corners_srai"):
      if (xlen == 32):
        make_rd_corners(test, xlen, c_srai_32_corners)
      else:
        make_rd_corners(test, xlen, c_srai_64_corners)
    elif (coverpoint == "cp_rd_corners"):
      make_rd_corners(test, xlen, corners)
    elif (coverpoint == "cp_rd_corners_clui"):
      make_rd_corners(test, xlen, corners_6bits)
    elif (coverpoint == "cp_rd_corners_lw" or coverpoint == "cp_rd_corners_lwu"):
      make_rd_corners(test, xlen, corners_32bits)
    elif (coverpoint == "cp_rd_corners_lh" or coverpoint == "cp_rd_corners_lhu"):
      make_rd_corners(test, xlen, corners_16bits)           # Make rd corners for lh and lhu for both RV32I & RV64I
    elif (coverpoint == "cp_rd_corners_lb" or coverpoint == "cp_rd_corners_lbu"):
      make_rd_corners(test, xlen, corners_8bits)            # Make rd corners for lb and lbu for both RV32I & RV64I
    elif (coverpoint == "cp_rd_corners_6bit"):
      make_rd_corners(test, xlen, corners_6bits)
    elif (coverpoint == "cp_rd_corners_32bit"):
      make_rd_corners(test, xlen, corners_32bits)
    elif (coverpoint == "cp_rd_corners_lui"):
      make_rd_corners_lui(test, xlen, corners_20bits)            
    elif (coverpoint == "cp_rd_corners_lui"):
      make_rd_corners_lui(test, xlen)
    elif (coverpoint == "cmp_rd_rs1_eqval"):
      make_rd_rs1_eqval(test, xlen)
    elif (coverpoint == "cmp_rd_rs2_eqval"):
      make_rd_rs2_eqval(test, xlen)
    elif (coverpoint == "cmp_rs1_rs2_eqval"):
      make_rs1_rs2_eqval(test, xlen)
    elif (coverpoint == "cp_rs1_sign"):
      make_rs1_sign(test, xlen)
    elif (coverpoint == "cp_rs2_sign"):
      make_rs2_sign(test, xlen)
    elif (coverpoint == "cp_rd_sign"):
      pass # already covered by rd_corners
    elif (coverpoint == "cr_rs1_rs2_corners"):
      make_cr_rs1_rs2_corners(test, xlen)
    elif (coverpoint == "cp_imm12_corners"):
      make_cp_imm_corners(test, xlen, corners_imm_12bits)
    elif (coverpoint == "cp_imm6_corners"):
      make_cp_imm_corners(test, xlen, corners_imm_6bits)
    elif (coverpoint == "cr_rs1_imm_corners"):
      make_cr_rs1_imm_corners(test, xlen, corners_imm_12bits)
    elif (coverpoint == "cr_rs1_imm_corners_6bit"):
      make_cr_rs1_imm_corners(test, xlen, corners_imm_6bits)
    elif (coverpoint == "cr_rs1_rs2"):
      pass # already covered by cr_rs1_rs2_corners
    elif (coverpoint == "cp_gpr_hazard"):
      make_cp_gpr_hazard(test, xlen)
    elif (coverpoint == "cp_gpr_hazard_no_war"):
      make_cp_gpr_hazard_no_war(test, xlen)
    elif (coverpoint == "cp_fpr_hazard"):
      make_cp_gpr_hazard(test, xlen)
    elif (coverpoint == "cp_rs1_toggle"):
      pass #TODO toggle not needed and seems to be covered by other things
    elif (coverpoint == "cp_rs2_toggle"):
      pass #TODO toggle not needed and seems to be covered by other things
    elif (coverpoint == "cp_rd_toggle"):
      pass #TODO toggle not needed and seems to be covered by other things
    elif (coverpoint == "cp_fd_toggle"):
      pass #TODO toggle not needed and seems to be covered by other things
    elif (coverpoint == "cp_fd_toggle_lw"):
      pass #TODO toggle not needed and seems to be covered by other things
    elif (coverpoint == "cp_rd_toggle_jal"):
      pass #TODO toggle not needed and seems to be covered by other things
    elif (coverpoint == "cp_imm_sign"):
      make_imm_zero(test, xlen)
    elif (coverpoint == "cp_imm_ones_zeros_jal"):
      make_j_imm_ones_zeros(test, xlen)
    elif (coverpoint == "cp_rd_corners_sraiw"): 
      make_rd_corners(test,xlen,corners_sraiw)
    elif (coverpoint == "cp_imm_ones_zeros"):
      #cover point for jalr would still pass since it is getting covered by other instructions. But still testing it for satisfaction.
      if (test == "jalr"): 
        make_jalr_imm_ones_zeros(test, xlen)
    elif (coverpoint == "cp_imm_ones_zeros_c_jal"):
        make_j_imm_ones_zeros(test,xlen)
    elif (coverpoint == "cp_mem_hazard"):
      make_mem_hazard(test, xlen)
    elif (coverpoint == "cp_f_mem_hazard"):
      make_f_mem_hazard(test, xlen)
    elif (coverpoint == "cp_imm_zero"):
      make_imm_zero(test, xlen)
    elif (coverpoint == "cp_mem_unaligned"):
      pass # seems this should be part of privileged tests
    elif (coverpoint == "cp_offset"):
      make_offset(test, xlen)
    elif (coverpoint == "cr_nord_rs1_rs2"):
      pass #TODO (not if crosses are not needed)
    elif (coverpoint == "cp_imm_shift" or coverpoint == "cp_imm_shift_c" or coverpoint == "cp_imm_shift_w"):
      make_imm_shift(test, xlen)
    elif coverpoint in ["cp_imm_mul","cp_imm_mul_8","cp_imm_mul_addi4spn","cp_imm_mul_addi16sp","cp_imm_mul_4sp","cp_imm_mul_8sp"]:
      make_imm_mul(test, xlen)
    elif (coverpoint == "cp_fd"):
      make_fd(test, xlen)
    elif (coverpoint == "cp_fs1"):
      make_fs1(test, xlen)
    elif (coverpoint == "cp_fs2"):
      make_fs2(test, xlen)
    elif (coverpoint == "cp_fs3"):
      make_fs3(test, xlen)
    elif (coverpoint == "cp_rd_boolean"):
      pass # covered by other generators
    elif (coverpoint == "cmp_fd_fs1"):
      make_fd_fs1(test, xlen)
    elif (coverpoint == "cmp_fd_fs2"):
      make_fd_fs2(test, xlen)
    # elif (coverpoint == "cp_fs1_corners"):
    #   make_fs1_corners(test, xlen)
    # elif (coverpoint == "cp_fs2_corners"):
    #   make_fs2_corners(test, xlen)
    elif (coverpoint in ["cr_fs1_fs2_corners", "cr_fs1_fs2_corners_H", "cr_fs1_fs2_corners_D"]):
      make_cr_fs1_fs2_corners(test, xlen)
    elif (coverpoint in ["cr_fs1_fs2_corners_frm", "cr_fs1_fs2_corners_frm_H", "cr_fs1_fs2_corners_frm_D"]):
      make_cr_fs1_fs2_corners(test, xlen, frm = True)
    elif (coverpoint in ["cr_fs1_fs2_corners_frm4", "cr_fs1_fs2_corners_frm4_H", "cr_fs1_fs2_corners_frm4_D"]):
      make_cr_fs1_fs2_corners(test, xlen, frm = True)
    elif (coverpoint in ["cr_fs1_fs3_corners_frm", "cr_fs1_fs3_corners_frm_H", "cr_fs1_fs3_corners_frm_D"]):
      make_cr_fs1_fs3_corners(test, xlen, frm = True)
    elif (coverpoint in ["cr_fs1_fs3_corners_frm4", "cr_fs1_fs3_corners_frm4_H", "cr_fs1_fs3_corners_frm4_D"]):
      make_cr_fs1_fs3_corners(test, xlen, frm = True)
    elif (coverpoint in ["cp_frm_2", "cp_frm_3", "cp_frm_4"]):
      make_frm(test, xlen)
      
    else:
      print("Warning: " + coverpoint + " not implemented yet for " + test)
      
def getcovergroups(coverdefdir, coverfiles):
  coverpoints = {}
  curinstr = ""
  for coverfile in coverfiles:
    coverfile = coverdefdir + "/" + coverfile + "_coverage.svh"
    f = open(coverfile, "r")
    prev_line = "" 
    for line in f:
      m = re.search(r'cp_asm_count.*\"(.*)"', line)
      if (m):
#        if (curinstr != ""):
#          print(curinstr + ": " + str(coverpoints[curinstr]))
        curinstr = m.group(1)
        #  If in a Zc* dir, curinstr name is on previous line
        if (re.search(r'/RV..Zc.+_coverage', coverfile)):
          curinstr = re.search(r'option.comment = "(.*)"', prev_line).group(1)
        coverpoints[curinstr] = []
      m = re.search("\s*(\S+) :", line)
      if (m):
        coverpoints[curinstr].append(m.group(1))
      prev_line = line # Store for next iteration
    f.close()
    print(coverpoints)
    return coverpoints

##################################
# main body
##################################

if __name__ == '__main__':
  # change these to suite your tests
  WALLY = os.environ.get('WALLY')
  rtype = ["add", "sub", "sll", "slt", "sltu", "xor", "srl", "sra", "or", "and",
            "addw", "subw", "sllw", "srlw", "sraw",
            "mul", "mulh", "mulhsu", "mulhu", "div", "divu", "rem", "remu",
            "mulw", "divw", "divuw", "remw", "remuw",
            "czero.eqz", "czero.nez"
            ]
  loaditype = ["lb", "lh", "lw", "ld", "lbu", "lhu", "lwu"]
  shiftitype = ["slli", "srli", "srai", "slliw", "srliw", "sraiw"]
  shiftiwtype = ["slliw", "srliw", "sraiw"]
  itype = ["addi", "slti", "sltiu", "xori", "ori", "andi", "addiw"]
  stype = ["sb", "sh", "sw", "sd"]
  btype = ["beq", "bne", "blt", "bge", "bltu", "bgeu"]
  jtype = ["jal"]
  jalrtype = ["jalr"]
  utype = ["lui", "auipc"]
  fltype = ["flw", 
            "flh",
            "fld"]
  fstype = ["fsw", 
            "fsh",
            "fsd"]
  F2Xtype = ["fcvt.w.s", "fcvt.wu.s", "fmv.x.s", "fcvt.l.s", "fcvt.lu.s", # fmv.x.w aliased to fmv.x.s by imperas 
             "fcvt.w.h", "fcvt.wu.h", "fmv.x.h", "fcvt.l.h", "fcvt.lu.h",
             "fcvt.w.d", "fcvt.wu.d", "fmv.x.d", "fcvt.l.d", "fcvt.lu.d"]
  fr4type = ["fmadd.s", "fmsub.s", "fnmadd.s", "fnmsub.s", 
             "fmadd.h", "fmsub.h", "fnmadd.h", "fnmsub.h",
             "fmadd.d", "fmsub.d", "fnmadd.d", "fnmsub.d"]
  frtype = ["fadd.s", "fsub.s", "fmul.s", "fdiv.s", "fsgnj.s", "fsgnjn.s", "fsgnjx.s", "fmax.s", "fmin.s", 
            "fadd.h", "fsub.h", "fmul.h", "fdiv.h", "fsgnj.h", "fsgnjn.h", "fsgnjx.h", "fmax.h", "fmin.h",
            "fadd.d", "fsub.d", "fmul.d", "fdiv.d", "fsgnj.d", "fsgnjn.d", "fsgnjx.d", "fmax.d", "fmin.d"]
  fitype = ["fsqrt.s", 
            "fsqrt.h", 
            "fsqrt.d",
            "fcvt.s.h", "fcvt.h.s",
            "fcvt.s.d", "fcvt.d.s", 
            "fcvt.d.h", "fcvt.h.d"]
  fixtype = ["fclass.s", 
             "fclass.h",
             "fclass.d"]
  X2Ftype = ["fcvt.s.w", "fcvt.s.wu", "fmv.s.x", "fcvt.s.l", "fcvt.s.lu", 
             "fcvt.h.w", "fcvt.h.wu", "fmv.h.x", "fcvt.h.l", "fcvt.h.lu",
             "fcvt.d.w", "fcvt.d.wu", "fmv.d.x", "fcvt.d.l", "fcvt.d.lu"]
  fcomptype = ["feq.s", "flt.s", "fle.s",
               "feq.h", "flt.h", "fle.h",
               "feq.d", "flt.d", "fle.d"]
  citype = ["c.nop", "c.lui", "c.li", "c.addi", "c.addi16sp", "c.addiw","c.lwsp","c.ldsp"]
  c_shiftitype = ["c.slli","c.srli","c.srai"]
  cltype = ["c.lw","c.ld","c.flw"]
  cstype = ["c.sw","c.sd","c.fsw"]
  csstype = ["c.sdsp","c.swsp"]
  crtype = ["c.add", "c.mv", "c.jalr", "c.jr"]
  ciwtype = ["c.addi4spn"]
  cjtype = ["c.j","c.jal"]
  catype = ["c.sub","c.or","c.and","c.xor","c.subw","c.addw","c.mul"]
  cbptype = ["c.andi"]
  cbtype = ["c.beqz", "c.bnez"]
  shiftwtype = ["sraiw", "srliw"]
  csbtype = ["c.sb"]
  cshtype = ["c.sh"]
  clhtype = ["c.lh","c.lhu"]
  clbtype = ["c.lbu"]
  cutype = ["c.not","c.zext.b","c.zext.h","c.zext.w","c.sext.b","c.sext.h"]
  zcftype = ["c.flw", "c.fsw"] # Zcf instructions
  flitype = ["fli.s", "fli.h", "fli.d"] # technically FI type but with a strange "immediate" encoding, need special cases 

  floattypes = frtype + fstype + fltype + fcomptype + F2Xtype + fr4type + fitype + fixtype + X2Ftype + zcftype
  # instructions with all float args
  regconfig_ffff = frtype + fr4type + fitype + flitype
  # instructions with int first arg and the rest float args
  regconfig_xfff = F2Xtype + fcomptype + fixtype
  # instructions with fp first arg and the rest int args
  regconfig_fxxx = X2Ftype

  # for writeHazardVectors
  rd_rs1_rs2_format = rtype + frtype + fcomptype
  rd_rs1_imm_format = shiftitype + shiftiwtype + itype + utype + shiftwtype
  rd_rs1_rs2_rs3_format = fr4type
  rd_rs1_format = F2Xtype + X2Ftype + fitype + fixtype + crtype + catype + cutype
  rd_imm_format = citype + cstype + ciwtype + cbptype 

  # TODO: auipc missing, check whatelse is missing in ^these^ types

  author = "David_Harris@hmc.edu"
  xlens = [32, 64]
  numrand = 3
  corners = []
  fcorners = []

  # setup
  seed(0) # make tests reproducible

  # generate files for each test
  for xlen in xlens:
    extensions = ["I", "M", "F", "Zicond", "Zca", "Zfh", "Zcb", "ZcbM", "ZcbZbb", "D", "ZfhD"]
    if (xlen == 64):
      extensions += ["ZcbZba"]   # Add extensions which are specific to RV64
    if (xlen == 32):
      extensions += ["Zcf"]   # Add extensions which are specific to RV32
    for extension in extensions:
      coverdefdir = WALLY+"/addins/cvw-arch-verif/fcov/rv"+str(xlen)
      coverfiles = ["RV"+str(xlen)+extension] 
      coverpoints = getcovergroups(coverdefdir, coverfiles)
      formatstrlen = str(int(xlen/4))
      formatstr = "0x{:0" + formatstrlen + "x}" # format as xlen-bit hexadecimal number
      formatrefstr = "{:08x}" # format as xlen-bit hexadecimal number with no leading 0x
      if (xlen == 32):
        storecmd = "sw"
        wordsize = 4
      else:
        storecmd = "sd"
        wordsize = 8
      if (extension in ["D", "ZfaD", "ZfhD"]):
        flen = 64
      else:
        flen = 32
      formatstrlenFP = str(int(flen/4))
      formatstrFP = "0x{:0" + formatstrlenFP + "x}" # format as flen-bit hexadecimal number
      corners = [0, 1, 2, 2**(xlen-1), 2**(xlen-1)+1, 2**(xlen-1)-1, 2**(xlen-1)-2, 2**xlen-1, 2**xlen-2]
      if (xlen == 32):
        corners = corners + [0b01011011101111001000100001110111, 0b10101010101010101010101010101010, 0b01010101010101010101010101010101]
        fcorners = fcorners + [0x00000000,
                               0x80000000,
                               0x3f800000,
                               0xbf800000,
                               0x3fc00000,
                               0xbfc00000,
                               0x40000000,
                               0xc0000000,
                               0x00800000,
                               0x80800000,
                               0x7f7fffff,
                               0xff7fffff,
                               0x007fffff,
                               0x807fffff,
                               0x00400000,
                               0x80400000,
                               0x00000001, 
                               0x80000001, 
                               0x7f800000, 
                               0xff800000, 
                               0x7fc00000, 
                               0x7fffffff, 
                               0x7f800001, 
                               0x7fbfffff, 
                               0x7ef8654f, 
                               0x813d9ab0]
      else:
        corners = corners + [0b0101101110111100100010000111011101100011101011101000011011110111, # random
                             0b1010101010101010101010101010101010101010101010101010101010101010, # walking odd
                             0b0101010101010101010101010101010101010101010101010101010101010101, # walking even
                             0b0000000000000000000000000000000011111111111111111111111111111111, # Wmax
                             0b0000000000000000000000000000000011111111111111111111111111111110, # Wmaxm1
                             0b0000000000000000000000000000000100000000000000000000000000000000, # Wmaxp1
                             0b0000000000000000000000000000000100000000000000000000000000000001] # Wmaxp2
        
        corners_sraiw = [0b0000000000000000000000000000000000000000000000000000000000000000,
                         0b0000000000000000000000000000000000000000000000000000000000000001,
                         0b1111111111111111111111111111111111111111111111111111111111111111,
                         0b0000000000000000000000000000000001111111111111111111111111111111,
                         0b1111111111111111111111111111111110000000000000000000000000000000]
        
        
      corners_imm_12bits = [0, 1, 2, 1023, 1024, 2047, -2048, -2047, -2, -1]
      corners_16bits = [0, 1, 2, 2**(15), 2**(15)+1,2**(15)-1, 2**(15)-2, 2**(16)-1, 2**(16)-2,
                    0b0101010101010101, 0b1010101010101010, 0b0101101110111100, 0b1101101110111100]
      corners_8bits = [0, 1, 2, 2**(7), 2**(7)+1,2**(7)-1, 2**(7)-2, 2**(8)-1, 2**(8)-2,
                        0b01010101, 0b10101010, 0b01011011, 0b11011011]
      corners_32bits = [0, 1, 2, 2**(31), 2**(31)+1, 2**(31)-1, 2**(31)-2, 2**32-1, 2**32-2,
                        0b10101010101010101010101010101010, 0b01010101010101010101010101010101,
                        0b01100011101011101000011011110111, 0b11100011101011101000011011110111]
      corners_6bits = [0, 1, 2, 2**(5), 2**(5)+1, 2**(5)-1, 2**(5)-2, 2**(6)-1, 2**(6)-2,
                        0b101010, 0b010101, 0b010110]
      corners_imm_6bits = [0, 1, 2, 31, 30, -32, -31, -2, -1]
      corners_20bits = [0,0b11111111111111111111000000000000,0b10000000000000000000000000000000,
                        0b00000000000000000001000000000000,0b01001010111000100000000000000000]
      c_slli_32_corners  = [0,1,0b01000000000000000000000000000000,0b00111111111111111111111111111111,
                            0b01111111111111111111111111111111,0b01010101010101010101010101010101,
                            0b00101101110111100100010000111011]
      c_slli_64_corners  = [0x0000000000000000,0x0000000000000001,0x4000000000000000,0x0000000007fffffff,0x000000080000000,
                            0x3FFFFFFFFFFFFFFF,0x7FFFFFFFFFFFFFFF,0x5555555555555555,0x2DDE443BB1D7437B] 
      c_srli_32_corners  = [0,2,4,0b11111111111111111111111111111110, 0b11111111111111111111111111111100,
                            0b10101010101010101010101010101010,0b10110111011110010001000011101110]
      c_srli_64_corners =  [0x000000000000000,0x00000000000000002,0x0000000000000004,0x00000001fffffffe,0x00000001fffffffc,
                            0x0000000200000000,0x0000000200000002,0xfffffffffffffffe,0xfffffffffffffffc,0xaaaaaaaaaaaaaaaa,
                            0xb77910eec75d0dee]
      c_srai_32_corners  = [0,2,4,0b11111111111111111111111111111110, 0b00110111011110010001000011101110] 
      c_srai_64_corners  = [0x0000000000000000,0x0000000000000002,0x0000000000000004,0x00000001fffffffe,0x00000001fffffffc,
                            0x0000000200000000,0x0000000200000002,0xfffffffffffffffe,0xfffffffffffffffc,0x377910eec75d0dee]               
      
      
      fcorners = [0x00000000, 0x80000000, 0x3f800000, 0xbf800000, 0x3fc00000, 0xbfc00000, 0x40000000, 0xc0000000, 0x00800000, 
                  0x80800000, 0x7f7fffff, 0xff7fffff, 0x007fffff, 0x807fffff, 0x00400000, 0x80400000, 0x00000001, 0x80000001, 
                  0x7f800000, 0xff800000, 0x7fc00000, 0x7fffffff, 0x7f800001, 0x7fbfffff, 0x7ef8654f, 0x813d9ab0]
      
      fcornersD = [0x0000000000000000,
                  0x8000000000000000,
                  0x3FF0000000000000,
                  0xBFF0000000000000,
                  0x3FF8000000000000,
                  0xBFF8000000000000,
                  0x4000000000000000,
                  0xc000000000000000,
                  0x0010000000000000,
                  0x8010000000000000,
                  0x7FEFFFFFFFFFFFFF,
                  0xFFEFFFFFFFFFFFFF,
                  0x000FFFFFFFFFFFFF,
                  0x800FFFFFFFFFFFFF,
                  0x0008000000000000,
                  0x8008000000000000,
                  0x0000000000000001,
                  0x8000000000000001,
                  0x7FF0000000000000,
                  0xFFF0000000000000,
                  0x7FF8000000000000, 
                  0x7FFFFFFFFFFFFFFF,
                  0x7FF0000000000001,
                  0x7FF7FFFFFFFFFFFF,
                  0x5A392534A57711AD, 
                  0xA6E895993737426C]
      
      fcornersH = [0x0000,
                   0x8000,
                   0x3C00,
                   0xBC00,
                   0x3E00,
                   0xBE00,
                   0x4000,
                   0xC000,
                   0x0400,
                   0x8400,
                   0x7BFF,
                   0xFBFF,
                   0x03FF,
                   0x83FF,
                   0x0200,
                   0x8200,
                   0x0001,
                   0x8001,
                   0x7C00,
                   0xFC00,
                   0x7E00, 
                   0x7FFF,
                   0x7C01, 
                   0x7DFF,
                   0x58B4,
                   0xC93A]

      # fcornersQ = [] # TODO: Fill out quad precision F corners

      WALLY = os.environ.get('WALLY')
      pathname = WALLY+"/addins/cvw-arch-verif/tests/rv" + str(xlen) + "/"+extension+"/"
      cmd = "mkdir -p " + pathname + " ; rm -f " + pathname + "/*" # make directory and remove old tests in dir
      os.system(cmd)
      for test in coverpoints.keys():
        basename = "WALLY-COV-" + test 
        fname = pathname + "/" + basename + ".S"

        # print custom header part
        f = open(fname, "w")
        line = "///////////////////////////////////////////\n"
        f.write(line)
        line="// "+fname+ "\n// " + author + "\n"
        f.write(line)
        line ="// Created " + str(datetime.now()) + "\n"
        f.write(line)

        # insert generic header
        h = open(WALLY+"/addins/cvw-arch-verif/templates/testgen_header.S", "r")
        for line in h:  
          f.write(line)

        # add assembly lines to enable fp where needed
        if test in floattypes:
          float_en = "\n# set mstatus.FS to 01 to enable fp\nli t0,0x4000\ncsrs mstatus, t0\n\n"
          f.write(float_en)

        # print directed and random test vectors
        # Coverage for R-type arithmetic instructions
        #if (test not in rtests):
        #  exit("Error: %s not implemented yet" % test)
        #else:
        #  write_rtype_arith_vectors(test, xlen)
        write_tests(coverpoints[test], test, xlen) 

        # print footer
        line = "\n.EQU NUMTESTS," + str(1) + "\n\n"
        f.write(line)
        h = open(WALLY+"/addins/cvw-arch-verif/templates/testgen_footer.S", "r")
        for line in h:  
          f.write(line)

      # Finish
      f.close()