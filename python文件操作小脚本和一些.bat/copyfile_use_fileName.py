import os

source_path = os.path.join(os.getcwd(), 'smartcheck_output')
file_list = os.listdir('SOLIDITY_TRANSFER_IN_LOOP')
target_path = os.path.join(os.getcwd(), 'transfer_output')

for file in file_list:
    os.popen('copy ' + os.path.join(source_path, file) + ' ' + os.path.join(target_path, file))
    
