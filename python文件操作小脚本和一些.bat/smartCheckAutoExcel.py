import os
import re
import xlwt
from xlrd import open_workbook
from xlutils.copy import copy
class FPChecker(object):
    def __init__(self):
        self.__file_list = os.listdir(os.path.join(os.getcwd(), 'transfer_output'))
        self.__output_path = os.path.join(os.getcwd(), 'transfer_output')
        #self.__source_path = os.path.join(os.getcwd(), 'source_code')
        self.__pattern_1 = re.compile(r'ruleId: SOLIDITY_TRANSFER_IN_LOOP\npatternId: \w*\nseverity: \d\nline: \d*\ncolumn: \d*\ncontent: .*\n')
        self.__pattern_2 = re.compile(r'content: .*\n')
        self._linepattern = re.compile(r'line: \d*\n')
        self._contractNamePattern = re.compile(r'contract .*{')
        self.__tp_dict = dict()
        self.__fpchecker()
    
    def __fpchecker(self):
        fileNumber = 0
        cishu = 1
        count = 283
        tp_count = 0
        except_count = 0
        excelfile = xlwt.Workbook()
        for file in self.__file_list[246:]:
            fileNumber += 1
            file_content = open(os.path.join(self.__output_path, file), encoding = 'utf-8').read()
            first_match = re.findall(self.__pattern_1, file_content)
            for match in first_match:  #匹配到的所有行的报告
                count += 1
                second_match = re.search(self.__pattern_2, match).group(0)
                three_match = re.search(self._linepattern, match).group(0)
                #line_number = int(second_match.split(' ')[1]) 
                print(file + ': ')
                #content = open(os.path.join(self.__source_path, file), encoding = 'utf-8').readlines()
                content = second_match
                linenumberString = re.search(re.compile(r'\d+'),three_match).group(0)
                lineNumber = int(linenumberString)
                print(lineNumber)
                with open('E:\\coopration\\YeJiaMing\\smartcheck\\SOLIDITY_TRANSFER_IN_LOOP\\'+file,'r', encoding='utf-8') as f:
                    
                    linelist = f.readlines()
                    if lineNumber-10 >= 0:
                        if lineNumber+20 <= len(linelist)-1:
                            for line in linelist[lineNumber-10:lineNumber+20]:
                                print(line)
                        else:
                            for line in linelist[lineNumber-10:len(linelist)-1]:
                                print(line)
                    else:
                        if lineNumber+20 <= len(linelist)-1:
                            for line in linelist[0:lineNumber+20]:
                                print(line)
                        else:
                            for line in linelist[0:len(linelist)-1]:
                                print(line)
                    contractNamelist=[]
                    for line in linelist[0:lineNumber]:
                        if re.search(self._contractNamePattern, line):
                            contractNamelist.append(re.search(self._contractNamePattern, line).group(0))
                print(contractNamelist[-1])
                if cishu == 0:
                    sheet1 = excelfile.add_sheet('smartCheck_transfer',cell_overwrite_ok=True) #获得sheet对象
                    sheet1.write(count,0,file)
                    sheet1.write(count,1,contractNamelist[-1]) 
                    print('File: {} Contract: {} Line: {} Count: {} fileNumber: {}'.format(file, contractNamelist[-1], lineNumber, count, fileNumber))
                    answer = input()
                    if answer == '1':
                        sheet1.write(count,2,'TP')
                    if answer == '2':
                        sheet1.write(count,3,'FP')
                    excelfile.save('AUTOSmartCheck_tansfer.xls')
                    cishu += 1
                else:
                    rb = open_workbook('AUTOSmartCheck_tansfer.xls')
                    wb = copy(rb)
                    ws = wb.get_sheet(0)
                    ws.write(count, 0, file)
                    ws.write(count, 1, contractNamelist[-1])
                    print('File: {} Contract: {} Line: {} Count: {} fileNumber: {}'.format(file, contractNamelist[-1], lineNumber, count, fileNumber))
                    answer = input()
                    if answer == '1':
                        ws.write(count,2,'TP')
                    if answer == '2':
                        ws.write(count,3,'FP')
                    wb.save('AUTOSmartCheck_tansfer.xls')
                continue
                # print('Precision Rate: {:.4f}'.format(tp_count / count))

if __name__ == '__main__':
    FPChecker()

