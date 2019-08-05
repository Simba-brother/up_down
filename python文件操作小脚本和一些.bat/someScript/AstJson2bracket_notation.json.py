import argparse
import json
bracker_notation_str = ''
def parse2bracket_notation(json_tree_dict):
  if isinstance(json_tree_dict, dict):
    string = ''
    mydict = {}
    for key, value in json_tree_dict.items():  # 拿到一个节点的5个属性了。
      # print(str(key)+'='+str(value))
      if key == 'attributes':
        string += str(key)+'='+str(value)
      else:
        string += ' '+str(key)
      if key == 'children':
        for child in value:
          parse2bracket_notation(child)
    bracker_notation_str += 
    # print('{'+string+'}')
      # value = json_tree_dict.get(key)
      # if isinstance(value, dict):
      #   parse2bracket_notation(value)
      # elif isinstance(value, list):
      #   for json_array in value:
      #     parse2bracket_notation(json_array)
      # else:
      #   print(str(key)+"="+str(value))
with open('E:/coopration/薛老师/MAVS/Figure1_out18587_ast/selfTest.json','r') as astOfJson:
  json_tree_dict = json.load(astOfJson)
  parse2bracket_notation(json_tree_dict)


