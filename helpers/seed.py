import os

path = 'repositories'
dir_list = os.listdir(path)

state = """terraform {
  backend "s3" {
  }
}"""

for dir in dir_list:
    with open(f'{path}/{dir}/backend.tf', 'w') as f:
        f.write(state)
        f.close()