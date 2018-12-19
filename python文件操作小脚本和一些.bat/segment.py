#!/usr/bin/env python
#__*__ coding: utf-8 __*__
import re
import linecache
import os

def fileParse():
    #inputfile = input('Input SourcFile:') ##输入源文件，如A.txt
    inputfile = 'slither.slither16001_18750.txt'
    fp = open(inputfile,encoding='utf-8')
 
    number =[]
    lineNumber = 1
    #keyword = input('Slice Keyword:') ##输入你要切分的关键字
    keyword = 'INFO:Slither'
    #outfilename = input('Outfilename:')##输出文件名，如out.txt则写out即可，后续输出的文件是out0.txt,out1.txt...
    outfilename = ''
    for eachLine in fp:       
        m = re.search(keyword, eachLine) ##查询关键字
        if m is not None:
           number.append(lineNumber) #将关键字的行号记录在number中
        lineNumber = lineNumber + 1
    size = int(len(number))
    for i in range(0,size-1):
        start = number[i]
        end = number[i+1]
        destLines = linecache.getlines(inputfile)[start-1:end-1] #将行号为start+1到end-1的文件内容截取出来
        fp_w = open('E://results//'+outfilename + str(i),'w') #将截取出的内容保存在输出文件中
        for key in destLines:
            fp_w.write(key)
        fp_w.close()

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
 
if __name__ == "__main__":
    mkdir('E://results//')
    fileParse()
