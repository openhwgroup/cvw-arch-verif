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
  'rtype' : {'instructions' : rtype, 'regconfig' : 'xxx_'},
  'rbtype' : {'instructions' : rbtype, 'regconfig' : 'xxx_'},
  'loaditype' : {'instructions' : loaditype, 'regconfig' : 'xx__'},
  'shiftitype' : {'instructions' : shiftitype, 'regconfig' : 'xx__'},
  'shiftiwtype' : {'instructions' : shiftiwtype, 'regconfig' : 'xx__'},
  'itype' : {'instructions' : itype, 'regconfig' : 'xx__'},
  'ibtype' : {'instructions' : ibtype, 'regconfig' : 'xx__'},
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
  'citype' : {'instructions' : citype, 'regconfig' : 'x___', 'compressed' : True, 'implicitxreg' : '_x__'}, # do a special case for c.nop in hazards, it only has asm_count
  'c_shiftitype' : {'instructions' : c_shiftitype, 'regconfig' : 'x___', 'compressed' : True},
  'cltype' : {'instructions' : cltype, 'regconfig' : 'xx__', 'compressed' : True},
  'cstype' : {'instructions' : cstype, 'regconfig' : '_xx_', 'compressed' : True},
  'csstype' : {'instructions' : csstype, 'regconfig' : '_x__', 'compressed' : True},
  'crtype' : {'instructions' : crtype, 'regconfig' : '_x__', 'compressed' : True},
  'ciwtype' : {'instructions' : ciwtype, 'regconfig' : '____', 'compressed' : True},
  'cjtype' : {'instructions' : cjtype, 'regconfig' : '____'}, 'compressed' : True,
  'catype' : {'instructions' : catype, 'regconfig' : 'x_x_', 'compressed' : True, 'implicitxreg' : '_x__'},
  'cbptype' : {'instructions' : cbptype, 'regconfig' : 'x___', 'compressed' : True},
  'cbtype' : {'instructions' : cbtype, 'regconfig' : '_x__', 'compressed' : True},
  'shiftwtype' : {'instructions' : shiftwtype, 'regconfig' : 'xx__'},
  'csbtype' : {'instructions' : csbtype, 'regconfig' : '_xx_', 'compressed' : True},
  'cshtype' : {'instructions' : cshtype, 'regconfig' : '_xx_', 'compressed' : True},
  'clhtype' : {'instructions' : clhtype, 'regconfig' : 'xx__', 'compressed' : True},
  'clbtype' : {'instructions' : clbtype, 'regconfig' : 'xx__', 'compressed' : True},
  'cutype' : {'instructions' : cutype, 'regconfig' : 'x___', 'compressed' : True},
  'zcftype' : {'instructions' : zcftype, 'regconfig' : 'uuuu'},
  'zcdtype' : {'instructions' : zcdtype, 'regconfig' : 'uuuu'},
  'flitype' : {'instructions' : flitype, 'regconfig' : 'f___'},
  'csrtype' : {'instructions' : csrtype, 'regconfig' : 'xx__'},
  'csritype' : {'instructions' : csrtype, 'regconfig' : 'x___'}
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
                dataRecord = data.copy()
                extensions[extensionName] = data.index.tolist()

                for instruction in extensions[extensionName]:
                # for each instruction in the extension, edit the right columns

                    #add your own functions in here if you want to edit things beyond hazards
                    data = editHazardCols(filePath, data, instruction, extensions, insMap)
                    
                if (not (data.equals(dataRecord))):
                    print("wrote new data for " + extensionName)
                    data.to_csv(filePath)

def findInstype(key, instruction, insMap):
    # within sublists with the key provided, find the first instance of the instruction

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

    # special cases for UET's instructions because their instruction groupings are non-standard
    match instruction:
        case "c.nop":
            print('c.nop does not trigger hazards')
            return data
        case "c.fld" | "c.fldsp" | "c.flw" | "c.flwsp":
            data.at[instruction, 'cp_fpr_hazard'] = 'w'
            data.at[instruction, 'cp_gpr_hazard'] = 'r'
            return data
        case "c.fsd" | "c.fsdsp" | "c.fsw" | "c.fswsp":
            data.at[instruction, 'cp_fpr_hazard'] = 'r'
            data.at[instruction, 'cp_gpr_hazard'] = 'r'
            return data

    regconfig = insMap[instype]['regconfig']
    implicitxreg = insMap[instype].get('implicitxreg', '____')
    fpr_val = []
    gpr_val = []

    for index, register in enumerate(regconfig):
        match register:
            case 'f':
                if index == 0:
                    fpr_val.append('w')
                elif index > 0:
                    fpr_val.append('r')
            case 'x':
                if index == 0:
                    gpr_val.append('w')
                elif index > 0:
                    gpr_val.append('r')
            case '_':
                pass
            case _:
                print('Unknown regconfig value for instruction ' + instruction + " in position " + index)

    for index, register in enumerate(implicitxreg):
        match register:
            case 'f':
                if index == 0:
                    fpr_val.append('w')
                elif index > 0:
                    fpr_val.append('r')
            case 'x':
                if index == 0:
                    gpr_val.append('w')
                elif index > 0:
                    gpr_val.append('r')
            case '_':
                pass
            case _:
                print('Unknown implicitxreg value for instruction ' + instruction + " in position " + index)


    data.at[instruction, 'cp_fpr_hazard'] = 'r' * ('r' in fpr_val) + 'w' * ('w' in fpr_val)
    data.at[instruction, 'cp_gpr_hazard'] = 'r' * ('r' in gpr_val) + 'w' * ('w' in gpr_val)

    return data

editTestplans(WALLY, testplansDir, insMap)