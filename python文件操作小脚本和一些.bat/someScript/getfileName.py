# -*- coding: utf-8 -*-   
import os
##import xlwt

def getFileNameFromDir(file_dir):
    for root, dirs, files in os.walk(file_dir):  
        #print(root) #当前目录路径  
        #print(dirs) #当前路径下所有子目录  
        #print(files) #当前路径下所有非目录子文件
        return files
        
##def set_style(name,height,bold=False):
##    style = xlwt.XFStyle()
##    font = xlwt.Font()
##    font.name = name
##    font.bold = bold
##    font.color_index = 4
##    font.height = height
##    style.font = font
##    return style

def writeExcel(file_dir):
    #file_list = os.listdir('SOLIDITY_TRANSFER_IN_LOOP')
    file_name_list = getFileNameFromDir(file_dir)
    file_name_list.sort()
    doc = open('out.txt', 'w')
    for item in file_name_list:
        print(item, file=doc)

##    f = xlwt.Workbook()
##    sheet1 = f.add_sheet('originSourceCodeFileName',cell_overwrite_ok=True) #获得sheet对象
##    row0 = ["FileName"]
##    colum0 = file_name_list
##    #写第一行
##    for i in range(0,len(row0)):
##        sheet1.write(0,0,row0[i], set_style('Times New Roman',220,True))
##    #写第一列
##    for i in range(0,len(colum0)):
##        sheet1.write(i+1,0,colum0[i], set_style('Times New Roman',220,True))
##    f.save('E:\\coopration\\彭天勇\\code_contracts 2\\originSourceCodeFileName.xls')
##    print('success')
writeExcel('E:\\coopration\\彭天勇\\code_contracts 2\\code_contracts')
