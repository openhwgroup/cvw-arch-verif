#!/usr/bin/env python3

from testgen import *
import csv
import os
import pandas as pd

WALLY = os.environ.get('WALLY')
extensions = {}
testplansDir = 'addins/cvw-arch-verif/testplans'
skippedInstructions = []

insMap = {
  'rtype' : {'instructions' : rtype, 'regconfig' : 'xxxx'},
  'loaditype' : {'instructions' : loaditype, 'regconfig' : 'xx__'},
  'shiftitype' : {'instructions' : shiftitype, 'regconfig' : 'xx__'},
  'shiftiwtype' : {'instructions' : shiftiwtype, 'regconfig' : 'xx__'},
  'itype' : {'instructions' : itype, 'regconfig' : 'xx__'},
  'stype' : {'instructions' : stype, 'regconfig' : '_xx_'},
  'btype' : {'instructions' : btype, 'regconfig' : '_xx_'},
  'jtype' : {'instructions' : jtype, 'regconfig' : 'x___'},
  'jalrtype' : {'instructions' : jalrtype, 'regconfig' : 'xx__'},
  'utype' : {'instructions' : utype, 'regconfig' : 'x___'},
  'fltype' : {'instructions' : fltype, 'regconfig' : 'fx__'},
  'fstype' : {'instructions' : fstype, 'regconfig' : '_fx_'}, # TODO: make sure the logic for gpr/fpr hazards looks at all input fields
  'F2Xtype' : {'instructions' : F2Xtype, 'regconfig' : 'xf__'},
  'fr4type' : {'instructions' : fr4type, 'regconfig' : 'ffff'},
  'frtype' : {'instructions' : frtype, 'regconfig' : 'fff_'},
  'fitype' : {'instructions' : fitype, 'regconfig' : 'ff__'},
  'fixtype' : {'instructions' : fixtype, 'regconfig' : 'xf__'},
  'X2Ftype' : {'instructions' : X2Ftype, 'regconfig' : 'fx__'},
  'PX2Ftype' : {'instructions' : PX2Ftype, 'regconfig' : 'fxx_'},
  'fcomptype' : {'instructions' : fcomptype, 'regconfig' : 'xff_'},
  'citype' : {'instructions' : citype, 'regconfig' : 'x___'}, # do a special case for c.nop in hazards, it only has asm_count
  'c_shiftitype' : {'instructions' : c_shiftitype, 'regconfig' : 'x___'},
  'cltype' : {'instructions' : cltype, 'regconfig' : 'xx__'},
  'cstype' : {'instructions' : cstype, 'regconfig' : '_xx_'},
  'csstype' : {'instructions' : csstype, 'regconfig' : '_x__'},
  'crtype' : {'instructions' : crtype, 'regconfig' : '_x__'},
  'ciwtype' : {'instructions' : ciwtype, 'regconfig' : '____'},
  'cjtype' : {'instructions' : cjtype, 'regconfig' : '____'},
  'catype' : {'instructions' : catype, 'regconfig' : 'xx__'},
  'cbptype' : {'instructions' : cbptype, 'regconfig' : 'x___'},
  'cbtype' : {'instructions' : cbtype, 'regconfig' : '_x__'},
  'shiftwtype' : {'instructions' : shiftwtype, 'regconfig' : 'xx__'},
  'csbtype' : {'instructions' : csbtype, 'regconfig' : '_xx_'},
  'cshtype' : {'instructions' : cshtype, 'regconfig' : '_xx_'},
  'clhtype' : {'instructions' : clhtype, 'regconfig' : 'xx__'},
  'clbtype' : {'instructions' : clbtype, 'regconfig' : 'xx__'},
  'cutype' : {'instructions' : cutype, 'regconfig' : 'x___'},
  'zcftype' : {'instructions' : zcftype, 'regconfig' : 'xx__'}, # TODO: these regconfigs are wrong
  'zcdtype' : {'instructions' : zcdtype, 'regconfig' : 'xx__'}, # TODO: these regconfigs are wrong
  'flitype' : {'instructions' : flitype, 'regconfig' : 'ff__'} # TODO: fli doesn't read from float registers
  #add csrtype and csritype
}

def editTestplans(WALLY, testplansDir, insMap):
    # create a dictionary of all of the instructions whose testplans need to be edited
    for root, dirs, files in os.walk(os.path.join(WALLY,testplansDir)):
        for file in files:
        # step through each csv, but not other files under testplans
            if os.path.splitext(file)[1] == '.csv':
                # read out all instructions that are in this csv file, and store them into the extensions dict under the right key
                filePath = os.path.join(root, file)
                extensionName = os.path.splitext(file)[0]
                print('reading csv for ' + extensionName)

                data = pd.read_csv(filePath, dtype='str', header=0, index_col=0)
                extensions[extensionName] = data.index.tolist()

                for instruction in extensions[extensionName]:
                # for each instruction in the extension, edit the right columns

                    #add your own functions in here if you want to edit things beyond hazards
                    data = editHazardCols(filePath, data, instruction, extensions, insMap)
                    
                data.to_csv(filePath)

def findInstype(key, instruction, insMap):
    # within sublists with the key provided, find the instruction

    for k, v in insMap.items():
        if instruction in v[key]:
            return k

    print('instruction ' + instruction + ' not found in insMap')
    return 0

def editHazardCols(filePath, data, instruction, extensions, insMap):
    instype = findInstype('instructions', instruction, insMap)

    if instype == 0:
        print('skipping instruction ' + instruction + ' because it could not be found in insMap')
        skippedInstructions.append(instruction)
        return data

    if instruction == 'c.nop':
        print('c.nop does not trigger hazards')
        return data

    regconfig = insMap[instype]['regconfig']
    fpr_val = ''
    gpr_val = ''

    match regconfig[1]:
        case 'f': 
            fpr_val = fpr_val + 'r'
        case 'x':
            gpr_val = gpr_val + 'r'
        case '_':
            pass
        case _: 
            print('Unknown regconfig value for instruction ' + instruction + " rs1/2")

    match regconfig[0]:
        case 'f': 
            fpr_val = fpr_val + 'w'
        case 'x':
            gpr_val = gpr_val + 'w'
        case '_':
            pass
        case _: 
            print('Unknown regconfig value for instruction ' + instruction + " rd")
    
    data.at[instruction, 'cp_fpr_hazard'] = fpr_val
    data.at[instruction, 'cp_gpr_hazard'] = gpr_val

    # data.index[data['Instruction'] == instruction]
    return data

editTestplans(WALLY, testplansDir, insMap)