#!/usr/bin/env python
#__*__ coding: utf-8 __*__
import re
import linecache
import os, os.path, shutil, sys
def eachFile(filepath):
    
    pathDir = os.listdir(filepath)      #获取当前路径下的文件名，返回List
    for s in pathDir:
        newDir=os.path.join(filepath,s)     #将文件名加入到当前文件路径后面
        if os.path.isfile(newDir) :         #如果是文件
            if os.path.splitext(newDir)[1]==".sol":  #判断是否是sol
                fileParse(newDir)                     
                pass
        else:
            eachFile(newDir)                #如果不是文件，递归这个文件夹的路径


def fileParse(filepath):  #  filepath=D://aaaa//***.sol
    #newpath=r'D:\pragma_solidity_0.4.2'
    #inputfile = input('Input SourcFile:') ##输入源文件，如A.txt
    #inputfile = 'slither.slither16001_18750.txt'
    fp = open(filepath,'r')
 
    number =[] #关键字的行号记录在number列表中
    lineNumber = 1 #关键字的行号
    #keyword = input('Slice Keyword:') ##输入你要切分的关键字
    keyword = 'pragma solidity ^0.4.2'
    #outfilename = input('Outfilename:')##输出文件名，如out.txt则写out即可，后续输出的文件是out0.txt,out1.txt...
    outfilename = ''
    for eachLine in fp:
        if eachLine.strip()[0:22].find(keyword)>=0: #eachLine去掉前后空格;[0:22]防止//pragma solidity ^0.4.25也被find
            fp.close()
            shutil.move(filepath,'D://HavePragmaContracts//')
            break
        #m = re.search(keyword, eachLine) ##查询关键字
        #print(m)
        '''if m is not None:
            fp.close()
            #newfp=os.path.join(newpath,os.path.basename(filepath)) #产生新目录要移动的文件路径
            shutil.move(filepath,'D://HavePragmaContracts//')#移动文件
            break;'''
        continue
            #number.append(lineNumber) #将关键字的行号记录在number中
    fp.close()
    '''  lineNumber = lineNumber + 1
    size = int(len(number))
    for i in range(0,size-1):
        start = number[i]
        end = number[i+1]
        destLines = linecache.getlines(inputfile)[start-1:end-1] #将行号为start+1到end-1的文件内容截取出来
        fp_w = open('E://results//'+outfilename + str(i),'w') #将截取出的内容保存在输出文件中
        for key in destLines:
            fp_w.write(key)
        fp_w.close()
    '''
'''
def mkdir(path):
    # 去除首位空格
    path=path.strip()
    # 去除尾部 \ 符号
    path=path.rstrip("\\")
 
    # 判断路径是否存在
    # 存在     True
    # 不存在   False
    isExists=os.path.exists(path)
 
    # 判断结果
    if not isExists:
        # 如果不存在则创建目录
        # 创建目录操作函数
        os.makedirs(path) 
 
        print (path+' 创建成功')
        return True
    else:
        # 如果目录存在则不创建，并提示目录已存在
        print (path+' 目录已存在')
        return False
'''
if __name__ == "__main__":
   # mkdir('E://results//')
    eachFile('D://aaaa//')
