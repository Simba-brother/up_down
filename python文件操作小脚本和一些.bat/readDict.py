import os
import shutil
import xlrd
import xlwt
import xlrd
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
def readDict(relativePath, sheetName):
    with open(relativePath, 'r') as f:
        a = f.read()
        dictName = eval(a)
        #ExcelFile=xlrd.open_workbook('fn.xls')
        
        f = xlwt.Workbook()
        #sheet1 = f.add_sheet(sheetName,cell_overwrite_ok=True)
        sheet2 = f.add_sheet(sheetName,cell_overwrite_ok=True) #获得sheet对象
        row0 = ["File","Contract"]
        colum0 = []
        colum1 = []
        for key in dictName:
            colum0.append(key)
##            for contractName in dictName[key]:
##                contractNameString = contractName+' '
##            colum1.append(contractNameString)
            
            for index in range(len(dictName[key])):
                dictName[key][index] = dictName[key][index]+' '
            colum1.append(dictName[key])
        #写第一行    
        for i in range(0,len(row0)):
            sheet2.write(0,i,row0[i],set_style('Times New Roman',220,True))
        #写第一列
        for i in range(0,len(colum0)):
            sheet2.write(i+1,0,colum0[i],set_style('Times New Roman',220,True))
        #写第二列
        for i in range(0,len(colum1)):
            sheet2.write(i+1,1,colum1[i],set_style('Times New Roman',220,True))
        f.save('E:\\coopration\\叶家明\\contracts_for_py&sjy.xls')
        print('success')
           
readDict('E:\\coopration\\叶家明\\contracts for py&sjy', 'contracts_for_py&sjy')
