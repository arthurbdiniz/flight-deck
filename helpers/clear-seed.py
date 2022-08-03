import os

path = 'repositories'
dir_list = os.listdir(path)

for dir in dir_list:
    os.remove(f'{path}/{dir}/backend.tf')