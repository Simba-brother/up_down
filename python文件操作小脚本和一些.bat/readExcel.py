# -*- coding: utf-8 -*-
import shutil
import xlrd
from datetime import date,datetime
def read_excel(relativePath):
        ExcelFile=xlrd.open_workbook(relativePath)
        #print (ExcelFile.sheet_names())
        #print(ExcelFile.sheet_names()[1])
        sheet1_name=ExcelFile.sheet_names()[0]  #获得sheet1的name
        #print(sheet2_name)
        sheet=ExcelFile.sheet_by_name(sheet1_name)   #获得sheet对象
        #print (sheet.name,sheet.nrows,sheet.ncols)
        cols=sheet.col_values(0)[1:]            #第1列内容
##        print(cols)
        for name in cols:
                sourceFileName = 'E:\\coopration\\source_code\\'+name
                destFileName = 'E:\\coopration\\叶家明\\contracts_for_py&sjyFiles\\'+name
                shutil.copyfile(sourceFileName,destFileName)
        #print(sourceFileNamelist)
        #print(destFileNamelsit)
        print('拷贝完成')
read_excel('E:\\coopration\\叶家明\\contracts_for_py&sjy.xls')
