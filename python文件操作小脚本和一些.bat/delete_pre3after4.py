#!/usr/bin/env python
#__*__ coding: utf-8 __*__
import os
global val  #在使用前初次声明
val = 20    #给全局变量赋值
def fileParse(filepath):
    global val
    f=open(filepath, 'rb')
    
    with open('E://afterCleanContracts//'+'out' + str(val)+'.sol','wb') as f2:
        for line in f.readlines()[3:len(f.readlines())-4]:
            f2.write(line)
    val=val+1
    f.close()
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

if __name__ == "__main__":

    eachFile("E:\\code_contracts\\200_18750")
    
