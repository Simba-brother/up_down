import os
import xlwt
from datetime import date,datetime
def set_style(name,height,bold=False):
    style = xlwt.XFStyle()
    font = xlwt.Font()
    font.name = name
    font.bold = bold
    font.color_index = 4
    font.height = height
    style.font = font
    return style
def writeExcel():
    file_list = os.listdir('SOLIDITY_TRANSFER_IN_LOOP')
    f = xlwt.Workbook()
    sheet1 = f.add_sheet('smartCheck_transfer',cell_overwrite_ok=True) #获得sheet对象
    row0 = ["File","Contract"]
    colum0 = file_list
    #写第一行
    for i in range(0,len(row0)):
        sheet1.write(0,i,row0[i],set_style('Times New Roman',220,True))
    #写第一列
    for i in range(0,len(colum0)):
        sheet1.write(i+1,0,colum0[i],set_style('Times New Roman',220,True))
    f.save('E:\\coopration\\叶家明\\smartcheck\\SmartCheck_tansfer.xls')
    print('success')
writeExcel()
#print(file_list)


