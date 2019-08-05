import os
import shutil
import xlrd
import xlwt
import xlrd
from datetime import date,datetime

def readDict(absolutePath, sheetName):
    with open(absolutePath, 'r') as f:
        a = f.read()
        dictName = eval(a)
        excelFile = xlwt.Workbook()
        sheet1 = excelFile.add_sheet(sheetName,cell_overwrite_ok=True)
        row0 = ["File","Contract"]
        colum0 = []
        colum1 = []
        for key in dictName:
            colum0.append(key) #co
            for index in range(len(dictName[key])):
                if len(dictName[key]) > 1:
                    dictName[key][index] = dictName[key][index]+' '
            colum1.append(dictName[key])
        #写第0行     
        for i in range(0,len(row0)):
            sheet1.write(0,i,row0[i])
        #写第0列
        for i in range(0,len(colum0)):
            sheet1.write(i+1,0,colum0[i])
        #写第1列
        for i in range(0,len(colum1)):
            sheet1.write(i+1,1,colum1[i])
        excelFile.save('E:\\coopration\\YeJiaMing\\彭天勇可重入DM.xls')
        print('success')
readDict('E:\\coopration\\彭天勇\\contracts for pty', '彭天勇可重入DM')
