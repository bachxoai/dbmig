def get_diff(curr: set, new: set) -> set:
  diff = new.difference(curr)
  return diff

def get_overlap(set1: set, set2: set) -> set:
  overlap = set1.intersection(set2)
  return overlap

def get_update_list(new_dict: dict, old_dict: dict) -> list:
  my_list = list()
  for new_key, new_value in new_dict.items():
    
    old_value = old_dict.get(new_key, '')
    if (new_value != old_value):
      curr_dict = {'old': old_value, 'new': new_value}
      my_list.append(curr_dict)
      
  return my_list