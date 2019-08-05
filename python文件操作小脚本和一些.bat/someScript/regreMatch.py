# coding: utf-8 
import re 
import os  
import shutil
from collections import defaultdict
import json
import xlwt
def writeExcel(reen):
    f = xlwt.Workbook()
    sheet1 = f.add_sheet('CallChainReen',cell_overwrite_ok=True)
    row0 = ["File", "Contract", "Function"]
    rowNum = 0
    for keyOne in reen.keys():
        for keyTwo in reen[keyOne].keys():
            rowNum += len(reen[keyOne][keyTwo])
    rowCounter = 1
    colCounter = 0
    for filename in reen.keys():
        for contractName in reen[filename].keys():
            for functionName in reen[filename][contractName]:
                sheet1.write(rowCounter, colCounter, filename)
                sheet1.write(rowCounter, colCounter+1, contractName)
                sheet1.write(rowCounter, colCounter+2, functionName)
                rowCounter += 1
    f.save('E:\\Reen.xls')
    print("success")

def zhengze(lines):
    #[cfg_Reentrancy in] contract: ICOSyndicate . function: buy() | src_contracts_2_3/test2153.sol#92-106
    #fileNameDict = dict()
    reen = defaultdict(lambda :defaultdict(list))
    for line in lines:
        regex_str=r"\[I*cfg_Reentrancy in\] contract\: (\S+?) \. function\: (.+?)\| src_contracts_2_3\/(test[0-9]+\.sol)#"
        #for line in lines:
        #new_x = line.splitlines()  # new_x[1] = '\n'
        #print(new_x[0], end="")
            # print(lines, end = '')
            #print(line,end = "")
        match_obj=re.match(regex_str, line)
        if match_obj:
            fileName = match_obj.group(3)
            contractName = match_obj.group(1)
            functionName = match_obj.group(2)
            reen[fileName][contractName].append(functionName)

        # for v1 in reen.keys():
        #     for v2 in reen[v1].keys():
        #         print(v1, v2, reen[v1][v2])
    return reen
# result = zhengze("[Icfg_Reentrancy in] contract: FriendsFingersBuilder . function: closeCrowdsale(address) | src_contracts_2_3/test3662.sol#1019-10[]")
# print(result)

path=r'E:\CallChainExperiment\callChainOutput'
file_path=[]
# for filename in os.listdir(path):
file_path.append((os.path.join(path,"efficientICFGwithDM_output")))
for address in file_path:
    file_object=open(address, encoding='UTF-8')  
    lines = file_object.readlines()
    file_object.close()
    reen=zhengze(lines)
    writeExcel(reen)


    # for i in range(0, rowNum):
    #     for j in range(0, len(row0)):

           
# js = json.dumps(reen)   
# file = open('e:\\test.txt', 'w')        
# file.write(js)
# file.close()
#print(final)
# for x in final:
#     print(x)
#     shutil.copy("E:/MAVSagain/src_contracts_2_3(2)/src_contracts_2_3/"+x,"E:/Reentrancy/"+x)
    #shutil.copy(sour_path, dest_path)
# file_2=open(r'E:\CallChainExperiment\callChainOutput\re_new.txt','w+') 
# for x in final:
#     file_2.write(x)
#     file_2.write('\n')
# file_2.close()