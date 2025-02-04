import re

def is_table_line(line: str) -> bool:
  return 'CREATE TABLE' in line

def is_column_line(line: str):
  line = line.strip()
  if not line:
    return False

  column_declaration_pattern = r"^`[\w\d_]+`\s+\w+(\(.*?\))?.*?(NOT NULL|DEFAULT|COMMENT)?.*?,?$"
  return bool(re.match(column_declaration_pattern, line))