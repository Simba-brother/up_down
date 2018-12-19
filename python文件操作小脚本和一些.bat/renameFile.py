#coding=utf-8
# wirtten by xh, 2018-4-1
#导入模块
import os
list1 = []#用于存放“1.txt”的前半部分‘1'
list2=[]  #['1.txt'....'100.txt']
#获取输入路径
path=input('请输入文件路径(结尾加上/)：')       
#获取该目录下所有文件，存入列表中
f=os.listdir(path)
#对获取的文件名进行排序,否则是乱序修改
'''for a in f:
    list1.append(a.split('.')[0])  #存放“1.txt”的前半部分‘1'
list1 = [int(x) for x in list1]   #将字符串的1转换成int 1
list1.sort()#排序1，2，3...100
list1 = [str(x) for x in list1]
for b in list1:
    b = b+'.txt'
    list2.append(b)#将排好序的列表每一个item加.txt后缀'''

n=0
#s=str(n) #将int转换为string，从1开始
s=13804#文件名从s编号开始
#遍历修改每一个文件名
for i in f:
    #获取旧文件名（就是路径+文件名）
    oldname=path+f[n]
    #设置新文件名，根据自己的文件名和类型修改
    newname=path+'r'+str(s)
    #调用rename()重命名函数
    os.rename(oldname,newname)
    #打印修改结果
    print(oldname,'------------>',newname)
    #更新字符串
    n+=1
    s = s+1
    
