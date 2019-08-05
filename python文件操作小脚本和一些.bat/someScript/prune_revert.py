import os
import re
import csv

class Prune(object):
    def __init__(self):
        self.__slither_output = open('slither_raw', encoding = 'utf-8').readlines()
        self.__pattern_1 = re.compile('Calls-loop in')
        self.__pattern_2 = re.compile('transfer')
        self.__pattern_3 = re.compile('require(\([^\)]*\))')
        self.__pattern_4 = re.compile('send')
        self.__pattern_5 = re.compile('out\d*\.sol')
        self.__pattern_6 = re.compile('INFO:Slither:========mml========./test')
        self.prune_dict = dict()
        self.prune()
        self.calculate()
        self.output()

    def prune(self):
        count = 0
        reset_file_flag = False
        contract_dict = dict()
        result = None
        for index, line in enumerate(self.__slither_output):
            #print(line)
            reset_file_flag = False
            if re.search(self.__pattern_6, line):
                reset_file_flag = True
                continue
            if not reset_file_flag:
                result = self.search(index)
            if result:
                count += 1
                contract_name = line.strip().split(' ')[2].split('.')[0]
                #function_name = line.strip().split(' ')[2].split('.')[1]
                file_name = re.search(self.__pattern_5, self.__slither_output[index+1]).group(0)
                if file_name not in self.prune_dict.keys():
                    self.prune_dict[file_name] = set()
                self.prune_dict[file_name].add(contract_name)
        print(count)
    
    def search(self, index):
        current_line = self.__slither_output[index]
        try:
            next_line = self.__slither_output[index+1]
        except IndexError:
            return False
        flag_1 = False
        flag_2 = False
        if re.search(self.__pattern_1, current_line):
            if re.search(self.__pattern_2, next_line):
                flag_1 = True
            if re.search(self.__pattern_3, next_line):
                tmp = re.search(self.__pattern_3, next_line).group(0)
                if re.search(self.__pattern_4, tmp):
                    flag_2 = True
        if flag_1 or flag_2:
            return True

    def calculate(self):
        for file in self.prune_dict.keys():
            tmp = list(self.prune_dict[file])
            self.prune_dict[file] = tmp
        summ = 0
        for file in self.prune_dict.keys():
            summ += len(self.prune_dict[file])
        print(summ)

    def output(self):
        with open('revert.csv', 'w', newline = '') as f:
            csv_writer = csv.writer(f)
            for file in self.prune_dict.keys():
                for contract in self.prune_dict[file]:
                    row = [file, contract]
                    csv_writer.writerow(row)

if __name__ == '__main__':
    Prune()