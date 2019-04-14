import xlwt
import os
import shutil
from datetime import date,datetime
#设置表格样式
def set_style(name,height,bold=False):
    style = xlwt.XFStyle()
    font = xlwt.Font()
    font.name = name
    font.bold = bold
    font.color_index = 4
    font.height = height
    style.font = font
    return style
def readDict(path):
    with open(path, 'r') as f:
        a = f.read()
        dictVariable = eval(a)
        return dictVariable
def writeExcel(myDict):
    f = xlwt.Workbook()
    sheet1 = f.add_sheet('tx.originWithModifierLCSOnly',cell_overwrite_ok=True) #获得sheet对象
    row0 = ["File","Contract"]
    colum0 = []
    colum1 = []
    for key in myDict:
        colum0.append(key)
        colum1.append(myDict[key])    
    #写第一行    
    for i in range(0,len(row0)):
        sheet1.write(0,i,row0[i],set_style('Times New Roman',220,True))
    #写第一列
    for i in range(0,len(colum0)):
        sheet1.write(i+1,0,colum0[i],set_style('Times New Roman',220,True))
    #写第二列
    for i in range(0,len(colum1)):
        sheet1.write(i+1,1,colum1[i],set_style('Times New Roman',220,True))
    f.save('tx.originWithModifierLCSOnly.xls')
    print('success')
def dict_value2key():
    BigDict = readDict('E:\\coopration\\叶家明\\tx_minna\\file_map')
    #BigDict = {'out151.sol':{'kaka':1, 'xixi':2},'out152.sol':{'lufei':3, 'suolong':4} }
    ##valueslist = list(dict.values())
    for k, v in BigDict.items():  #这个v是每一个二级字典, 这个k就是dict的每一个键。
        #print(list(v.values))
        if 82347 in list(v.values()):    #比如这一句就得到[1,2]:
            #print(k)
            filelist = []
            filelist.append(k)
            for contract, identifer in v.items():
                if identifer == 82347:
                    contractlist = []
                    contractlist.append(contract)
                    myDict = dict(zip(filelist, contractlist))
                    writeExcel(myDict)
                    break
dict_value2key()
##    contract for contract, identifer in v.items() if identifer == 2
##    print([contract for contract, identifer in v.items() if identifer == 2])
            

