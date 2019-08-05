for key in json_tree_dict.keys():  # 拿到一个节点的5个属性了。
  #   value = json_tree_dict.get(key)
  #   if isinstance(value, dict):
  #     parse2bracket_notation(value)
  #   elif isinstance(value, list):
  #     for json_array in value:
  #       parse2bracket_notation(json_array)
  #   else:
  #     print(str(key)+"="+str(value))