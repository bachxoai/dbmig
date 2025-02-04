import re

def extract_column_name(line: str):
  match = re.match(r"^`([\w\d_]+)`\s+\w+", line.strip())
  if match:
    return match.group(1)
  return None