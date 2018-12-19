#!/usr/bin/env python
#__*__ coding: utf-8 __*__
import re
import linecache
import os

def fileParse():
    f = open("E:\wrong\wrong.txt",encoding='utf-8')
    line = f.readline()
    while line != "":
        s = line[:4]
        s = s+'\n'
        with open('E://wrong//wrong_number.txt', 'a+') as fp_w:
             fp_w.write(s)
        line = f.readline()
    f.close()

 
if __name__ == "__main__":
    #mkdir('E://wrong//')
    fileParse()
