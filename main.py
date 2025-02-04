from utils.file_support import read_tables_from_folder, convert_table_path_to_dict
from utils.compare import get_diff, get_overlap, get_update_list
import os
import json

def convert_to_file_path_24(item: str) -> str:
  return f"input/24/apollo_dev_{item}.sql" # Change this

def convert_to_file_path_23(item: str) -> str:
  return f"input/23/apollo_{item}.sql" # Change this

input_folder_23 = 'input/23' # Change this
input_folder_24 = 'input/24' # Change this

set_23 = read_tables_from_folder(input_folder_23)
set_24 = read_tables_from_folder(input_folder_24)

new_tables = get_diff(set_23, set_24)
overlap_tables = get_overlap(set_23, set_24)

def new_table_script(new_table_set: set, output_path: str = 'output/new_tables.sql'):

  folder_path = os.path.dirname(output_path)
  os.makedirs(folder_path, exist_ok=True)
  
  new_table_file_path_list = [convert_to_file_path_24(item) for item in new_table_set]
  
  
  content_list = []
  for input_path in new_table_file_path_list:
    with open(input_path, 'r') as input_file:
      content_list.append(input_file.read())
      
  with open(output_path, 'w+') as output_file:
    output_file.writelines(content_list)
  
def update_table_dict(overlap_set: set) -> dict:
  result = dict()
  
  for table in overlap_set:
    table_dict_23 = convert_table_path_to_dict(convert_to_file_path_23(table))
    table_dict_24 = convert_table_path_to_dict(convert_to_file_path_24(table))
    
    update_list = get_update_list(table_dict_24, table_dict_23)
    
    if (len(update_list) > 0):
      result[table] = update_list
      
  my_json = json.dumps(result, indent=4, ensure_ascii=False)
  
  with open('output/update_dict', 'w+') as out_file:
    out_file.write(my_json)
  
  return result

new_table_script(new_tables)
update_table_dict(overlap_tables)


  
