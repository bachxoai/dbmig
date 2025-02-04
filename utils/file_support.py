import os
import ast
from .validate import is_table_line, is_column_line
from .text_support import extract_column_name

def read_tables_from_folder(folder_path: str) -> set:
  tables = set()
  for file in os.listdir(folder_path):
    if file.endswith(".sql"):
      with open(f"{folder_path}/{file}", 'r') as f:
        lines = f.readlines()
        for line in lines:
          if is_table_line(line):
            tables.add(line.split(' ')[2].replace('`', ''))
  return tables

def read_tables_from_file(file_path: str) -> set:
  tables = set()
  with open(file_path, 'r') as file:
    lines = file.readlines()
    for line in lines:
      if is_table_line(line):
        tables.add(line.split(' ')[2].replace('`', ''))
  return tables
        
def save_set_to_file(file_path: str, my_set: set):
  with open(file_path, "w+") as file:
    file.write(str(my_set))
    
def read_set_from_file(file_path: str) -> set:
  with open(file_path, "r") as file:
    my_set = ast.literal_eval(file.read())
  return my_set

def convert_table_path_to_dict(filePath: str):
  my_dict = dict()
  with open(filePath, 'r') as file:
    for line in file:
      if (is_column_line(line)):
        dict_key = extract_column_name(line)
        dict_val = line.strip()
        my_dict[dict_key] = dict_val
  
  return my_dict